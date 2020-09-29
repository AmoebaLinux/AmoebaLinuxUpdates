tce-load -wi wget dialog
echo "This script will update Amoeba Linux"
wget https://raw.githubusercontent.com/AmoebaLinux/AmoebaLinuxUpdates/master/update-amoebacore.sh > /tmp/pkglist
tce-load -wi $(echo /tmp/pkglist)
wget https://raw.githubusercontent.com/AmoebaLinux/AmoebaLinuxUpdates/master/update-amoebacore.sh > /tmp/delpkglist
tce-remove $(echo /tmp/delpkglist)
wget https://raw.githubusercontent.com/AmoebaLinux/AmoebaLinuxUpdates/master/filelistdelete-amoebacore > /tmp/delfilelist
rm -rf $(echo /tmp/delfilelist)
