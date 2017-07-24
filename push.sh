git status

read -p "Enter commct message:" -t 30

echo "deleting backup files..."
rm *~
rm **/*~

echo "committing files..."
git add *
git stage -a
git commit -a -m "${REPLY}"

echo ""
echo "After commit:"

git status

git gc

echo "pushing...."
git push origin master
