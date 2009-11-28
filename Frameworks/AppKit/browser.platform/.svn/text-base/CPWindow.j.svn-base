I;25;Foundation/CPCountedSet.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;13;CPResponder.ji;10;CPScreen.ji;18;CPPlatformWindow.jc;53251;
CPBorderlessWindowMask=0;
CPTitledWindowMask=1<<0;
CPClosableWindowMask=1<<1;
CPMiniaturizableWindowMask=1<<2;
CPResizableWindowMask=1<<3;
CPTexturedBackgroundWindowMask=1<<8;
CPBorderlessBridgeWindowMask=1<<20;
CPHUDBackgroundWindowMask=1<<21;
CPWindowNotSizable=0;
CPWindowMinXMargin=1;
CPWindowWidthSizable=2;
CPWindowMaxXMargin=4;
CPWindowMinYMargin=8;
CPWindowHeightSizable=16;
CPWindowMaxYMargin=32;
CPBackgroundWindowLevel=-1;
CPNormalWindowLevel=0;
CPFloatingWindowLevel=3;
CPSubmenuWindowLevel=3;
CPTornOffMenuWindowLevel=3;
CPMainMenuWindowLevel=24;
CPStatusWindowLevel=25;
CPModalPanelWindowLevel=8;
CPPopUpMenuWindowLevel=101;
CPDraggingWindowLevel=500;
CPScreenSaverWindowLevel=1000;
CPWindowOut=0;
CPWindowAbove=1;
CPWindowBelow=2;
CPWindowWillCloseNotification="CPWindowWillCloseNotification";
CPWindowDidBecomeMainNotification="CPWindowDidBecomeMainNotification";
CPWindowDidResignMainNotification="CPWindowDidResignMainNotification";
CPWindowDidMoveNotification="CPWindowDidMoveNotification";
CPWindowWillBeginSheetNotification="CPWindowWillBeginSheetNotification";
CPWindowDidEndSheetNotification="CPWindowDidEndSheetNotification";
CPWindowDidMiniaturizeNotification="CPWindowDidMiniaturizeNotification";
CPWindowWillMiniaturizeNotification="CPWindowWillMiniaturizeNotification";
CPWindowDidDeminiaturizeNotification="CPWindowDidDeminiaturizeNotification";
CPWindowShadowStyleStandard=0;
CPWindowShadowStyleMenu=1;
CPWindowShadowStylePanel=2;
var _1=20,_2=19,_3=10,_4=10,_5=5,_6=nil;
var _7=nil,_8=nil;
var _9=objj_allocateClassPair(CPResponder,"CPWindow"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_platformWindow"),new objj_ivar("_windowNumber"),new objj_ivar("_styleMask"),new objj_ivar("_frame"),new objj_ivar("_level"),new objj_ivar("_isVisible"),new objj_ivar("_isMiniaturized"),new objj_ivar("_isAnimating"),new objj_ivar("_hasShadow"),new objj_ivar("_isMovableByWindowBackground"),new objj_ivar("_shadowStyle"),new objj_ivar("_isDocumentEdited"),new objj_ivar("_isDocumentSaving"),new objj_ivar("_shadowView"),new objj_ivar("_windowView"),new objj_ivar("_contentView"),new objj_ivar("_toolbarView"),new objj_ivar("_mouseEnteredStack"),new objj_ivar("_leftMouseDownView"),new objj_ivar("_rightMouseDownView"),new objj_ivar("_toolbar"),new objj_ivar("_firstResponder"),new objj_ivar("_initialFirstResponder"),new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_acceptsMouseMovedEvents"),new objj_ivar("_ignoresMouseEvents"),new objj_ivar("_windowController"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_undoManager"),new objj_ivar("_representedURL"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_inclusiveRegisteredDraggedTypes"),new objj_ivar("_defaultButton"),new objj_ivar("_defaultButtonEnabled"),new objj_ivar("_autorecalculatesKeyViewLoop"),new objj_ivar("_keyViewLoopIsDirty"),new objj_ivar("_sharesChromeWithPlatformWindow"),new objj_ivar("_DOMElement"),new objj_ivar("_autoresizingMask"),new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"),new objj_ivar("_isFullPlatformWindow"),new objj_ivar("_fullPlatformWindowSession"),new objj_ivar("_sheetContext"),new objj_ivar("_parentView"),new objj_ivar("_isSheet")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_b,_c,_d,_e){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPResponder")},"init");
if(_b){
var _f=objj_msgSend(objj_msgSend(_b,"class"),"_windowViewClassForStyleMask:",_e);
_frame=objj_msgSend(_f,"frameRectForContentRect:",_d);
objj_msgSend(_b,"_setSharesChromeWithPlatformWindow:",!objj_msgSend(CPPlatform,"isBrowser"));
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_b,"setPlatformWindow:",objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"));
}else{
objj_msgSend(_b,"setPlatformWindow:",objj_msgSend(objj_msgSend(CPPlatformWindow,"alloc"),"initWithContentRect:",_frame));
objj_msgSend(_b,"platformWindow")._only=_b;
}
_isFullPlatformWindow=NO;
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_isSheet=NO;
_windowNumber=objj_msgSend(CPApp._windows,"count");
CPApp._windows[_windowNumber]=_b;
_styleMask=_e;
objj_msgSend(_b,"setLevel:",CPNormalWindowLevel);
_minSize=CGSizeMake(0,0);
_maxSize=CGSizeMake(1000000,1000000);
_windowView=objj_msgSend(objj_msgSend(_f,"alloc"),"initWithFrame:styleMask:",CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame)),_e);
objj_msgSend(_windowView,"_setWindow:",_b);
objj_msgSend(_windowView,"setNextResponder:",_b);
objj_msgSend(_b,"setMovableByWindowBackground:",_e&CPHUDBackgroundWindowMask);
objj_msgSend(_b,"setContentView:",objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()));
_firstResponder=_b;
_DOMElement=document.createElement("div");
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.zIndex=0;
if(!objj_msgSend(_b,"_sharesChromeWithPlatformWindow")){
if(NULL){
var _10=_CGPointApplyAffineTransform(CGPointMake((_frame.origin.x),(_frame.origin.y)),NULL);
}else{
var _10={x:(_frame.origin.x),y:(_frame.origin.y)};
}
_DOMElement.style.left=ROUND(_10.x)+"px";
_DOMElement.style.top=ROUND(_10.y)+"px";
}
_DOMElement.style.width=MAX(0,ROUND(1))+"px";
_DOMElement.style.height=MAX(0,ROUND(1))+"px";
_DOMElement.appendChild(_windowView._DOMElement);
objj_msgSend(_b,"setNextResponder:",CPApp);
objj_msgSend(_b,"setHasShadow:",_e!==CPBorderlessWindowMask);
if(_e&CPBorderlessBridgeWindowMask){
objj_msgSend(_b,"setFullPlatformWindow:",YES);
}
_defaultButtonEnabled=YES;
_keyViewLoopIsDirty=YES;
}
return _b;
}
}),new objj_method(sel_getUid("platformWindow"),function(_11,_12){
with(_11){
return _platformWindow;
}
}),new objj_method(sel_getUid("setPlatformWindow:"),function(_13,_14,_15){
with(_13){
_platformWindow=_15;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_16,_17){
with(_16){
if(_initialFirstResponder){
objj_msgSend(_16,"makeFirstResponder:",_initialFirstResponder);
}
_keyViewLoopIsDirty=!objj_msgSend(_16,"_hasKeyViewLoop");
}
}),new objj_method(sel_getUid("_setWindowView:"),function(_18,_19,_1a){
with(_18){
if(_windowView===_1a){
return;
}
var _1b=_windowView;
_windowView=_1a;
if(_1b){
objj_msgSend(_1b,"_setWindow:",nil);
objj_msgSend(_1b,"noteToolbarChanged");
_DOMElement.removeChild(_1b._DOMElement);
}
if(_windowView){
_DOMElement.appendChild(_windowView._DOMElement);
var _1c=objj_msgSend(_contentView,"convertRect:toView:",objj_msgSend(_contentView,"bounds"),nil);
_1c.origin=objj_msgSend(_18,"convertBaseToGlobal:",_1c.origin);
objj_msgSend(_windowView,"_setWindow:",_18);
objj_msgSend(_windowView,"setNextResponder:",_18);
objj_msgSend(_windowView,"addSubview:",_contentView);
objj_msgSend(_windowView,"setTitle:",_title);
objj_msgSend(_windowView,"noteToolbarChanged");
objj_msgSend(_18,"setFrame:",objj_msgSend(_18,"frameRectForContentRect:",_1c));
}
}
}),new objj_method(sel_getUid("setFullPlatformWindow:"),function(_1d,_1e,_1f){
with(_1d){
if(!objj_msgSend(_platformWindow,"supportsFullPlatformWindows")){
return;
}
_1f=!!_1f;
if(_isFullPlatformWindow===_1f){
return;
}
_isFullPlatformWindow=_1f;
if(_isFullPlatformWindow){
_fullPlatformWindowSession=_CPWindowFullPlatformWindowSessionMake(_windowView,objj_msgSend(_1d,"contentRectForFrameRect:",objj_msgSend(_1d,"frame")),objj_msgSend(_1d,"hasShadow"),objj_msgSend(_1d,"level"));
var _20=objj_msgSend(objj_msgSend(_1d,"class"),"_windowViewClassForFullPlatformWindowStyleMask:",_styleMask),_21=objj_msgSend(objj_msgSend(_20,"alloc"),"initWithFrame:styleMask:",CGRectMakeZero(),_styleMask);
objj_msgSend(_1d,"_setWindowView:",_21);
objj_msgSend(_1d,"setLevel:",CPBackgroundWindowLevel);
objj_msgSend(_1d,"setHasShadow:",NO);
objj_msgSend(_1d,"setAutoresizingMask:",CPWindowWidthSizable|CPWindowHeightSizable);
objj_msgSend(_1d,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}else{
var _21=_fullPlatformWindowSession.windowView;
objj_msgSend(_1d,"_setWindowView:",_21);
objj_msgSend(_1d,"setLevel:",_fullPlatformWindowSession.level);
objj_msgSend(_1d,"setHasShadow:",_fullPlatformWindowSession.hasShadow);
objj_msgSend(_1d,"setAutoresizingMask:",CPWindowNotSizable);
objj_msgSend(_1d,"setFrame:",objj_msgSend(_21,"frameRectForContentRect:",_fullPlatformWindowSession.contentRect));
}
}
}),new objj_method(sel_getUid("isFullPlatformWindow"),function(_22,_23){
with(_22){
return _isFullPlatformWindow;
}
}),new objj_method(sel_getUid("styleMask"),function(_24,_25){
with(_24){
return _styleMask;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_windowView,"contentRectForFrameRect:",_28);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_29,_2a,_2b){
with(_29){
return objj_msgSend(_windowView,"frameRectForContentRect:",_2b);
}
}),new objj_method(sel_getUid("frame"),function(_2c,_2d){
with(_2c){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_2e,_2f,_30,_31,_32){
with(_2e){
if(_32){
var _33=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",_2e,_30);
objj_msgSend(_33,"startAnimation");
}else{
var _34=_frame.origin,_35=_30.origin;
if(!(_34.x==_35.x&&_34.y==_35.y)){
_34.x=_35.x;
_34.y=_35.y;
if(!objj_msgSend(_2e,"_sharesChromeWithPlatformWindow")){
if(NULL){
var _36=_CGPointApplyAffineTransform(CGPointMake(_34.x,_34.y),NULL);
}else{
var _36={x:_34.x,y:_34.y};
}
_DOMElement.style.left=ROUND(_36.x)+"px";
_DOMElement.style.top=ROUND(_36.y)+"px";
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMoveNotification,_2e);
}
var _37=_frame.size,_38=_30.size;
if(!(_37.width==_38.width&&_37.height==_38.height)){
_37.width=MIN(MAX(_38.width,_minSize.width),_maxSize.width);
_37.height=MIN(MAX(_38.height,_minSize.height),_maxSize.height);
objj_msgSend(_windowView,"setFrameSize:",_37);
if(_hasShadow){
objj_msgSend(_shadowView,"setFrameSize:",{width:_1+_37.width+_2,height:_4+_37.height+_3+_5});
}
if(!_isAnimating&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResize:"))){
objj_msgSend(_delegate,"windowDidResize:",_2e);
}
}
if(objj_msgSend(_2e,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setContentRect:",_frame);
}
}
}
}),new objj_method(sel_getUid("setFrame:display:"),function(_39,_3a,_3b,_3c){
with(_39){
objj_msgSendSuper({receiver:_39,super_class:objj_getClass("CPResponder")},"setFrame:display:animate:",_3b,_3c,NO);
}
}),new objj_method(sel_getUid("setFrame:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_3d,"setFrame:display:animate:",_3f,YES,NO);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_40,"setFrame:display:animate:",{origin:{x:_42.x,y:_42.y},size:{width:(_frame.size.width),height:(_frame.size.height)}},YES,NO);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_43,_44,_45){
with(_43){
objj_msgSend(_43,"setFrame:display:animate:",{origin:{x:(_frame.origin.x),y:(_frame.origin.y)},size:{width:_45.width,height:_45.height}},YES,NO);
}
}),new objj_method(sel_getUid("orderFront:"),function(_46,_47,_48){
with(_46){
objj_msgSend(_platformWindow,"orderFront:",_46);
objj_msgSend(_platformWindow,"order:window:relativeTo:",CPWindowAbove,_46,nil);
}
}),new objj_method(sel_getUid("orderBack:"),function(_49,_4a,_4b){
with(_49){
}
}),new objj_method(sel_getUid("orderOut:"),function(_4c,_4d,_4e){
with(_4c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillClose:"))){
objj_msgSend(_delegate,"windowWillClose:",_4c);
}
objj_msgSend(_platformWindow,"order:window:relativeTo:",CPWindowOut,_4c,nil);
if(objj_msgSend(CPApp,"keyWindow")==_4c){
objj_msgSend(_4c,"resignKeyWindow");
CPApp._keyWindow=nil;
}
if(objj_msgSend(_4c,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"orderOut:",_4c);
}
}
}),new objj_method(sel_getUid("orderWindow:relativeTo:"),function(_4f,_50,_51,_52){
with(_4f){
objj_msgSend(_platformWindow,"order:window:relativeTo:",_51,_4f,CPApp._windows[_52]);
}
}),new objj_method(sel_getUid("setLevel:"),function(_53,_54,_55){
with(_53){
_level=_55;
if(objj_msgSend(_53,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setLevel:",_55);
}
}
}),new objj_method(sel_getUid("level"),function(_56,_57){
with(_56){
return _level;
}
}),new objj_method(sel_getUid("isVisible"),function(_58,_59){
with(_58){
return _isVisible;
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_5a,_5b){
with(_5a){
return objj_msgSend(_windowView,"showsResizeIndicator");
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_5c,_5d,_5e){
with(_5c){
objj_msgSend(_windowView,"setShowsResizeIndicator:",_5e);
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_5f,_60){
with(_5f){
return objj_msgSend(_windowView,"resizeIndicatorOffset");
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_windowView,"setResizeIndicatorOffset:",_63);
}
}),new objj_method(sel_getUid("setContentView:"),function(_64,_65,_66){
with(_64){
if(_contentView){
objj_msgSend(_contentView,"removeFromSuperview");
}
var _67=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_contentView=_66;
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_64,"contentRectForFrameRect:",_67));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_windowView,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_68,_69){
with(_68){
return _contentView;
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSend(_windowView,"setBackgroundColor:",_6c);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_6d,_6e){
with(_6d){
return objj_msgSend(_windowView,"backgroundColor");
}
}),new objj_method(sel_getUid("setMinSize:"),function(_6f,_70,_71){
with(_6f){
if(CGSizeEqualToSize(_minSize,_71)){
return;
}
_minSize=CGSizeCreateCopy(_71);
var _72=CGSizeMakeCopy(objj_msgSend(_6f,"frame").size),_73=NO;
if(_72.width<_minSize.width){
_72.width=_minSize.width;
_73=YES;
}
if(_72.height<_minSize.height){
_72.height=_minSize.height;
_73=YES;
}
if(_73){
objj_msgSend(_6f,"setFrameSize:",_72);
}
}
}),new objj_method(sel_getUid("minSize"),function(_74,_75){
with(_74){
return _minSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_76,_77,_78){
with(_76){
if(CGSizeEqualToSize(_maxSize,_78)){
return;
}
_maxSize=CGSizeCreateCopy(_78);
var _79=CGSizeMakeCopy(objj_msgSend(_76,"frame").size),_7a=NO;
if(_79.width>_maxSize.width){
_79.width=_maxSize.width;
_7a=YES;
}
if(_79.height>_maxSize.height){
_79.height=_maxSize.height;
_7a=YES;
}
if(_7a){
objj_msgSend(_76,"setFrameSize:",_79);
}
}
}),new objj_method(sel_getUid("maxSize"),function(_7b,_7c){
with(_7b){
return _maxSize;
}
}),new objj_method(sel_getUid("hasShadow"),function(_7d,_7e){
with(_7d){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_7f,_80,_81){
with(_7f){
if(_hasShadow===_81){
return;
}
_hasShadow=_81;
if(objj_msgSend(_7f,"_sharesChromeWithPlatformWindow")){
return objj_msgSend(_platformWindow,"setHasShadow:",_81);
}
if(_hasShadow){
var _82=objj_msgSend(_windowView,"bounds");
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(-_1,-_3+_5,_1+CGRectGetWidth(_82)+_2,_3+CGRectGetHeight(_82)+_4));
if(!_6){
var _83=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow0.png"),CGSizeMake(20,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow1.png"),CGSizeMake(1,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow2.png"),CGSizeMake(19,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow3.png"),CGSizeMake(20,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow5.png"),CGSizeMake(19,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow6.png"),CGSizeMake(20,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow7.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_83,"pathForResource:","CPWindow/CPWindowShadow8.png"),CGSizeMake(19,18))]));
}
objj_msgSend(_shadowView,"setBackgroundColor:",_6);
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_DOMElement.insertBefore(_shadowView._DOMElement,_windowView._DOMElement);
}else{
if(_shadowView){
_DOMElement.removeChild(_shadowView._DOMElement);
_shadowView=nil;
}
}
}
}),new objj_method(sel_getUid("setShadowStyle:"),function(_84,_85,_86){
with(_84){
_shadowStyle=_86;
objj_msgSend(objj_msgSend(_84,"platformWindow"),"setShadowStyle:",_shadowStyle);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_87,_88,_89){
with(_87){
_delegate=_89;
_delegateRespondsToWindowWillReturnUndoManagerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillReturnUndoManager:"));
var _8a=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeMain:"))){
objj_msgSend(_8a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeMain:"),CPWindowDidBecomeMainNotification,_87);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignMain:"))){
objj_msgSend(_8a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignMain:"),CPWindowDidResignMainNotification,_87);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidMove:"))){
objj_msgSend(_8a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidMove:"),CPWindowDidMoveNotification,_87);
}
}
}),new objj_method(sel_getUid("delegate"),function(_8b,_8c){
with(_8b){
return _delegate;
}
}),new objj_method(sel_getUid("setWindowController:"),function(_8d,_8e,_8f){
with(_8d){
_windowController=_8f;
}
}),new objj_method(sel_getUid("windowController"),function(_90,_91){
with(_90){
return _windowController;
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_92,_93,_94){
with(_92){
if(objj_msgSend(_delegate,"respondsToSelector:",_94)){
objj_msgSend(_delegate,"performSelector:",_94);
}else{
objj_msgSendSuper({receiver:_92,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_94);
}
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_95,_96){
with(_95){
return YES;
}
}),new objj_method(sel_getUid("makeFirstResponder:"),function(_97,_98,_99){
with(_97){
if(_firstResponder==_99){
return YES;
}
if(!objj_msgSend(_firstResponder,"resignFirstResponder")){
return NO;
}
if(!_99||!objj_msgSend(_99,"acceptsFirstResponder")||!objj_msgSend(_99,"becomeFirstResponder")){
_firstResponder=_97;
return NO;
}
_firstResponder=_99;
return YES;
}
}),new objj_method(sel_getUid("firstResponder"),function(_9a,_9b){
with(_9a){
return _firstResponder;
}
}),new objj_method(sel_getUid("acceptsMouseMovedEvents"),function(_9c,_9d){
with(_9c){
return _acceptsMouseMovedEvents;
}
}),new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"),function(_9e,_9f,_a0){
with(_9e){
_acceptsMouseMovedEvents=_a0;
}
}),new objj_method(sel_getUid("ignoresMouseEvents"),function(_a1,_a2){
with(_a1){
return _ignoresMouseEvents;
}
}),new objj_method(sel_getUid("setIgnoresMouseEvents:"),function(_a3,_a4,_a5){
with(_a3){
_ignoresMouseEvents=_a5;
}
}),new objj_method(sel_getUid("title"),function(_a6,_a7){
with(_a6){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a8,_a9,_aa){
with(_a8){
_title=_aa;
objj_msgSend(_windowView,"setTitle:",_aa);
objj_msgSend(_a8,"_synchronizeMenuBarTitleWithWindowTitle");
}
}),new objj_method(sel_getUid("setTitleWithRepresentedFilename:"),function(_ab,_ac,_ad){
with(_ab){
objj_msgSend(_ab,"setRepresentedFilename:",_ad);
objj_msgSend(_ab,"setTitle:",objj_msgSend(_ad,"lastPathComponent"));
}
}),new objj_method(sel_getUid("setRepresentedFilename:"),function(_ae,_af,_b0){
with(_ae){
objj_msgSend(_ae,"setRepresentedURL:",_b0);
}
}),new objj_method(sel_getUid("representedFilename"),function(_b1,_b2){
with(_b1){
return _representedURL;
}
}),new objj_method(sel_getUid("setRepresentedURL:"),function(_b3,_b4,_b5){
with(_b3){
_representedURL=_b5;
}
}),new objj_method(sel_getUid("representedURL"),function(_b6,_b7){
with(_b6){
return _representedURL;
}
}),new objj_method(sel_getUid("screen"),function(_b8,_b9){
with(_b8){
return objj_msgSend(objj_msgSend(CPScreen,"alloc"),"init");
}
}),new objj_method(sel_getUid("setMovableByWindowBackground:"),function(_ba,_bb,_bc){
with(_ba){
_isMovableByWindowBackground=_bc;
}
}),new objj_method(sel_getUid("isMovableByWindowBackground"),function(_bd,_be){
with(_bd){
return _isMovableByWindowBackground;
}
}),new objj_method(sel_getUid("center"),function(_bf,_c0){
with(_bf){
var _c1=objj_msgSend(_bf,"frame").size,_c2=objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(_platformWindow,"contentBounds").size:objj_msgSend(objj_msgSend(_bf,"screen"),"visibleFrame").size;
objj_msgSend(_bf,"setFrameOrigin:",CGPointMake((_c2.width-_c1.width)/2,(_c2.height-_c1.height)/2));
}
}),new objj_method(sel_getUid("sendEvent:"),function(_c3,_c4,_c5){
with(_c3){
var _c6=objj_msgSend(_c5,"type"),_c7=objj_msgSend(_c5,"locationInWindow");
switch(_c6){
case CPKeyUp:
return objj_msgSend(objj_msgSend(_c3,"firstResponder"),"keyUp:",_c5);
case CPKeyDown:
return objj_msgSend(objj_msgSend(_c3,"firstResponder"),"keyDown:",_c5);
case CPScrollWheel:
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_c7),"scrollWheel:",_c5);
case CPLeftMouseUp:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_c7),"mouseUp:",_c5);
}
objj_msgSend(_leftMouseDownView,"mouseUp:",_c5);
_leftMouseDownView=nil;
return;
case CPLeftMouseDown:
_leftMouseDownView=objj_msgSend(_windowView,"hitTest:",_c7);
if(_leftMouseDownView!=_firstResponder&&objj_msgSend(_leftMouseDownView,"acceptsFirstResponder")){
objj_msgSend(_c3,"makeFirstResponder:",_leftMouseDownView);
}
objj_msgSend(CPApp,"activateIgnoringOtherApps:",YES);
var _c8=objj_msgSend(_c5,"window");
if(objj_msgSend(_c8,"isKeyWindow")||objj_msgSend(_c8,"becomesKeyOnlyIfNeeded")){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_c5);
}else{
objj_msgSend(_c3,"makeKeyAndOrderFront:",_c3);
if(objj_msgSend(_leftMouseDownView,"acceptsFirstMouse:",_c5)){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_c5);
}
}
break;
case CPLeftMouseDragged:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_c7),"mouseDragged:",_c5);
}
return objj_msgSend(_leftMouseDownView,"mouseDragged:",_c5);
case CPRightMouseUp:
return objj_msgSend(_rightMouseDownView,"mouseUp:",_c5);
case CPRightMouseDown:
_rightMouseDownView=objj_msgSend(_windowView,"hitTest:",_c7);
return objj_msgSend(_rightMouseDownView,"mouseDown:",_c5);
case CPRightMouseDragged:
return objj_msgSend(_rightMouseDownView,"mouseDragged:",_c5);
case CPMouseMoved:
if(!_acceptsMouseMovedEvents){
return;
}
if(!_mouseEnteredStack){
_mouseEnteredStack=[];
}
var _c9=objj_msgSend(_windowView,"hitTest:",_c7);
if(objj_msgSend(_mouseEnteredStack,"count")&&objj_msgSend(_mouseEnteredStack,"lastObject")===_c9){
return objj_msgSend(_c9,"mouseMoved:",_c5);
}
var _ca=_c9,_cb=[];
while(_ca){
_cb.unshift(_ca);
_ca=objj_msgSend(_ca,"superview");
}
var _cc=MIN(_mouseEnteredStack.length,_cb.length);
while(_cc--){
if(_mouseEnteredStack[_cc]===_cb[_cc]){
break;
}
}
var _cd=_cc+1,_ce=_mouseEnteredStack.length;
if(_cd<_ce){
var _cf=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseExited,_c7,objj_msgSend(_c5,"modifierFlags"),objj_msgSend(_c5,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_cd<_ce;++_cd){
objj_msgSend(_mouseEnteredStack[_cd],"mouseExited:",_cf);
}
}
_cd=_cc+1;
_ce=_cb.length;
if(_cd<_ce){
var _cf=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseEntered,_c7,objj_msgSend(_c5,"modifierFlags"),objj_msgSend(_c5,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_cd<_ce;++_cd){
objj_msgSend(_cb[_cd],"mouseEntered:",_cf);
}
}
_mouseEnteredStack=_cb;
objj_msgSend(_c9,"mouseMoved:",_c5);
}
}
}),new objj_method(sel_getUid("windowNumber"),function(_d0,_d1){
with(_d0){
return _windowNumber;
}
}),new objj_method(sel_getUid("becomeKeyWindow"),function(_d2,_d3){
with(_d2){
if(_firstResponder!=_d2&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("becomeKeyWindow"))){
objj_msgSend(_firstResponder,"becomeKeyWindow");
}
}
}),new objj_method(sel_getUid("canBecomeKeyWindow"),function(_d4,_d5){
with(_d4){
return YES;
}
}),new objj_method(sel_getUid("isKeyWindow"),function(_d6,_d7){
with(_d6){
return objj_msgSend(CPApp,"keyWindow")==_d6;
}
}),new objj_method(sel_getUid("makeKeyAndOrderFront:"),function(_d8,_d9,_da){
with(_d8){
objj_msgSend(_d8,"orderFront:",_d8);
objj_msgSend(_d8,"makeKeyWindow");
objj_msgSend(_d8,"makeMainWindow");
}
}),new objj_method(sel_getUid("makeKeyWindow"),function(_db,_dc){
with(_db){
if(!objj_msgSend(_db,"canBecomeKeyWindow")){
return;
}
objj_msgSend(CPApp._keyWindow,"resignKeyWindow");
CPApp._keyWindow=_db;
objj_msgSend(_db,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("resignKeyWindow"),function(_dd,_de){
with(_dd){
if(_firstResponder!=_dd&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("resignKeyWindow"))){
objj_msgSend(_firstResponder,"resignKeyWindow");
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignKey:"))){
objj_msgSend(_delegate,"windowDidResignKey:",_dd);
}
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_df,_e0,_e1,_e2,_e3,_e4,_e5,_e6,_e7){
with(_df){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:",_e1,_df,objj_msgSend(_df,"convertBaseToGlobal:",_e2),_e3,_e4,_e5,_e6,_e7);
}
}),new objj_method(sel_getUid("_noteRegisteredDraggedTypes:"),function(_e8,_e9,_ea){
with(_e8){
if(!_ea){
return;
}
if(!_inclusiveRegisteredDraggedTypes){
_inclusiveRegisteredDraggedTypes=objj_msgSend(CPCountedSet,"set");
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"unionSet:",_ea);
}
}),new objj_method(sel_getUid("_noteUnregisteredDraggedTypes:"),function(_eb,_ec,_ed){
with(_eb){
if(!_ed){
return;
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"minusSet:",_ed);
if(objj_msgSend(_inclusiveRegisteredDraggedTypes,"count")===0){
_inclusiveRegisteredDraggedTypes=nil;
}
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(_ee,_ef,_f0,_f1,_f2,_f3,_f4,_f5,_f6){
with(_ee){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_f0,_ee,objj_msgSend(_ee,"convertBaseToGlobal:",_f1),_f2,_f3,_f4,_f5,_f6);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(_f7,_f8,_f9){
with(_f7){
if(!_f9){
return;
}
objj_msgSend(_f7,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_f9);
objj_msgSend(_f7,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(_fa,_fb){
with(_fa){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(_fc,_fd){
with(_fc){
objj_msgSend(_fc,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_fe,_ff,_100){
with(_fe){
if(_isDocumentEdited==_100){
return;
}
_isDocumentEdited=_100;
objj_msgSend(CPMenu,"_setMenuBarIconImageAlphaValue:",_isDocumentEdited?0.5:1);
objj_msgSend(_windowView,"setDocumentEdited:",_100);
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(self,_cmd){
with(self){
return _isDocumentEdited;
}
}),new objj_method(sel_getUid("setDocumentSaving:"),function(self,_cmd,_105){
with(self){
if(_isDocumentSaving==_105){
return;
}
_isDocumentSaving=_105;
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(_windowView,"windowDidChangeDocumentSaving");
}
}),new objj_method(sel_getUid("isDocumentSaving"),function(self,_cmd){
with(self){
return _isDocumentSaving;
}
}),new objj_method(sel_getUid("_synchronizeSaveMenuWithDocumentSaving"),function(self,_cmd){
with(self){
if(!objj_msgSend(self,"isMainWindow")){
return;
}
var _10a=objj_msgSend(CPApp,"mainMenu"),_10b=objj_msgSend(_10a,"indexOfItemWithTitle:",_isDocumentSaving?"Save":"Saving...");
if(_10b==CPNotFound){
return;
}
var item=objj_msgSend(_10a,"itemAtIndex:",_10b);
if(_isDocumentSaving){
_7=objj_msgSend(item,"image");
objj_msgSend(item,"setTitle:","Saving...");
objj_msgSend(item,"setImage:",_8);
objj_msgSend(item,"setEnabled:",NO);
}else{
objj_msgSend(item,"setTitle:","Save");
objj_msgSend(item,"setImage:",_7);
objj_msgSend(item,"setEnabled:",YES);
}
}
}),new objj_method(sel_getUid("performMiniaturize:"),function(self,_cmd,_10f){
with(self){
objj_msgSend(self,"miniaturize:",_10f);
}
}),new objj_method(sel_getUid("miniaturize:"),function(self,_cmd,_112){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillMiniaturizeNotification,self);
objj_msgSend(objj_msgSend(self,"platformWindow"),"miniaturize:",_112);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMiniaturizeNotification,self);
_isMiniaturized=YES;
}
}),new objj_method(sel_getUid("deminiaturize:"),function(self,_cmd,_115){
with(self){
objj_msgSend(objj_msgSend(self,"platformWindow"),"deminiaturize:",_115);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidDeminiaturizeNotification,self);
_isMiniaturized=NO;
}
}),new objj_method(sel_getUid("isMiniaturized"),function(self,_cmd){
with(self){
return _isMiniaturized;
}
}),new objj_method(sel_getUid("performClose:"),function(self,_cmd,_11a){
with(self){
if(!(_styleMask&CPClosableWindowMask)){
return;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowShouldClose:"))){
if(!objj_msgSend(_delegate,"windowShouldClose:",self)){
return;
}
}else{
if(objj_msgSend(self,"respondsToSelector:",sel_getUid("windowShouldClose:"))&&!objj_msgSend(self,"windowShouldClose:",self)){
return;
}
}
var _11b=objj_msgSend(_windowController,"documents");
if(objj_msgSend(_11b,"count")){
var _11c=objj_msgSend(_11b,"indexOfObject:",objj_msgSend(_windowController,"document"));
objj_msgSend(_11b[_11c],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),{documents:objj_msgSend(_11b,"copy"),visited:0,index:_11c});
}else{
objj_msgSend(self,"close");
}
}
}),new objj_method(sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),function(self,_cmd,_11f,_120,_121){
with(self){
if(_120){
var _122=objj_msgSend(self,"windowController"),_123=_121.documents,_124=objj_msgSend(_123,"count"),_125=++_121.visited,_126=++_121.index%_124;
objj_msgSend(_11f,"removeWindowController:",_122);
if(_125<_124){
objj_msgSend(_122,"setDocument:",_123[_126]);
objj_msgSend(_123[_126],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),_121);
}else{
objj_msgSend(self,"close");
}
}
}
}),new objj_method(sel_getUid("close"),function(self,_cmd){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillCloseNotification,self);
objj_msgSend(self,"orderOut:",nil);
}
}),new objj_method(sel_getUid("isMainWindow"),function(self,_cmd){
with(self){
return objj_msgSend(CPApp,"mainWindow")==self;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(self,_cmd){
with(self){
if(objj_msgSend(self,"isVisible")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("makeMainWindow"),function(self,_cmd){
with(self){
if(!objj_msgSend(self,"canBecomeMainWindow")){
return;
}
objj_msgSend(CPApp._mainWindow,"resignMainWindow");
CPApp._mainWindow=self;
objj_msgSend(self,"becomeMainWindow");
}
}),new objj_method(sel_getUid("becomeMainWindow"),function(self,_cmd){
with(self){
objj_msgSend(self,"_synchronizeMenuBarTitleWithWindowTitle");
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeMainNotification,self);
}
}),new objj_method(sel_getUid("resignMainWindow"),function(self,_cmd){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignMainNotification,self);
}
}),new objj_method(sel_getUid("toolbar"),function(self,_cmd){
with(self){
return _toolbar;
}
}),new objj_method(sel_getUid("setToolbar:"),function(self,_cmd,_137){
with(self){
if(_toolbar===_137){
return;
}
objj_msgSend(objj_msgSend(_137,"_window"),"setToolbar:",nil);
objj_msgSend(_toolbar,"_setWindow:",nil);
_toolbar=_137;
objj_msgSend(_toolbar,"_setWindow:",self);
objj_msgSend(self,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("toggleToolbarShown:"),function(self,_cmd,_13a){
with(self){
var _13b=objj_msgSend(self,"toolbar");
objj_msgSend(_13b,"setVisible:",!objj_msgSend(_13b,"isVisible"));
}
}),new objj_method(sel_getUid("_noteToolbarChanged"),function(self,_cmd){
with(self){
var _13e=CGRectMakeCopy(objj_msgSend(self,"frame")),_13f;
objj_msgSend(_windowView,"noteToolbarChanged");
if(_isFullPlatformWindow){
_13f=objj_msgSend(_platformWindow,"visibleFrame");
}else{
_13f=CGRectMakeCopy(objj_msgSend(self,"frame"));
_13f.origin=_13e.origin;
}
objj_msgSend(self,"setFrame:",_13f);
}
}),new objj_method(sel_getUid("_setFrame:delegate:duration:curve:"),function(self,_cmd,_142,_143,_144,_145){
with(self){
var _146=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",self,_142);
objj_msgSend(_146,"setDelegate:",_143);
objj_msgSend(_146,"setAnimationCurve:",_145);
objj_msgSend(_146,"setDuration:",_144);
objj_msgSend(_146,"startAnimation");
}
}),new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"),function(self,_cmd){
with(self){
var _149=objj_msgSend(self,"attachedSheet");
var _14a=objj_msgSend(objj_msgSend(self,"contentView"),"frame"),_14b=CGRectMakeCopy(objj_msgSend(_149,"frame"));
_14b.origin.y=CGRectGetMinY(_frame)+CGRectGetMinY(_14a);
_14b.origin.x=CGRectGetMinX(_frame)+FLOOR((CGRectGetWidth(_frame)-CGRectGetWidth(_14b))/2);
objj_msgSend(_149,"setFrameOrigin:",_14b.origin);
}
}),new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"),function(self,_cmd,_14e,_14f,_150,_151){
with(self){
var _152=objj_msgSend(_14e,"frame");
_sheetContext={"sheet":_14e,"modalDelegate":_14f,"endSelector":_150,"contextInfo":_151,"frame":CGRectMakeCopy(_152),"returnCode":-1,"opened":NO};
objj_msgSend(self,"_attachSheetWindow:",_14e);
}
}),new objj_method(sel_getUid("_attachSheetWindow:"),function(self,_cmd,_155){
with(self){
var _156=objj_msgSend(_155,"frame"),_157=objj_msgSend(self,"frame"),_158=objj_msgSend(_155,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_158);
_155._isSheet=YES;
_155._parentView=self;
var _159=_157.origin.x+FLOOR((_157.size.width-_156.size.width)/2),_15a=_157.origin.y+objj_msgSend(objj_msgSend(self,"contentView"),"frame").origin.y,_15b=CGRectMake(_159,_15a,_156.size.width,0),_15c=CGRectMake(_159,_15a,_156.size.width,_156.size.height);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillBeginSheetNotification,self);
objj_msgSend(CPApp,"runModalForWindow:",_155);
objj_msgSend(_155,"orderFront:",self);
objj_msgSend(_155,"setFrame:",_15b);
_sheetContext["opened"]=YES;
objj_msgSend(_155,"_setFrame:delegate:duration:curve:",_15c,self,0.2,CPAnimationEaseOut);
objj_msgSend(_155,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("_detachSheetWindow"),function(self,_cmd){
with(self){
var _15f=objj_msgSend(self,"attachedSheet"),_160=objj_msgSend(_15f,"frame"),_161=CGRectMakeCopy(_160);
_161.size.height=0;
_sheetContext["frame"]=_160;
var _162=objj_msgSend(_15f,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_162);
_sheetContext["opened"]=NO;
objj_msgSend(_15f,"_setFrame:delegate:duration:curve:",_161,self,0.2,CPAnimationEaseIn);
}
}),new objj_method(sel_getUid("animationDidEnd:"),function(self,_cmd,anim){
with(self){
var _166=_sheetContext["sheet"];
if(anim._window!=_166){
return;
}
var _167=objj_msgSend(_166,"contentView");
if(_sheetContext["opened"]===YES){
objj_msgSend(self,"_restoreMasksForView:",_167);
return;
}
objj_msgSend(CPApp,"stopModal");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidEndSheetNotification,self);
objj_msgSend(_166,"orderOut:",self);
var _168=_sheetContext["frame"];
objj_msgSend(_166,"setFrame:",_168);
objj_msgSend(self,"_restoreMasksForView:",_167);
var _169=_sheetContext["modalDelegate"],_16a=_sheetContext["endSelector"];
if(_169!=nil&&_16a!=nil){
objj_msgSend(_169,_16a,_166,_sheetContext["returnCode"],_sheetContext["contextInfo"]);
}
_sheetContext=nil;
_166._parentView=nil;
}
}),new objj_method(sel_getUid("_setUpMasksForView:"),function(self,_cmd,_16d){
with(self){
var _16e=objj_msgSend(CPArray,"arrayWithArray:",objj_msgSend(_16d,"subviews"));
objj_msgSend(_16e,"addObject:",_16d);
for(var i=0,_170=objj_msgSend(_16e,"count");i<_170;i++){
var view=objj_msgSend(_16e,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_173=(mask&CPViewMinYMargin)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask|_173));
}
}
}),new objj_method(sel_getUid("_restoreMasksForView:"),function(self,_cmd,_176){
with(self){
var _177=objj_msgSend(CPArray,"arrayWithArray:",objj_msgSend(_176,"subviews"));
objj_msgSend(_177,"addObject:",_176);
for(var i=0,_179=objj_msgSend(_177,"count");i<_179;i++){
var view=objj_msgSend(_177,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_17c=(mask&128)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask&(~_17c)));
}
}
}),new objj_method(sel_getUid("attachedSheet"),function(self,_cmd){
with(self){
if(_sheetContext===nil){
return nil;
}
return _sheetContext["sheet"];
}
}),new objj_method(sel_getUid("isSheet"),function(self,_cmd){
with(self){
return _isSheet;
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(self,_cmd,_187){
with(self){
return objj_msgSend(objj_msgSend(self,"contentView"),"performKeyEquivalent:",_187);
}
}),new objj_method(sel_getUid("keyDown:"),function(self,_cmd,_18a){
with(self){
if(!objj_msgSend(_18a,"_couldBeKeyEquivalent")||!objj_msgSend(self,"performKeyEquivalent:",_18a)){
objj_msgSend(self,"interpretKeyEvents:",[_18a]);
}
}
}),new objj_method(sel_getUid("insertNewline:"),function(self,_cmd,_18d){
with(self){
if(_defaultButton&&_defaultButtonEnabled){
objj_msgSend(_defaultButton,"performClick:",nil);
}
}
}),new objj_method(sel_getUid("insertTab:"),function(self,_cmd,_190){
with(self){
objj_msgSend(self,"selectNextKeyView:",nil);
}
}),new objj_method(sel_getUid("_dirtyKeyViewLoop"),function(self,_cmd){
with(self){
if(_autorecalculatesKeyViewLoop){
_keyViewLoopIsDirty=YES;
}
}
}),new objj_method(sel_getUid("_hasKeyViewLoop"),function(self,_cmd){
with(self){
var _195=[];
objj_msgSend(self,"_appendSubviewsOf:toArray:",_contentView,_195);
for(var i=0,_197=objj_msgSend(_195,"count");i<_197;i++){
if(_195[i]._nextKeyView){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("recalculateKeyViewLoop"),function(self,_cmd){
with(self){
var _19a=[];
objj_msgSend(self,"_appendSubviewsOf:toArray:",_contentView,_19a);
var _19b=objj_msgSend(_19a,"sortedArrayUsingFunction:context:",_19c,_contentView),_19d=objj_msgSend(_19b,"count");
for(var i=0;i<_19d;i++){
objj_msgSend(_19b[i],"setNextKeyView:",_19b[(i+1)%_19d]);
}
_keyViewLoopIsDirty=NO;
}
}),new objj_method(sel_getUid("_appendSubviewsOf:toArray:"),function(self,_cmd,_1a1,_1a2){
with(self){
var _1a3=objj_msgSend(_1a1,"subviews"),_1a4=objj_msgSend(_1a3,"count");
while(_1a4--){
objj_msgSend(self,"_appendSubviewsOf:toArray:",_1a3[_1a4],_1a2);
}
objj_msgSend(_1a2,"addObject:",_1a1);
}
}),new objj_method(sel_getUid("setAutorecalculatesKeyViewLoop:"),function(self,_cmd,_1a7){
with(self){
if(_autorecalculatesKeyViewLoop===_1a7){
return;
}
_autorecalculatesKeyViewLoop=_1a7;
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}else{
if(_autorecalculatesKeyViewLoop){
objj_msgSend(self,"_dirtyKeyViewLoop");
}
}
}
}),new objj_method(sel_getUid("autorecalculatesKeyViewLoop"),function(self,_cmd){
with(self){
return _autorecalculatesKeyViewLoop;
}
}),new objj_method(sel_getUid("selectNextKeyView:"),function(self,_cmd,_1ac){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewFollowingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectPreviousKeyView:"),function(self,_cmd,_1af){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewPrecedingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectKeyViewFollowingView:"),function(self,_cmd,_1b2){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_1b2,"nextValidKeyView"));
}
}),new objj_method(sel_getUid("selectKeyViewPrecedingView:"),function(self,_cmd,_1b5){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_1b5,"previousValidKeyView"));
}
}),new objj_method(sel_getUid("setDefaultButtonCell:"),function(self,_cmd,_1b8){
with(self){
objj_msgSend(self,"setDefaultButton:",_1b8);
}
}),new objj_method(sel_getUid("defaultButtonCell"),function(self,_cmd){
with(self){
return objj_msgSend(self,"defaultButton");
}
}),new objj_method(sel_getUid("setDefaultButton:"),function(self,_cmd,_1bd){
with(self){
objj_msgSend(_defaultButton,"setDefaultButton:",NO);
_defaultButton=_1bd;
objj_msgSend(_defaultButton,"setDefaultButton:",YES);
}
}),new objj_method(sel_getUid("defaultButton"),function(self,_cmd){
with(self){
return _defaultButton;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButton"),function(self,_cmd){
with(self){
_defaultButtonEnabled=YES;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButtonCell"),function(self,_cmd){
with(self){
objj_msgSend(self,"enableKeyEquivalentForDefaultButton");
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButton"),function(self,_cmd){
with(self){
_defaultButtonEnabled=NO;
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButtonCell"),function(self,_cmd){
with(self){
objj_msgSend(self,"disableKeyEquivalentForDefaultButton");
}
})]);
class_addMethods(_a,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(CPWindow,"class")){
return;
}
var _1ca=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_8=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_1ca,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(16,16));
}
}),new objj_method(sel_getUid("_windowViewClassForStyleMask:"),function(self,_cmd,_1cd){
with(self){
if(_1cd&CPHUDBackgroundWindowMask){
return _CPHUDWindowView;
}else{
if(_1cd===CPBorderlessWindowMask){
return _CPBorderlessWindowView;
}else{
if(_1cd&CPDocModalWindowMask){
return _CPDocModalWindowView;
}
}
}
return _CPStandardWindowView;
}
}),new objj_method(sel_getUid("_windowViewClassForFullPlatformWindowStyleMask:"),function(self,_cmd,_1d0){
with(self){
return _CPBorderlessBridgeWindowView;
}
}),new objj_method(sel_getUid("frameRectForContentRect:styleMask:"),function(self,_cmd,_1d3,_1d4){
with(self){
return objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"_windowViewClassForStyleMask:",_1d4),"frameRectForContentRect:",_1d3);
}
})]);
var _19c=function(a,b,_1d7){
var _1d8=objj_msgSend(a,"convertRect:toView:",objj_msgSend(a,"bounds"),nil),_1d9=objj_msgSend(b,"convertRect:toView:",objj_msgSend(b,"bounds"),nil);
if(CGRectGetMinY(_1d8)<CGRectGetMinY(_1d9)){
return -1;
}else{
if(CGRectGetMinY(_1d8)==CGRectGetMinY(_1d9)&&CGRectGetMinX(_1d8)<CGRectGetMinX(_1d9)){
return -1;
}else{
if(CGRectGetMinX(_1d8)==CGRectGetMinX(_1d9)&&CGRectGetMinX(_1d8)==CGRectGetMinX(_1d9)){
return 0;
}else{
return 1;
}
}
}
};
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("_synchronizeMenuBarTitleWithWindowTitle"),function(self,_cmd){
with(self){
if(!objj_msgSend(_windowController,"document")||!objj_msgSend(self,"isMainWindow")){
return;
}
objj_msgSend(CPMenu,"setMenuBarTitle:",_title);
}
})]);
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("resizeWithOldPlatformWindowSize:"),function(self,_cmd,_1de){
with(self){
if(objj_msgSend(self,"isFullPlatformWindow")){
return objj_msgSend(self,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}
if(_autoresizingMask==CPWindowNotSizable){
return;
}
var _1df=objj_msgSend(_platformWindow,"contentBounds"),_1e0=CGRectMakeCopy(_frame),dX=(CGRectGetWidth(_1df)-_1de.width)/(((_autoresizingMask&CPWindowMinXMargin)?1:0)+(_autoresizingMask&CPWindowWidthSizable?1:0)+(_autoresizingMask&CPWindowMaxXMargin?1:0)),dY=(CGRectGetHeight(_1df)-_1de.height)/((_autoresizingMask&CPWindowMinYMargin?1:0)+(_autoresizingMask&CPWindowHeightSizable?1:0)+(_autoresizingMask&CPWindowMaxYMargin?1:0));
if(_autoresizingMask&CPWindowMinXMargin){
_1e0.origin.x+=dX;
}
if(_autoresizingMask&CPWindowWidthSizable){
_1e0.size.width+=dX;
}
if(_autoresizingMask&CPWindowMinYMargin){
_1e0.origin.y+=dY;
}
if(_autoresizingMask&CPWindowHeightSizable){
_1e0.size.height+=dY;
}
objj_msgSend(self,"setFrame:",_1e0);
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(self,_cmd,_1e5){
with(self){
_autoresizingMask=_1e5;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(self,_cmd){
with(self){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("convertBaseToGlobal:"),function(self,_cmd,_1ea){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertBaseToPlatformWindow:",_1ea):objj_msgSend(self,"convertBaseToScreen:",_1ea);
}
}),new objj_method(sel_getUid("convertGlobalToBase:"),function(self,_cmd,_1ed){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertPlatformWindowToBase:",_1ed):objj_msgSend(self,"convertScreenToBase:",_1ed);
}
}),new objj_method(sel_getUid("convertBaseToPlatformWindow:"),function(self,_cmd,_1f0){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1f0;
}
var _1f1=objj_msgSend(self,"frame").origin;
return {x:_1f0.x+_1f1.x,y:_1f0.y+_1f1.y};
}
}),new objj_method(sel_getUid("convertPlatformWindowToBase:"),function(self,_cmd,_1f4){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1f4;
}
var _1f5=objj_msgSend(self,"frame").origin;
return {x:_1f4.x-_1f5.x,y:_1f4.y-_1f5.y};
}
}),new objj_method(sel_getUid("convertScreenToBase:"),function(self,_cmd,_1f8){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",objj_msgSend(_platformWindow,"convertScreenToBase:",_1f8));
}
}),new objj_method(sel_getUid("convertBaseToScreen:"),function(self,_cmd,_1fb){
with(self){
return objj_msgSend(_platformWindow,"convertBaseToScreen:",objj_msgSend(self,"convertBaseToPlatformWindow:",_1fb));
}
}),new objj_method(sel_getUid("_setSharesChromeWithPlatformWindow:"),function(self,_cmd,_1fe){
with(self){
if(_1fe&&objj_msgSend(CPPlatform,"isBrowser")){
return;
}
_sharesChromeWithPlatformWindow=_1fe;
}
}),new objj_method(sel_getUid("_sharesChromeWithPlatformWindow"),function(self,_cmd){
with(self){
return _sharesChromeWithPlatformWindow;
}
}),new objj_method(sel_getUid("undoManager"),function(self,_cmd){
with(self){
if(_delegateRespondsToWindowWillReturnUndoManagerSelector){
return objj_msgSend(_delegate,"windowWillReturnUndoManager:",self);
}
if(!_undoManager){
_undoManager=objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init");
}
return _undoManager;
}
}),new objj_method(sel_getUid("undo:"),function(self,_cmd,_205){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"undo");
}
}),new objj_method(sel_getUid("redo:"),function(self,_cmd,_208){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"redo");
}
}),new objj_method(sel_getUid("containsPoint:"),function(self,_cmd,_20b){
with(self){
return CGRectContainsPoint(_frame,_20b);
}
})]);
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("setFullBridge:"),function(self,_cmd,_20e){
with(self){
objj_msgSend(self,"setFullPlatformWindow:",_20e);
}
}),new objj_method(sel_getUid("isFullBridge"),function(self,_cmd){
with(self){
return objj_msgSend(self,"isFullPlatformWindow");
}
}),new objj_method(sel_getUid("convertBaseToBridge:"),function(self,_cmd,_213){
with(self){
return objj_msgSend(self,"convertBaseToPlatformWindow:",_213);
}
}),new objj_method(sel_getUid("convertBridgeToBase:"),function(self,_cmd,_216){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",_216);
}
})]);
var _217=function(_218,_219,_21a){
return _218+(_219-_218)*_21a;
};
var _9=objj_allocateClassPair(CPAnimation,"_CPWindowFrameAnimation"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_window"),new objj_ivar("_startFrame"),new objj_ivar("_targetFrame")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithWindow:targetFrame:"),function(self,_cmd,_21d,_21e){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"initWithDuration:animationCurve:",0.2,CPAnimationLinear);
if(self){
_window=_21d;
_targetFrame=CGRectMakeCopy(_21e);
_startFrame=CGRectMakeCopy(objj_msgSend(_window,"frame"));
}
return self;
}
}),new objj_method(sel_getUid("startAnimation"),function(self,_cmd){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"startAnimation");
_window._isAnimating=YES;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(self,_cmd,_223){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"setCurrentProgress:",_223);
var _224=objj_msgSend(self,"currentValue");
if(_224==1){
_window._isAnimating=NO;
}
objj_msgSend(_window,"setFrameOrigin:",CGPointMake(_217(CGRectGetMinX(_startFrame),CGRectGetMinX(_targetFrame),_224),_217(CGRectGetMinY(_startFrame),CGRectGetMinY(_targetFrame),_224)));
objj_msgSend(_window,"setFrameSize:",CGSizeMake(_217(CGRectGetWidth(_startFrame),CGRectGetWidth(_targetFrame),_224),_217(CGRectGetHeight(_startFrame),CGRectGetHeight(_targetFrame),_224)));
}
})]);
_CPWindowFullPlatformWindowSessionMake=function(_225,_226,_227,_228){
return {windowView:_225,contentRect:_226,hasShadow:_227,level:_228};
};
CPStandardWindowShadowStyle=0;
CPMenuWindowShadowStyle=1;
CPPanelWindowShadowStyle=2;
CPCustomWindowShadowStyle=3;
i;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;23;_CPDocModalWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;8;CPView.j