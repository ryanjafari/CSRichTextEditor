I;25;Foundation/CPCountedSet.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;13;CPResponder.ji;10;CPScreen.ji;18;CPPlatformWindow.jc;52143;
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
class_addIvars(_9,[new objj_ivar("_platformWindow"),new objj_ivar("_windowNumber"),new objj_ivar("_styleMask"),new objj_ivar("_frame"),new objj_ivar("_level"),new objj_ivar("_isVisible"),new objj_ivar("_isMiniaturized"),new objj_ivar("_isAnimating"),new objj_ivar("_hasShadow"),new objj_ivar("_isMovableByWindowBackground"),new objj_ivar("_shadowStyle"),new objj_ivar("_isDocumentEdited"),new objj_ivar("_isDocumentSaving"),new objj_ivar("_shadowView"),new objj_ivar("_windowView"),new objj_ivar("_contentView"),new objj_ivar("_toolbarView"),new objj_ivar("_mouseEnteredStack"),new objj_ivar("_leftMouseDownView"),new objj_ivar("_rightMouseDownView"),new objj_ivar("_toolbar"),new objj_ivar("_firstResponder"),new objj_ivar("_initialFirstResponder"),new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_acceptsMouseMovedEvents"),new objj_ivar("_ignoresMouseEvents"),new objj_ivar("_windowController"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_undoManager"),new objj_ivar("_representedURL"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_inclusiveRegisteredDraggedTypes"),new objj_ivar("_defaultButton"),new objj_ivar("_defaultButtonEnabled"),new objj_ivar("_autorecalculatesKeyViewLoop"),new objj_ivar("_keyViewLoopIsDirty"),new objj_ivar("_sharesChromeWithPlatformWindow"),new objj_ivar("_autoresizingMask"),new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"),new objj_ivar("_isFullPlatformWindow"),new objj_ivar("_fullPlatformWindowSession"),new objj_ivar("_sheetContext"),new objj_ivar("_parentView"),new objj_ivar("_isSheet")]);
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
}),new objj_method(sel_getUid("platformWindow"),function(_10,_11){
with(_10){
return _platformWindow;
}
}),new objj_method(sel_getUid("setPlatformWindow:"),function(_12,_13,_14){
with(_12){
_platformWindow=_14;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_15,_16){
with(_15){
if(_initialFirstResponder){
objj_msgSend(_15,"makeFirstResponder:",_initialFirstResponder);
}
_keyViewLoopIsDirty=!objj_msgSend(_15,"_hasKeyViewLoop");
}
}),new objj_method(sel_getUid("_setWindowView:"),function(_17,_18,_19){
with(_17){
if(_windowView===_19){
return;
}
var _1a=_windowView;
_windowView=_19;
if(_1a){
objj_msgSend(_1a,"_setWindow:",nil);
objj_msgSend(_1a,"noteToolbarChanged");
}
if(_windowView){
var _1b=objj_msgSend(_contentView,"convertRect:toView:",objj_msgSend(_contentView,"bounds"),nil);
_1b.origin=objj_msgSend(_17,"convertBaseToGlobal:",_1b.origin);
objj_msgSend(_windowView,"_setWindow:",_17);
objj_msgSend(_windowView,"setNextResponder:",_17);
objj_msgSend(_windowView,"addSubview:",_contentView);
objj_msgSend(_windowView,"setTitle:",_title);
objj_msgSend(_windowView,"noteToolbarChanged");
objj_msgSend(_17,"setFrame:",objj_msgSend(_17,"frameRectForContentRect:",_1b));
}
}
}),new objj_method(sel_getUid("setFullPlatformWindow:"),function(_1c,_1d,_1e){
with(_1c){
if(!objj_msgSend(_platformWindow,"supportsFullPlatformWindows")){
return;
}
_1e=!!_1e;
if(_isFullPlatformWindow===_1e){
return;
}
_isFullPlatformWindow=_1e;
if(_isFullPlatformWindow){
_fullPlatformWindowSession=_CPWindowFullPlatformWindowSessionMake(_windowView,objj_msgSend(_1c,"contentRectForFrameRect:",objj_msgSend(_1c,"frame")),objj_msgSend(_1c,"hasShadow"),objj_msgSend(_1c,"level"));
var _1f=objj_msgSend(objj_msgSend(_1c,"class"),"_windowViewClassForFullPlatformWindowStyleMask:",_styleMask),_20=objj_msgSend(objj_msgSend(_1f,"alloc"),"initWithFrame:styleMask:",CGRectMakeZero(),_styleMask);
objj_msgSend(_1c,"_setWindowView:",_20);
objj_msgSend(_1c,"setLevel:",CPBackgroundWindowLevel);
objj_msgSend(_1c,"setHasShadow:",NO);
objj_msgSend(_1c,"setAutoresizingMask:",CPWindowWidthSizable|CPWindowHeightSizable);
objj_msgSend(_1c,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}else{
var _20=_fullPlatformWindowSession.windowView;
objj_msgSend(_1c,"_setWindowView:",_20);
objj_msgSend(_1c,"setLevel:",_fullPlatformWindowSession.level);
objj_msgSend(_1c,"setHasShadow:",_fullPlatformWindowSession.hasShadow);
objj_msgSend(_1c,"setAutoresizingMask:",CPWindowNotSizable);
objj_msgSend(_1c,"setFrame:",objj_msgSend(_20,"frameRectForContentRect:",_fullPlatformWindowSession.contentRect));
}
}
}),new objj_method(sel_getUid("isFullPlatformWindow"),function(_21,_22){
with(_21){
return _isFullPlatformWindow;
}
}),new objj_method(sel_getUid("styleMask"),function(_23,_24){
with(_23){
return _styleMask;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_windowView,"contentRectForFrameRect:",_27);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_28,_29,_2a){
with(_28){
return objj_msgSend(_windowView,"frameRectForContentRect:",_2a);
}
}),new objj_method(sel_getUid("frame"),function(_2b,_2c){
with(_2b){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_2d,_2e,_2f,_30,_31){
with(_2d){
if(_31){
var _32=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",_2d,_2f);
objj_msgSend(_32,"startAnimation");
}else{
var _33=_frame.origin,_34=_2f.origin;
if(!(_33.x==_34.x&&_33.y==_34.y)){
_33.x=_34.x;
_33.y=_34.y;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMoveNotification,_2d);
}
var _35=_frame.size,_36=_2f.size;
if(!(_35.width==_36.width&&_35.height==_36.height)){
_35.width=MIN(MAX(_36.width,_minSize.width),_maxSize.width);
_35.height=MIN(MAX(_36.height,_minSize.height),_maxSize.height);
objj_msgSend(_windowView,"setFrameSize:",_35);
if(_hasShadow){
objj_msgSend(_shadowView,"setFrameSize:",{width:_1+_35.width+_2,height:_4+_35.height+_3+_5});
}
if(!_isAnimating&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResize:"))){
objj_msgSend(_delegate,"windowDidResize:",_2d);
}
}
if(objj_msgSend(_2d,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setContentRect:",_frame);
}
}
}
}),new objj_method(sel_getUid("setFrame:display:"),function(_37,_38,_39,_3a){
with(_37){
objj_msgSendSuper({receiver:_37,super_class:objj_getClass("CPResponder")},"setFrame:display:animate:",_39,_3a,NO);
}
}),new objj_method(sel_getUid("setFrame:"),function(_3b,_3c,_3d){
with(_3b){
objj_msgSend(_3b,"setFrame:display:animate:",_3d,YES,NO);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_3e,_3f,_40){
with(_3e){
objj_msgSend(_3e,"setFrame:display:animate:",{origin:{x:_40.x,y:_40.y},size:{width:(_frame.size.width),height:(_frame.size.height)}},YES,NO);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_41,"setFrame:display:animate:",{origin:{x:(_frame.origin.x),y:(_frame.origin.y)},size:{width:_43.width,height:_43.height}},YES,NO);
}
}),new objj_method(sel_getUid("orderFront:"),function(_44,_45,_46){
with(_44){
objj_msgSend(_platformWindow,"orderFront:",_44);
objj_msgSend(_platformWindow,"order:window:relativeTo:",CPWindowAbove,_44,nil);
}
}),new objj_method(sel_getUid("orderBack:"),function(_47,_48,_49){
with(_47){
}
}),new objj_method(sel_getUid("orderOut:"),function(_4a,_4b,_4c){
with(_4a){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillClose:"))){
objj_msgSend(_delegate,"windowWillClose:",_4a);
}
objj_msgSend(_platformWindow,"order:window:relativeTo:",CPWindowOut,_4a,nil);
if(objj_msgSend(CPApp,"keyWindow")==_4a){
objj_msgSend(_4a,"resignKeyWindow");
CPApp._keyWindow=nil;
}
if(objj_msgSend(_4a,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"orderOut:",_4a);
}
}
}),new objj_method(sel_getUid("orderWindow:relativeTo:"),function(_4d,_4e,_4f,_50){
with(_4d){
objj_msgSend(_platformWindow,"order:window:relativeTo:",_4f,_4d,CPApp._windows[_50]);
}
}),new objj_method(sel_getUid("setLevel:"),function(_51,_52,_53){
with(_51){
_level=_53;
if(objj_msgSend(_51,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setLevel:",_53);
}
}
}),new objj_method(sel_getUid("level"),function(_54,_55){
with(_54){
return _level;
}
}),new objj_method(sel_getUid("isVisible"),function(_56,_57){
with(_56){
return _isVisible;
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_58,_59){
with(_58){
return objj_msgSend(_windowView,"showsResizeIndicator");
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_windowView,"setShowsResizeIndicator:",_5c);
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_5d,_5e){
with(_5d){
return objj_msgSend(_windowView,"resizeIndicatorOffset");
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_windowView,"setResizeIndicatorOffset:",_61);
}
}),new objj_method(sel_getUid("setContentView:"),function(_62,_63,_64){
with(_62){
if(_contentView){
objj_msgSend(_contentView,"removeFromSuperview");
}
var _65=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_contentView=_64;
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_62,"contentRectForFrameRect:",_65));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_windowView,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_66,_67){
with(_66){
return _contentView;
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_68,_69,_6a){
with(_68){
objj_msgSend(_windowView,"setBackgroundColor:",_6a);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_6b,_6c){
with(_6b){
return objj_msgSend(_windowView,"backgroundColor");
}
}),new objj_method(sel_getUid("setMinSize:"),function(_6d,_6e,_6f){
with(_6d){
if(CGSizeEqualToSize(_minSize,_6f)){
return;
}
_minSize=CGSizeCreateCopy(_6f);
var _70=CGSizeMakeCopy(objj_msgSend(_6d,"frame").size),_71=NO;
if(_70.width<_minSize.width){
_70.width=_minSize.width;
_71=YES;
}
if(_70.height<_minSize.height){
_70.height=_minSize.height;
_71=YES;
}
if(_71){
objj_msgSend(_6d,"setFrameSize:",_70);
}
}
}),new objj_method(sel_getUid("minSize"),function(_72,_73){
with(_72){
return _minSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_74,_75,_76){
with(_74){
if(CGSizeEqualToSize(_maxSize,_76)){
return;
}
_maxSize=CGSizeCreateCopy(_76);
var _77=CGSizeMakeCopy(objj_msgSend(_74,"frame").size),_78=NO;
if(_77.width>_maxSize.width){
_77.width=_maxSize.width;
_78=YES;
}
if(_77.height>_maxSize.height){
_77.height=_maxSize.height;
_78=YES;
}
if(_78){
objj_msgSend(_74,"setFrameSize:",_77);
}
}
}),new objj_method(sel_getUid("maxSize"),function(_79,_7a){
with(_79){
return _maxSize;
}
}),new objj_method(sel_getUid("hasShadow"),function(_7b,_7c){
with(_7b){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_7d,_7e,_7f){
with(_7d){
if(_hasShadow===_7f){
return;
}
_hasShadow=_7f;
if(objj_msgSend(_7d,"_sharesChromeWithPlatformWindow")){
return objj_msgSend(_platformWindow,"setHasShadow:",_7f);
}
if(_hasShadow){
var _80=objj_msgSend(_windowView,"bounds");
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(-_1,-_3+_5,_1+CGRectGetWidth(_80)+_2,_3+CGRectGetHeight(_80)+_4));
if(!_6){
var _81=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow0.png"),CGSizeMake(20,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow1.png"),CGSizeMake(1,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow2.png"),CGSizeMake(19,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow3.png"),CGSizeMake(20,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow5.png"),CGSizeMake(19,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow6.png"),CGSizeMake(20,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow7.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_81,"pathForResource:","CPWindow/CPWindowShadow8.png"),CGSizeMake(19,18))]));
}
objj_msgSend(_shadowView,"setBackgroundColor:",_6);
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}else{
if(_shadowView){
_shadowView=nil;
}
}
}
}),new objj_method(sel_getUid("setShadowStyle:"),function(_82,_83,_84){
with(_82){
_shadowStyle=_84;
objj_msgSend(objj_msgSend(_82,"platformWindow"),"setShadowStyle:",_shadowStyle);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_85,_86,_87){
with(_85){
_delegate=_87;
_delegateRespondsToWindowWillReturnUndoManagerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillReturnUndoManager:"));
var _88=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeMain:"))){
objj_msgSend(_88,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeMain:"),CPWindowDidBecomeMainNotification,_85);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignMain:"))){
objj_msgSend(_88,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignMain:"),CPWindowDidResignMainNotification,_85);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidMove:"))){
objj_msgSend(_88,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidMove:"),CPWindowDidMoveNotification,_85);
}
}
}),new objj_method(sel_getUid("delegate"),function(_89,_8a){
with(_89){
return _delegate;
}
}),new objj_method(sel_getUid("setWindowController:"),function(_8b,_8c,_8d){
with(_8b){
_windowController=_8d;
}
}),new objj_method(sel_getUid("windowController"),function(_8e,_8f){
with(_8e){
return _windowController;
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_90,_91,_92){
with(_90){
if(objj_msgSend(_delegate,"respondsToSelector:",_92)){
objj_msgSend(_delegate,"performSelector:",_92);
}else{
objj_msgSendSuper({receiver:_90,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_92);
}
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_93,_94){
with(_93){
return YES;
}
}),new objj_method(sel_getUid("makeFirstResponder:"),function(_95,_96,_97){
with(_95){
if(_firstResponder==_97){
return YES;
}
if(!objj_msgSend(_firstResponder,"resignFirstResponder")){
return NO;
}
if(!_97||!objj_msgSend(_97,"acceptsFirstResponder")||!objj_msgSend(_97,"becomeFirstResponder")){
_firstResponder=_95;
return NO;
}
_firstResponder=_97;
return YES;
}
}),new objj_method(sel_getUid("firstResponder"),function(_98,_99){
with(_98){
return _firstResponder;
}
}),new objj_method(sel_getUid("acceptsMouseMovedEvents"),function(_9a,_9b){
with(_9a){
return _acceptsMouseMovedEvents;
}
}),new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"),function(_9c,_9d,_9e){
with(_9c){
_acceptsMouseMovedEvents=_9e;
}
}),new objj_method(sel_getUid("ignoresMouseEvents"),function(_9f,_a0){
with(_9f){
return _ignoresMouseEvents;
}
}),new objj_method(sel_getUid("setIgnoresMouseEvents:"),function(_a1,_a2,_a3){
with(_a1){
_ignoresMouseEvents=_a3;
}
}),new objj_method(sel_getUid("title"),function(_a4,_a5){
with(_a4){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a6,_a7,_a8){
with(_a6){
_title=_a8;
objj_msgSend(_windowView,"setTitle:",_a8);
objj_msgSend(_a6,"_synchronizeMenuBarTitleWithWindowTitle");
}
}),new objj_method(sel_getUid("setTitleWithRepresentedFilename:"),function(_a9,_aa,_ab){
with(_a9){
objj_msgSend(_a9,"setRepresentedFilename:",_ab);
objj_msgSend(_a9,"setTitle:",objj_msgSend(_ab,"lastPathComponent"));
}
}),new objj_method(sel_getUid("setRepresentedFilename:"),function(_ac,_ad,_ae){
with(_ac){
objj_msgSend(_ac,"setRepresentedURL:",_ae);
}
}),new objj_method(sel_getUid("representedFilename"),function(_af,_b0){
with(_af){
return _representedURL;
}
}),new objj_method(sel_getUid("setRepresentedURL:"),function(_b1,_b2,_b3){
with(_b1){
_representedURL=_b3;
}
}),new objj_method(sel_getUid("representedURL"),function(_b4,_b5){
with(_b4){
return _representedURL;
}
}),new objj_method(sel_getUid("screen"),function(_b6,_b7){
with(_b6){
return objj_msgSend(objj_msgSend(CPScreen,"alloc"),"init");
}
}),new objj_method(sel_getUid("setMovableByWindowBackground:"),function(_b8,_b9,_ba){
with(_b8){
_isMovableByWindowBackground=_ba;
}
}),new objj_method(sel_getUid("isMovableByWindowBackground"),function(_bb,_bc){
with(_bb){
return _isMovableByWindowBackground;
}
}),new objj_method(sel_getUid("center"),function(_bd,_be){
with(_bd){
var _bf=objj_msgSend(_bd,"frame").size,_c0=objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(_platformWindow,"contentBounds").size:objj_msgSend(objj_msgSend(_bd,"screen"),"visibleFrame").size;
objj_msgSend(_bd,"setFrameOrigin:",CGPointMake((_c0.width-_bf.width)/2,(_c0.height-_bf.height)/2));
}
}),new objj_method(sel_getUid("sendEvent:"),function(_c1,_c2,_c3){
with(_c1){
var _c4=objj_msgSend(_c3,"type"),_c5=objj_msgSend(_c3,"locationInWindow");
switch(_c4){
case CPKeyUp:
return objj_msgSend(objj_msgSend(_c1,"firstResponder"),"keyUp:",_c3);
case CPKeyDown:
return objj_msgSend(objj_msgSend(_c1,"firstResponder"),"keyDown:",_c3);
case CPScrollWheel:
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_c5),"scrollWheel:",_c3);
case CPLeftMouseUp:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_c5),"mouseUp:",_c3);
}
objj_msgSend(_leftMouseDownView,"mouseUp:",_c3);
_leftMouseDownView=nil;
return;
case CPLeftMouseDown:
_leftMouseDownView=objj_msgSend(_windowView,"hitTest:",_c5);
if(_leftMouseDownView!=_firstResponder&&objj_msgSend(_leftMouseDownView,"acceptsFirstResponder")){
objj_msgSend(_c1,"makeFirstResponder:",_leftMouseDownView);
}
objj_msgSend(CPApp,"activateIgnoringOtherApps:",YES);
var _c6=objj_msgSend(_c3,"window");
if(objj_msgSend(_c6,"isKeyWindow")||objj_msgSend(_c6,"becomesKeyOnlyIfNeeded")){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_c3);
}else{
objj_msgSend(_c1,"makeKeyAndOrderFront:",_c1);
if(objj_msgSend(_leftMouseDownView,"acceptsFirstMouse:",_c3)){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_c3);
}
}
break;
case CPLeftMouseDragged:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_c5),"mouseDragged:",_c3);
}
return objj_msgSend(_leftMouseDownView,"mouseDragged:",_c3);
case CPRightMouseUp:
return objj_msgSend(_rightMouseDownView,"mouseUp:",_c3);
case CPRightMouseDown:
_rightMouseDownView=objj_msgSend(_windowView,"hitTest:",_c5);
return objj_msgSend(_rightMouseDownView,"mouseDown:",_c3);
case CPRightMouseDragged:
return objj_msgSend(_rightMouseDownView,"mouseDragged:",_c3);
case CPMouseMoved:
if(!_acceptsMouseMovedEvents){
return;
}
if(!_mouseEnteredStack){
_mouseEnteredStack=[];
}
var _c7=objj_msgSend(_windowView,"hitTest:",_c5);
if(objj_msgSend(_mouseEnteredStack,"count")&&objj_msgSend(_mouseEnteredStack,"lastObject")===_c7){
return objj_msgSend(_c7,"mouseMoved:",_c3);
}
var _c8=_c7,_c9=[];
while(_c8){
_c9.unshift(_c8);
_c8=objj_msgSend(_c8,"superview");
}
var _ca=MIN(_mouseEnteredStack.length,_c9.length);
while(_ca--){
if(_mouseEnteredStack[_ca]===_c9[_ca]){
break;
}
}
var _cb=_ca+1,_cc=_mouseEnteredStack.length;
if(_cb<_cc){
var _cd=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseExited,_c5,objj_msgSend(_c3,"modifierFlags"),objj_msgSend(_c3,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_cb<_cc;++_cb){
objj_msgSend(_mouseEnteredStack[_cb],"mouseExited:",_cd);
}
}
_cb=_ca+1;
_cc=_c9.length;
if(_cb<_cc){
var _cd=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseEntered,_c5,objj_msgSend(_c3,"modifierFlags"),objj_msgSend(_c3,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_cb<_cc;++_cb){
objj_msgSend(_c9[_cb],"mouseEntered:",_cd);
}
}
_mouseEnteredStack=_c9;
objj_msgSend(_c7,"mouseMoved:",_c3);
}
}
}),new objj_method(sel_getUid("windowNumber"),function(_ce,_cf){
with(_ce){
return _windowNumber;
}
}),new objj_method(sel_getUid("becomeKeyWindow"),function(_d0,_d1){
with(_d0){
if(_firstResponder!=_d0&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("becomeKeyWindow"))){
objj_msgSend(_firstResponder,"becomeKeyWindow");
}
}
}),new objj_method(sel_getUid("canBecomeKeyWindow"),function(_d2,_d3){
with(_d2){
return YES;
}
}),new objj_method(sel_getUid("isKeyWindow"),function(_d4,_d5){
with(_d4){
return objj_msgSend(CPApp,"keyWindow")==_d4;
}
}),new objj_method(sel_getUid("makeKeyAndOrderFront:"),function(_d6,_d7,_d8){
with(_d6){
objj_msgSend(_d6,"orderFront:",_d6);
objj_msgSend(_d6,"makeKeyWindow");
objj_msgSend(_d6,"makeMainWindow");
}
}),new objj_method(sel_getUid("makeKeyWindow"),function(_d9,_da){
with(_d9){
if(!objj_msgSend(_d9,"canBecomeKeyWindow")){
return;
}
objj_msgSend(CPApp._keyWindow,"resignKeyWindow");
CPApp._keyWindow=_d9;
objj_msgSend(_d9,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("resignKeyWindow"),function(_db,_dc){
with(_db){
if(_firstResponder!=_db&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("resignKeyWindow"))){
objj_msgSend(_firstResponder,"resignKeyWindow");
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignKey:"))){
objj_msgSend(_delegate,"windowDidResignKey:",_db);
}
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_dd,_de,_df,_e0,_e1,_e2,_e3,_e4,_e5){
with(_dd){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:",_df,_dd,objj_msgSend(_dd,"convertBaseToGlobal:",_e0),_e1,_e2,_e3,_e4,_e5);
}
}),new objj_method(sel_getUid("_noteRegisteredDraggedTypes:"),function(_e6,_e7,_e8){
with(_e6){
if(!_e8){
return;
}
if(!_inclusiveRegisteredDraggedTypes){
_inclusiveRegisteredDraggedTypes=objj_msgSend(CPCountedSet,"set");
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"unionSet:",_e8);
}
}),new objj_method(sel_getUid("_noteUnregisteredDraggedTypes:"),function(_e9,_ea,_eb){
with(_e9){
if(!_eb){
return;
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"minusSet:",_eb);
if(objj_msgSend(_inclusiveRegisteredDraggedTypes,"count")===0){
_inclusiveRegisteredDraggedTypes=nil;
}
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(_ec,_ed,_ee,_ef,_f0,_f1,_f2,_f3,_f4){
with(_ec){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_ee,_ec,objj_msgSend(_ec,"convertBaseToGlobal:",_ef),_f0,_f1,_f2,_f3,_f4);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(_f5,_f6,_f7){
with(_f5){
if(!_f7){
return;
}
objj_msgSend(_f5,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_f7);
objj_msgSend(_f5,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(_f8,_f9){
with(_f8){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(_fa,_fb){
with(_fa){
objj_msgSend(_fa,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_fc,_fd,_fe){
with(_fc){
if(_isDocumentEdited==_fe){
return;
}
_isDocumentEdited=_fe;
objj_msgSend(CPMenu,"_setMenuBarIconImageAlphaValue:",_isDocumentEdited?0.5:1);
objj_msgSend(_windowView,"setDocumentEdited:",_fe);
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_ff,_cmd){
with(_ff){
return _isDocumentEdited;
}
}),new objj_method(sel_getUid("setDocumentSaving:"),function(self,_cmd,_103){
with(self){
if(_isDocumentSaving==_103){
return;
}
_isDocumentSaving=_103;
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
var _108=objj_msgSend(CPApp,"mainMenu"),_109=objj_msgSend(_108,"indexOfItemWithTitle:",_isDocumentSaving?"Save":"Saving...");
if(_109==CPNotFound){
return;
}
var item=objj_msgSend(_108,"itemAtIndex:",_109);
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
}),new objj_method(sel_getUid("performMiniaturize:"),function(self,_cmd,_10d){
with(self){
objj_msgSend(self,"miniaturize:",_10d);
}
}),new objj_method(sel_getUid("miniaturize:"),function(self,_cmd,_110){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillMiniaturizeNotification,self);
objj_msgSend(objj_msgSend(self,"platformWindow"),"miniaturize:",_110);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMiniaturizeNotification,self);
_isMiniaturized=YES;
}
}),new objj_method(sel_getUid("deminiaturize:"),function(self,_cmd,_113){
with(self){
objj_msgSend(objj_msgSend(self,"platformWindow"),"deminiaturize:",_113);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidDeminiaturizeNotification,self);
_isMiniaturized=NO;
}
}),new objj_method(sel_getUid("isMiniaturized"),function(self,_cmd){
with(self){
return _isMiniaturized;
}
}),new objj_method(sel_getUid("performClose:"),function(self,_cmd,_118){
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
var _119=objj_msgSend(_windowController,"documents");
if(objj_msgSend(_119,"count")){
var _11a=objj_msgSend(_119,"indexOfObject:",objj_msgSend(_windowController,"document"));
objj_msgSend(_119[_11a],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),{documents:objj_msgSend(_119,"copy"),visited:0,index:_11a});
}else{
objj_msgSend(self,"close");
}
}
}),new objj_method(sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),function(self,_cmd,_11d,_11e,_11f){
with(self){
if(_11e){
var _120=objj_msgSend(self,"windowController"),_121=_11f.documents,_122=objj_msgSend(_121,"count"),_123=++_11f.visited,_124=++_11f.index%_122;
objj_msgSend(_11d,"removeWindowController:",_120);
if(_123<_122){
objj_msgSend(_120,"setDocument:",_121[_124]);
objj_msgSend(_121[_124],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),_11f);
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
}),new objj_method(sel_getUid("setToolbar:"),function(self,_cmd,_135){
with(self){
if(_toolbar===_135){
return;
}
objj_msgSend(objj_msgSend(_135,"_window"),"setToolbar:",nil);
objj_msgSend(_toolbar,"_setWindow:",nil);
_toolbar=_135;
objj_msgSend(_toolbar,"_setWindow:",self);
objj_msgSend(self,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("toggleToolbarShown:"),function(self,_cmd,_138){
with(self){
var _139=objj_msgSend(self,"toolbar");
objj_msgSend(_139,"setVisible:",!objj_msgSend(_139,"isVisible"));
}
}),new objj_method(sel_getUid("_noteToolbarChanged"),function(self,_cmd){
with(self){
var _13c=CGRectMakeCopy(objj_msgSend(self,"frame")),_13d;
objj_msgSend(_windowView,"noteToolbarChanged");
if(_isFullPlatformWindow){
_13d=objj_msgSend(_platformWindow,"visibleFrame");
}else{
_13d=CGRectMakeCopy(objj_msgSend(self,"frame"));
_13d.origin=_13c.origin;
}
objj_msgSend(self,"setFrame:",_13d);
}
}),new objj_method(sel_getUid("_setFrame:delegate:duration:curve:"),function(self,_cmd,_140,_141,_142,_143){
with(self){
var _144=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",self,_140);
objj_msgSend(_144,"setDelegate:",_141);
objj_msgSend(_144,"setAnimationCurve:",_143);
objj_msgSend(_144,"setDuration:",_142);
objj_msgSend(_144,"startAnimation");
}
}),new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"),function(self,_cmd){
with(self){
var _147=objj_msgSend(self,"attachedSheet");
var _148=objj_msgSend(objj_msgSend(self,"contentView"),"frame"),_149=CGRectMakeCopy(objj_msgSend(_147,"frame"));
_149.origin.y=CGRectGetMinY(_frame)+CGRectGetMinY(_148);
_149.origin.x=CGRectGetMinX(_frame)+FLOOR((CGRectGetWidth(_frame)-CGRectGetWidth(_149))/2);
objj_msgSend(_147,"setFrameOrigin:",_149.origin);
}
}),new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"),function(self,_cmd,_14c,_14d,_14e,_14f){
with(self){
var _150=objj_msgSend(_14c,"frame");
_sheetContext={"sheet":_14c,"modalDelegate":_14d,"endSelector":_14e,"contextInfo":_14f,"frame":CGRectMakeCopy(_150),"returnCode":-1,"opened":NO};
objj_msgSend(self,"_attachSheetWindow:",_14c);
}
}),new objj_method(sel_getUid("_attachSheetWindow:"),function(self,_cmd,_153){
with(self){
var _154=objj_msgSend(_153,"frame"),_155=objj_msgSend(self,"frame"),_156=objj_msgSend(_153,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_156);
_153._isSheet=YES;
_153._parentView=self;
var _157=_155.origin.x+FLOOR((_155.size.width-_154.size.width)/2),_158=_155.origin.y+objj_msgSend(objj_msgSend(self,"contentView"),"frame").origin.y,_159=CGRectMake(_157,_158,_154.size.width,0),_15a=CGRectMake(_157,_158,_154.size.width,_154.size.height);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillBeginSheetNotification,self);
objj_msgSend(CPApp,"runModalForWindow:",_153);
objj_msgSend(_153,"orderFront:",self);
objj_msgSend(_153,"setFrame:",_159);
_sheetContext["opened"]=YES;
objj_msgSend(_153,"_setFrame:delegate:duration:curve:",_15a,self,0.2,CPAnimationEaseOut);
objj_msgSend(_153,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("_detachSheetWindow"),function(self,_cmd){
with(self){
var _15d=objj_msgSend(self,"attachedSheet"),_15e=objj_msgSend(_15d,"frame"),_15f=CGRectMakeCopy(_15e);
_15f.size.height=0;
_sheetContext["frame"]=_15e;
var _160=objj_msgSend(_15d,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_160);
_sheetContext["opened"]=NO;
objj_msgSend(_15d,"_setFrame:delegate:duration:curve:",_15f,self,0.2,CPAnimationEaseIn);
}
}),new objj_method(sel_getUid("animationDidEnd:"),function(self,_cmd,anim){
with(self){
var _164=_sheetContext["sheet"];
if(anim._window!=_164){
return;
}
var _165=objj_msgSend(_164,"contentView");
if(_sheetContext["opened"]===YES){
objj_msgSend(self,"_restoreMasksForView:",_165);
return;
}
objj_msgSend(CPApp,"stopModal");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidEndSheetNotification,self);
objj_msgSend(_164,"orderOut:",self);
var _166=_sheetContext["frame"];
objj_msgSend(_164,"setFrame:",_166);
objj_msgSend(self,"_restoreMasksForView:",_165);
var _167=_sheetContext["modalDelegate"],_168=_sheetContext["endSelector"];
if(_167!=nil&&_168!=nil){
objj_msgSend(_167,_168,_164,_sheetContext["returnCode"],_sheetContext["contextInfo"]);
}
_sheetContext=nil;
_164._parentView=nil;
}
}),new objj_method(sel_getUid("_setUpMasksForView:"),function(self,_cmd,_16b){
with(self){
var _16c=objj_msgSend(CPArray,"arrayWithArray:",objj_msgSend(_16b,"subviews"));
objj_msgSend(_16c,"addObject:",_16b);
for(var i=0,_16e=objj_msgSend(_16c,"count");i<_16e;i++){
var view=objj_msgSend(_16c,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_171=(mask&CPViewMinYMargin)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask|_171));
}
}
}),new objj_method(sel_getUid("_restoreMasksForView:"),function(self,_cmd,_174){
with(self){
var _175=objj_msgSend(CPArray,"arrayWithArray:",objj_msgSend(_174,"subviews"));
objj_msgSend(_175,"addObject:",_174);
for(var i=0,_177=objj_msgSend(_175,"count");i<_177;i++){
var view=objj_msgSend(_175,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_17a=(mask&128)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask&(~_17a)));
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
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(self,_cmd,_185){
with(self){
return objj_msgSend(objj_msgSend(self,"contentView"),"performKeyEquivalent:",_185);
}
}),new objj_method(sel_getUid("keyDown:"),function(self,_cmd,_188){
with(self){
if(!objj_msgSend(_188,"_couldBeKeyEquivalent")||!objj_msgSend(self,"performKeyEquivalent:",_188)){
objj_msgSend(self,"interpretKeyEvents:",[_188]);
}
}
}),new objj_method(sel_getUid("insertNewline:"),function(self,_cmd,_18b){
with(self){
if(_defaultButton&&_defaultButtonEnabled){
objj_msgSend(_defaultButton,"performClick:",nil);
}
}
}),new objj_method(sel_getUid("insertTab:"),function(self,_cmd,_18e){
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
var _193=[];
objj_msgSend(self,"_appendSubviewsOf:toArray:",_contentView,_193);
for(var i=0,_195=objj_msgSend(_193,"count");i<_195;i++){
if(_193[i]._nextKeyView){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("recalculateKeyViewLoop"),function(self,_cmd){
with(self){
var _198=[];
objj_msgSend(self,"_appendSubviewsOf:toArray:",_contentView,_198);
var _199=objj_msgSend(_198,"sortedArrayUsingFunction:context:",_19a,_contentView),_19b=objj_msgSend(_199,"count");
for(var i=0;i<_19b;i++){
objj_msgSend(_199[i],"setNextKeyView:",_199[(i+1)%_19b]);
}
_keyViewLoopIsDirty=NO;
}
}),new objj_method(sel_getUid("_appendSubviewsOf:toArray:"),function(self,_cmd,_19f,_1a0){
with(self){
var _1a1=objj_msgSend(_19f,"subviews"),_1a2=objj_msgSend(_1a1,"count");
while(_1a2--){
objj_msgSend(self,"_appendSubviewsOf:toArray:",_1a1[_1a2],_1a0);
}
objj_msgSend(_1a0,"addObject:",_19f);
}
}),new objj_method(sel_getUid("setAutorecalculatesKeyViewLoop:"),function(self,_cmd,_1a5){
with(self){
if(_autorecalculatesKeyViewLoop===_1a5){
return;
}
_autorecalculatesKeyViewLoop=_1a5;
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
}),new objj_method(sel_getUid("selectNextKeyView:"),function(self,_cmd,_1aa){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewFollowingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectPreviousKeyView:"),function(self,_cmd,_1ad){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewPrecedingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectKeyViewFollowingView:"),function(self,_cmd,_1b0){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_1b0,"nextValidKeyView"));
}
}),new objj_method(sel_getUid("selectKeyViewPrecedingView:"),function(self,_cmd,_1b3){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_1b3,"previousValidKeyView"));
}
}),new objj_method(sel_getUid("setDefaultButtonCell:"),function(self,_cmd,_1b6){
with(self){
objj_msgSend(self,"setDefaultButton:",_1b6);
}
}),new objj_method(sel_getUid("defaultButtonCell"),function(self,_cmd){
with(self){
return objj_msgSend(self,"defaultButton");
}
}),new objj_method(sel_getUid("setDefaultButton:"),function(self,_cmd,_1bb){
with(self){
objj_msgSend(_defaultButton,"setDefaultButton:",NO);
_defaultButton=_1bb;
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
var _1c8=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_8=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_1c8,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(16,16));
}
}),new objj_method(sel_getUid("_windowViewClassForStyleMask:"),function(self,_cmd,_1cb){
with(self){
if(_1cb&CPHUDBackgroundWindowMask){
return _CPHUDWindowView;
}else{
if(_1cb===CPBorderlessWindowMask){
return _CPBorderlessWindowView;
}else{
if(_1cb&CPDocModalWindowMask){
return _CPDocModalWindowView;
}
}
}
return _CPStandardWindowView;
}
}),new objj_method(sel_getUid("_windowViewClassForFullPlatformWindowStyleMask:"),function(self,_cmd,_1ce){
with(self){
return _CPBorderlessBridgeWindowView;
}
}),new objj_method(sel_getUid("frameRectForContentRect:styleMask:"),function(self,_cmd,_1d1,_1d2){
with(self){
return objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"_windowViewClassForStyleMask:",_1d2),"frameRectForContentRect:",_1d1);
}
})]);
var _19a=function(a,b,_1d5){
var _1d6=objj_msgSend(a,"convertRect:toView:",objj_msgSend(a,"bounds"),nil),_1d7=objj_msgSend(b,"convertRect:toView:",objj_msgSend(b,"bounds"),nil);
if(CGRectGetMinY(_1d6)<CGRectGetMinY(_1d7)){
return -1;
}else{
if(CGRectGetMinY(_1d6)==CGRectGetMinY(_1d7)&&CGRectGetMinX(_1d6)<CGRectGetMinX(_1d7)){
return -1;
}else{
if(CGRectGetMinX(_1d6)==CGRectGetMinX(_1d7)&&CGRectGetMinX(_1d6)==CGRectGetMinX(_1d7)){
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
class_addMethods(_9,[new objj_method(sel_getUid("resizeWithOldPlatformWindowSize:"),function(self,_cmd,_1dc){
with(self){
if(objj_msgSend(self,"isFullPlatformWindow")){
return objj_msgSend(self,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}
if(_autoresizingMask==CPWindowNotSizable){
return;
}
var _1dd=objj_msgSend(_platformWindow,"contentBounds"),_1de=CGRectMakeCopy(_frame),dX=(CGRectGetWidth(_1dd)-_1dc.width)/(((_autoresizingMask&CPWindowMinXMargin)?1:0)+(_autoresizingMask&CPWindowWidthSizable?1:0)+(_autoresizingMask&CPWindowMaxXMargin?1:0)),dY=(CGRectGetHeight(_1dd)-_1dc.height)/((_autoresizingMask&CPWindowMinYMargin?1:0)+(_autoresizingMask&CPWindowHeightSizable?1:0)+(_autoresizingMask&CPWindowMaxYMargin?1:0));
if(_autoresizingMask&CPWindowMinXMargin){
_1de.origin.x+=dX;
}
if(_autoresizingMask&CPWindowWidthSizable){
_1de.size.width+=dX;
}
if(_autoresizingMask&CPWindowMinYMargin){
_1de.origin.y+=dY;
}
if(_autoresizingMask&CPWindowHeightSizable){
_1de.size.height+=dY;
}
objj_msgSend(self,"setFrame:",_1de);
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(self,_cmd,_1e3){
with(self){
_autoresizingMask=_1e3;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(self,_cmd){
with(self){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("convertBaseToGlobal:"),function(self,_cmd,_1e8){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertBaseToPlatformWindow:",_1e8):objj_msgSend(self,"convertBaseToScreen:",_1e8);
}
}),new objj_method(sel_getUid("convertGlobalToBase:"),function(self,_cmd,_1eb){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertPlatformWindowToBase:",_1eb):objj_msgSend(self,"convertScreenToBase:",_1eb);
}
}),new objj_method(sel_getUid("convertBaseToPlatformWindow:"),function(self,_cmd,_1ee){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1ee;
}
var _1ef=objj_msgSend(self,"frame").origin;
return {x:_1ee.x+_1ef.x,y:_1ee.y+_1ef.y};
}
}),new objj_method(sel_getUid("convertPlatformWindowToBase:"),function(self,_cmd,_1f2){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1f2;
}
var _1f3=objj_msgSend(self,"frame").origin;
return {x:_1f2.x-_1f3.x,y:_1f2.y-_1f3.y};
}
}),new objj_method(sel_getUid("convertScreenToBase:"),function(self,_cmd,_1f6){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",objj_msgSend(_platformWindow,"convertScreenToBase:",_1f6));
}
}),new objj_method(sel_getUid("convertBaseToScreen:"),function(self,_cmd,_1f9){
with(self){
return objj_msgSend(_platformWindow,"convertBaseToScreen:",objj_msgSend(self,"convertBaseToPlatformWindow:",_1f9));
}
}),new objj_method(sel_getUid("_setSharesChromeWithPlatformWindow:"),function(self,_cmd,_1fc){
with(self){
if(_1fc&&objj_msgSend(CPPlatform,"isBrowser")){
return;
}
_sharesChromeWithPlatformWindow=_1fc;
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
}),new objj_method(sel_getUid("undo:"),function(self,_cmd,_203){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"undo");
}
}),new objj_method(sel_getUid("redo:"),function(self,_cmd,_206){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"redo");
}
}),new objj_method(sel_getUid("containsPoint:"),function(self,_cmd,_209){
with(self){
return CGRectContainsPoint(_frame,_209);
}
})]);
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("setFullBridge:"),function(self,_cmd,_20c){
with(self){
objj_msgSend(self,"setFullPlatformWindow:",_20c);
}
}),new objj_method(sel_getUid("isFullBridge"),function(self,_cmd){
with(self){
return objj_msgSend(self,"isFullPlatformWindow");
}
}),new objj_method(sel_getUid("convertBaseToBridge:"),function(self,_cmd,_211){
with(self){
return objj_msgSend(self,"convertBaseToPlatformWindow:",_211);
}
}),new objj_method(sel_getUid("convertBridgeToBase:"),function(self,_cmd,_214){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",_214);
}
})]);
var _215=function(_216,_217,_218){
return _216+(_217-_216)*_218;
};
var _9=objj_allocateClassPair(CPAnimation,"_CPWindowFrameAnimation"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_window"),new objj_ivar("_startFrame"),new objj_ivar("_targetFrame")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithWindow:targetFrame:"),function(self,_cmd,_21b,_21c){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"initWithDuration:animationCurve:",0.2,CPAnimationLinear);
if(self){
_window=_21b;
_targetFrame=CGRectMakeCopy(_21c);
_startFrame=CGRectMakeCopy(objj_msgSend(_window,"frame"));
}
return self;
}
}),new objj_method(sel_getUid("startAnimation"),function(self,_cmd){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"startAnimation");
_window._isAnimating=YES;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(self,_cmd,_221){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"setCurrentProgress:",_221);
var _222=objj_msgSend(self,"currentValue");
if(_222==1){
_window._isAnimating=NO;
}
objj_msgSend(_window,"setFrameOrigin:",CGPointMake(_215(CGRectGetMinX(_startFrame),CGRectGetMinX(_targetFrame),_222),_215(CGRectGetMinY(_startFrame),CGRectGetMinY(_targetFrame),_222)));
objj_msgSend(_window,"setFrameSize:",CGSizeMake(_215(CGRectGetWidth(_startFrame),CGRectGetWidth(_targetFrame),_222),_215(CGRectGetHeight(_startFrame),CGRectGetHeight(_targetFrame),_222)));
}
})]);
_CPWindowFullPlatformWindowSessionMake=function(_223,_224,_225,_226){
return {windowView:_223,contentRect:_224,hasShadow:_225,level:_226};
};
CPStandardWindowShadowStyle=0;
CPMenuWindowShadowStyle=1;
CPPanelWindowShadowStyle=2;
CPCustomWindowShadowStyle=3;
i;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;23;_CPDocModalWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;8;CPView.j