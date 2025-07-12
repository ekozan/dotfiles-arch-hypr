if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
   eval $(dbus-launch)
   /usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh
   export GPG_AGENT_INFO
   export SSH_AUTH_SOCK

   exec Hyprland
fi
