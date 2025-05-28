# Deployment and Release Process

## Overview

TOBE app follows a structured deployment process with multiple environments and automated CI/CD pipelines. This document covers the build, release, and deployment procedures for all app components.

## Environments

### Development (dev)
- **Purpose**: Active development and testing
- **Backend URL**: `https://dev-api.tobe-app.com`
- **Features**: Debug mode, verbose logging, test accounts
- **Deployment**: Automatic on merge to `develop` branch

### Staging (stg)
- **Purpose**: Pre-production testing and QA
- **Backend URL**: `https://stg-api.tobe-app.com`
- **Features**: Production-like environment, test data
- **Deployment**: Automatic on merge to `staging` branch

### Production (prod)
- **Purpose**: Live application for end users
- **Backend URL**: `https://api.tobe-app.com`
- **Features**: Optimized builds, production monitoring
- **Deployment**: Manual release process with approval

## Mobile App Deployment

### Build Process

#### Local Builds

```bash
# Development build
flutter build apk --flavor dev --dart-define=FLAVOR=dev
flutter build ios --flavor dev --dart-define=FLAVOR=dev

# Staging build
flutter build apk --flavor stg --dart-define=FLAVOR=stg
flutter build ios --flavor stg --dart-define=FLAVOR=stg

# Production build
flutter build apk --flavor prod --dart-define=FLAVOR=prod --obfuscate --split-debug-info=build/debug
flutter build ios --flavor prod --dart-define=FLAVOR=prod --obfuscate --split-debug-info=build/debug
```

#### Build Configuration

Each flavor has specific configuration:

```yaml
# Android: android/app/src/{flavor}/
# iOS: ios/Runner/{Flavor}/

- google-services.json / GoogleService-Info.plist
- App icons
- Launch screens
- Bundle identifiers
```

### Version Management

#### Semantic Versioning
Follow semantic versioning (MAJOR.MINOR.PATCH):
- **MAJOR**: Breaking changes
- **MINOR**: New features
- **PATCH**: Bug fixes

#### Version Bump Process

```bash
# Update version in pubspec.yaml
version: 1.2.3+45  # version+buildNumber

# Commit version change
git add pubspec.yaml
git commit -m "chore: bump version to 1.2.3"
git tag v1.2.3
git push origin main --tags
```

### iOS Deployment

#### Prerequisites
- Apple Developer account
- Valid certificates and provisioning profiles
- Xcode installed
- Fastlane configured

#### TestFlight Deployment

```bash
cd ios

# Install dependencies
bundle install

# Deploy to TestFlight
bundle exec fastlane beta
```

Fastlane configuration (`ios/fastlane/Fastfile`):
```ruby
lane :beta do
  build_app(
    scheme: "Runner",
    configuration: "Release-stg",
    export_method: "app-store"
  )
  upload_to_testflight(
    skip_waiting_for_build_processing: true
  )
end
```

#### App Store Release

```bash
# Build for App Store
bundle exec fastlane release

# Or manually via Xcode
1. Open ios/Runner.xcworkspace
2. Select "Runner" scheme
3. Product → Archive
4. Distribute App → App Store Connect
```

### Android Deployment

#### Prerequisites
- Google Play Console access
- Signing keys configured
- Play Store listing prepared

#### Build Release APK/AAB

```bash
# Generate AAB for Play Store
flutter build appbundle --flavor prod --dart-define=FLAVOR=prod

# Or APK for direct distribution
flutter build apk --flavor prod --dart-define=FLAVOR=prod --split-per-abi
```

#### Play Store Deployment

1. **Internal Testing Track**
   ```bash
   cd android
   bundle exec fastlane internal
   ```

2. **Production Release**
   ```bash
   bundle exec fastlane production
   ```

Fastlane configuration (`android/fastlane/Fastfile`):
```ruby
lane :internal do
  gradle(
    task: "bundle",
    flavor: "prod",
    build_type: "Release"
  )
  upload_to_play_store(
    track: "internal",
    aab: "../build/app/outputs/bundle/prodRelease/app-prod-release.aab"
  )
end
```

## Backend Deployment

### Docker Build

```dockerfile
# app/backend/Dockerfile
FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .
RUN dart pub get --offline
RUN dart compile exe bin/main.dart -o bin/server

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/server
COPY --from=build /app/public /public/

EXPOSE 8080
CMD ["/app/bin/server"]
```

### Build and Deploy

```bash
# Build Docker image
docker build -t tobe-backend:latest app/backend/

# Tag for registry
docker tag tobe-backend:latest gcr.io/project-id/tobe-backend:latest

# Push to registry
docker push gcr.io/project-id/tobe-backend:latest

# Deploy to Cloud Run
gcloud run deploy tobe-backend \
  --image gcr.io/project-id/tobe-backend:latest \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated
```

### Environment Variables

Configure per environment:
```bash
# Development
DATABASE_URL=postgresql://dev_user:pass@localhost:5432/tobe_dev
REDIS_URL=redis://localhost:6379
JWT_SECRET=dev-secret-key

# Production
DATABASE_URL=postgresql://prod_user:pass@db.example.com:5432/tobe_prod
REDIS_URL=redis://redis.example.com:6379
JWT_SECRET=${SECRET_JWT_KEY}
```

## CI/CD Pipeline

### GitHub Actions Workflows

#### Pull Request Checks
`.github/workflows/pr-checks.yml`:
```yaml
name: PR Checks
on:
  pull_request:
    types: [opened, synchronize]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
      - run: make bs
      - run: melos analyze
      - run: melos format --set-exit-if-changed
      - run: melos test
```

#### Deploy Development
`.github/workflows/deploy-dev.yml`:
```yaml
name: Deploy Development
on:
  push:
    branches: [develop]

jobs:
  deploy-backend:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Deploy to Cloud Run
        run: |
          gcloud builds submit --tag gcr.io/$PROJECT_ID/backend:dev
          gcloud run deploy backend-dev --image gcr.io/$PROJECT_ID/backend:dev
```

#### Release Production
`.github/workflows/release-prod.yml`:
```yaml
name: Release Production
on:
  push:
    tags:
      - 'v*'

jobs:
  build-mobile:
    strategy:
      matrix:
        os: [macos-latest, ubuntu-latest]
    runs-on: ${{ matrix.os }}
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
      - run: flutter build ${{ matrix.os == 'macos-latest' && 'ios' || 'appbundle' }} --flavor prod
```

## Release Process

### 1. Prepare Release

```bash
# Create release branch
git checkout -b release/1.2.0

# Update changelog
echo "## v1.2.0 - $(date +%Y-%m-%d)" >> CHANGELOG.md
echo "- Feature: New quest system" >> CHANGELOG.md
echo "- Fix: Login error handling" >> CHANGELOG.md

# Bump version
# Edit pubspec.yaml version: 1.2.0+123

# Commit changes
git add .
git commit -m "chore: prepare release 1.2.0"
```

### 2. Create Release PR

```bash
gh pr create \
  --title "Release v1.2.0" \
  --body "## Changes\n- Feature: New quest system\n- Fix: Login error handling" \
  --base main
```

### 3. Deploy to Staging

After PR approval:
```bash
# Merge to staging branch
git checkout staging
git merge release/1.2.0
git push origin staging

# Automated deployment to staging environment
# Test thoroughly in staging
```

### 4. Production Release

```bash
# Merge to main
git checkout main
git merge release/1.2.0

# Create and push tag
git tag v1.2.0
git push origin main --tags

# Create GitHub release
gh release create v1.2.0 \
  --title "Release v1.2.0" \
  --notes-file CHANGELOG.md
```

### 5. Post-Release

```bash
# Update develop branch
git checkout develop
git merge main
git push origin develop

# Clean up
git branch -d release/1.2.0
git push origin --delete release/1.2.0
```

## Monitoring and Rollback

### Health Checks

Backend endpoints:
- `/health` - Basic health check
- `/ready` - Readiness probe
- `/metrics` - Prometheus metrics

### Monitoring Setup

1. **Application Monitoring**
   - Firebase Crashlytics for mobile
   - Sentry for backend errors
   - Custom analytics events

2. **Infrastructure Monitoring**
   - Cloud Run metrics
   - Database performance
   - API response times

### Rollback Procedures

#### Mobile App Rollback
1. **Google Play Console**
   - Halt rollout
   - Create new release with previous APK

2. **App Store Connect**
   - Remove from sale
   - Expedited review for fix

#### Backend Rollback
```bash
# List recent revisions
gcloud run revisions list --service=tobe-backend

# Route traffic to previous revision
gcloud run services update-traffic tobe-backend \
  --to-revisions=tobe-backend-00002-abc=100
```

## Security Considerations

### Secret Management
- Use GitHub Secrets for CI/CD
- Google Secret Manager for production
- Never commit sensitive data

### Code Signing
- iOS: Automatic signing with match
- Android: Upload key in Play Console

### Security Headers
```dart
// Backend middleware
app.use((req, res, next) => {
  res.setHeader('X-Content-Type-Options', 'nosniff');
  res.setHeader('X-Frame-Options', 'DENY');
  res.setHeader('X-XSS-Protection', '1; mode=block');
  next();
});
```

## Troubleshooting

### Common Issues

1. **Build Failures**
   ```bash
   # Clean build
   flutter clean
   cd ios && pod deintegrate && pod install
   ```

2. **Signing Issues**
   ```bash
   # Reset certificates
   fastlane match nuke development
   fastlane match development
   ```

3. **Deployment Failures**
   - Check service account permissions
   - Verify environment variables
   - Review deployment logs

### Emergency Procedures

1. **Hotfix Process**
   ```bash
   git checkout -b hotfix/1.2.1 main
   # Fix issue
   git commit -m "fix: critical bug"
   # Fast-track through staging
   ```

2. **Feature Flags**
   - Use Firebase Remote Config
   - Disable features without deployment
   - Gradual rollout control