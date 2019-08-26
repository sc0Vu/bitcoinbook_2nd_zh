git checkout master
git add .
git commit -m $1
git push origin master
git branch -d gh-pages
git branch  -r -d  origin/gh-pages
git push origin :gh-pages
git checkout -b gh-pages
git checkout  gh-pages
cp -r _book/* .
git add .
git commit -m $1
git push origin gh-pages
git checkout master
