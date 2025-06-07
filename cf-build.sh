
echo "Installing node dependacies"

if [ -f "package.json" ]; then
  npm install
fi


hugo -b $CF_PAGES_URL --environment production --minify 

echo $CF_PAGES_URL