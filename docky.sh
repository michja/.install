#!/bin/sh

apt-get install -y docky
gconftool-2 --type Boolean --set /apps/docky-2/Docky/Items/DockyItem/ShowDockyItem False
gconftool-2 --type String --set /apps/docky-2/Docky/Services/ThemeService/Theme "Glass"
gconftool-2 --type Boolean --set /apps/docky-2/Docky/Interface/DockPreferences/Dock1/ThreeDimensional True
gconftool-2 --type String --set /apps/docky-2/Docky/Interface/DockPreferences/Dock1/Autohide "Intellihide"
