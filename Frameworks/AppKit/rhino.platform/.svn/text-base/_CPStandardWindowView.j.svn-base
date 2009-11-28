i;15;_CPWindowView.jc;11844;
var _1=41;
var _2=nil,_3=nil;
var _4=objj_allocateClassPair(CPView,"_CPTexturedWindowHeadView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_gradientView"),new objj_ivar("_solidView"),new objj_ivar("_dividerView")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPView")},"initWithFrame:",_8);
if(_6){
var _9=objj_msgSend(_6,"class"),_a=objj_msgSend(_6,"bounds");
_gradientView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_a),_1));
objj_msgSend(_gradientView,"setBackgroundColor:",objj_msgSend(_9,"gradientColor"));
objj_msgSend(_6,"addSubview:",_gradientView);
_solidView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,_1,CGRectGetWidth(_a),CGRectGetHeight(_a)-_1));
objj_msgSend(_solidView,"setBackgroundColor:",objj_msgSend(_9,"solidColor"));
objj_msgSend(_6,"addSubview:",_solidView);
}
return _6;
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"bounds");
objj_msgSend(_gradientView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_e),_1));
objj_msgSend(_solidView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_e),CGRectGetHeight(_e)-_1));
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("gradientColor"),function(_f,_10){
with(_f){
if(!_2){
var _11=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPWindowView,"class"));
_2=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_11,"pathForResource:","CPWindow/Standard/CPWindowStandardTop0.png"),CGSizeMake(6,41)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_11,"pathForResource:","CPWindow/Standard/CPWindowStandardTop1.png"),CGSizeMake(1,41)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_11,"pathForResource:","CPWindow/Standard/CPWindowStandardTop2.png"),CGSizeMake(6,41))],NO));
}
return _2;
}
}),new objj_method(sel_getUid("solidColor"),function(_12,_13){
with(_12){
if(!_3){
_3=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",195/255,195/255,195/255,1);
}
return _3;
}
})]);
var _14=nil,_15=nil,_16=nil,_17=nil,_18=nil,_19=nil,_1a=nil,_1b=nil,_1c=nil;
var _1d=41;
STANDARD_TITLEBAR_HEIGHT=25;
var _4=objj_allocateClassPair(_CPWindowView,"_CPStandardWindowView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_headView"),new objj_ivar("_dividerView"),new objj_ivar("_bodyView"),new objj_ivar("_toolbarView"),new objj_ivar("_titleField"),new objj_ivar("_closeButton"),new objj_ivar("_minimizeButton"),new objj_ivar("_isDocumentEdited")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("contentRectForFrameRect:"),function(_1e,_1f,_20){
with(_1e){
var _21=objj_msgSend(objj_msgSend(_1e,"class"),"contentRectForFrameRect:",_20),_22=objj_msgSend(objj_msgSend(_1e,"window"),"toolbar");
if(objj_msgSend(_22,"isVisible")){
toolbarHeight=CGRectGetHeight(objj_msgSend(objj_msgSend(_22,"_toolbarView"),"frame"));
_21.origin.y+=toolbarHeight;
_21.size.height-=toolbarHeight;
}
return _21;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(objj_msgSend(_23,"class"),"frameRectForContentRect:",_25),_27=objj_msgSend(objj_msgSend(_23,"window"),"toolbar");
if(objj_msgSend(_27,"isVisible")){
toolbarHeight=CGRectGetHeight(objj_msgSend(objj_msgSend(_27,"_toolbarView"),"frame"));
_26.origin.y-=toolbarHeight;
_26.size.height+=toolbarHeight;
}
return _26;
}
}),new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_28,_29,_2a,_2b){
with(_28){
_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("_CPWindowView")},"initWithFrame:styleMask:",_2a,_2b);
if(_28){
var _2c=objj_msgSend(_28,"class"),_2d=objj_msgSend(_28,"bounds");
_headView=objj_msgSend(objj_msgSend(_CPTexturedWindowHeadView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_2d),objj_msgSend(objj_msgSend(_28,"class"),"titleBarHeight")));
objj_msgSend(_headView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_headView,"setHitTests:",NO);
objj_msgSend(_28,"addSubview:",_headView);
_dividerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_headView,"frame")),CGRectGetWidth(_2d),1));
objj_msgSend(_dividerView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_dividerView,"setBackgroundColor:",objj_msgSend(_2c,"dividerBackgroundColor"));
objj_msgSend(_dividerView,"setHitTests:",NO);
objj_msgSend(_28,"addSubview:",_dividerView);
var y=CGRectGetMaxY(objj_msgSend(_dividerView,"frame"));
_bodyView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,y,CGRectGetWidth(_2d),CGRectGetHeight(_2d)-y));
objj_msgSend(_bodyView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_bodyView,"setBackgroundColor:",objj_msgSend(_2c,"bodyBackgroundColor"));
objj_msgSend(_bodyView,"setHitTests:",NO);
objj_msgSend(_28,"addSubview:",_bodyView);
objj_msgSend(_28,"setResizeIndicatorOffset:",CGSizeMake(2,2));
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleField,"setTextShadowColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_titleField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_titleField,"setStringValue:","Untitled");
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleField,"setStringValue:","");
objj_msgSend(_28,"addSubview:",_titleField);
if(_styleMask&CPClosableWindowMask){
if(!_17){
var _2f=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_17=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2f,"pathForResource:","CPWindow/Standard/CPWindowStandardCloseButton.png"),CGSizeMake(16,16));
_18=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2f,"pathForResource:","CPWindow/Standard/CPWindowStandardCloseButtonHighlighted.png"),CGSizeMake(16,16));
_19=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2f,"pathForResource:","CPWindow/Standard/CPWindowStandardCloseButtonUnsaved.png"),CGSizeMake(16,16));
_1a=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2f,"pathForResource:","CPWindow/Standard/CPWindowStandardCloseButtonUnsavedHighlighted.png"),CGSizeMake(16,16));
}
_closeButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(8,7,16,16));
objj_msgSend(_closeButton,"setBordered:",NO);
objj_msgSend(_28,"_updateCloseButton");
objj_msgSend(_28,"addSubview:",_closeButton);
}
if(_styleMask&CPMiniaturizableWindowMask&&!objj_msgSend(CPPlatform,"isBrowser")){
if(!_1b){
var _2f=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_1b=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2f,"pathForResource:","CPWindow/Standard/CPWindowStandardMinimizeButton.png"),CGSizeMake(16,16));
_1c=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2f,"pathForResource:","CPWindow/Standard/CPWindowStandardMinimizeButtonHighlighted.png"),CGSizeMake(16,16));
}
_minimizeButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(27,7,16,16));
objj_msgSend(_minimizeButton,"setBordered:",NO);
objj_msgSend(_minimizeButton,"setImage:",_1b);
objj_msgSend(_minimizeButton,"setAlternateImage:",_1c);
objj_msgSend(_28,"addSubview:",_minimizeButton);
}
objj_msgSend(_28,"tile");
}
return _28;
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_30,_31){
with(_30){
objj_msgSend(_closeButton,"setTarget:",objj_msgSend(_30,"window"));
objj_msgSend(_closeButton,"setAction:",sel_getUid("performClose:"));
objj_msgSend(_minimizeButton,"setTarget:",objj_msgSend(_30,"window"));
objj_msgSend(_minimizeButton,"setAction:",sel_getUid("performMiniaturize:"));
}
}),new objj_method(sel_getUid("toolbarOffset"),function(_32,_33){
with(_32){
return CGSizeMake(0,objj_msgSend(objj_msgSend(_32,"class"),"titleBarHeight"));
}
}),new objj_method(sel_getUid("tile"),function(_34,_35){
with(_34){
objj_msgSendSuper({receiver:_34,super_class:objj_getClass("_CPWindowView")},"tile");
var _36=objj_msgSend(_34,"window"),_37=objj_msgSend(_34,"bounds"),_38=CGRectGetWidth(_37);
objj_msgSend(_headView,"setFrameSize:",CGSizeMake(_38,objj_msgSend(_34,"toolbarMaxY")));
objj_msgSend(_dividerView,"setFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_headView,"frame")),_38,1));
var _39=CGRectGetMaxY(objj_msgSend(_dividerView,"frame"));
objj_msgSend(_bodyView,"setFrame:",CGRectMake(0,_39,_38,CGRectGetHeight(_37)-_39));
var _3a=8;
if(_closeButton){
_3a+=19;
}
if(_minimizeButton){
_3a+=19;
}
objj_msgSend(_titleField,"setFrame:",CGRectMake(_3a,5,_38-_3a*2,CGRectGetHeight(objj_msgSend(_titleField,"frame"))));
objj_msgSend(objj_msgSend(_36,"contentView"),"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_dividerView,"frame"))));
}
}),new objj_method(sel_getUid("_updateCloseButton"),function(_3b,_3c){
with(_3b){
if(_isDocumentEdited){
objj_msgSend(_closeButton,"setImage:",_19);
objj_msgSend(_closeButton,"setAlternateImage:",_1a);
}else{
objj_msgSend(_closeButton,"setImage:",_17);
objj_msgSend(_closeButton,"setAlternateImage:",_18);
}
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_3d,_3e,_3f){
with(_3d){
_isDocumentEdited=_3f;
objj_msgSend(_3d,"_updateCloseButton");
}
}),new objj_method(sel_getUid("setTitle:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_titleField,"setStringValue:",_42);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_43,_44,_45){
with(_43){
if(CGRectContainsPoint(objj_msgSend(_headView,"frame"),objj_msgSend(_43,"convertPoint:fromView:",objj_msgSend(_45,"locationInWindow"),nil))){
return objj_msgSend(_43,"trackMoveWithEvent:",_45);
}
objj_msgSendSuper({receiver:_43,super_class:objj_getClass("_CPWindowView")},"mouseDown:",_45);
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("bodyBackgroundColor"),function(_46,_47){
with(_46){
if(!_14){
_14=objj_msgSend(CPColor,"colorWithWhite:alpha:",0.96,1);
}
return _14;
}
}),new objj_method(sel_getUid("dividerBackgroundColor"),function(_48,_49){
with(_48){
if(!_15){
_15=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",125/255,125/255,125/255,1);
}
return _15;
}
}),new objj_method(sel_getUid("titleColor"),function(_4a,_4b){
with(_4a){
if(!_16){
_16=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",44/255,44/255,44/255,1);
}
return _16;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_4c,_4d,_4e){
with(_4c){
var _4f=CGRectMakeCopy(_4e),_50=objj_msgSend(_4c,"titleBarHeight")+1;
_4f.origin.y+=_50;
_4f.size.height-=_50;
return _4f;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_51,_52,_53){
with(_51){
var _54=CGRectMakeCopy(_53),_55=objj_msgSend(_51,"titleBarHeight")+1;
_54.origin.y-=_55;
_54.size.height+=_55;
return _54;
}
}),new objj_method(sel_getUid("titleBarHeight"),function(_56,_57){
with(_56){
return STANDARD_TITLEBAR_HEIGHT;
}
})]);
