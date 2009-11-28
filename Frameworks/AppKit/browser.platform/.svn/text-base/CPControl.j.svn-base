i;8;CPFont.ji;10;CPShadow.ji;8;CPView.jc;16531;
CPLeftTextAlignment=0;
CPRightTextAlignment=1;
CPCenterTextAlignment=2;
CPJustifiedTextAlignment=3;
CPNaturalTextAlignment=4;
CPRegularControlSize=0;
CPSmallControlSize=1;
CPMiniControlSize=2;
CPControlNormalBackgroundColor="CPControlNormalBackgroundColor";
CPControlSelectedBackgroundColor="CPControlSelectedBackgroundColor";
CPControlHighlightedBackgroundColor="CPControlHighlightedBackgroundColor";
CPControlDisabledBackgroundColor="CPControlDisabledBackgroundColor";
CPControlTextDidBeginEditingNotification="CPControlTextDidBeginEditingNotification";
CPControlTextDidChangeNotification="CPControlTextDidChangeNotification";
CPControlTextDidEndEditingNotification="CPControlTextDidEndEditingNotification";
var _1=objj_msgSend(CPColor,"blackColor");
var _2=objj_allocateClassPair(CPView,"CPControl"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_value"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_sendActionOn"),new objj_ivar("_sendsActionOnEndEditing"),new objj_ivar("_continuousTracking"),new objj_ivar("_trackingWasWithinFrame"),new objj_ivar("_trackingMouseDownFlags"),new objj_ivar("_previousTrackingLocation"),new objj_ivar("_toolTip")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("sendsActionOnEndEditing"),function(_4,_5){
with(_4){
return _sendsActionOnEndEditing;
}
}),new objj_method(sel_getUid("setSendsActionOnEndEditing:"),function(_6,_7,_8){
with(_6){
_sendsActionOnEndEditing=_8;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_9,_a,_b){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPView")},"initWithFrame:",_b);
if(_9){
_sendActionOn=CPLeftMouseUpMask;
_trackingMouseDownFlags=0;
}
return _9;
}
}),new objj_method(sel_getUid("setAction:"),function(_c,_d,_e){
with(_c){
_action=_e;
}
}),new objj_method(sel_getUid("action"),function(_f,_10){
with(_f){
return _action;
}
}),new objj_method(sel_getUid("setTarget:"),function(_11,_12,_13){
with(_11){
_target=_13;
}
}),new objj_method(sel_getUid("target"),function(_14,_15){
with(_14){
return _target;
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_16,_17,_18,_19){
with(_16){
objj_msgSend(CPApp,"sendAction:to:from:",_18,_19,_16);
}
}),new objj_method(sel_getUid("sendActionOn:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=_sendActionOn;
_sendActionOn=_1c;
return _1d;
}
}),new objj_method(sel_getUid("isContinuous"),function(_1e,_1f){
with(_1e){
return (_sendActionOn&CPPeriodicMask)!==0;
}
}),new objj_method(sel_getUid("setContinuous:"),function(_20,_21,_22){
with(_20){
if(_22){
_sendActionOn|=CPPeriodicMask;
}else{
_sendActionOn&=~CPPeriodicMask;
}
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(_23,_24){
with(_23){
return NO;
}
}),new objj_method(sel_getUid("trackMouse:"),function(_25,_26,_27){
with(_25){
var _28=objj_msgSend(_27,"type"),_29=objj_msgSend(_25,"convertPoint:fromView:",objj_msgSend(_27,"locationInWindow"),nil);
isWithinFrame=objj_msgSend(_25,"tracksMouseOutsideOfFrame")||CGRectContainsPoint(objj_msgSend(_25,"bounds"),_29);
if(_28===CPLeftMouseUp){
objj_msgSend(_25,"stopTracking:at:mouseIsUp:",_previousTrackingLocation,_29,YES);
_trackingMouseDownFlags=0;
}else{
if(_28===CPLeftMouseDown){
_trackingMouseDownFlags=objj_msgSend(_27,"modifierFlags");
_continuousTracking=objj_msgSend(_25,"startTrackingAt:",_29);
}else{
if(_28===CPLeftMouseDragged){
if(isWithinFrame){
if(!_trackingWasWithinFrame){
_continuousTracking=objj_msgSend(_25,"startTrackingAt:",_29);
}else{
if(_continuousTracking){
_continuousTracking=objj_msgSend(_25,"continueTracking:at:",_previousTrackingLocation,_29);
}
}
}else{
objj_msgSend(_25,"stopTracking:at:mouseIsUp:",_previousTrackingLocation,_29,NO);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_25,sel_getUid("trackMouse:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
if((_sendActionOn&(1<<_28))&&isWithinFrame){
objj_msgSend(_25,"sendAction:to:",_action,_target);
}
_trackingWasWithinFrame=isWithinFrame;
_previousTrackingLocation=_29;
}
}),new objj_method(sel_getUid("setState:"),function(_2a,_2b,_2c){
with(_2a){
}
}),new objj_method(sel_getUid("nextState"),function(_2d,_2e){
with(_2d){
return 0;
}
}),new objj_method(sel_getUid("performClick:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(_2f,"highlight:",YES);
objj_msgSend(_2f,"setState:",objj_msgSend(_2f,"nextState"));
objj_msgSend(_2f,"sendAction:to:",objj_msgSend(_2f,"action"),objj_msgSend(_2f,"target"));
objj_msgSend(_2f,"highlight:",NO);
}
}),new objj_method(sel_getUid("mouseDownFlags"),function(_32,_33){
with(_32){
return _trackingMouseDownFlags;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_34,"highlight:",YES);
return (_sendActionOn&CPPeriodicMask)||(_sendActionOn&CPLeftMouseDraggedMask);
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(_37,_38,_39,_3a){
with(_37){
return (_sendActionOn&CPPeriodicMask)||(_sendActionOn&CPLeftMouseDraggedMask);
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_3b,_3c,_3d,_3e,_3f){
with(_3b){
objj_msgSend(_3b,"highlight:",NO);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_40,_41,_42){
with(_40){
if(!objj_msgSend(_40,"isEnabled")){
return;
}
objj_msgSend(_40,"trackMouse:",_42);
}
}),new objj_method(sel_getUid("objectValue"),function(_43,_44){
with(_43){
return _value;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_45,_46,_47){
with(_45){
_value=_47;
objj_msgSend(_45,"setNeedsLayout");
objj_msgSend(_45,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("floatValue"),function(_48,_49){
with(_48){
var _4a=parseFloat(_value,10);
return isNaN(_4a)?0:_4a;
}
}),new objj_method(sel_getUid("setFloatValue:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"setObjectValue:",_4d);
}
}),new objj_method(sel_getUid("doubleValue"),function(_4e,_4f){
with(_4e){
var _50=parseFloat(_value,10);
return isNaN(_50)?0:_50;
}
}),new objj_method(sel_getUid("setDoubleValue:"),function(_51,_52,_53){
with(_51){
objj_msgSend(_51,"setObjectValue:",_53);
}
}),new objj_method(sel_getUid("intValue"),function(_54,_55){
with(_54){
var _56=parseInt(_value,10);
return isNaN(_56)?0:_56;
}
}),new objj_method(sel_getUid("setIntValue:"),function(_57,_58,_59){
with(_57){
objj_msgSend(_57,"setObjectValue:",_59);
}
}),new objj_method(sel_getUid("integerValue"),function(_5a,_5b){
with(_5a){
var _5c=parseInt(_value,10);
return isNaN(_5c)?0:_5c;
}
}),new objj_method(sel_getUid("setIntegerValue:"),function(_5d,_5e,_5f){
with(_5d){
objj_msgSend(_5d,"setObjectValue:",_5f);
}
}),new objj_method(sel_getUid("stringValue"),function(_60,_61){
with(_60){
return (_value===undefined||_value===nil)?"":String(_value);
}
}),new objj_method(sel_getUid("setStringValue:"),function(_62,_63,_64){
with(_62){
objj_msgSend(_62,"setObjectValue:",_64);
}
}),new objj_method(sel_getUid("takeDoubleValueFrom:"),function(_65,_66,_67){
with(_65){
if(objj_msgSend(_67,"respondsToSelector:",sel_getUid("doubleValue"))){
objj_msgSend(_65,"setDoubleValue:",objj_msgSend(_67,"doubleValue"));
}
}
}),new objj_method(sel_getUid("takeFloatValueFrom:"),function(_68,_69,_6a){
with(_68){
if(objj_msgSend(_6a,"respondsToSelector:",sel_getUid("floatValue"))){
objj_msgSend(_68,"setFloatValue:",objj_msgSend(_6a,"floatValue"));
}
}
}),new objj_method(sel_getUid("takeIntegerValueFrom:"),function(_6b,_6c,_6d){
with(_6b){
if(objj_msgSend(_6d,"respondsToSelector:",sel_getUid("integerValue"))){
objj_msgSend(_6b,"setIntegerValue:",objj_msgSend(_6d,"integerValue"));
}
}
}),new objj_method(sel_getUid("takeIntValueFrom:"),function(_6e,_6f,_70){
with(_6e){
if(objj_msgSend(_70,"respondsToSelector:",sel_getUid("intValue"))){
objj_msgSend(_6e,"setIntValue:",objj_msgSend(_70,"intValue"));
}
}
}),new objj_method(sel_getUid("takeObjectValueFrom:"),function(_71,_72,_73){
with(_71){
if(objj_msgSend(_73,"respondsToSelector:",sel_getUid("objectValue"))){
objj_msgSend(_71,"setObjectValue:",objj_msgSend(_73,"objectValue"));
}
}
}),new objj_method(sel_getUid("takeStringValueFrom:"),function(_74,_75,_76){
with(_74){
if(objj_msgSend(_76,"respondsToSelector:",sel_getUid("stringValue"))){
objj_msgSend(_74,"setStringValue:",objj_msgSend(_76,"stringValue"));
}
}
}),new objj_method(sel_getUid("textDidBeginEditing:"),function(_77,_78,_79){
with(_77){
if(objj_msgSend(_79,"object")!=_77){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidBeginEditingNotification,_77,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_79,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("textDidChange:"),function(_7a,_7b,_7c){
with(_7a){
if(objj_msgSend(_7c,"object")!=_7a){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidChangeNotification,_7a,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_7c,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("textDidEndEditing:"),function(_7d,_7e,_7f){
with(_7d){
if(objj_msgSend(_7f,"object")!=_7d){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidEndEditingNotification,_7d,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_7f,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("setAlignment:"),function(_80,_81,_82){
with(_80){
objj_msgSend(_80,"setValue:forThemeAttribute:",_82,"alignment");
}
}),new objj_method(sel_getUid("alignment"),function(_83,_84){
with(_83){
return objj_msgSend(_83,"valueForThemeAttribute:","alignment");
}
}),new objj_method(sel_getUid("setVerticalAlignment:"),function(_85,_86,_87){
with(_85){
objj_msgSend(_85,"setValue:forThemeAttribute:",_87,"vertical-alignment");
}
}),new objj_method(sel_getUid("verticalAlignment"),function(_88,_89){
with(_88){
return objj_msgSend(_88,"valueForThemeAttribute:","vertical-alignment");
}
}),new objj_method(sel_getUid("setLineBreakMode:"),function(_8a,_8b,_8c){
with(_8a){
objj_msgSend(_8a,"setValue:forThemeAttribute:",_8c,"line-break-mode");
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_8d,_8e){
with(_8d){
return objj_msgSend(_8d,"valueForThemeAttribute:","line-break-mode");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_8f,_90,_91){
with(_8f){
objj_msgSend(_8f,"setValue:forThemeAttribute:",_91,"text-color");
}
}),new objj_method(sel_getUid("textColor"),function(_92,_93){
with(_92){
return objj_msgSend(_92,"valueForThemeAttribute:","text-color");
}
}),new objj_method(sel_getUid("setFont:"),function(_94,_95,_96){
with(_94){
objj_msgSend(_94,"setValue:forThemeAttribute:",_96,"font");
}
}),new objj_method(sel_getUid("font"),function(_97,_98){
with(_97){
return objj_msgSend(_97,"valueForThemeAttribute:","font");
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_99,_9a,_9b){
with(_99){
objj_msgSend(_99,"setValue:forThemeAttribute:",_9b,"text-shadow-color");
}
}),new objj_method(sel_getUid("textShadowColor"),function(_9c,_9d){
with(_9c){
return objj_msgSend(_9c,"valueForThemeAttribute:","text-shadow-color");
}
}),new objj_method(sel_getUid("setTextShadowOffset:"),function(_9e,_9f,_a0){
with(_9e){
objj_msgSend(_9e,"setValue:forThemeAttribute:",_a0,"text-shadow-offset");
}
}),new objj_method(sel_getUid("textShadowOffset"),function(_a1,_a2){
with(_a1){
return objj_msgSend(_a1,"valueForThemeAttribute:","text-shadow-offset");
}
}),new objj_method(sel_getUid("setImagePosition:"),function(_a3,_a4,_a5){
with(_a3){
objj_msgSend(_a3,"setValue:forThemeAttribute:",_a5,"image-position");
}
}),new objj_method(sel_getUid("imagePosition"),function(_a6,_a7){
with(_a6){
return objj_msgSend(_a6,"valueForThemeAttribute:","image-position");
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_a8,_a9,_aa){
with(_a8){
objj_msgSend(_a8,"setValue:forThemeAttribute:",_aa,"image-scaling");
}
}),new objj_method(sel_getUid("imageScaling"),function(_ab,_ac){
with(_ab){
return objj_msgSend(_ab,"valueForThemeAttribute:","image-scaling");
}
}),new objj_method(sel_getUid("setEnabled:"),function(_ad,_ae,_af){
with(_ad){
if(_af){
objj_msgSend(_ad,"unsetThemeState:",CPThemeStateDisabled);
}else{
objj_msgSend(_ad,"setThemeState:",CPThemeStateDisabled);
}
}
}),new objj_method(sel_getUid("isEnabled"),function(_b0,_b1){
with(_b0){
return !objj_msgSend(_b0,"hasThemeState:",CPThemeStateDisabled);
}
}),new objj_method(sel_getUid("highlight:"),function(_b2,_b3,_b4){
with(_b2){
objj_msgSend(_b2,"setHighlighted:",_b4);
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_b5,_b6,_b7){
with(_b5){
if(_b7){
objj_msgSend(_b5,"setThemeState:",CPThemeStateHighlighted);
}else{
objj_msgSend(_b5,"unsetThemeState:",CPThemeStateHighlighted);
}
}
}),new objj_method(sel_getUid("isHighlighted"),function(_b8,_b9){
with(_b8){
return objj_msgSend(_b8,"hasThemeState:",CPThemeStateHighlighted);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeAttributes"),function(_ba,_bb){
with(_ba){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPLeftTextAlignment,CPTopVerticalTextAlignment,CPLineBreakByClipping,objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPFont,"systemFontOfSize:",12),nil,{width:0,height:0},CPImageLeft,CPScaleToFit,{width:0,height:0},{width:-1,height:-1}],["alignment","vertical-alignment","line-break-mode","text-color","font","text-shadow-color","text-shadow-offset","image-position","image-scaling","min-size","max-size"]);
}
})]);
var _bc="CPControlValueKey",_bd="CPControlControlStateKey",_be="CPControlIsEnabledKey",_bf="CPControlTargetKey",_c0="CPControlActionKey",_c1="CPControlSendActionOnKey";
var _c2="CPImageViewImageKey";
var _2=objj_getClass("CPControl");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPControl\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_c3,_c4,_c5){
with(_c3){
_c3=objj_msgSendSuper({receiver:_c3,super_class:objj_getClass("CPView")},"initWithCoder:",_c5);
if(_c3){
objj_msgSend(_c3,"setObjectValue:",objj_msgSend(_c5,"decodeObjectForKey:",_bc));
objj_msgSend(_c3,"setTarget:",objj_msgSend(_c5,"decodeObjectForKey:",_bf));
objj_msgSend(_c3,"setAction:",objj_msgSend(_c5,"decodeObjectForKey:",_c0));
objj_msgSend(_c3,"sendActionOn:",objj_msgSend(_c5,"decodeIntForKey:",_c1));
}
return _c3;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c6,_c7,_c8){
with(_c6){
objj_msgSendSuper({receiver:_c6,super_class:objj_getClass("CPView")},"encodeWithCoder:",_c8);
if(_value!==nil){
objj_msgSend(_c8,"encodeObject:forKey:",_value,_bc);
}
if(_target!==nil){
objj_msgSend(_c8,"encodeConditionalObject:forKey:",_target,_bf);
}
if(_action!==NULL){
objj_msgSend(_c8,"encodeObject:forKey:",_action,_c0);
}
objj_msgSend(_c8,"encodeInt:forKey:",_sendActionOn,_c1);
}
})]);
var _c9=[],_ca={},_cb={};
_c9[CPRegularControlSize]="Regular";
_c9[CPSmallControlSize]="Small";
_c9[CPMiniControlSize]="Mini";
_CPControlIdentifierForControlSize=function(_cc){
return _c9[_cc];
};
_CPControlColorWithPatternImage=function(_cd,_ce){
var _cf=1,_d0=arguments.length,_d1="";
for(;_cf<_d0;++_cf){
_d1+=arguments[_cf];
}
var _d2=_ca[_d1];
if(!_d2){
var _d3=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPControl,"class"));
_d2=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_d3,"pathForResource:",_ce+"/"+_d1+".png"),_cd[_d1]));
_ca[_d1]=_d2;
}
return _d2;
};
_CPControlThreePartImagePattern=function(_d4,_d5,_d6){
var _d7=2,_d8=arguments.length,_d9="";
for(;_d7<_d8;++_d7){
_d9+=arguments[_d7];
}
var _da=_cb[_d9];
if(!_da){
var _db=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPControl,"class")),_dc=_d6+"/"+_d9;
_d5=_d5[_d9];
_da=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_db,"pathForResource:",_dc+"0.png"),_d5[0]),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_db,"pathForResource:",_dc+"1.png"),_d5[1]),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_db,"pathForResource:",_dc+"2.png"),_d5[2])],_d4));
_cb[_d9]=_da;
}
return _da;
};
