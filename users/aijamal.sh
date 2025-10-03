file="$1"
message="$2"

git add "$file"
git commit -m "$message"
if [ $# -eq 3 ]; then
   git push origin $3
else
   git push
fi