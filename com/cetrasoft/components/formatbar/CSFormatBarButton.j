/*
 * CSFormatBarButton.j
 * CSRichTextEditor
 *
 * We could also do this with themes... We're going to try and
 * inherit here, and see if a CPPopUpButton will inherit these 
 * theme attributes from a custom CPButton class (CSFormatBarButton)
 * If it does we'll see if we can throw on the arrows some how. If it
 * doesn't, at least we have some clean classes in case we want to 
 * export this all to themes later (and use theme methods on controls
 * to get controls with our custom themes applied).
 *
 * Created by Ryan Jafari on November 20th, 2009.
 * Cetrasoft Inc.
 */
 
@import <Foundation/CPObject.j>

// CSFormatBarButton style mask global variables.
CSFormatBarButtonNoLeftMask = 1;
CSFormatBarButtonNoRightMask = 2;

@implementation CSFormatBarButton : CPButton { }

- (id)initWithFrame:(CGRect*)rect {
	// FIXME: Call initWithFrame:styleMask:
}

// What does the styleMask mean here? Glad you asked.
// Basically we need to provide for different button styles
// because as you can see, the font style buttons (bold, italic, underline)
// aren't normal looking buttons (they have rounded edges taken off in some places).
- (id)initWithFrame:(CGRect*)rect styleMask:(int)styleMask {

	if(self = [super initWithFrame:rect]) {
				
		var bezelLeft = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton0.png" size:CGSizeMake(3,18)];
	 	var bezelCenter = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton1.png" size:CGSizeMake(3,18)];
		var	bezelRight = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton2.png" size:CGSizeMake(3,18)];
		var bezelHighlightedLeft = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButtonHighlighted0.png" size:CGSizeMake(3,18)];
 		var bezelHighlightedCenter = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButtonHighlighted1.png" size:CGSizeMake(3,18)];
 		var bezelHighlightedRight = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButtonHighlighted2.png" size:CGSizeMake(3,18)];

		if(styleMask == (CSFormatBarButtonNoLeftMask)) {
 			bezelLeft = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButtonDivider.png" size:CGSizeMake(1,18)];
 			bezelHighlightedLeft = bezelLeft;
		}
		else if(styleMask == (CSFormatBarButtonNoRightMask)) {
			bezelRight = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButtonDivider.png" size:CGSizeMake(1,18)];
			bezelHighlightedRight = bezelRight;
		}
		else if(styleMask == (CSFormatBarButtonNoLeftMask | CSFormatBarButtonNoRightMask)) {
			bezelLeft = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButtonDivider.png" size:CGSizeMake(1,18)];
			bezelRight = bezelLeft;
			bezelHighlightedLeft = bezelLeft;
			bezelHighlightedRight = bezelLeft;
		}
 		
 		var bezelColor = [CPColor colorWithPatternImage:[[CPThreePartImage alloc] initWithImageSlices:[bezelLeft, bezelCenter, bezelRight] isVertical:NO]];
 		var highlightedBezelColor = [CPColor colorWithPatternImage:[[CPThreePartImage alloc] initWithImageSlices:
 			[
 				bezelHighlightedLeft, 
 				bezelHighlightedCenter, 
 				bezelHighlightedRight
 			] 
 		isVertical:NO]];
        
        [self setValue:bezelColor forThemeAttribute:@"bezel-color" inState:CPThemeStateBordered];
        [self setValue:highlightedBezelColor forThemeAttribute:@"bezel-color" inState:CPThemeStateBordered|CPThemeStateHighlighted];
        [self setValue:CGInsetMake(0.0, 5.0, 0.0, 7.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];

        //[button setValue:[CPFont boldSystemFontOfSize:12.0] forThemeAttribute:@"font"];
	}
	
	return self;
}

@end