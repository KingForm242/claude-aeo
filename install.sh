#!/usr/bin/env bash
# claude-aeo installer for Claude Code (manual path)
set -e
DEST="${1:-$HOME/.claude/skills}"
mkdir -p "$DEST"
for d in skills/*/; do
  name=$(basename "$d")
  rm -rf "$DEST/$name"
  cp -r "$d" "$DEST/$name"
  echo "installed: $name"
done
echo "Done. Run /aeo in Claude Code, or describe any AEO task."
echo "claude.ai user? Upload the zips in releases/claude-ai-zips/ at Settings > Capabilities > Skills."
