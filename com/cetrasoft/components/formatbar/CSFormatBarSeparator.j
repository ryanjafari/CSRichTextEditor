/*
 * CSFormatBarSeparator.j
 * CSRichTextEditor
 *
 * Just a small separator for our format bar.
 *
 * Created by Ryan Jafari on November 21, 2009.
 * Cetrasoft Inc.
 */
 
@import <Foundation/CPObject.j>

@implementation CSFormatBarSeparator : CPView { }

- (id)initWithX:(int)x {

	if(self = [super initWithFrame:CGRectMake(x, 2, 1, 21)]) {
		[self setBackgroundColor:[CPColor colorWithHexString:@"5f5f5f"]];	
	}

	return self;
}

@end