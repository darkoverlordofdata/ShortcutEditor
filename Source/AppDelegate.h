/* 
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * BSD 2-Clause License
 */

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "ShortcutEditor.h"


@interface AppDelegate : NSObject 

@property (strong, nonatomic) NSWindow *window;


- (void)applicationDidFinishLaunching:(NSNotification *) not;
- (void)applicationWillTerminate:(NSNotification *) not;

@end

