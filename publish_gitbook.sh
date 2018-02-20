# Copied from https://gist.github.com/SangsooNam/aa73c3e1ff88d30433e4020f1275242a
# install the plugins and build the static site
gitbook install && gitbook build

# Note that if you ever have a mysterious case of gitbook not producing .html files for each markdown file
# go check the SUMMARY.md file and make sure that it points to the correct markdown filenames!
# This is often the case when people rearrange the order of chapters/content substantially.

# checkout to the gh-pages branch
git checkout gh-pages

# pull the latest updates
git pull origin gh-pages --rebase

# copy the static site files into the current directory.
cp -R _book/* .

# remove 'node_modules' and '_book' directory
git clean -fx node_modules
git clean -fx _book

# add all files
git add .

# commit
git commit -a -m "Update docs"

# push to the origin
git push origin gh-pages

# checkout to the master branch
git checkout master
