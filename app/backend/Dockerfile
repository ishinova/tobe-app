FROM dart:3.8.1 AS builder

WORKDIR /app/app/backend

# Resolve app dependencies.
COPY app/backend/pubspec.* ./
COPY core/network_model/pubspec.* ../../core/network_model/

RUN dart pub get

# Copy app source code and AOT compile it.
COPY app/backend/lib ./lib
COPY app/backend/routes ./routes
COPY app/backend/main.dart ./
COPY core/network_model ../../core/network_model/

# Generate a production build.
RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build

# Ensure packages are still up-to-date if anything has changed.
RUN dart pub get --offline
# Removed because it interferes with internal package dependency resolution.
RUN rm -rf build/.dart_tool
# Create executable file.
RUN dart compile exe build/bin/server.dart -o build/bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
COPY --from=builder /runtime/ /
COPY --from=builder /app/app/backend/build/bin/server /app/bin/

# Start server.
EXPOSE 8080
CMD ["/app/bin/server"]
