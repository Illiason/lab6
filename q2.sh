set -e
REPO="Illiason/lab6"
COLLAB_USER="sn3gur"
gh api --method PUT \
  -H "Accept: application/vnd.github+json" \
  "repos/${REPO}/collaborators/${COLLAB_USER}" \
  -f permission=push
