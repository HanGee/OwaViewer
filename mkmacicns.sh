mkdir OwaViewer.iconset
sips -z 16 16     OwaViewer.png --out OwaViewer.iconset/icon_16x16.png
sips -z 32 32     OwaViewer.png --out OwaViewer.iconset/icon_16x16@2x.png
sips -z 32 32     OwaViewer.png --out OwaViewer.iconset/icon_32x32.png
sips -z 64 64     OwaViewer.png --out OwaViewer.iconset/icon_32x32@2x.png
sips -z 128 128   OwaViewer.png --out OwaViewer.iconset/icon_128x128.png
sips -z 256 256   OwaViewer.png --out OwaViewer.iconset/icon_128x128@2x.png
sips -z 256 256   OwaViewer.png --out OwaViewer.iconset/icon_256x256.png
sips -z 512 512   OwaViewer.png --out OwaViewer.iconset/icon_256x256@2x.png
sips -z 512 512   OwaViewer.png --out OwaViewer.iconset/icon_512x512.png
cp OwaViewer.png OwaViewer.iconset/icon_512x512@2x.png
iconutil -c icns OwaViewer.iconset
rm -R OwaViewer.iconset
