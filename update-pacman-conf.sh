if [[ -f /etc/pacman.conf.pacnew ]] ; then
  mv -v /etc/pacman.conf.pacnew /etc/pacman.conf
  sed -i 's/^#Color/Color/' /etc/pacman.conf
  sed -i 's/^#VerbosePkgLists/VerbosePkgLists/' /etc/pacman.conf
fi
