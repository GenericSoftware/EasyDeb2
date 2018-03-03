read -p "Pkg-name:" pkgname

mkdir $pkgname
mkdir $pkgname/DEBIAN

cp controldef.txt control
mv control $pkgname/DEBIAN/control

touch $pkgname/DEBIAN/postinst

sudo chmod 755 $pkgname/DEBIAN/postinst

read -p "Now add all files into folder as if it were the root directory of the system it's being installed on. Press enter to continue" fake

clear

read -p "Now we're opening the 'control' document, which defines information about your package. Add all information after semicolons. Press enter to continue." fake

nano $pkgname/DEBIAN/control

clear

read -p "Now we're opening the 'postinst' script, which runs after dpkg has installed your package. You can leave it blank if you'd like, just delete the file at $pkgname/DEBIAN/postinst after" fake

nano $pkgname/DEBIAN/postinst

clear

read -p "Final .deb filename: " fn

sudo dpkg -b $pkgname $pkgname/$fn

echo "Saved $pkgname to $fn. Now to test-install it, run 'sudo dpkg -i $fn', or as superuser if sudo isn't on your distro."


