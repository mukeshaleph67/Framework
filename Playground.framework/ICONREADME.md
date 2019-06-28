# PGIcons

```
Platform : iOS
version : 0.0.1
```

## Usage

`PGIcons` contains the iconography for uob design system which can be used to set the icons for uibuttton, uiimageview, uilabel. This library helps you use icons from any of the following font icons ttf file.

* PGGlobalIconFont.ttf
* PGAccountFont.ttf
* PGTransactionFont.ttf
* PGChatbotFont.ttf
* PGOnboardIconFont.ttf
* PGCategoryIconFont.ttf

`PGIcons` supports different objects from the object library.

* UIImage
* UIImageView
* UILabel
* UIButton
* UISegmentedControl
* UITabBarItem
* UISlider
* UIBarButtonItem
* UIViewController
* UITextfield
* UIStepper

When setting an icon to any object, you have to mention which font type it is and then select which icon you want to set from that particular font icon.

### UIImage

```
import Playground

UIImage.init(icon: .globalicon(.back), size: CGSize(width: 35, height: 35))

// Icon with colors
UIImage.init(icon: icon: .globalicon(.back), size: CGSize(width: 35, height: 35), textColor: .red)
UIImage.init(icon: icon: .globalicon(.back), size: CGSize(width: 35, height: 35), textColor: .white, backgroundColor: .red)

// Stacked icons with bigger background
UIImage.init(bgIcon: icon: .globalicon(.back), topIcon: icon: .globalicon(.add))

// Stacked icons with smaller background
UIImage.init(bgIcon: .globalicon(.back), topIcon: .globalicon(.add), topTextColor: .red, bgLarge: false)

// Stacked icons with custom size
UIImage.init(bgIcon: .accountIcon(.card), topIcon: .globalicon(.add), topTextColor: .red, bgLarge: false, size: CGSize(width: 50, height: 50))

```


### UIImageView

```
import Playground

// Setting icon to image view
imageView.setIcon(icon: .transactionIcon(.contact))

// Icon with colors
imageView.setIcon(icon: .transactionIcon(.contact), textColor: .white, backgroundColor: .blue, size: nil)

```


### UILabel

```
import Playground

// Setting icon to label
label.setIcon(icon: .chatbotIcon(.livechat), iconSize: 70)

// Icon with colors
label.setIcon(icon: .chatbotIcon(.livechat), iconSize: 70, color: .white, bgColor: textColor)

// Icon with text around it
label.setIcon(prefixText: "Bus ", icon: .chatbotIcon(.livechat), postfixText: " icon", size: 20)

// Icon with color & colored text around it
label.setIcon(prefixText: "Medal ", prefixTextColor: .red, icon: .chatbotIcon(.livechat), iconColor: .red, postfixText: "", postfixTextColor: .red, size: nil, iconSize: 40)

// Icon with text with different fonts around it
label.setIcon(prefixText: "Font ", prefixTextFont: font1!, icon: .fontAwesomeSolid(.font), postfixText: " icon", postfixTextFont: font2!)

// Icon with text with different fonts & colors around it
label.setIcon(prefixText: "Bike ", prefixTextFont: font1!, prefixTextColor: .red, icon: .chatbotIcon(.livechat), iconColor: textColor, postfixText: " icon", postfixTextFont: font2!, postfixTextColor: .blue, iconSize: 30)

```


### UIButton

```
import Playground

// Setting icon to button
button.setIcon(icon: .onboardPGIcons(.camera), forState: .normal)

// Icon with size and color
button.setIcon(icon: .onboardPGIcons(.camera), iconSize: 70, color: .blue, forState: .normal)

// Icon with text around it
button.setIcon(prefixText: "Please ", icon: .onboardPGIcons(.camera), postfixText: " print", forState: .normal)

// Icon with color & colored text around it
button.setIcon(prefixText: "Lock ", prefixTextColor: .red, icon: .onboardPGIcons(.camera), iconColor: .yellow, postfixText: " icon", postfixTextColor: .blue, forState: .normal, textSize: 15, iconSize: 20)

// Icon with text with different fonts around it
button.setIcon(prefixText: "Happy ", prefixTextFont: font1!, icon: .onboardPGIcons(.camera), postfixText: " face", postfixTextFont: font2!, forState: .normal)

// Icon with text with different fonts & colors around it
button.setIcon(prefixText: "Pulse ", prefixTextFont: font1!, prefixTextColor: .darkGray, icon: .onboardPGIcons(.camera), iconColor: .red, postfixText: " icon", postfixTextFont: font2!, postfixTextColor: .purple, forState: .normal, iconSize: 40)

// Icon with title below icon
button.setIcon(icon: .onboardPGIcons(.camera), title: "Ferris Wheel", color: .red, forState: .normal)

// Icon with title below icon with different color & custom font
button.setIcon(icon: .onboardPGIcons(.camera), iconColor: .yellow, title: "RAIN MIX", titleColor: .red, font: font!, backgroundColor: .clear, borderSize: 1, borderColor: .green, forState: .normal)

```


### UISegmentedControl

```
import Playground

// Setting icon at particular index
segmentedControl.setIcon(icon: .categoryIcon(.clothing), forSegmentAtIndex: 0)
segmentedControl.setIcon(icon: .categoryIcon(.clothing), forSegmentAtIndex: 1)

// Icons with sizes & colors
segmentedControl.setIcon(icon: .categoryIcon(.clothing), color: .red, iconSize: 50, forSegmentAtIndex: 0)
segmentedControl.setIcon(icon: .categoryIcon(.clothing), color: .purple, iconSize: 50, forSegmentAtIndex: 1)

```


### UITabBarItem

```
import Playground

// Setting icon to tab bar item
tabBar.items?[0].setIcon(icon: .categoryIcon(.clothing), size: nil, textColor: .lightGray)

// Stacked icons for tab bar item
tabBar.items?[1].setIcon(bgIcon: .categoryIcon(.clothing), bgTextColor: .lightGray, topIcon: .fontAwesomeSolid(.square), topTextColor: .lightGray, bgLarge: true, size: nil)

```


### UISlider

```
import Playground

// Change minimum & maximum value icons
slider.setMaximumValueIcon(icon: .categoryIcon(.clothing))
slider.setMinimumValueIcon(icon: .categoryIcon(.clothing))

// Change minimum & maximum value icons with colors
slider.setMaximumValueIcon(icon: .categoryIcon(.clothing), customSize: nil, textColor: .red, backgroundColor: .clear)
slider.setMinimumValueIcon(icon: .categoryIcon(.clothing), customSize: nil, textColor: .blue, backgroundColor: .clear)

```


### UIBarButtonItem

```
import Playground

// Setting icon to bar button item
barButtonItem.setIcon(icon: .categoryIcon(.clothing), iconSize: 30)

// Icon with colors
barButtonItem.setIcon(icon: .categoryIcon(.clothing), iconSize: 30, color: textColor)

// Icon with custom cgRect
barButtonItem.setIcon(icon: .categoryIcon(.clothing), iconSize: 30, color: textColor, cgRect: CGRect(x: 0, y: 0, width: 30, height: 30), target: self, action: #selector(barButtonItem(sender:)))

// Icon with text around it
barButtonItem.setIcon(prefixText: "Please ", icon: .categoryIcon(.clothing), postfixText: " download", cgRect: CGRect(x: 0, y: 0, width: 30, height: 30), size: 23, target: self, action: #selector(barButtonItem(sender:)))

// Icon with color & colored text around it
barButtonItem.setIcon(prefixText: "Blue ", prefixTextColor: .red, icon: .categoryIcon(.clothing), iconColor: .blue, postfixText: " football", postfixTextColor: .green, cgRect: CGRect(x: 0, y: 0, width: 30, height: 30), size: 20, iconSize: 30, target: self, action: #selector(barButtonItem(sender:)))

// Icon with text with different fonts around it
barButtonItem.setIcon(prefixText: "Digit ", prefixTextFont: font1!, icon: .categoryIcon(.clothing), postfixText: " One", postfixTextFont: font2!, cgRect: CGRect(x: 0, y: 0, width: 30, height: 30), target: self, action: #selector(barButtonItem(sender:)))

// Icon with text with different fonts & colors around it
barButtonItem.setIcon(prefixText: "", prefixTextFont: font1!, prefixTextColor: .red, icon: .categoryIcon(.clothing), iconColor: .blue, postfixText: " football", postfixTextFont: font2!, postfixTextColor: .green, cgRect: CGRect(x: 0, y: 0, width: 30, height: 30), iconSize: 24, target: self, action: #selector(barButtonItem(sender:)))

```


### UIViewController

```
import Playground

// Setting icon to the title
self.setTitleIcon(icon: .categoryIcon(.clothing), iconSize: 30, color: .red)

```


### UITextfield

```
import Playground

// Setting left view icon
textfield.setLeftViewIcon(icon: .categoryIcon(.clothing))

// Left view icon with colors & leftViewMode
textfield.setLeftViewIcon(icon: .state(.TX), leftViewMode: .always, textColor: .blue, backgroundColor: .clear, size: nil)
textfield.setLeftViewIcon(icon: .categoryIcon(.clothing), leftViewMode: .unlessEditing, textColor: .green, backgroundColor: .clear, size: nil)

// Setting right view icon
textfield.setRightViewIcon(icon: .openIconic(.questionMark))

// Right view icon with colors & rightViewMode
textfield.setRightViewIcon(icon: .categoryIcon(.clothing), rightViewMode: .always, textColor: .red, backgroundColor: .clear, size: nil)

```


### UIStepper

```
import Playground

// Setting icons
stepper.setDecrementIcon(icon: .categoryIcon(.clothing), forState: .normal)
stepper.setIncrementIcon(icon: .categoryIcon(.clothing), forState: .normal)

```



