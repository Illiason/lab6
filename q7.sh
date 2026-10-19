set -e
REPO="Illiason/lab6"
BRANCH="Q12345"

gh pr create \
  --repo "$REPO" \
  --base main \
  --head "$BRANCH" \
  --title "Merge Q12345: answers for Q1-Q5" \
  --body "Contains scripts for questions 1 through 5."
