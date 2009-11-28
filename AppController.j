/*
 * AppController.j
 * NewApplication
 *
 * Created by You on July 5, 2009.
 * Copyright 2009, Your Company All rights reserved.
 */
 
@import <Foundation/CPObject.j>
@import <AppKit/CPToolbar.j>
@import <AppKit/CPToolbarItem.j>
@import <AppKit/CPOutlineView.j>
@import "com/cetrasoft/components/formatbar/CSRichTextEditor.j"

@implementation AppController : CPObject { }

- (void)applicationDidFinishLaunching:(CPNotification)aNotification {

 	// The main window and friends. We can also use mainWindow here 
    // (and keyWindow too, since the mainWindow happens to be the
    // keyWindow at this point in time).
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];
    var frame = [theWindow frame];
    var contentView = [theWindow contentView];
    
    // Bring forward the window
    [theWindow orderFront:self];
	
	//var mainWindow = [[CPApplication sharedApplication] mainWindow];
	//var contentView = [mainWindow contentView];
	//var frame = [mainWindow frame];
	
	var w = CGRectGetWidth(frame);
	var h = CGRectGetHeight(frame);
	
	var richTextEditor = [[CSRichTextEditor alloc] initWithFrame:CGRectMake(0,0,w,h)];
	
	[contentView addSubview:richTextEditor];
	
	//[[mainWindow contentView] addSubview:richTextEditor];
}

@end

