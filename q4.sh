set -e
REPO="Illiason/lab6"
COLLAB_USER="sn3gur"

gh api --method DELETE "repos/${REPO}/collaborators/${COLLAB_USER}"
echo "Removed $COLLAB_USER."

echo "== Remaining collaborators =="
gh api "repos/${REPO}/collaborators" --jq '.[].login'
