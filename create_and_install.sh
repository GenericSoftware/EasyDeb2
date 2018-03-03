read -p "Directory path:" fpath
read -p "Output filename:" fname

sudo dpkg -b $fpath $fname
echo "Finished creating package"

sudo dpkg -i $fname
echo "Installed test package"

