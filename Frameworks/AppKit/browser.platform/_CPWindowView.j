i;8;CPView.ji;13;CPImageView.jc;9331;
var _1=nil;
var _2=objj_allocateClassPair(CPView,"_CPWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_styleMask"),new objj_ivar("_resizeIndicator"),new objj_ivar("_resizeIndicatorOffset"),new objj_ivar("_toolbarView"),new objj_ivar("_resizeFrame"),new objj_ivar("_mouseDraggedPoint"),new objj_ivar("_cachedScreenFrame")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("contentRectForFrameRect:"),function(_4,_5,_6){
with(_4){
return objj_msgSend(objj_msgSend(_4,"class"),"contentRectForFrameRect:",_6);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(objj_msgSend(_7,"class"),"frameRectForContentRect:",_9);
}
}),new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_a,_b,_c,_d){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPView")},"initWithFrame:",_c);
if(_a){
_styleMask=_d;
_resizeIndicatorOffset=CGSizeMake(0,0);
_toolbarOffset=CGSizeMake(0,0);
objj_msgSend(_a,"setShowsResizeIndicator:",!(_styleMask&CPBorderlessBridgeWindowMask)&&(_styleMask&CPResizableWindowMask));
}
return _a;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_e,_f,_10){
with(_e){
}
}),new objj_method(sel_getUid("setTitle:"),function(_11,_12,_13){
with(_11){
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_14,_15,_16){
with(_14){
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_17,"window");
if((_styleMask&CPResizableWindowMask)&&_resizeIndicator){
var _1b=objj_msgSend(_resizeIndicator,"frame");
if(CGRectContainsPoint(_1b,objj_msgSend(_17,"convertPoint:fromView:",objj_msgSend(_19,"locationInWindow"),nil))){
return objj_msgSend(_17,"trackResizeWithEvent:",_19);
}
}
if(objj_msgSend(_1a,"isMovableByWindowBackground")){
objj_msgSend(_17,"trackMoveWithEvent:",_19);
}else{
objj_msgSendSuper({receiver:_17,super_class:objj_getClass("CPView")},"mouseDown:",_19);
}
}
}),new objj_method(sel_getUid("trackResizeWithEvent:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1e,"locationInWindow"),_20=objj_msgSend(_1e,"type");
if(_20===CPLeftMouseUp){
return;
}
var _21=objj_msgSend(_1c,"window");
if(_20===CPLeftMouseDown){
var _22=objj_msgSend(_21,"frame");
_resizeFrame=CGRectMake(_1f.x,_1f.y,CGRectGetWidth(_22),CGRectGetHeight(_22));
}else{
if(_20===CPLeftMouseDragged){
var _23=CGSizeMake(CGRectGetWidth(_resizeFrame)+_1f.x-CGRectGetMinX(_resizeFrame),CGRectGetHeight(_resizeFrame)+_1f.y-CGRectGetMinY(_resizeFrame));
if(_21._isSheet&&_21._parentView&&(_21._frame.size.width!==_23.width)){
objj_msgSend(_21._parentView,"_setAttachedSheetFrameOrigin");
}
objj_msgSend(_21,"setFrameSize:",_23);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_1c,sel_getUid("trackResizeWithEvent:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_pointWithinScreenFrame:"),function(_24,_25,_26){
with(_24){
if(!objj_msgSend(CPPlatform,"isBrowser")){
return _26;
}
var _27=_cachedScreenFrame;
if(!_27){
_27=objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"visibleFrame");
}
var _28=CGPointMake(0,0);
_28.x=MIN(MAX(_26.x,-_frame.size.width+4),CGRectGetMaxX(_27)-4);
_28.y=MIN(MAX(_26.y,0),CGRectGetMaxY(_27)-8);
return _28;
}
}),new objj_method(sel_getUid("trackMoveWithEvent:"),function(_29,_2a,_2b){
with(_29){
var _2c=objj_msgSend(_2b,"type");
if(_2c===CPLeftMouseUp){
_cachedScreenFrame=nil;
return;
}else{
if(_2c===CPLeftMouseDown){
_mouseDraggedPoint=objj_msgSend(objj_msgSend(_29,"window"),"convertBaseToGlobal:",objj_msgSend(_2b,"locationInWindow"));
_cachedScreenFrame=objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"visibleFrame");
}else{
if(_2c===CPLeftMouseDragged){
var _2d=objj_msgSend(_29,"window"),_2e=objj_msgSend(_2d,"frame"),_2f=objj_msgSend(_2d,"convertBaseToGlobal:",objj_msgSend(_2b,"locationInWindow")),_30=objj_msgSend(_29,"_pointWithinScreenFrame:",CGPointMake((_2e.origin.x)+(_2f.x-_mouseDraggedPoint.x),(_2e.origin.y)+(_2f.y-_mouseDraggedPoint.y)));
objj_msgSend(_2d,"setFrameOrigin:",_30);
_mouseDraggedPoint=objj_msgSend(_29,"_pointWithinScreenFrame:",_2f);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_29,sel_getUid("trackMoveWithEvent:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_31,_32,_33){
with(_31){
if(_33){
var _34=objj_msgSend(_1,"size"),_35=objj_msgSend(_31,"frame").size;
_resizeIndicator=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(_35.width-_34.width-_resizeIndicatorOffset.width,_35.height-_34.height-_resizeIndicatorOffset.height,_34.width,_34.height));
objj_msgSend(_resizeIndicator,"setImage:",_1);
objj_msgSend(_resizeIndicator,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_31,"addSubview:",_resizeIndicator);
}else{
objj_msgSend(_resizeIndicator,"removeFromSuperview");
_resizeIndicator=nil;
}
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_36,_37){
with(_36){
return _resizeIndicator!==nil;
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_38,_39,_3a){
with(_38){
if(CGSizeEqualToSize(_resizeIndicatorOffset,_3a)){
return;
}
_resizeIndicatorOffset=_3a;
if(!_resizeIndicator){
return;
}
var _3b=objj_msgSend(_resizeIndicator,"frame").size,_3c=objj_msgSend(_38,"frame").size;
objj_msgSend(_resizeIndicator,"setFrameOrigin:",CGPointMake(_3c.width-_3b.width-_3a.width,_3c.height-_3b.height-_3a.height));
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_3d,_3e){
with(_3d){
return _resizeIndicatorOffset;
}
}),new objj_method(sel_getUid("windowDidChangeDocumentEdited"),function(_3f,_40){
with(_3f){
}
}),new objj_method(sel_getUid("windowDidChangeDocumentSaving"),function(_41,_42){
with(_41){
}
}),new objj_method(sel_getUid("showsToolbar"),function(_43,_44){
with(_43){
return YES;
}
}),new objj_method(sel_getUid("toolbarOffset"),function(_45,_46){
with(_45){
return CGSizeMakeZero();
}
}),new objj_method(sel_getUid("toolbarLabelColor"),function(_47,_48){
with(_47){
return objj_msgSend(CPColor,"blackColor");
}
}),new objj_method(sel_getUid("toolbarMaxY"),function(_49,_4a){
with(_49){
if(!_toolbarView||objj_msgSend(_toolbarView,"isHidden")){
return objj_msgSend(_49,"toolbarOffset").height;
}
return CGRectGetMaxY(objj_msgSend(_toolbarView,"frame"));
}
}),new objj_method(sel_getUid("toolbarView"),function(_4b,_4c){
with(_4b){
return _toolbarView;
}
}),new objj_method(sel_getUid("tile"),function(_4d,_4e){
with(_4d){
var _4f=objj_msgSend(_4d,"window"),_50=objj_msgSend(_4d,"bounds"),_51=CGRectGetWidth(_50);
if(objj_msgSend(objj_msgSend(_4f,"toolbar"),"isVisible")){
var _52=objj_msgSend(_4d,"toolbarView"),_53=objj_msgSend(_4d,"toolbarOffset");
objj_msgSend(_52,"setFrame:",CGRectMake(_53.width,_53.height,_51,CGRectGetHeight(objj_msgSend(_52,"frame"))));
}
if(objj_msgSend(_4d,"showsResizeIndicator")){
var _54=objj_msgSend(_resizeIndicator,"frame").size,_55=objj_msgSend(_4d,"bounds").size;
objj_msgSend(_resizeIndicator,"setFrameOrigin:",CGPointMake(_55.width-_54.width-_resizeIndicatorOffset.width,_55.height-_54.height-_resizeIndicatorOffset.height));
}
}
}),new objj_method(sel_getUid("noteToolbarChanged"),function(_56,_57){
with(_56){
var _58=objj_msgSend(_56,"window"),_59=objj_msgSend(_58,"toolbar"),_5a=objj_msgSend(_59,"_toolbarView");
if(_toolbarView!==_5a){
objj_msgSend(_toolbarView,"removeFromSuperview");
if(_5a){
objj_msgSend(_5a,"removeFromSuperview");
objj_msgSend(_5a,"setLabelColor:",objj_msgSend(_56,"toolbarLabelColor"));
if(objj_msgSend(_56,"respondsToSelector:",sel_getUid("toolbarLabelShadowColor"))){
objj_msgSend(_5a,"setLabelShadowColor:",objj_msgSend(_56,"toolbarLabelShadowColor"));
}
objj_msgSend(_56,"addSubview:",_5a);
}
_toolbarView=_5a;
}
objj_msgSend(_5a,"setHidden:",!objj_msgSend(_56,"showsToolbar")||!objj_msgSend(_59,"isVisible"));
if(_58){
var _5b=objj_msgSend(_56,"convertRect:toView:",objj_msgSend(objj_msgSend(_58,"contentView"),"frame"),nil);
_5b.origin=objj_msgSend(_58,"convertBaseToGlobal:",_5b.origin);
objj_msgSend(_56,"setAutoresizesSubviews:",NO);
objj_msgSend(_58,"setFrame:",objj_msgSend(_58,"frameRectForContentRect:",_5b));
objj_msgSend(_56,"setAutoresizesSubviews:",YES);
}
objj_msgSend(_56,"tile");
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_5c,_5d,_5e){
with(_5c){
if(!_resizeIndicator||_5e===_resizeIndicator){
return;
}
objj_msgSend(_5c,"addSubview:",_resizeIndicator);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_5f,_60){
with(_5f){
if(_5f!=objj_msgSend(_CPWindowView,"class")){
return;
}
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class")),"pathForResource:","_CPWindowView/_CPWindowViewResizeIndicator.png"),CGSizeMake(12,12));
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_61,_62,_63){
with(_61){
return CGRectMakeCopy(_63);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_64,_65,_66){
with(_64){
return CGRectMakeCopy(_66);
}
})]);
