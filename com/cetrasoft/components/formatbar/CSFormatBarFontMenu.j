/*
 * <ClassName>.j
 * CSRichTextEditor
 *
 * <comments>
 *
 * Created by Ryan Jafari on <date>.
 * Cetrasoft Inc.
 */
 
@import <Foundation/CPObject.j>

@implementation CSFormatBarFontMenu : CPObject { }

// Turn this into CSFormatBarFontSelector.
+ (void)fontMenuItems:(CPPopUpButton*)button {

	// We will throw all the CPTextViews containing the styled font 
	// names into this array.
	//var fontMenuItems = [CPArray array];
	
	// Get all the available fonts on the current system.
	var availableFonts = [[CPFontManager sharedFontManager] availableFonts];
	
	for(var i = 0; i < [availableFonts count]; i++) {
		
		// Get the font, this is just a font name string.
		var font = [availableFonts objectAtIndex:i];
		
		// Create a menu item with the font as its title and style the title.
		var menuItem = [[CPMenuItem alloc] initWithTitle:font action:NULL keyEquivalent:nil];
		[menuItem setFont:[CPFont fontWithName:font size:11.0]];
		
		// Add the menu item to the list of menu items we'll send back to the font selector.
		[button addItem:menuItem];
	}
	
	//return fontMenuItems;
}

@end