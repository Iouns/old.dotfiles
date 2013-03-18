#!/bin/bash
# Simple deployment script
CMD="$(basename ${0})"
DOTFILES_PATH="$(dirname ${0})"
RSYNC_EXCLUDE="${DOTFILES_PATH}/exclude-rsync.txt"

# Check if there's some modified files.
CHANGES=$(rsync -an -i --omit-dir-times --exclude-from ${RSYNC_EXCLUDE} ${DOTFILES_PATH}/ ${HOME}/)
# If not, get out.
[[ -z ${CHANGES} ]] && echo 'no pending changes' && exit
# Print pending changes.
echo -e "${CHANGES}"

read -p "Deploy dotfiles to => ${HOME}? [y/N]"
if [[ ${REPLY} =~ ^[Yy]$ ]]; then
  rsync -a -i --omit-dir-times --exclude-from ${RSYNC_EXCLUDE} ${DOTFILES_PATH}/ ${HOME}/
fi

exit 0
