I;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;22;AppKit/CPApplication.jI;17;AppKit/CPButton.jI;16;AppKit/CPColor.jI;15;AppKit/CPFont.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;16;AppKit/CPPanel.jI;20;AppKit/CPTextField.jc;5790;
CPWarningAlertStyle=0;
CPInformationalAlertStyle=1;
CPCriticalAlertStyle=2;
var _1,_2,_3;
var _4=objj_allocateClassPair(CPObject,"CPAlert"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_alertPanel"),new objj_ivar("_messageLabel"),new objj_ivar("_alertImageView"),new objj_ivar("_alertStyle"),new objj_ivar("_windowTitle"),new objj_ivar("_windowStyle"),new objj_ivar("_buttonCount"),new objj_ivar("_buttons"),new objj_ivar("_delegate")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("init"),function(_6,_7){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"init")){
_buttonCount=0;
_buttons=objj_msgSend(CPArray,"array");
_alertStyle=CPWarningAlertStyle;
objj_msgSend(_6,"setWindowStyle:",nil);
}
return _6;
}
}),new objj_method(sel_getUid("setWindowStyle:"),function(_8,_9,_a){
with(_8){
_windowStyle=_a;
_alertPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,400,110),_a?_a|CPTitledWindowMask:CPTitledWindowMask);
objj_msgSend(_alertPanel,"setFloatingPanel:",YES);
objj_msgSend(_alertPanel,"center");
objj_msgSend(_messageLabel,"setTextColor:",(_a&CPHUDBackgroundWindowMask)?objj_msgSend(CPColor,"whiteColor"):objj_msgSend(CPColor,"blackColor"));
var _b=objj_msgSend(_buttons,"count");
for(var i=0;i<_b;i++){
var _d=_buttons[i];
objj_msgSend(_d,"setFrameSize:",CGSizeMake(objj_msgSend(_d,"frame").size.width,(_a==CPHUDBackgroundWindowMask)?20:24));
objj_msgSend(_d,"setBezelStyle:",(_a&CPHUDBackgroundWindowMask)?CPHUDBezelStyle:CPRoundedBezelStyle);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_d);
}
if(!_messageLabel){
var _e=objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"bounds");
_messageLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(57,10,CGRectGetWidth(_e)-73,62));
objj_msgSend(_messageLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",13));
objj_msgSend(_messageLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_messageLabel,"setAlignment:",CPJustifiedTextAlignment);
_alertImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(15,12,32,32));
}
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_messageLabel);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_alertImageView);
}
}),new objj_method(sel_getUid("setTitle:"),function(_f,_10,_11){
with(_f){
_windowTitle=_11;
}
}),new objj_method(sel_getUid("title"),function(_12,_13){
with(_12){
return _windowTitle;
}
}),new objj_method(sel_getUid("windowStyle"),function(_14,_15){
with(_14){
return _windowStyle;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_16,_17,_18){
with(_16){
_delegate=_18;
}
}),new objj_method(sel_getUid("delegate"),function(_19,_1a){
with(_19){
return _delegate;
}
}),new objj_method(sel_getUid("setAlertStyle:"),function(_1b,_1c,_1d){
with(_1b){
_alertStyle=_1d;
}
}),new objj_method(sel_getUid("alertStyle"),function(_1e,_1f){
with(_1e){
return _alertStyle;
}
}),new objj_method(sel_getUid("setMessageText:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_messageLabel,"setStringValue:",_22);
}
}),new objj_method(sel_getUid("messageText"),function(_23,_24){
with(_23){
return objj_msgSend(_messageLabel,"stringValue");
}
}),new objj_method(sel_getUid("addButtonWithTitle:"),function(_25,_26,_27){
with(_25){
var _28=objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"bounds"),_29=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(CGRectGetWidth(_28)-((_buttonCount+1)*90),CGRectGetHeight(_28)-34,80,(_windowStyle==CPHUDBackgroundWindowMask)?20:24));
objj_msgSend(_29,"setTitle:",_27);
objj_msgSend(_29,"setTarget:",_25);
objj_msgSend(_29,"setTag:",_buttonCount);
objj_msgSend(_29,"setAction:",sel_getUid("_notifyDelegate:"));
objj_msgSend(_29,"setBezelStyle:",(_windowStyle==CPHUDBackgroundWindowMask)?CPHUDBezelStyle:CPRoundRectBezelStyle);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_29);
if(_buttonCount==0){
objj_msgSend(_alertPanel,"setDefaultButton:",_29);
}
_buttonCount++;
objj_msgSend(_buttons,"addObject:",_29);
}
}),new objj_method(sel_getUid("runModal"),function(_2a,_2b){
with(_2a){
var _2c;
switch(_alertStyle){
case CPWarningAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_1);
_2c="Warning";
break;
case CPInformationalAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_2);
_2c="Information";
break;
case CPCriticalAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_3);
_2c="Error";
break;
}
objj_msgSend(_alertPanel,"setTitle:",_windowTitle?_windowTitle:_2c);
objj_msgSend(CPApp,"runModalForWindow:",_alertPanel);
}
}),new objj_method(sel_getUid("_notifyDelegate:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_alertPanel,"close");
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("alertDidEnd:returnCode:"))){
objj_msgSend(_delegate,"alertDidEnd:returnCode:",_2d,objj_msgSend(_2f,"tag"));
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("initialize"),function(_30,_31){
with(_30){
if(_30!=CPAlert){
return;
}
var _32=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_30,"class"));
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_32,"pathForResource:","CPAlert/dialog-warning.png"),CGSizeMake(32,32));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_32,"pathForResource:","CPAlert/dialog-information.png"),CGSizeMake(32,32));
_3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_32,"pathForResource:","CPAlert/dialog-error.png"),CGSizeMake(32,32));
}
})]);
