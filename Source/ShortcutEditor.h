/* 
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * BSD 2-Clause License
 */
#import <Cocoa/Cocoa.h>
#if OBJC_RUNTIME==20
#import "NSPatch/NSPatch.h"
#endif

@interface ShortcutEditor : NSWindow {
  NSTextField* label;
}
- (instancetype)init;
- (BOOL)windowShouldClose:(id)sender;
@end
