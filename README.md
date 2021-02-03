## Overview

This project extends the demo included in the zoom electron SDK. The `App` folder contains an electron app using `electron-react-boilerplate`.

## How to run this project

in root folder run

> npm install

in app folder run

> npm install

after the installation you'll need to rebuild the node file:

For Mac OS

> sh build_nodeaddon_mac.sh

For Windows

> build_nodeaddon_win_ia32.bat

See more details in the `zoom_instructions` file

## TROUBLESHOOTING

if you get this error after runing `npm install` the solution is to rebuild the node file:
`sh build_nodeaddon_mac.sh` --> for mac
`build_nodeaddon_win_ia32.bat` --> for win

**Stacktrace**

```
App threw an error during load
Error: dlopen(/Users/lucia/Desktop/personal/zoom-electron-demo/sdk/mac/zoomsdk.node, 1): Library not loaded: @rpath/ZoomSDK.framework/Versions/A/ZoomSDK
  Referenced from: /Users/lucia/Desktop/personal/zoom-electron-demo/sdk/mac/zoomsdk.node
  Reason: image not found
    at process.func (electron/js2c/asar.js:140:31)
    at process.func [as dlopen] (electron/js2c/asar.js:140:31)
    at Object.Module._extensions..node (internal/modules/cjs/loader.js:1016:18)
    at Object.func (electron/js2c/asar.js:140:31)
    at Object.func [as .node] (electron/js2c/asar.js:140:31)
    at Module.load (internal/modules/cjs/loader.js:816:32)
    at Module._load (internal/modules/cjs/loader.js:728:14)
    at Module._load (electron/js2c/asar.js:717:26)
    at Function.Module._load (electron/js2c/asar.js:717:26)
    at Module.require (internal/modules/cjs/loader.js:853:19)
```

the rebuild usually throws an error:

```
../lib/node_add_on/electron_sdk.pb.h:9:10: fatal error:
      'google/protobuf/stubs/common.h' file not found
#include <google/protobuf/stubs/common.h>
```
