UIViewController+Subcontrollers
============

#### About
Add subscontrollers in one line.


#### Using
```objective-c
#import "UIViewController+Subcontrollers.h"

@implementation MyViewController
...
- (void)addSubcontrollers
{
    // add subcontroller to main view
    [self addSubcontroller:self.mainSubcontroller];
    // add subcontroller to custom view
    [self addSubcontroller:self.customSubcontroller toView:self.customView];
    // add subcontroller to custom view with custom frame
    [self addSubcontroller:self.frameSubcontroller toView:self.customView
                     frame:CGRectMake(0.f, 0.f, 100.f, 100.f)];
}
...
- (void)removeSubcontrollers
{
    [self.mainSubcontroller removeFromParentController];
    [self.customSubcontroller removeFromParentController];
    [self.frameSubcontroller removeFromParentController];
}
...
```


#### Installation
Add `UIViewController+Subcontrollers` pod to your [Podfile](http://cocoapods.org/)


#### News and updates
[@okolodev](https://twitter.com/okolodev)
