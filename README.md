# BlurryScrollyView


[![Version](https://img.shields.io/cocoapods/v/BlurryScrollyView.svg?style=flat)](https://cocoapods.org/pods/BlurryScrollyView)
[![License](https://img.shields.io/cocoapods/l/BlurryScrollyView.svg?style=flat)](https://cocoapods.org/pods/BlurryScrollyView)
[![Platform](https://img.shields.io/cocoapods/p/BlurryScrollyView.svg?style=flat)](https://cocoapods.org/pods/BlurryScrollyView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

BlurryScrollyView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BlurryScrollyView'
```

## Demo

<div>
    <video>
        <source src="https://github.com/jaredanderton/BlurryScrollyView/raw/master/animation.mp4" type="video/mp4">
    </video> 
</div>

## Usage
Add this to a `UIViewController`.`view`, when a scroll view is also used for scrolling. When scrolling, the image will start to blur. The `BlurryScrollyView` is automatically send to the back of the view you are adding it to.
```override func viewDidLoad() {
    super.viewDidLoad()
    
    let blurryScrollyView = BlurryScrollyView()
    blurryScrollyView.imageToBlur = UIImage(named: "sunset")
    blurryScrollyView.delegateScrollView = scrollView
    view.addSubview(blurryScrollyView)
}
```

There are a few properties you cant se to tweak the amount of blur. 

You can also enabled/disabled the zoom effect that is on by default, and adjust the amount of zoom.

You can also adjust the `UIBlurEffect.Style` of the blur.
```
blurryScrollyView.blurEffectStyle = .regular
blurryScrollyView.maxBlurryAlpha = 1.0
blurryScrollyView.enableZoom = true
blurryScrollyView.maxImageZoom = 0.5
```



## Author

Jared Anderton, jared@andertondev.com

## License

BlurryScrollyView is available under the MIT license. See the LICENSE file for more info.
