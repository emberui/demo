# This should make it more idiot proof
git checkout -b gh-pages origin/gh-pages
git checkout master

# Remove the temporary directory since things may have changed
rm -rf /tmp/dist

# Rebuild the files and copy them to the tmp folder
grunt dist         &&
cp -R dist /tmp/dist  &&

# copy 404 page & .gitignore
cp dist/index.html /tmp/dist/404.html &&
cp .gitignore /tmp/dist/ &&

# Checkout gh-pages, save what we need, delete the rest and copy over
git checkout gh-pages    &&
git pull --rebase origin gh-pages &&
cp -R builds /tmp/dist/  &&
git rm -r ./               &&
cp -r /tmp/dist/ ./        &&

# Commit and push the changes then switch back to master
git add . &&
git commit -am "Update website demo" &&
git push origin gh-pages  &&
git checkout master &&
echo "Website update successful"
