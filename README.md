# react-native-sk-toast

##What is it
react-native-sk-toast is a react native module to show toast like android, I use another ope-source project  [Toast](https://github.com/scalessec/Toast) to implement image cache.

##How to use it

1. `npm install react-native-sk-toast@latest --save`

2. In XCode, in the project navigator right click `Libraries` ➜ `Add Files to [your project's name]`

3. Go to `node_modules` ➜ `react-native-sk-toast` ➜ `ios` and add `ReactNativeToast.xcodeproj`

![](https://raw.githubusercontent.com/shigebeyond/react-native-sk-toast/master/add-lib.png)

4. Add `libReactNativeToast.a` (from 'Products' under ReactNativeToast.xcodeproj) to your project's `Build Phases` ➜ `Link Binary With Libraries` phase

![](https://raw.githubusercontent.com/shigebeyond/react-native-sk-toast/master/chose-a.png)

![](https://raw.githubusercontent.com/shigebeyond/react-native-sk-toast/master/add-a.png)
5. Write this in index.ios.js / index.android.js
```javascript
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  View,
  Text,
  TouchableOpacity,
  StyleSheet
} = React;
var Toast = require('react-native-sk-toast');
var Screen = require('Dimensions').get('window');

var nostalgia = React.createClass({
  topToast: function(){
    Toast.top('top toast');
  },
  centerToast: function(){
    Toast.center('center toast');
  },
  bottomToast: function(){
    Toast.bottom('bottom toast');
  },
  render: function(){
    return (
      <View style={styles.container}>
        <TouchableOpacity style={styles.button} activeOpacity={1} onPress={this.topToast}>
            <Text style={styles.txt}>top</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.button} activeOpacity={1} onPress={this.centerToast}>
            <Text style={styles.txt}>center</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.button} activeOpacity={1} onPress={this.bottomToast}>
            <Text style={styles.txt}>bottom</Text>
        </TouchableOpacity>
      </View>
    )
  }
});


var styles = StyleSheet.create({
  container:{
    flex:1,
    alignItems: 'center',
    justifyContent: 'space-around'
  },
  button: {
    width: 70,
    height: 30,
    justifyContent: 'center',
    backgroundColor: 'yellow',
    borderColor: 'blue',
    borderWidth: 3,
    borderRadius: 5,
  },
  txt: {
    textAlign: 'center'
  }
});
```
6. Run your project (`Cmd+R`)

![](https://raw.githubusercontent.com/shigebeyond/react-native-sk-toast/master/demo.gif)
