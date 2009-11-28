i;11;CPControl.ji;17;CPStringDrawing.ji;17;CPCompatibility.jc;23194;
CPLineBreakByWordWrapping=0;
CPLineBreakByCharWrapping=1;
CPLineBreakByClipping=2;
CPLineBreakByTruncatingHead=3;
CPLineBreakByTruncatingTail=4;
CPLineBreakByTruncatingMiddle=5;
CPTextFieldSquareBezel=0;
CPTextFieldRoundedBezel=1;
CPTextFieldDidFocusNotification="CPTextFieldDidFocusNotification";
CPTextFieldDidBlurNotification="CPTextFieldDidBlurNotification";
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil,_6=NO,_7=NO,_8=NO,_9=nil,_a=nil,_b=nil,_c=nil,_d=nil,_e=nil;
var _f="‚Ä¢";
var _10=objj_getClass("CPString");
if(!_10){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPString\""));
}
var _11=_10.isa;
class_addMethods(_10,[new objj_method(sel_getUid("string"),function(_12,_13){
with(_12){
return _12;
}
})]);
CPTextFieldStateRounded=CPThemeState("rounded");
CPTextFieldStatePlaceholder=CPThemeState("placeholder");
var _10=objj_allocateClassPair(CPControl,"CPTextField"),_11=_10.isa;
class_addIvars(_10,[new objj_ivar("_isEditing"),new objj_ivar("_isEditable"),new objj_ivar("_isSelectable"),new objj_ivar("_isSecure"),new objj_ivar("_drawsBackground"),new objj_ivar("_textFieldBackgroundColor"),new objj_ivar("_placeholderString"),new objj_ivar("_delegate"),new objj_ivar("_textDidChangeValue"),new objj_ivar("_bezelStyle"),new objj_ivar("_isBordered"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_10);
objj_addClassForBundle(_10,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_10,[new objj_method(sel_getUid("_inputElement"),function(_14,_15){
with(_14){
if(!_1){
_1=document.createElement("input");
_1.style.position="absolute";
_1.style.border="0px";
_1.style.padding="0px";
_1.style.margin="0px";
_1.style.whiteSpace="pre";
_1.style.background="transparent";
_1.style.outline="none";
_b=function(_16){
if(_4&&_4._DOMElement!=_1.parentNode){
return;
}
if(!_6){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
return;
}
CPTextFieldHandleBlur(_16,_1);
_7=YES;
return true;
};
_e=function(_17){
_5=objj_msgSend(_4,"stringValue");
_17=_17||window.event;
if(_17.keyCode==CPReturnKeyCode||_17.keyCode==CPTabKeyCode){
_d(_17);
}
return true;
};
_d=function(_18){
_18=_18||window.event;
_c();
if(_18.keyCode==CPReturnKeyCode||_18.keyCode==CPTabKeyCode){
if(_18.preventDefault){
_18.preventDefault();
}
if(_18.stopPropagation){
_18.stopPropagation();
}
_18.cancelBubble=true;
var _19=_4;
if(_18&&_18.keyCode==CPReturnKeyCode){
if(_19._isEditing){
_19._isEditing=NO;
objj_msgSend(_19,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_19,nil));
}
objj_msgSend(_19,"sendAction:to:",objj_msgSend(_19,"action"),objj_msgSend(_19,"target"));
objj_msgSend(_19,"selectText:",nil);
}else{
if(_18&&_18.keyCode==CPTabKeyCode){
if(!_18.shiftKey){
objj_msgSend(objj_msgSend(_19,"window"),"selectNextKeyView:",_19);
}else{
objj_msgSend(objj_msgSend(_19,"window"),"selectPreviousKeyView:",_19);
}
}
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
_c=function(){
objj_msgSend(_4,"_setStringValue:",_1.value);
if(objj_msgSend(_4,"stringValue")!==_5){
if(!_4._isEditing){
_4._isEditing=YES;
objj_msgSend(_4,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_4,nil));
}
objj_msgSend(_4,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_4,nil));
_5=objj_msgSend(_4,"stringValue");
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
CPTextFieldHandleBlur=function(_1a){
var _1b=_4;
_4=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
if(document.attachEvent){
_1.attachEvent("on"+CPDOMEventKeyUp,_c);
_1.attachEvent("on"+CPDOMEventKeyDown,_e);
_1.attachEvent("on"+CPDOMEventKeyPress,_d);
}else{
_1.addEventListener(CPDOMEventKeyUp,_c,NO);
_1.addEventListener(CPDOMEventKeyDown,_e,NO);
_1.addEventListener(CPDOMEventKeyPress,_d,NO);
}
_1.onblur=_b;
_3=_1;
}
if(CPFeatureIsCompatible(CPInputTypeCanBeChangedFeature)){
if(objj_msgSend(_14,"isSecure")){
_1.type="password";
}else{
_1.type="text";
}
return _1;
}
if(objj_msgSend(_14,"isSecure")){
if(!_2){
_2=document.createElement("input");
_2.style.position="absolute";
_2.style.border="0px";
_2.style.padding="0px";
_2.style.margin="0px";
_2.style.whiteSpace="pre";
_2.style.background="transparent";
_2.style.outline="none";
_2.type="password";
_2.attachEvent("on"+CPDOMEventKeyUp,_c);
_2.attachEvent("on"+CPDOMEventKeyDown,_e);
_2.attachEvent("on"+CPDOMEventKeyPress,_d);
_2.onblur=_b;
}
_1=_2;
}else{
_1=_3;
}
return _1;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_1c,_1d,_1e){
with(_1c){
_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPControl")},"initWithFrame:",_1e);
if(_1c){
objj_msgSend(_1c,"setStringValue:","");
objj_msgSend(_1c,"setPlaceholderString:","");
_sendActionOn=CPKeyUpMask|CPKeyDownMask;
objj_msgSend(_1c,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
}
return _1c;
}
}),new objj_method(sel_getUid("setEditable:"),function(_1f,_20,_21){
with(_1f){
_isEditable=_21;
}
}),new objj_method(sel_getUid("isEditable"),function(_22,_23){
with(_22){
return _isEditable;
}
}),new objj_method(sel_getUid("setSelectable:"),function(_24,_25,_26){
with(_24){
_isSelectable=_26;
}
}),new objj_method(sel_getUid("isSelectable"),function(_27,_28){
with(_27){
return _isSelectable;
}
}),new objj_method(sel_getUid("setSecure:"),function(_29,_2a,_2b){
with(_29){
_isSecure=_2b;
}
}),new objj_method(sel_getUid("isSecure"),function(_2c,_2d){
with(_2c){
return _isSecure;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_2e,_2f,_30){
with(_2e){
if(_30){
objj_msgSend(_2e,"setThemeState:",CPThemeStateBezeled);
}else{
objj_msgSend(_2e,"unsetThemeState:",CPThemeStateBezeled);
}
}
}),new objj_method(sel_getUid("isBezeled"),function(_31,_32){
with(_31){
return objj_msgSend(_31,"hasThemeState:",CPThemeStateBezeled);
}
}),new objj_method(sel_getUid("setBezelStyle:"),function(_33,_34,_35){
with(_33){
var _36=_35===CPTextFieldRoundedBezel;
if(_36){
objj_msgSend(_33,"setThemeState:",CPTextFieldStateRounded);
}else{
objj_msgSend(_33,"unsetThemeState:",CPTextFieldStateRounded);
}
}
}),new objj_method(sel_getUid("bezelStyle"),function(_37,_38){
with(_37){
if(objj_msgSend(_37,"hasThemeState:",CPTextFieldStateRounded)){
return CPTextFieldRoundedBezel;
}
return CPTextFieldSquareBezel;
}
}),new objj_method(sel_getUid("setBordered:"),function(_39,_3a,_3b){
with(_39){
if(_3b){
objj_msgSend(_39,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_39,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_3c,_3d){
with(_3c){
return objj_msgSend(_3c,"hasThemeState:",CPThemeStateBordered);
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_3e,_3f,_40){
with(_3e){
if(_drawsBackground==_40){
return;
}
_drawsBackground=_40;
objj_msgSend(_3e,"setNeedsLayout");
objj_msgSend(_3e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawsBackground"),function(_41,_42){
with(_41){
return _drawsBackground;
}
}),new objj_method(sel_getUid("setTextFieldBackgroundColor:"),function(_43,_44,_45){
with(_43){
if(_textFieldBackgroundColor==_45){
return;
}
_textFieldBackgroundColor=_45;
objj_msgSend(_43,"setNeedsLayout");
objj_msgSend(_43,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("textFieldBackgroundColor"),function(_46,_47){
with(_46){
return _textFieldBackgroundColor;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_48,_49){
with(_48){
return objj_msgSend(_48,"isEditable")&&objj_msgSend(_48,"isEnabled");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_4a,_4b){
with(_4a){
if(_4&&objj_msgSend(_4,"window")!==objj_msgSend(_4a,"window")){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
}
objj_msgSend(_4a,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_4a,"_updatePlaceholderState");
objj_msgSend(_4a,"setNeedsLayout");
_isEditing=NO;
var _4c=objj_msgSend(_4a,"stringValue"),_4d=objj_msgSend(_4a,"_inputElement");
_4d.value=_4c;
_4d.style.color=objj_msgSend(objj_msgSend(_4a,"currentValueForThemeAttribute:","text-color"),"cssString");
_4d.style.font=objj_msgSend(objj_msgSend(_4a,"currentValueForThemeAttribute:","font"),"cssString");
_4d.style.zIndex=1000;
switch(objj_msgSend(_4a,"alignment")){
case CPCenterTextAlignment:
_4d.style.textAlign="center";
break;
case CPRightTextAlignment:
_4d.style.textAlign="right";
break;
default:
_4d.style.textAlign="left";
}
var _4e=objj_msgSend(_4a,"contentRectForBounds:",objj_msgSend(_4a,"bounds"));
_4d.style.top=(_4e.origin.y)+"px";
_4d.style.left=((_4e.origin.x)-1)+"px";
_4d.style.width=(_4e.size.width)+"px";
_4d.style.height=(_4e.size.height)+"px";
_DOMElement.appendChild(_4d);
window.setTimeout(function(){
_4d.focus();
_4=_4a;
},0);
_4d.value=objj_msgSend(_4a,"stringValue");
objj_msgSend(objj_msgSend(objj_msgSend(_4a,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
_8=YES;
if(document.attachEvent){
_9=document.body.onselectstart;
_a=document.body.ondrag;
document.body.ondrag=function(){
};
document.body.onselectstart=function(){
};
}
objj_msgSend(_4a,"textDidFocus:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidFocusNotification,_4a,nil));
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_4f,_50){
with(_4f){
objj_msgSend(_4f,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_4f,"_updatePlaceholderState");
objj_msgSend(_4f,"setNeedsLayout");
var _51=objj_msgSend(_4f,"_inputElement");
objj_msgSend(_4f,"setObjectValue:",_51.value);
_6=YES;
_51.blur();
if(!_7){
_b();
}
_7=NO;
_6=NO;
if(_51.parentNode==_DOMElement){
_51.parentNode.removeChild(_51);
}
_8=NO;
if(document.attachEvent){
_9=nil;
_a=nil;
document.body.ondrag=_a;
document.body.onselectstart=_9;
}
if(_isEditing){
_isEditing=NO;
objj_msgSend(_4f,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_4f,nil));
if(objj_msgSend(_4f,"sendsActionOnEndEditing")){
objj_msgSend(_4f,"sendAction:to:",objj_msgSend(_4f,"action"),objj_msgSend(_4f,"target"));
}
}
objj_msgSend(_4f,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_4f,nil));
return YES;
}
}),new objj_method(sel_getUid("textDidBlur:"),function(_52,_53,_54){
with(_52){
if(objj_msgSend(_54,"object")!=_52){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_54);
}
}),new objj_method(sel_getUid("textDidFocus:"),function(_55,_56,_57){
with(_55){
if(objj_msgSend(_57,"object")!=_55){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_57);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_58,_59,_5a){
with(_58){
if(objj_msgSend(_58,"isEditable")&&objj_msgSend(_58,"isEnabled")){
return objj_msgSend(objj_msgSend(_58,"window"),"makeFirstResponder:",_58);
}else{
return objj_msgSend(objj_msgSend(_58,"nextResponder"),"mouseDown:",_5a);
}
}
}),new objj_method(sel_getUid("objectValue"),function(_5b,_5c){
with(_5b){
return objj_msgSendSuper({receiver:_5b,super_class:objj_getClass("CPControl")},"objectValue");
}
}),new objj_method(sel_getUid("_setStringValue:"),function(_5d,_5e,_5f){
with(_5d){
objj_msgSend(_5d,"willChangeValueForKey:","objectValue");
objj_msgSendSuper({receiver:_5d,super_class:objj_getClass("CPControl")},"setObjectValue:",String(_5f));
objj_msgSend(_5d,"_updatePlaceholderState");
objj_msgSend(_5d,"didChangeValueForKey:","objectValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_60,_61,_62){
with(_60){
objj_msgSendSuper({receiver:_60,super_class:objj_getClass("CPControl")},"setObjectValue:",_62);
if(_4===_60){
objj_msgSend(_60,"_inputElement").value=_62;
}
objj_msgSend(_60,"_updatePlaceholderState");
}
}),new objj_method(sel_getUid("_updatePlaceholderState"),function(_63,_64){
with(_63){
var _65=objj_msgSend(_63,"stringValue");
if((!_65||_65.length===0)&&!objj_msgSend(_63,"hasThemeState:",CPThemeStateEditing)){
objj_msgSend(_63,"setThemeState:",CPTextFieldStatePlaceholder);
}else{
objj_msgSend(_63,"unsetThemeState:",CPTextFieldStatePlaceholder);
}
}
}),new objj_method(sel_getUid("setPlaceholderString:"),function(_66,_67,_68){
with(_66){
if(_placeholderString===_68){
return;
}
_placeholderString=_68;
if(objj_msgSend(_66,"hasThemeState:",CPTextFieldStatePlaceholder)){
objj_msgSend(_66,"setNeedsLayout");
objj_msgSend(_66,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("placeholderString"),function(_69,_6a){
with(_69){
return _placeholderString;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_6b,_6c){
with(_6b){
var _6d=objj_msgSend((objj_msgSend(_6b,"stringValue")||" "),"sizeWithFont:",objj_msgSend(_6b,"currentValueForThemeAttribute:","font")),_6e=objj_msgSend(_6b,"currentValueForThemeAttribute:","content-inset"),_6f=objj_msgSend(_6b,"currentValueForThemeAttribute:","min-size"),_70=objj_msgSend(_6b,"currentValueForThemeAttribute:","max-size");
_6d.width=MAX(_6d.width+_6e.left+_6e.right,_6f.width);
_6d.height=MAX(_6d.height+_6e.top+_6e.bottom,_6f.height);
if(_70.width>=0){
_6d.width=MIN(_6d.width,_70.width);
}
if(_70.height>=0){
_6d.height=MIN(_6d.height,_70.height);
}
if(objj_msgSend(_6b,"isEditable")){
_6d.width=CGRectGetWidth(objj_msgSend(_6b,"frame"));
}
objj_msgSend(_6b,"setFrameSize:",_6d);
}
}),new objj_method(sel_getUid("selectText:"),function(_71,_72,_73){
with(_71){
var _74=objj_msgSend(_71,"_inputElement");
if(_74.parentNode===_DOMElement&&(objj_msgSend(_71,"isEditable")||objj_msgSend(_71,"isSelectable"))){
window.setTimeout(function(){
_74.select();
},0);
}
}
}),new objj_method(sel_getUid("setDelegate:"),function(_75,_76,_77){
with(_75){
var _78=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_78,"removeObserver:name:object:",_delegate,CPControlTextDidBeginEditingNotification,_75);
objj_msgSend(_78,"removeObserver:name:object:",_delegate,CPControlTextDidChangeNotification,_75);
objj_msgSend(_78,"removeObserver:name:object:",_delegate,CPControlTextDidEndEditingNotification,_75);
objj_msgSend(_78,"removeObserver:name:object:",_delegate,CPTextFieldDidFocusNotification,_75);
objj_msgSend(_78,"removeObserver:name:object:",_delegate,CPTextFieldDidBlurNotification,_75);
}
_delegate=_77;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBeginEditing:"))){
objj_msgSend(_78,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBeginEditing:"),CPControlTextDidBeginEditingNotification,_75);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidChange:"))){
objj_msgSend(_78,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidChange:"),CPControlTextDidChangeNotification,_75);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidEndEditing:"))){
objj_msgSend(_78,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidEndEditing:"),CPControlTextDidEndEditingNotification,_75);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidFocus:"))){
objj_msgSend(_78,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidFocus:"),CPTextFieldDidFocusNotification,_75);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBlur:"))){
objj_msgSend(_78,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBlur:"),CPTextFieldDidBlurNotification,_75);
}
}
}),new objj_method(sel_getUid("delegate"),function(_79,_7a){
with(_79){
return _delegate;
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(_7b,"currentValueForThemeAttribute:","content-inset");
if(!_7e){
return _7d;
}
_7d.origin.x+=_7e.left;
_7d.origin.y+=_7e.top;
_7d.size.width-=_7e.left+_7e.right;
_7d.size.height-=_7e.top+_7e.bottom;
return _7d;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_7f,_80,_81){
with(_7f){
var _82=objj_msgSend(_7f,"currentValueForThemeAttribute:","bezel-inset");
if(((_82).top===0&&(_82).right===0&&(_82).bottom===0&&(_82).left===0)){
return _81;
}
_81.origin.x+=_82.left;
_81.origin.y+=_82.top;
_81.size.width-=_82.left+_82.right;
_81.size.height-=_82.top+_82.bottom;
return _81;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_83,_84,_85){
with(_83){
if(_85==="bezel-view"){
return objj_msgSend(_83,"bezelRectForBounds:",objj_msgSend(_83,"bounds"));
}else{
if(_85==="content-view"){
return objj_msgSend(_83,"contentRectForBounds:",objj_msgSend(_83,"bounds"));
}
}
return objj_msgSendSuper({receiver:_83,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_85);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_86,_87,_88){
with(_86){
if(_88==="bezel-view"){
var _89=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_89,"setHitTests:",NO);
return _89;
}else{
var _89=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
return _89;
}
return objj_msgSendSuper({receiver:_86,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_88);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_8a,_8b){
with(_8a){
var _8c=objj_msgSend(_8a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_8c){
objj_msgSend(_8c,"setBackgroundColor:",objj_msgSend(_8a,"currentValueForThemeAttribute:","bezel-color"));
}
var _8d=objj_msgSend(_8a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_8d){
objj_msgSend(_8d,"setHidden:",objj_msgSend(_8a,"hasThemeState:",CPThemeStateEditing));
var _8e="";
if(objj_msgSend(_8a,"hasThemeState:",CPTextFieldStatePlaceholder)){
_8e=objj_msgSend(_8a,"placeholderString");
}else{
_8e=objj_msgSend(_8a,"stringValue");
if(objj_msgSend(_8a,"isSecure")){
_8e=_8f(_8e);
}
}
objj_msgSend(_8d,"setText:",_8e);
objj_msgSend(_8d,"setTextColor:",objj_msgSend(_8a,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_8d,"setFont:",objj_msgSend(_8a,"currentValueForThemeAttribute:","font"));
objj_msgSend(_8d,"setAlignment:",objj_msgSend(_8a,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_8d,"setVerticalAlignment:",objj_msgSend(_8a,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_8d,"setLineBreakMode:",objj_msgSend(_8a,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_8d,"setTextShadowColor:",objj_msgSend(_8a,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_8d,"setTextShadowOffset:",objj_msgSend(_8a,"currentValueForThemeAttribute:","text-shadow-offset"));
}
}
})]);
class_addMethods(_11,[new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:"),function(_90,_91,_92,_93,_94){
with(_90){
return objj_msgSend(_90,"textFieldWithStringValue:placeholder:width:theme:",_92,_93,_94,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:theme:"),function(_95,_96,_97,_98,_99,_9a){
with(_95){
var _9b=objj_msgSend(objj_msgSend(_95,"alloc"),"initWithFrame:",CGRectMake(0,0,_99,29));
objj_msgSend(_9b,"setTheme:",_9a);
objj_msgSend(_9b,"setStringValue:",_97);
objj_msgSend(_9b,"setPlaceholderString:",_98);
objj_msgSend(_9b,"setBordered:",YES);
objj_msgSend(_9b,"setBezeled:",YES);
objj_msgSend(_9b,"setEditable:",YES);
objj_msgSend(_9b,"sizeToFit");
return _9b;
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:"),function(_9c,_9d,_9e,_9f,_a0){
with(_9c){
return objj_msgSend(_9c,"roundedTextFieldWithStringValue:placeholder:width:theme:",_9e,_9f,_a0,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:theme:"),function(_a1,_a2,_a3,_a4,_a5,_a6){
with(_a1){
var _a7=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,_a5,29));
objj_msgSend(_a7,"setTheme:",_a6);
objj_msgSend(_a7,"setStringValue:",_a3);
objj_msgSend(_a7,"setPlaceholderString:",_a4);
objj_msgSend(_a7,"setBezelStyle:",CPTextFieldRoundedBezel);
objj_msgSend(_a7,"setBordered:",YES);
objj_msgSend(_a7,"setBezeled:",YES);
objj_msgSend(_a7,"setEditable:",YES);
objj_msgSend(_a7,"sizeToFit");
return _a7;
}
}),new objj_method(sel_getUid("labelWithTitle:"),function(_a8,_a9,_aa){
with(_a8){
return objj_msgSend(_a8,"labelWithTitle:theme:",_aa,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("labelWithTitle:theme:"),function(_ab,_ac,_ad,_ae){
with(_ab){
var _af=objj_msgSend(objj_msgSend(_ab,"alloc"),"init");
objj_msgSend(_af,"setStringValue:",_ad);
objj_msgSend(_af,"sizeToFit");
return _af;
}
}),new objj_method(sel_getUid("themeClass"),function(_b0,_b1){
with(_b0){
return "textfield";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_b2,_b3){
with(_b2){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),right:(0),bottom:(0),left:(0)},{top:(2),right:(2),bottom:(2),left:(2)},nil],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _8f=function(_b4){
if(!_b4){
return "";
}
return Array(_b4.length+1).join(_f);
};
var _b5="CPTextFieldIsEditableKey",_b6="CPTextFieldIsSelectableKey",_b7="CPTextFieldIsBorderedKey",_b8="CPTextFieldIsBezeledKey",_b9="CPTextFieldBezelStyleKey",_ba="CPTextFieldDrawsBackgroundKey",_bb="CPTextFieldLineBreakModeKey",_bc="CPTextFieldBackgroundColorKey",_bd="CPTextFieldPlaceholderStringKey";
var _10=objj_getClass("CPTextField");
if(!_10){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTextField\""));
}
var _11=_10.isa;
class_addMethods(_10,[new objj_method(sel_getUid("initWithCoder:"),function(_be,_bf,_c0){
with(_be){
_be=objj_msgSendSuper({receiver:_be,super_class:objj_getClass("CPControl")},"initWithCoder:",_c0);
if(_be){
objj_msgSend(_be,"setEditable:",objj_msgSend(_c0,"decodeBoolForKey:",_b5));
objj_msgSend(_be,"setSelectable:",objj_msgSend(_c0,"decodeBoolForKey:",_b6));
objj_msgSend(_be,"setDrawsBackground:",objj_msgSend(_c0,"decodeBoolForKey:",_ba));
objj_msgSend(_be,"setTextFieldBackgroundColor:",objj_msgSend(_c0,"decodeObjectForKey:",_bc));
objj_msgSend(_be,"setPlaceholderString:",objj_msgSend(_c0,"decodeObjectForKey:",_bd));
}
return _be;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c1,_c2,_c3){
with(_c1){
objj_msgSendSuper({receiver:_c1,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_c3);
objj_msgSend(_c3,"encodeBool:forKey:",_isEditable,_b5);
objj_msgSend(_c3,"encodeBool:forKey:",_isSelectable,_b6);
objj_msgSend(_c3,"encodeBool:forKey:",_drawsBackground,_ba);
objj_msgSend(_c3,"encodeObject:forKey:",_textFieldBackgroundColor,_bc);
objj_msgSend(_c3,"encodeObject:forKey:",_placeholderString,_bd);
}
})]);
