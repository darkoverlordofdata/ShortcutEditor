/* 
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * BSD 2-Clause License
 */

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;




- (void)applicationWillTerminate:(NSNotification *) not
{
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _window = [[ShortcutEditor alloc] init];
    [_window setDelegate:self];

}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end


