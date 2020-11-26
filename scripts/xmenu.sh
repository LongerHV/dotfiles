#!/bin/sh
term='alacritty'

cat <<EOF | xmenu | sh &
System
	 Terminal		$term
	漣 QT config	qt5ct
	漣 kvantum		kvantummanager
	 network		nm-connection-editor
	墳 volume		pavucontrol-qt
Virtual
	 Virt-manger	virt-manager
	 Spice			spicy
	 Horizon		vmware-view
Editors
	﬏ VSCode		code
	 VIM			$term -e vim

 Files				pcmanfm-qt
 Brave				brave
 Spotify			spotify
嗢 VLC				vlc
戮 Steam			steam
 Screenshot		screengrab
 Refresh wallpaper	nitrogen --restore

 $(uname -r)	

 Exit			qtile-cmd -o cmd -f shutdown
 Lock			light-locker-command -l
ﰇ Reboot		reboot
襤 Shutdown		poweroff
EOF
