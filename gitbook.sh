git checkout master
git add .
git commit -m $1
git push origin master
git checkout --orphan gh-pages
git rm --cached -r .
git clean -df
rm -rf *~
echo "*~" > .gitignore
echo "_book" >> .gitignore
git add .gitignore
git commit -m $1
cp -r _book/* .
git add .
git commit -m "Publish book"
git checkout master