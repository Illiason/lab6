set -e
REPO="Illiason/lab6"
BRANCH="Q12345"

PR=$(gh pr list --repo "$REPO" --head "$BRANCH" --base main \
      --json number --jq '.[0].number')

if [ -z "$PR" ] || [ "$PR" = "null" ]; then
  echo "No open PR found for $BRANCH -> main" >&2
  exit 1
fi

gh pr merge "$PR" --repo "$REPO" --squash
echo "Merged PR #$PR"
