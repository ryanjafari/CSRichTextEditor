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
@import "CSFormatBar.j"
@import "CSEditorWebView.j"

@implementation CSRichTextEditor : CPView { }

- (id)initWithFrame:(CGRect*)rect {

	if(self = [super initWithFrame:rect]) {
		
		// Add editor view.
		var richTextEditorWebView = [[CSEditorWebView alloc] initWithFrame:CGRectMake(0, 26, CGRectGetWidth(rect), CGRectGetHeight(rect) - 26)];
		
		// Add the format bar.
		[self addSubview:[[CSFormatBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(rect), 26) editor:richTextEditorWebView]];
		[self addSubview:richTextEditorWebView];
	}

	return self;
}

@end