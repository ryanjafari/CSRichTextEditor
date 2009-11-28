/*
 * CSFormatBarPopUpButton.j
 * CSRichTextEditor
 *
 * If we extend CSFormatBarButton here, then we'd have to implement
 * all the CPPopUpButton functionality ourselves. That's not really
 * an option so we'll need to subclass CPPopUpButton and duplicate
 * some of the theme work that's already done in CSFormatBarButton.
 * So this would not have worked anyway.
 *
 * Created by Ryan Jafari on November ?.
 * Cetrasoft Inc.
 */
 
@import <Foundation/CPObject.j>

@implementation CSFormatBarPopUpButton : CPPopUpButton { } //CPPopUpArrow?

- (id)initWithFrame:(CGRect*)rect pullsDown:pulls {

	if(self = [super initWithFrame:rect pullsDown:pulls]) {
	
		// Get the three images (left, center, right arrows).
		var limg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton0.png" size:CGSizeMake(3,18)];
 		var mimg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton1.png" size:CGSizeMake(3,18)];
 		var rimg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/popup-bezel-right.png" size:CGSizeMake(10,18)];

		// Turn it into a color, badass right?
		var color = [CPColor colorWithPatternImage:[[CPThreePartImage alloc] initWithImageSlices:[limg, mimg, rimg] isVertical:NO]];
        
        // Then, do it up strong.
        [self setValue:color forThemeAttribute:@"bezel-color" inState:CPThemeStateBordered];
        [self setValue:[CPFont systemFontOfSize:11.0] forThemeAttribute:@"font"];
        [self setValue:[CPColor blackColor] forThemeAttribute:@"text-color"];
    	[self setValue:[CPColor clearColor] forThemeAttribute:@"text-shadow-color"];
	}
	
	return self;
}


// Turn this into CSFormatBarFontSelector.
- (CPArray)fontMenuItems {

	// We will throw all the CPTextViews containing the styled font 
	// names into this array.
	var fontMenuItems = [CPArray array];
	
	// Get all the available fonts on the current system.
	var availableFonts = [[CPFontManager sharedFontManager] availableFonts];
	
	for(var i = 0; i < [availableFonts count]; i++) {
		
		// Get the font, this is just a font name string.
		var font = [availableFonts objectAtIndex:i];
		
		// Create a menu item with the font as its title and style the title.
		var menuItem = [[CPMenuItem alloc] initWithTitle:font action:nil keyEquivalent:nil];
		[menuItem setFont:[CPFont fontWithName:font size:11.0]];
		
		// Add the menu item to the list of menu items we'll send back to the font selector.
		[fontMenuItems addObject:menuItem];
	}
	
	return fontMenuItems;
}

@end