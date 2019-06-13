message=$1
echo $message
gitbook build
git add *
git commit -m "$message"
git push
git subtree push --prefix=_book origin gh-pages
