# react-native-toast

##What is it
react-native-toast is a react native module to show toast like android, I use another ope-source project  [Toast](https://github.com/scalessec/Toast) to implement image cache.

##How to use it

1. `npm install react-native-toast@latest --save`
2. In XCode, in the project navigator right click `Libraries` ➜ `Add Files to [your project's name]`
3. Go to `node_modules` ➜ `react-native-toast` ➜ `ios` and add `ReactNativeToast.xcodeproj`
![](https://raw.githubusercontent.com/shigebeyond/react-native-toast/master/add-lib.png)
4. Add `libReactNativeToast.a` (from 'Products' under ReactNativeToast.xcodeproj) to your project's `Build Phases` ➜ `Link Binary With Libraries` phase
![](https://raw.githubusercontent.com/shigebeyond/react-native-toast/master/chose-a.png)
![](https://raw.githubusercontent.com/shigebeyond/react-native-toast/master/add-a.png)
5. Write this in index.ios.js / index.android.js
```javascript
// var RCTNetworkImage = requireNativeComponent('RCTNetworkImageView', null);
var RCTNetworkImage = requireNativeComponent('SKToastView', null);
```
6. Run your project (`Cmd+R`)
