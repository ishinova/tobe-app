#! /bin/bash

echo ""
echo "    ##      #####    ####     ##### ";
echo "   ####    ##   ##    ##     ##   ## ";
echo "  ##  ##   #          ##     # ";
echo "  ##  ##    #####     ##      ##### ";
echo "  ######        ##    ##          ## ";
echo "  ##  ##   ##   ##    ##     ##   ## ";
echo "  ##  ##    #####    ####     ##### ";
echo ""

# Project root directory
FILE_PATH=$(dirname "$0")
cd "$FILE_PATH/../" || exit

echo "🚀 Bootstrap start"
echo "🚀 Working directory: $(pwd)"

##############################################################################
##
##  Git commit message
##
##############################################################################
echo ""
echo "🚀 Git commit message: Start"
if type git >/dev/null 2>&1; then
  git config commit.template tools/git/message
  echo "🎉 Git commit message: git config commit.template is $(pwd)/$(git config commit.template)"
  echo "✅ Git commit message: Success"
else
  echo "⚠️ Git commit message: Skip the git command as it could not be found."
fi

##############################################################################
##
##  Melos
##
##############################################################################
echo ""
echo "🚀 Melos bootstrap: Start"
if type melos >/dev/null 2>&1; then
  if melos bs; then
    echo "✅ Melos bootstrap: Success"
  else
    echo "🚫 Melos bootstrap: Failed"
  fi
else
  echo "⚠️ Melos bootstrap: Skip melos because it could not be found."
  echo "⚠️ Melos bootstrap: See https://melos.invertase.dev/getting-started for installation."
fi

##############################################################################
##
##  Finish
##
##############################################################################
echo ""
echo "🚀 Bootstrap finished"
