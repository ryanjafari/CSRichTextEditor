i;11;CPControl.ji;17;CPStringDrawing.ji;17;CPCompatibility.jc;17745;
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
var _1="‚Ä¢";
var _2=objj_getClass("CPString");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPString\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("string"),function(_4,_5){
with(_4){
return _4;
}
})]);
CPTextFieldStateRounded=CPThemeState("rounded");
CPTextFieldStatePlaceholder=CPThemeState("placeholder");
var _2=objj_allocateClassPair(CPControl,"CPTextField"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_isEditing"),new objj_ivar("_isEditable"),new objj_ivar("_isSelectable"),new objj_ivar("_isSecure"),new objj_ivar("_drawsBackground"),new objj_ivar("_textFieldBackgroundColor"),new objj_ivar("_placeholderString"),new objj_ivar("_delegate"),new objj_ivar("_textDidChangeValue"),new objj_ivar("_bezelStyle"),new objj_ivar("_isBordered"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPControl")},"initWithFrame:",_8);
if(_6){
objj_msgSend(_6,"setStringValue:","");
objj_msgSend(_6,"setPlaceholderString:","");
_sendActionOn=CPKeyUpMask|CPKeyDownMask;
objj_msgSend(_6,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
}
return _6;
}
}),new objj_method(sel_getUid("setEditable:"),function(_9,_a,_b){
with(_9){
_isEditable=_b;
}
}),new objj_method(sel_getUid("isEditable"),function(_c,_d){
with(_c){
return _isEditable;
}
}),new objj_method(sel_getUid("setSelectable:"),function(_e,_f,_10){
with(_e){
_isSelectable=_10;
}
}),new objj_method(sel_getUid("isSelectable"),function(_11,_12){
with(_11){
return _isSelectable;
}
}),new objj_method(sel_getUid("setSecure:"),function(_13,_14,_15){
with(_13){
_isSecure=_15;
}
}),new objj_method(sel_getUid("isSecure"),function(_16,_17){
with(_16){
return _isSecure;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_18,_19,_1a){
with(_18){
if(_1a){
objj_msgSend(_18,"setThemeState:",CPThemeStateBezeled);
}else{
objj_msgSend(_18,"unsetThemeState:",CPThemeStateBezeled);
}
}
}),new objj_method(sel_getUid("isBezeled"),function(_1b,_1c){
with(_1b){
return objj_msgSend(_1b,"hasThemeState:",CPThemeStateBezeled);
}
}),new objj_method(sel_getUid("setBezelStyle:"),function(_1d,_1e,_1f){
with(_1d){
var _20=_1f===CPTextFieldRoundedBezel;
if(_20){
objj_msgSend(_1d,"setThemeState:",CPTextFieldStateRounded);
}else{
objj_msgSend(_1d,"unsetThemeState:",CPTextFieldStateRounded);
}
}
}),new objj_method(sel_getUid("bezelStyle"),function(_21,_22){
with(_21){
if(objj_msgSend(_21,"hasThemeState:",CPTextFieldStateRounded)){
return CPTextFieldRoundedBezel;
}
return CPTextFieldSquareBezel;
}
}),new objj_method(sel_getUid("setBordered:"),function(_23,_24,_25){
with(_23){
if(_25){
objj_msgSend(_23,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_23,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_26,_27){
with(_26){
return objj_msgSend(_26,"hasThemeState:",CPThemeStateBordered);
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_28,_29,_2a){
with(_28){
if(_drawsBackground==_2a){
return;
}
_drawsBackground=_2a;
objj_msgSend(_28,"setNeedsLayout");
objj_msgSend(_28,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawsBackground"),function(_2b,_2c){
with(_2b){
return _drawsBackground;
}
}),new objj_method(sel_getUid("setTextFieldBackgroundColor:"),function(_2d,_2e,_2f){
with(_2d){
if(_textFieldBackgroundColor==_2f){
return;
}
_textFieldBackgroundColor=_2f;
objj_msgSend(_2d,"setNeedsLayout");
objj_msgSend(_2d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("textFieldBackgroundColor"),function(_30,_31){
with(_30){
return _textFieldBackgroundColor;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_32,_33){
with(_32){
return objj_msgSend(_32,"isEditable")&&objj_msgSend(_32,"isEnabled");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_34,_35){
with(_34){
objj_msgSend(_34,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_34,"_updatePlaceholderState");
objj_msgSend(_34,"setNeedsLayout");
_isEditing=NO;
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_36,_37){
with(_36){
objj_msgSend(_36,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_36,"_updatePlaceholderState");
objj_msgSend(_36,"setNeedsLayout");
if(_isEditing){
_isEditing=NO;
objj_msgSend(_36,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_36,nil));
if(objj_msgSend(_36,"sendsActionOnEndEditing")){
objj_msgSend(_36,"sendAction:to:",objj_msgSend(_36,"action"),objj_msgSend(_36,"target"));
}
}
objj_msgSend(_36,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_36,nil));
return YES;
}
}),new objj_method(sel_getUid("textDidBlur:"),function(_38,_39,_3a){
with(_38){
if(objj_msgSend(_3a,"object")!=_38){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_3a);
}
}),new objj_method(sel_getUid("textDidFocus:"),function(_3b,_3c,_3d){
with(_3b){
if(objj_msgSend(_3d,"object")!=_3b){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_3d);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_3e,_3f,_40){
with(_3e){
if(objj_msgSend(_3e,"isEditable")&&objj_msgSend(_3e,"isEnabled")){
return objj_msgSend(objj_msgSend(_3e,"window"),"makeFirstResponder:",_3e);
}else{
return objj_msgSend(objj_msgSend(_3e,"nextResponder"),"mouseDown:",_40);
}
}
}),new objj_method(sel_getUid("objectValue"),function(_41,_42){
with(_41){
return objj_msgSendSuper({receiver:_41,super_class:objj_getClass("CPControl")},"objectValue");
}
}),new objj_method(sel_getUid("_setStringValue:"),function(_43,_44,_45){
with(_43){
objj_msgSend(_43,"willChangeValueForKey:","objectValue");
objj_msgSendSuper({receiver:_43,super_class:objj_getClass("CPControl")},"setObjectValue:",String(_45));
objj_msgSend(_43,"_updatePlaceholderState");
objj_msgSend(_43,"didChangeValueForKey:","objectValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_46,_47,_48){
with(_46){
objj_msgSendSuper({receiver:_46,super_class:objj_getClass("CPControl")},"setObjectValue:",_48);
objj_msgSend(_46,"_updatePlaceholderState");
}
}),new objj_method(sel_getUid("_updatePlaceholderState"),function(_49,_4a){
with(_49){
var _4b=objj_msgSend(_49,"stringValue");
if((!_4b||_4b.length===0)&&!objj_msgSend(_49,"hasThemeState:",CPThemeStateEditing)){
objj_msgSend(_49,"setThemeState:",CPTextFieldStatePlaceholder);
}else{
objj_msgSend(_49,"unsetThemeState:",CPTextFieldStatePlaceholder);
}
}
}),new objj_method(sel_getUid("setPlaceholderString:"),function(_4c,_4d,_4e){
with(_4c){
if(_placeholderString===_4e){
return;
}
_placeholderString=_4e;
if(objj_msgSend(_4c,"hasThemeState:",CPTextFieldStatePlaceholder)){
objj_msgSend(_4c,"setNeedsLayout");
objj_msgSend(_4c,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("placeholderString"),function(_4f,_50){
with(_4f){
return _placeholderString;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_51,_52){
with(_51){
var _53=objj_msgSend((objj_msgSend(_51,"stringValue")||" "),"sizeWithFont:",objj_msgSend(_51,"currentValueForThemeAttribute:","font")),_54=objj_msgSend(_51,"currentValueForThemeAttribute:","content-inset"),_55=objj_msgSend(_51,"currentValueForThemeAttribute:","min-size"),_56=objj_msgSend(_51,"currentValueForThemeAttribute:","max-size");
_53.width=MAX(_53.width+_54.left+_54.right,_55.width);
_53.height=MAX(_53.height+_54.top+_54.bottom,_55.height);
if(_56.width>=0){
_53.width=MIN(_53.width,_56.width);
}
if(_56.height>=0){
_53.height=MIN(_53.height,_56.height);
}
if(objj_msgSend(_51,"isEditable")){
_53.width=CGRectGetWidth(objj_msgSend(_51,"frame"));
}
objj_msgSend(_51,"setFrameSize:",_53);
}
}),new objj_method(sel_getUid("selectText:"),function(_57,_58,_59){
with(_57){
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5a,_5b,_5c){
with(_5a){
var _5d=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_5d,"removeObserver:name:object:",_delegate,CPControlTextDidBeginEditingNotification,_5a);
objj_msgSend(_5d,"removeObserver:name:object:",_delegate,CPControlTextDidChangeNotification,_5a);
objj_msgSend(_5d,"removeObserver:name:object:",_delegate,CPControlTextDidEndEditingNotification,_5a);
objj_msgSend(_5d,"removeObserver:name:object:",_delegate,CPTextFieldDidFocusNotification,_5a);
objj_msgSend(_5d,"removeObserver:name:object:",_delegate,CPTextFieldDidBlurNotification,_5a);
}
_delegate=_5c;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBeginEditing:"))){
objj_msgSend(_5d,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBeginEditing:"),CPControlTextDidBeginEditingNotification,_5a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidChange:"))){
objj_msgSend(_5d,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidChange:"),CPControlTextDidChangeNotification,_5a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidEndEditing:"))){
objj_msgSend(_5d,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidEndEditing:"),CPControlTextDidEndEditingNotification,_5a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidFocus:"))){
objj_msgSend(_5d,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidFocus:"),CPTextFieldDidFocusNotification,_5a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBlur:"))){
objj_msgSend(_5d,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBlur:"),CPTextFieldDidBlurNotification,_5a);
}
}
}),new objj_method(sel_getUid("delegate"),function(_5e,_5f){
with(_5e){
return _delegate;
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_60,_61,_62){
with(_60){
var _63=objj_msgSend(_60,"currentValueForThemeAttribute:","content-inset");
if(!_63){
return _62;
}
_62.origin.x+=_63.left;
_62.origin.y+=_63.top;
_62.size.width-=_63.left+_63.right;
_62.size.height-=_63.top+_63.bottom;
return _62;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_64,_65,_66){
with(_64){
var _67=objj_msgSend(_64,"currentValueForThemeAttribute:","bezel-inset");
if(((_67).top===0&&(_67).right===0&&(_67).bottom===0&&(_67).left===0)){
return _66;
}
_66.origin.x+=_67.left;
_66.origin.y+=_67.top;
_66.size.width-=_67.left+_67.right;
_66.size.height-=_67.top+_67.bottom;
return _66;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_68,_69,_6a){
with(_68){
if(_6a==="bezel-view"){
return objj_msgSend(_68,"bezelRectForBounds:",objj_msgSend(_68,"bounds"));
}else{
if(_6a==="content-view"){
return objj_msgSend(_68,"contentRectForBounds:",objj_msgSend(_68,"bounds"));
}
}
return objj_msgSendSuper({receiver:_68,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_6a);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_6b,_6c,_6d){
with(_6b){
if(_6d==="bezel-view"){
var _6e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_6e,"setHitTests:",NO);
return _6e;
}else{
var _6e=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
return _6e;
}
return objj_msgSendSuper({receiver:_6b,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_6d);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_6f,_70){
with(_6f){
var _71=objj_msgSend(_6f,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_71){
objj_msgSend(_71,"setBackgroundColor:",objj_msgSend(_6f,"currentValueForThemeAttribute:","bezel-color"));
}
var _72=objj_msgSend(_6f,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_72){
objj_msgSend(_72,"setHidden:",objj_msgSend(_6f,"hasThemeState:",CPThemeStateEditing));
var _73="";
if(objj_msgSend(_6f,"hasThemeState:",CPTextFieldStatePlaceholder)){
_73=objj_msgSend(_6f,"placeholderString");
}else{
_73=objj_msgSend(_6f,"stringValue");
if(objj_msgSend(_6f,"isSecure")){
_73=_74(_73);
}
}
objj_msgSend(_72,"setText:",_73);
objj_msgSend(_72,"setTextColor:",objj_msgSend(_6f,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_72,"setFont:",objj_msgSend(_6f,"currentValueForThemeAttribute:","font"));
objj_msgSend(_72,"setAlignment:",objj_msgSend(_6f,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_72,"setVerticalAlignment:",objj_msgSend(_6f,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_72,"setLineBreakMode:",objj_msgSend(_6f,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_72,"setTextShadowColor:",objj_msgSend(_6f,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_72,"setTextShadowOffset:",objj_msgSend(_6f,"currentValueForThemeAttribute:","text-shadow-offset"));
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:"),function(_75,_76,_77,_78,_79){
with(_75){
return objj_msgSend(_75,"textFieldWithStringValue:placeholder:width:theme:",_77,_78,_79,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:theme:"),function(_7a,_7b,_7c,_7d,_7e,_7f){
with(_7a){
var _80=objj_msgSend(objj_msgSend(_7a,"alloc"),"initWithFrame:",CGRectMake(0,0,_7e,29));
objj_msgSend(_80,"setTheme:",_7f);
objj_msgSend(_80,"setStringValue:",_7c);
objj_msgSend(_80,"setPlaceholderString:",_7d);
objj_msgSend(_80,"setBordered:",YES);
objj_msgSend(_80,"setBezeled:",YES);
objj_msgSend(_80,"setEditable:",YES);
objj_msgSend(_80,"sizeToFit");
return _80;
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:"),function(_81,_82,_83,_84,_85){
with(_81){
return objj_msgSend(_81,"roundedTextFieldWithStringValue:placeholder:width:theme:",_83,_84,_85,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:theme:"),function(_86,_87,_88,_89,_8a,_8b){
with(_86){
var _8c=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,_8a,29));
objj_msgSend(_8c,"setTheme:",_8b);
objj_msgSend(_8c,"setStringValue:",_88);
objj_msgSend(_8c,"setPlaceholderString:",_89);
objj_msgSend(_8c,"setBezelStyle:",CPTextFieldRoundedBezel);
objj_msgSend(_8c,"setBordered:",YES);
objj_msgSend(_8c,"setBezeled:",YES);
objj_msgSend(_8c,"setEditable:",YES);
objj_msgSend(_8c,"sizeToFit");
return _8c;
}
}),new objj_method(sel_getUid("labelWithTitle:"),function(_8d,_8e,_8f){
with(_8d){
return objj_msgSend(_8d,"labelWithTitle:theme:",_8f,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("labelWithTitle:theme:"),function(_90,_91,_92,_93){
with(_90){
var _94=objj_msgSend(objj_msgSend(_90,"alloc"),"init");
objj_msgSend(_94,"setStringValue:",_92);
objj_msgSend(_94,"sizeToFit");
return _94;
}
}),new objj_method(sel_getUid("themeClass"),function(_95,_96){
with(_95){
return "textfield";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_97,_98){
with(_97){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),right:(0),bottom:(0),left:(0)},{top:(2),right:(2),bottom:(2),left:(2)},nil],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _74=function(_99){
if(!_99){
return "";
}
return Array(_99.length+1).join(_1);
};
var _9a="CPTextFieldIsEditableKey",_9b="CPTextFieldIsSelectableKey",_9c="CPTextFieldIsBorderedKey",_9d="CPTextFieldIsBezeledKey",_9e="CPTextFieldBezelStyleKey",_9f="CPTextFieldDrawsBackgroundKey",_a0="CPTextFieldLineBreakModeKey",_a1="CPTextFieldBackgroundColorKey",_a2="CPTextFieldPlaceholderStringKey";
var _2=objj_getClass("CPTextField");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTextField\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_a3,_a4,_a5){
with(_a3){
_a3=objj_msgSendSuper({receiver:_a3,super_class:objj_getClass("CPControl")},"initWithCoder:",_a5);
if(_a3){
objj_msgSend(_a3,"setEditable:",objj_msgSend(_a5,"decodeBoolForKey:",_9a));
objj_msgSend(_a3,"setSelectable:",objj_msgSend(_a5,"decodeBoolForKey:",_9b));
objj_msgSend(_a3,"setDrawsBackground:",objj_msgSend(_a5,"decodeBoolForKey:",_9f));
objj_msgSend(_a3,"setTextFieldBackgroundColor:",objj_msgSend(_a5,"decodeObjectForKey:",_a1));
objj_msgSend(_a3,"setPlaceholderString:",objj_msgSend(_a5,"decodeObjectForKey:",_a2));
}
return _a3;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a6,_a7,_a8){
with(_a6){
objj_msgSendSuper({receiver:_a6,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_a8);
objj_msgSend(_a8,"encodeBool:forKey:",_isEditable,_9a);
objj_msgSend(_a8,"encodeBool:forKey:",_isSelectable,_9b);
objj_msgSend(_a8,"encodeBool:forKey:",_drawsBackground,_9f);
objj_msgSend(_a8,"encodeObject:forKey:",_textFieldBackgroundColor,_a1);
objj_msgSend(_a8,"encodeObject:forKey:",_placeholderString,_a2);
}
})]);
