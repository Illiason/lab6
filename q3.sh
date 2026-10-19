set -e
REPO="Illiason/lab6"
COLLAB_USER="sn3gur"

echo "== Pending invitations =="
gh api "repos/${REPO}/invitations" --jq '.[].invitee.login' 2>/dev/null || true

echo "== Current collaborators =="
gh api "repos/${REPO}/collaborators" --jq '.[].login'

if gh api "repos/${REPO}/collaborators" --jq '.[].login' | grep -qx "$COLLAB_USER"; then
  echo "✅ $COLLAB_USER has ACCEPTED the invitation."
else
  echo "❌ $COLLAB_USER has not accepted yet."
fi
