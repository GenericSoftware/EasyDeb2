read -p "Pkg-name:" pkgname

mkdir $pkgname
mkdir $pkgname/DEBIAN

cp controldef.txt control
mv control $pkgname/DEBIAN/control

touch $pkgname/DEBIAN/postinst

sudo chmod 755 $pkgname/DEBIAN/postinst

echo "Done. You can now add, edit, and build manually."


