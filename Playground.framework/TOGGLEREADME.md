# PGToggleControlView

```
Platform : iOS
version : 0.0.1
```

## Usage

`PGToggleControlView` contains the Toggle component which is a subclass of `UIView` with PG styles. 


## Steps to create PGToggleControlView on Storyboard

### Toggle Control
```
Change class name to PGToggleControlView
If just want toggle then set proper height and width for it and it will be visible on storyboard.
If want toggle with title then need to set text property of PGToggleControlView.
ViewController needs to conform to PGToggleControlViewDelegate to get change in value for toggle component.

```

## Steps to create PGToggleControlView programacally


### Toggle component without title.
```

let toggle = PGToggleControlView()
toggle.frame = CGRect(x: 50, y: 170, width: 56, height: 20)
toggle.setOn(on: true, title: "", animated: false)
toggle.delegate = self
view.addSubview(toggle)
ViewController needs to conform to PGToggleControlViewDelegate to get change in value for toggle component.

```
### Toggle component with title.

```

let toggle = PGToggleControlView()
toggle.frame = CGRect(x: 50, y: 170, width: 100, height: 20)
toggle.setOn(on: true, title: "Hello", animated: false)
toggle.delegate = self
view.addSubview(toggle)
ViewController needs to conform to PGToggleControlViewDelegate to get change in value for toggle component.

```


