/* 
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * BSD 2-Clause License
 */
#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "AppDelegate.h"

int main(int argc, char *argv[]) 
{

  @autoreleasepool {
    [NSApplication sharedApplication];
    AppDelegate *controller = [[AppDelegate alloc]init];
    [[NSApplication sharedApplication] setDelegate: controller];

    NSApplicationMain(argc, (const char **)argv);

  }
  return 0;
}