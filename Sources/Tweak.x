#import <UIKit/UIKit.h>


%hook SBStatusBarManager

// TODO: Get iPhone hostname and use string interpolation in Title.

- (void)handleStatusBarTapWithEvent:(id)arg1 {
  UIAlertController* alert = [
    UIAlertController alertControllerWithTitle:@"Hello "
    message:@"Give you a 🥛 milk"
    preferredStyle:UIAlertControllerStyleAlert
    ];

  UIAlertAction *close = [
    UIAlertAction actionWithTitle:@"Done"
    style:UIAlertActionStyleDefault
    handler:^(UIAlertAction * _Nonnull action) {}
    ];

  [alert addAction:close];
  [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alert animated:YES completion:nil];
  
  %orig;
}

%end
