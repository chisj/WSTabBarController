#WSTabBarController

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg)](https://raw.githubusercontent.com/chisj/WSTabBarController/master/LICENSE)&nbsp;
[![CocoaPods](https://img.shields.io/badge/pod-0.0.3-blue.svg)](http://cocoapods.org/?q= WSTabBarController)&nbsp;
[![CocoaPods](https://img.shields.io/badge/platform-iOS-blue.svg)](http://cocoapods.org/?q= WSTabBarController)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%208%2B-blue.svg)](https://www.apple.com/nl/ios/)&nbsp;


A custom TabBarController with publish button written in Swift.

![screenShot](ScreenShot/tabbarsample.gif)

Two tabs

![screenShot2](ScreenShot/screen_shot2.png)

Three tabs

![screenShot3](ScreenShot/screen_shot3.png)

## Requirements

- iOS 8.0+
- Swift 2.2 (v0.0.3)
- Swift 3.0 (V0.0.4)

## Installation


```
pod "WSTabBarController"
```

## Usage

```
import WSTabBarController

tabbarController = WSTabBarController(publishButtonConfig: {b in

            	//set your publish button like size,image,etc.
            }, publishButtonClick: { b in 
            
            	print("publish button clicked")
            })

```

Then use it just like a UITabBarController.

### Custom publish button index


![screenShot4](ScreenShot/screen_shot4.png)



```
maintabbarController = WSTabBarController(publishButtonConfig: {b in

            	//set your publish button like size,image,etc.
            }, publishButtonClick: { b in 
            	print("publish button clicked")
            }, publishButtonIndex: 0)
```


For the usage, please refer to Sample Project.


Enjoy! :)



## Author

Chisj, chisj2012@gmail.com
## License

WSTabBarController is available under the MIT license. See the LICENSE file for more info.
