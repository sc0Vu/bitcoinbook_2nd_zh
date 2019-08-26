git checkout master
git add .
git commit -m $1
git push  origin master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m $1
git push origin gh-pages
git checkout master