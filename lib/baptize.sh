BAPTIZE_CONFIG="$BAPTIZE_CONFIG"
if [ -z "$BAPTIZE_CONFIG" ]; then
  BAPTIZE_CONFIG="$HOME/.holywater"
fi

if [ -f "$BAPTIZE_CONFIG" ]; then
  source "$BAPTIZE_CONFIG"
fi

LIB="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$LIB/colors.sh"
source "$LIB/prompt.sh"
source "$LIB/git_prompt.sh"

function repent {
  source "$LIB/baptize.sh"
}
