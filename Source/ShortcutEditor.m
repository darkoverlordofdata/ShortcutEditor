/* 
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * BSD 2-Clause License
 */
#import "ShortcutEditor.h"

/**
 * @see https://stackoverflow.com/questions/2432459/how-to-add-a-scrollable-nstableview-programmatically
 */


@implementation ShortcutEditor
- (instancetype)init {
  [super initWithContentRect:NSMakeRect(0, 0, 380, 380) styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable backing:NSBackingStoreBuffered defer:NO];
  [self setTitle:@"TableView"];

    NSRect          scrollFrame = NSMakeRect( 10, 10, 300, 300 );
    NSScrollView*   scrollView  = [[[NSScrollView alloc] initWithFrame:scrollFrame] autorelease];

    // [scrollView setBorderType:NSBezelBorder];
    [scrollView setHasVerticalScroller:YES];
    [scrollView setHasHorizontalScroller:YES];
    [scrollView setAutohidesScrollers:NO];

    NSRect          clipViewBounds  = [[scrollView contentView] bounds];
    NSTableView*    tableView       = [[[NSTableView alloc] initWithFrame:clipViewBounds] autorelease];

    NSTableColumn*  firstColumn     = [[[NSTableColumn alloc] initWithIdentifier:@"firstColumn"] autorelease];
    [[firstColumn headerCell] setStringValue:@"First Column"];
    [tableView  addTableColumn:firstColumn];

    NSTableColumn*  secondColumn        = [[[NSTableColumn alloc] initWithIdentifier:@"secondColumn"] autorelease];
    [[secondColumn headerCell] setStringValue:@"Second Column"];
    [tableView  addTableColumn:secondColumn];

    [tableView setDataSource:self];
    [scrollView setDocumentView:tableView];

    // [[[self window] contentView] addSubview:scrollView];
    [[self contentView] addSubview:scrollView];

  [self center];
  [self setIsVisible:YES];
  return self;
}

- (BOOL)windowShouldClose:(id)sender {
  [NSApp terminate:sender];
  return YES;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
    return 100;
}


- (id) tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    NSString* cellValue = [NSString stringWithFormat:@"%@ %ld", [aTableColumn identifier], (long)rowIndex];

    return cellValue;
}

@end

