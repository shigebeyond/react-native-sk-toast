# react-native-toast

##What is it
react-native-toast is a react native module to show toast like android, I use another ope-source project  [Toast](https://github.com/scalessec/Toast) to implement image cache.

##How to use it

1. `npm install react-native-toast@latest --save`
2. In XCode, in the project navigator right click `Libraries` ➜ `Add Files to [your project's name]`
3. Go to `node_modules` ➜ `react-native-toast` and add `ReactNativeToast.xcodeproj`
4. Add `libReactNativeToast.a` (from 'Products' under ReactNativeToast.xcodeproj) to your project's `Build Phases` ➜ `Link Binary With Libraries` phase
5. Edit `node_modules/react-native/Libraries/Image/Image.ios.js` and use our ui component
```javascript
// var RCTNetworkImage = requireNativeComponent('RCTNetworkImageView', null);
var RCTNetworkImage = requireNativeComponent('SKToastView', null);
```
6. Run your project (`Cmd+R`)
