cd _site/

touch .nojekyll
touch CNAME
echo -n "clean.guru" >> CNAME

git status
git add -A .
git commit -m 'Deploy to production'
git push origin master

if ! [ -x "$(command -v sl)" ]; then
  exit 1
fi
sl