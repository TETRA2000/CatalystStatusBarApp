//
//  StatusBarController.h
//  CatalystStatusBarApp
//
//  Created by Takahiko Inayama on 2020/07/04.
//  Copyright © 2020 TETRA2000. All rights reserved.
//

#ifndef StatusBarController_h
#define StatusBarController_h

#import <Foundation/Foundation.h>

@protocol StatusBarInterface <NSObject>

- (void) enableStatusBarItem;
- (void) disableStatusBarItem;

@end

#endif /* StatusBarController_h */
