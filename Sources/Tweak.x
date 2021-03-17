#import <UIKit/UIKit.h>

// Sugar magic
#define let __auto_type const
#define var __auto_type

%hook SBStatusBarManager

// TODO: Get iPhone hostname and use string interpolation in Title.
// var hostName = [[NSHost currentHost] localizedName];

var title = @"Hey";
var milkMessage = @"Give you a 🥛 milk";

- (void)handleStatusBarTapWithEvent:(id)params {
  var alert = [
    UIAlertController alertControllerWithTitle:title
    message:milkMessage
    preferredStyle:UIAlertControllerStyleAlert
    ];

  var close = [
    UIAlertAction actionWithTitle:@"Done"
    style:UIAlertActionStyleDefault
    handler:^(UIAlertAction * _Nonnull action) {}
    ];


  [alert addAction:close];
  [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alert animated:YES completion:nil];
  
  %orig;
}

%end
