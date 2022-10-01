#!/usr/bin/env bash

script_dir="$( dirname -- "$BASH_SOURCE"; )";

apt-get update
apt-get install -y pcscd usbutils
dpkg -i "$script_dir/deb/lib/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb"
dpkg -i "$script_dir/deb/lib/libgdk-pixbuf-xlib-2.0-0_2.40.2-2_amd64.deb"
dpkg -i "$script_dir/deb/lib/libgdk-pixbuf2.0-0_2.40.2-2_amd64.deb"
dpkg -i "$script_dir/deb/lib/libwxbase3.0-0v5_3.0.4+dfsg-15build1_amd64.deb"
dpkg -i "$script_dir/deb/lib/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb"
dpkg -i "$script_dir/deb/lib/libcanberra-gtk0_0.30-5ubuntu1_amd64.deb"
dpkg -i "$script_dir/deb/lib/libcanberra-gtk-module_0.30-3_amd64.deb"
dpkg -i "$script_dir/deb/Safesign_3.5.2_1804_x86_64.deb"
mkdir /opt/{shodo,java}
mv "$script_dir/shodo.jar" /opt/shodo/
tar -zxvf "$script_dir/jre-8u202-linux-x64.tar.gz" -C /opt/java
