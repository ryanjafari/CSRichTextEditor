/*
 * CSFormatBarColorWell.j
 * CSRichTextEditor
 *
 * A custom themed color well for the formatting
 * toolbar.
 *
 * Created by Ryan Jafari on <date>.
 * Cetrasoft Inc.
 */
 
@import <Foundation/CPObject.j>
@import "CSFormatBarButton.j"

@implementation CSFormatBarColorWellButton : CSFormatBarButton { 

	CPColorWell* colorWell;
}

- (id)initWithFrame:(CGRect*)rect {

	if(self = [super initWithFrame:rect styleMask:nil]) {
		
		var limg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton0.png" size:CGSizeMake(3,18)];
 		var mimg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarButton1.png" size:CGSizeMake(3,18)];
 		var rimg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/popup-bezel-right.png" size:CGSizeMake(10,18)];
		var w = CGRectGetWidth(rect);

		colorWell = [[CPColorWell alloc] initWithFrame:CGRectMake(0,0,w,17)];
		[colorWell setColor:[CPColor blackColor]];

		[self addSubview:colorWell];
	}
	 
	return self;
}

@end