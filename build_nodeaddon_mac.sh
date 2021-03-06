
cd `dirname $0`
if [ -d "./app/node_modules" ];then
cd ./app
npm run-script postinstall-mac
else
cd ./app
npm install
npm run-script postinstall-mac
fi

version=$(electron --version)
if [ $? -ne  0 ];then
echo "build fail ,electron not install"
exit
else
cd ../
npm install
sed -i "" 's/8.2.4/'${version#*v}'/g' ./app/package.json
node-gyp rebuild --target=${version#*v}  --dist-url=https://atom.io/download/electron
fi
cp -Rf ./build/Release/zoomsdk.node  ./sdk/mac && cp -Rf ./build/Release/zoomsdk_render.node  ./sdk/mac


