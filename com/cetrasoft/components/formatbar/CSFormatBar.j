/*
 * CSFormatBar.j
 * CSRichTextEditor
 *
 * A format bar for formatting text in the attached 
 * editor. This is an epic class; you are not prepared!
 *
 * Created by Ryan Jafari on November 20th, 2009.
 * Cetrasoft Inc.
 */
 
@import <Foundation/CPObject.j>
@import "CSFormatBarPopUpButton.j"
@import "CSFormatBarColorWellButton.j"
@import "CSFormatBarSeparator.j"
@import "CSFormatBarFontMenu.j"


@implementation CSFormatBar : CPView { 

	// Refers to an instance of a rich text editor view.
	var editor;
}

- (id)initWithFrame:(CGRect*)rect editor:richTextEditorView {

	if(self = [super initWithFrame:rect]) {
	
		// This is the rich text editor view.
		editor = richTextEditorView;
			
		// Draw the background.
		var bimg = [[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormatBarBackground.png" size:CGSizeMake(1,26)];
		var bclr = [CPColor colorWithPatternImage:bimg];
		[self setBackgroundColor:bclr];
		
		// Font selection pop up button.
		var fontSelector = [[CSFormatBarPopUpButton alloc] initWithFrame:CGRectMake(10,4,140,18) pullsDown:NO];
		[CSFormatBarFontMenu fontMenuItems:fontSelector];
		[fontSelector setAction:@selector(fontName:)];
		[fontSelector setTarget:self];
		
		// Font size selection pop up button.
		var sizeSelector = [[CSFormatBarPopUpButton alloc] initWithFrame:CGRectMake(160,4,50,18) pullsDown:NO];
		[sizeSelector addItemsWithTitles:["1","2","3","4","5","6","7"]];
		[sizeSelector setAction:@selector(fontSize:)];
		[sizeSelector setTarget:self];
		
		// Color well button for foreColor.
		var foreColorSelector = [[CSFormatBarColorWellButton alloc] initWithFrame:CGRectMake(220,4,30,18)];
		[foreColorSelector.colorWell setAction:@selector(foreColor:)];
		[foreColorSelector.colorWell setTarget:self];
		
		//
		// Add some font style buttons.
		//
		
		// Button to make bold text.
		var boldButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(271,4,20,18) styleMask:CSFormatBarButtonNoRightMask];
		[boldButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormattingBold.png" size:CGSizeMake(6, 7)]];
		[boldButton setAction:@selector(bold)];
		[boldButton setTarget:self];
	
		// Button to italicize text.
		var italicButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(290,4,20,18) 
			styleMask:CSFormatBarButtonNoRightMask | CSFormatBarButtonNoLeftMask];
		[italicButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormattingItalic.png" size:CGSizeMake(4, 9)]];
		[italicButton setAction:@selector(italic)];
		[italicButton setTarget:self];

		// Button to underline text.
		var underlineButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(309,4,20,18) styleMask:CSFormatBarButtonNoLeftMask];
		[underlineButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/FormattingUnderline.png" size:CGSizeMake(6, 9)]];
		[underlineButton setAction:@selector(underline)];
		[underlineButton setTarget:self];
		
		//
		// Add some alignment buttons.
		//
		
		// Button to left align text.
		var leftAlignButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(350,4,23,18) styleMask:CSFormatBarButtonNoRightMask];
		[leftAlignButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/alignment/AlignmentLeft.png" 
			size:CGSizeMake(11, 9)]];
		[leftAlignButton setValue:CGInsetMake(0.0, 5.0, 0.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];
		[leftAlignButton setAction:@selector(justifyLeft)];
		[leftAlignButton setTarget:self];

		// Button to center align text.
		var centerAlignButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(372,4,23,18) 
			styleMask:CSFormatBarButtonNoRightMask | CSFormatBarButtonNoLeftMask];
		[centerAlignButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/alignment/AlignmentCenter.png" 
			size:CGSizeMake(12, 9)]];
		[centerAlignButton setValue:CGInsetMake(0.0, 5.0, 0.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];
		[centerAlignButton setAction:@selector(justifyCenter)];
		[centerAlignButton setTarget:self];

		// Button to right align text.
		var rightAlignButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(394,4,23,18) 
			styleMask:CSFormatBarButtonNoRightMask | CSFormatBarButtonNoLeftMask];
		[rightAlignButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/alignment/AlignmentRight.png" 
			size:CGSizeMake(11, 9)]];
		[rightAlignButton setValue:CGInsetMake(0.0, 5.0, 0.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];		
		[rightAlignButton setAction:@selector(justifyRight)];
		[rightAlignButton setTarget:self];
		
		// Button to justify text.
		var justifyAlignButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(416,4,23,18) styleMask:CSFormatBarButtonNoLeftMask];
		[justifyAlignButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/alignment/AlignmentJustified.png" 
			size:CGSizeMake(12, 9)]];
		[justifyAlignButton setValue:CGInsetMake(0.0, 5.0, 0.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];
		
		//
		// Add some identation buttons.
		//
		
		var indentButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(459,4,23,18) styleMask:CSFormatBarButtonNoRightMask];
		[indentButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/indentation/BulletIndentationIncrease.png" 
			size:CGSizeMake(15, 11)]];
		
		// CGInsetMake(a,b,c,d)
		// increasing a moves it down
		// increasing b moves it left
		// increasing c moves it up
		// increasing d movies it right
		[indentButton setValue:CGInsetMake(0.0, 0.0, 0.0, 4.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];		
		[indentButton setAction:@selector(indent)];
		[indentButton setTarget:self];
		
		var outdentButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(481,4,23,18) styleMask:CSFormatBarButtonNoLeftMask];
		[outdentButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/indentation/BulletIndentationDecrease.png" 
			size:CGSizeMake(15, 11)]];
		[outdentButton setValue:CGInsetMake(0.0, 0.0, 0.0, 4.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];		
		[outdentButton setAction:@selector(outdent)];
		[outdentButton setTarget:self];
		
		//
		// Add some bullet buttons.
		//
		
		// Button to add a bulleted list (dot style / unordered).
		var dotButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(514,4,23,18) styleMask:CSFormatBarButtonNoRightMask];
		[dotButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/bullets/BulletStyleDot.png" 
			size:CGSizeMake(15, 11)]];		
		[dotButton setValue:CGInsetMake(0.0, 0.0, 0.0, 4.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];	
		[dotButton setAction:@selector(insertUnorderedList)];
		[dotButton setTarget:self];
		
		// Button to add a bulleted list (number style / ordered).s
		var numberButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(536,4,23,18) styleMask:CSFormatBarButtonNoLeftMask];
		[numberButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/bullets/BulletStyleNumber.png" 
			size:CGSizeMake(15, 11)]];		
		[numberButton setValue:CGInsetMake(0.0, 0.0, 0.0, 4.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];	
		[numberButton setAction:@selector(insertOrderedList)];
		[numberButton setTarget:self];
		
		// Back color fill label.
		var fillLabel = [[CPTextField alloc] initWithFrame:CGRectMake(579,4,23,18)];
		[fillLabel setStringValue:@"Fill:"];
		[fillLabel setFont:[CPFont systemFontOfSize:11.0]];
		[fillLabel sizeToFit];
		
		// Color well button for backColor.
		var backColorSelector = [[CSFormatBarColorWellButton alloc] initWithFrame:CGRectMake(607,4,30,18)];
		[backColorSelector.colorWell setAction:@selector(backColor:)];
		[backColorSelector.colorWell setTarget:self];
		
		// Undo/redo
		var undoButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(658,4,23,18) styleMask:CSFormatBarButtonNoRightMask];
		[undoButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/undo-redo/undo2.png" 
			size:CGSizeMake(12, 7)]];		
		[undoButton setValue:CGInsetMake(0.0, 0.0, 0.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];	
		[undoButton setAction:@selector(undo)];
		[undoButton setTarget:self];
		
		var redoButton = [[CSFormatBarButton alloc] initWithFrame:CGRectMake(680,4,23,18) styleMask:CSFormatBarButtonNoLeftMask];
		[redoButton setImage:[[CPImage alloc] initByReferencingFile:@"Resources/formatbar/buttons/undo-redo/redo2.png" 
			size:CGSizeMake(12, 7)]];		
		[redoButton setValue:CGInsetMake(0.0, 0.0, 0.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBordered];	
		[redoButton setAction:@selector(redo)];
		[redoButton setTarget:self];
			
		// Add items to menu.
		[self addSubview:fontSelector];
		[self addSubview:sizeSelector];
		[self addSubview:foreColorSelector];
		[self addSubview:[[CSFormatBarSeparator alloc] initWithX:260]];
		[self addSubview:boldButton];
		[self addSubview:italicButton];
		[self addSubview:underlineButton];
		[self addSubview:[[CSFormatBarSeparator alloc] initWithX:339]];
		[self addSubview:leftAlignButton];
		[self addSubview:centerAlignButton];
		[self addSubview:rightAlignButton];
		[self addSubview:justifyAlignButton];
		[self addSubview:[[CSFormatBarSeparator alloc] initWithX:449]];
		[self addSubview:indentButton];
		[self addSubview:outdentButton];
		[self addSubview:dotButton];
		[self addSubview:numberButton];
		[self addSubview:[[CSFormatBarSeparator alloc] initWithX:569]];
		[self addSubview:fillLabel];
		[self addSubview:backColorSelector];
		[self addSubview:[[CSFormatBarSeparator alloc] initWithX:647]];
		[self addSubview:undoButton];
		[self addSubview:redoButton];
		
		// Make it width resizable!
		[self setAutoresizingMask: CPViewWidthSizable];
	}
	
	return self;
}

//
// One major difference between Mozilla and Internet Explorer that affects 
// designMode is the generated code in the editable document: while Internet 
// Explorer uses HTML tags (em, i, etc), Mozilla 1.3 will generate by default 
// spans with inline style rules. The useCSS command can be used to toggle between 
// CSS and HTML markup creation.
//

// Suports HTML font sizes 1 - 7. If we want 
// to provide for more font sizes, we'll likely 
// have to find a different method of manipulating 
// the font size.

- (void)fontName:(CPPopUpButton*)button {
	[[button window] makeFirstResponder:button]; 
	[editor DOMWindow].document.execCommand('fontName', false, [button titleOfSelectedItem]);
	[editor DOMWindow].focus();
}

- (void)fontSize:(CPPopUpButton*)button {
	[[button window] makeFirstResponder:button]; 
	[editor DOMWindow].document.execCommand('fontSize', false, [button titleOfSelectedItem]);
	[editor DOMWindow].focus();
}

- (void)foreColor:(CPColorWell*)colorWell {
	[editor DOMWindow].document.execCommand('foreColor', false, [[colorWell color] hexString]);
	[editor DOMWindow].focus();
}

- (void)bold {
	[editor DOMWindow].document.execCommand('bold', false, null);
	[editor DOMWindow].focus();
}

- (void)italic {
	[editor DOMWindow].document.execCommand('italic', false, null);
	[editor DOMWindow].focus();
}

- (void)underline {
	[editor DOMWindow].document.execCommand('underline', false, null);
	[editor DOMWindow].focus();
}

- (void)justifyLeft {
	[editor DOMWindow].document.execCommand('justifyLeft', false, null);
	[editor DOMWindow].focus();
}

- (void)justifyCenter {
	[editor DOMWindow].document.execCommand('justifyCenter', false, null);
	[editor DOMWindow].focus();	
}

- (void)justifyRight {
	[editor DOMWindow].document.execCommand('justifyRight', false, null);
	[editor DOMWindow].focus();
}

- (void)indent {
	[editor DOMWindow].document.execCommand('indent', false, null);
	[editor DOMWindow].focus();
}

- (void)outdent {
	[editor DOMWindow].document.execCommand('outdent', false, null);
	[editor DOMWindow].focus();
}

- (void)insertUnorderedList {
	[editor DOMWindow].document.execCommand('insertUnorderedList', false, null);
	[editor DOMWindow].focus();
}

- (void)insertOrderedList {
	[editor DOMWindow].document.execCommand('insertOrderedList', false, null);
	[editor DOMWindow].focus();
}

- (void)backColor:(CPColorWell*)colorWell {
	[editor DOMWindow].document.execCommand('backColor', false, [[colorWell color] hexString]);
	[editor DOMWindow].focus();
}	

- (void)undo {
	[editor DOMWindow].document.execCommand('undo', false, null);
	[editor DOMWindow].focus();
}

- (void)redo {
	[editor DOMWindow].document.execCommand('redo', false, null);
	[editor DOMWindow].focus();
}

@end