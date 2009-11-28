I;20;Foundation/CPCoder.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;16;AppKit/CPImage.jI;15;AppKit/CPMenu.jI;15;AppKit/CPView.jc;23582;
var _1=objj_allocateClassPair(CPObject,"CPMenuItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isSeparator"),new objj_ivar("_title"),new objj_ivar("_font"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_isEnabled"),new objj_ivar("_isHidden"),new objj_ivar("_tag"),new objj_ivar("_state"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_onStateImage"),new objj_ivar("_offStateImage"),new objj_ivar("_mixedStateImage"),new objj_ivar("_submenu"),new objj_ivar("_menu"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask"),new objj_ivar("_mnemonicLocation"),new objj_ivar("_isAlternate"),new objj_ivar("_indentationLevel"),new objj_ivar("_toolTip"),new objj_ivar("_representedObject"),new objj_ivar("_view"),new objj_ivar("_menuItemView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithTitle:action:keyEquivalent:","",nil,nil);
}
}),new objj_method(sel_getUid("initWithTitle:action:keyEquivalent:"),function(_5,_6,_7,_8,_9){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_isSeparator=NO;
_title=_7;
_action=_8;
_isEnabled=YES;
_tag=0;
_state=CPOffState;
_keyEquivalent=_9||"";
_keyEquivalentModifierMask=CPPlatformActionKeyMask;
_mnemonicLocation=CPNotFound;
}
return _5;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_a,_b,_c){
with(_a){
if(objj_msgSend(_menu,"autoenablesItems")){
return;
}
_isEnabled=_c;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_a);
}
}),new objj_method(sel_getUid("isEnabled"),function(_d,_e){
with(_d){
return _isEnabled;
}
}),new objj_method(sel_getUid("setHidden:"),function(_f,_10,_11){
with(_f){
if(_isHidden==_11){
return;
}
_isHidden=_11;
objj_msgSend(_menu,"itemChanged:",_f);
}
}),new objj_method(sel_getUid("isHidden"),function(_12,_13){
with(_12){
return _isHidden;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_14,_15){
with(_14){
if(_isHidden){
return YES;
}
var _16=objj_msgSend(_menu,"supermenu");
if(objj_msgSend(objj_msgSend(_16,"itemAtIndex:",objj_msgSend(_16,"indexOfItemWithSubmenu:",_menu)),"isHiddenOrHasHiddenAncestor")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("setTarget:"),function(_17,_18,_19){
with(_17){
_target=_19;
}
}),new objj_method(sel_getUid("target"),function(_1a,_1b){
with(_1a){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1c,_1d,_1e){
with(_1c){
_action=_1e;
}
}),new objj_method(sel_getUid("action"),function(_1f,_20){
with(_1f){
return _action;
}
}),new objj_method(sel_getUid("setTitle:"),function(_21,_22,_23){
with(_21){
_mnemonicLocation=CPNotFound;
if(_title==_23){
return;
}
_title=_23;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_21);
}
}),new objj_method(sel_getUid("title"),function(_24,_25){
with(_24){
return _title;
}
}),new objj_method(sel_getUid("setTextColor:"),function(_26,_27,_28){
with(_26){
}
}),new objj_method(sel_getUid("setFont:"),function(_29,_2a,_2b){
with(_29){
if(_font==_2b){
return;
}
_font=_2b;
objj_msgSend(_menu,"itemChanged:",_29);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("font"),function(_2c,_2d){
with(_2c){
return _font;
}
}),new objj_method(sel_getUid("setTag:"),function(_2e,_2f,_30){
with(_2e){
_tag=_30;
}
}),new objj_method(sel_getUid("tag"),function(_31,_32){
with(_31){
return _tag;
}
}),new objj_method(sel_getUid("setState:"),function(_33,_34,_35){
with(_33){
if(_state==_35){
return;
}
_state=_35;
objj_msgSend(_menu,"itemChanged:",_33);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("state"),function(_36,_37){
with(_36){
return _state;
}
}),new objj_method(sel_getUid("setImage:"),function(_38,_39,_3a){
with(_38){
if(_image==_3a){
return;
}
_image=_3a;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_38);
}
}),new objj_method(sel_getUid("image"),function(_3b,_3c){
with(_3b){
return _image;
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_3d,_3e,_3f){
with(_3d){
_alternateImage=_3f;
}
}),new objj_method(sel_getUid("alternateImage"),function(_40,_41){
with(_40){
return _alternateImage;
}
}),new objj_method(sel_getUid("setOnStateImage:"),function(_42,_43,_44){
with(_42){
if(_onStateImage==_44){
return;
}
_onStateImage=_44;
objj_msgSend(_menu,"itemChanged:",_42);
}
}),new objj_method(sel_getUid("onStateImage"),function(_45,_46){
with(_45){
return _onStateImage;
}
}),new objj_method(sel_getUid("setOffStateImage:"),function(_47,_48,_49){
with(_47){
if(_offStateImage==_49){
return;
}
_offStateImage=_49;
objj_msgSend(_menu,"itemChanged:",_47);
}
}),new objj_method(sel_getUid("offStateImage"),function(_4a,_4b){
with(_4a){
return _offStateImage;
}
}),new objj_method(sel_getUid("setMixedStateImage:"),function(_4c,_4d,_4e){
with(_4c){
if(_mixedStateImage==_4e){
return;
}
_mixedStateImage=_4e;
objj_msgSend(_menu,"itemChanged:",_4c);
}
}),new objj_method(sel_getUid("mixedStateImage"),function(_4f,_50){
with(_4f){
return _mixedStateImage;
}
}),new objj_method(sel_getUid("setSubmenu:"),function(_51,_52,_53){
with(_51){
var _54=objj_msgSend(_submenu,"supermenu");
if(_54==_51){
return;
}
if(_54){
return alert("bad");
}
objj_msgSend(_submenu,"setSupermenu:",_menu);
_submenu=_53;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_51);
}
}),new objj_method(sel_getUid("submenu"),function(_55,_56){
with(_55){
return _submenu;
}
}),new objj_method(sel_getUid("hasSubmenu"),function(_57,_58){
with(_57){
return _submenu?YES:NO;
}
}),new objj_method(sel_getUid("isSeparatorItem"),function(_59,_5a){
with(_59){
return _isSeparator;
}
}),new objj_method(sel_getUid("setMenu:"),function(_5b,_5c,_5d){
with(_5b){
_menu=_5d;
}
}),new objj_method(sel_getUid("menu"),function(_5e,_5f){
with(_5e){
return _menu;
}
}),new objj_method(sel_getUid("setKeyEquivalent:"),function(_60,_61,_62){
with(_60){
_keyEquivalent=_62||"";
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_63,_64){
with(_63){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("setKeyEquivalentModifierMask:"),function(_65,_66,_67){
with(_65){
_keyEquivalentModifierMask=_67;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_68,_69){
with(_68){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("setMnemonicLocation:"),function(_6a,_6b,_6c){
with(_6a){
_mnemonicLocation=_6c;
}
}),new objj_method(sel_getUid("mnemonicLocation"),function(_6d,_6e){
with(_6d){
return _mnemonicLocation;
}
}),new objj_method(sel_getUid("setTitleWithMnemonicLocation:"),function(_6f,_70,_71){
with(_6f){
var _72=objj_msgSend(_71,"rangeOfString:","&").location;
if(_72==CPNotFound){
objj_msgSend(_6f,"setTitle:",_71);
}else{
objj_msgSend(_6f,"setTitle:",objj_msgSend(_71,"substringToIndex:",_72)+objj_msgSend(_71,"substringFromIndex:",_72+1));
objj_msgSend(_6f,"setMnemonicLocation:",_72);
}
}
}),new objj_method(sel_getUid("mnemonic"),function(_73,_74){
with(_73){
return _mnemonicLocation==CPNotFound?"":objj_msgSend(_title,"characterAtIndex:",_mnemonicLocation);
}
}),new objj_method(sel_getUid("setAlternate:"),function(_75,_76,_77){
with(_75){
_isAlternate=_77;
}
}),new objj_method(sel_getUid("isAlternate"),function(_78,_79){
with(_78){
return _isAlternate;
}
}),new objj_method(sel_getUid("setIndentationLevel:"),function(_7a,_7b,_7c){
with(_7a){
if(_7c<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"setIndentationLevel: argument must be greater than 0.");
}
_indentationLevel=MIN(15,_7c);
}
}),new objj_method(sel_getUid("indentationLevel"),function(_7d,_7e){
with(_7d){
return _indentationLevel;
}
}),new objj_method(sel_getUid("setToolTip:"),function(_7f,_80,_81){
with(_7f){
_toolTip=_81;
}
}),new objj_method(sel_getUid("toolTip"),function(_82,_83){
with(_82){
return _toolTip;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_84,_85,_86){
with(_84){
_representedObject=_86;
}
}),new objj_method(sel_getUid("representedObject"),function(_87,_88){
with(_87){
return _representedObject;
}
}),new objj_method(sel_getUid("setView:"),function(_89,_8a,_8b){
with(_89){
if(_view===_8b){
return;
}
_view=_8b;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_89);
}
}),new objj_method(sel_getUid("view"),function(_8c,_8d){
with(_8c){
return _view;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_8e,_8f){
with(_8e){
return objj_msgSend(objj_msgSend(_8e,"menu"),"highlightedItem")==_8e;
}
}),new objj_method(sel_getUid("_menuItemView"),function(_90,_91){
with(_90){
if(!_menuItemView){
_menuItemView=objj_msgSend(objj_msgSend(_CPMenuItemView,"alloc"),"initWithFrame:forMenuItem:",CGRectMakeZero(),_90);
}
return _menuItemView;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("separatorItem"),function(_92,_93){
with(_92){
var _94=objj_msgSend(objj_msgSend(_92,"alloc"),"initWithTitle:action:keyEquivalent:","",nil,nil);
_94._isSeparator=YES;
return _94;
}
})]);
var _95="CPMenuItemIsSeparatorKey",_96="CPMenuItemTitleKey",_97="CPMenuItemTargetKey",_98="CPMenuItemActionKey",_99="CPMenuItemIsEnabledKey",_9a="CPMenuItemIsHiddenKey",_9b="CPMenuItemTagKey",_9c="CPMenuItemStateKey",_9d="CPMenuItemImageKey",_9e="CPMenuItemAlternateImageKey",_9f="CPMenuItemSubmenuKey",_a0="CPMenuItemMenuKey",_a1="CPMenuItemKeyEquivalentKey",_a2="CPMenuItemKeyEquivalentModifierMaskKey",_a3="CPMenuItemRepresentedObjectKey",_a4="CPMenuItemViewKey";
var _1=objj_getClass("CPMenuItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPMenuItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_a5,_a6,_a7){
with(_a5){
_a5=objj_msgSendSuper({receiver:_a5,super_class:objj_getClass("CPObject")},"init");
if(_a5){
_isSeparator=objj_msgSend(_a7,"containsValueForKey:",_95)&&objj_msgSend(_a7,"decodeBoolForKey:",_95);
_title=objj_msgSend(_a7,"decodeObjectForKey:",_96);
_target=objj_msgSend(_a7,"decodeObjectForKey:",_97);
_action=objj_msgSend(_a7,"decodeObjectForKey:",_98);
_isEnabled=objj_msgSend(_a7,"containsValueForKey:",(_99))?objj_msgSend(_a7,"decodeObjectForKey:",(_99)):(YES);
_isHidden=objj_msgSend(_a7,"containsValueForKey:",(_9a))?objj_msgSend(_a7,"decodeObjectForKey:",(_9a)):(NO);
_tag=objj_msgSend(_a7,"containsValueForKey:",(_9b))?objj_msgSend(_a7,"decodeObjectForKey:",(_9b)):(0);
_state=objj_msgSend(_a7,"containsValueForKey:",(_9c))?objj_msgSend(_a7,"decodeObjectForKey:",(_9c)):(CPOffState);
_image=objj_msgSend(_a7,"containsValueForKey:",(_9d))?objj_msgSend(_a7,"decodeObjectForKey:",(_9d)):(nil);
_alternateImage=objj_msgSend(_a7,"containsValueForKey:",(_9e))?objj_msgSend(_a7,"decodeObjectForKey:",(_9e)):(nil);
_submenu=objj_msgSend(_a7,"containsValueForKey:",(_9f))?objj_msgSend(_a7,"decodeObjectForKey:",(_9f)):(nil);
_menu=objj_msgSend(_a7,"containsValueForKey:",(_a0))?objj_msgSend(_a7,"decodeObjectForKey:",(_a0)):(nil);
_keyEquivalent=objj_msgSend(_a7,"decodeObjectForKey:",_a1)||"";
_keyEquivalentModifierMask=objj_msgSend(_a7,"decodeObjectForKey:",_a2)||0;
_representedObject=objj_msgSend(_a7,"containsValueForKey:",(_a3))?objj_msgSend(_a7,"decodeObjectForKey:",(_a3)):(nil);
_view=objj_msgSend(_a7,"containsValueForKey:",(_a4))?objj_msgSend(_a7,"decodeObjectForKey:",(_a4)):(nil);
}
return _a5;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a8,_a9,_aa){
with(_a8){
if(_isSeparator){
objj_msgSend(_aa,"encodeBool:forKey:",_isSeparator,_95);
}
objj_msgSend(_aa,"encodeObject:forKey:",_title,_96);
objj_msgSend(_aa,"encodeObject:forKey:",_target,_97);
objj_msgSend(_aa,"encodeObject:forKey:",_action,_98);
if((_isEnabled)!==(YES)){
objj_msgSend(_aa,"encodeObject:forKey:",(_isEnabled),(_99));
}
if((_isHidden)!==(NO)){
objj_msgSend(_aa,"encodeObject:forKey:",(_isHidden),(_9a));
}
if((_tag)!==(0)){
objj_msgSend(_aa,"encodeObject:forKey:",(_tag),(_9b));
}
if((_state)!==(CPOffState)){
objj_msgSend(_aa,"encodeObject:forKey:",(_state),(_9c));
}
if((_image)!==(nil)){
objj_msgSend(_aa,"encodeObject:forKey:",(_image),(_9d));
}
if((_alternateImage)!==(nil)){
objj_msgSend(_aa,"encodeObject:forKey:",(_alternateImage),(_9e));
}
if((_submenu)!==(nil)){
objj_msgSend(_aa,"encodeObject:forKey:",(_submenu),(_9f));
}
if((_menu)!==(nil)){
objj_msgSend(_aa,"encodeObject:forKey:",(_menu),(_a0));
}
if(_keyEquivalent&&_keyEquivalent.length){
objj_msgSend(_aa,"encodeObject:forKey:",_keyEquivalent,_a1);
}
if(_keyEquivalentModifierMask){
objj_msgSend(_aa,"encodeObject:forKey:",_keyEquivalentModifierMask,_a2);
}
if((_representedObject)!==(nil)){
objj_msgSend(_aa,"encodeObject:forKey:",(_representedObject),(_a3));
}
if((_view)!==(nil)){
objj_msgSend(_aa,"encodeObject:forKey:",(_view),(_a4));
}
}
})]);
var _ab=3,_ac=16,_ad=14,_ae=17,_af=4;
var _b0=nil,_b1=nil,_b2=[],_b3=[];
var _1=objj_allocateClassPair(CPView,"_CPMenuItemView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_menuItem"),new objj_ivar("_font"),new objj_ivar("_textColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_activateColor"),new objj_ivar("_activateShadowColor"),new objj_ivar("_minSize"),new objj_ivar("_isDirty"),new objj_ivar("_showsStateColumn"),new objj_ivar("_belongsToMenuBar"),new objj_ivar("_stateView"),new objj_ivar("_imageAndTextView"),new objj_ivar("_submenuView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:forMenuItem:"),function(_b4,_b5,_b6,_b7){
with(_b4){
_b4=objj_msgSendSuper({receiver:_b4,super_class:objj_getClass("CPView")},"initWithFrame:",_b6);
if(_b4){
_menuItem=_b7;
_showsStateColumn=YES;
_isDirty=YES;
objj_msgSend(_b4,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_b4,"synchronizeWithMenuItem");
}
return _b4;
}
}),new objj_method(sel_getUid("minSize"),function(_b8,_b9){
with(_b8){
return _minSize;
}
}),new objj_method(sel_getUid("setDirty"),function(_ba,_bb){
with(_ba){
_isDirty=YES;
}
}),new objj_method(sel_getUid("synchronizeWithMenuItem"),function(_bc,_bd){
with(_bc){
if(!_isDirty){
return;
}
_isDirty=NO;
var _be=objj_msgSend(_menuItem,"view");
if(objj_msgSend(_menuItem,"isSeparatorItem")){
var _bf=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,5,10,1));
_be=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,10));
objj_msgSend(_be,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_bf,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_bf,"setBackgroundColor:",objj_msgSend(CPColor,"lightGrayColor"));
objj_msgSend(_be,"addSubview:",_bf);
}
if(_be){
objj_msgSend(_imageAndTextView,"removeFromSuperview");
_imageAndTextView=nil;
objj_msgSend(_stateView,"removeFromSuperview");
_stateView=nil;
objj_msgSend(_submenuView,"removeFromSuperview");
_submenuView=nil;
_minSize=objj_msgSend(_be,"frame").size;
objj_msgSend(_bc,"setFrameSize:",_minSize);
objj_msgSend(_bc,"addSubview:",_be);
return;
}
var x=_belongsToMenuBar?0:(_ab+objj_msgSend(_menuItem,"indentationLevel")*_ae);
if(_showsStateColumn){
if(!_stateView){
_stateView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(x,(CGRectGetHeight(objj_msgSend(_bc,"frame"))-_ad)/2,_ad,_ad));
objj_msgSend(_stateView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_bc,"addSubview:",_stateView);
}
var _c1=objj_msgSend(_menuItem,"state");
switch(_c1){
case CPOffState:
case CPOnState:
case CPMixedState:
objj_msgSend(_stateView,"setImage:",_b2[_c1]);
break;
default:
objj_msgSend(_stateView,"setImage:",nil);
}
x+=_ad;
}else{
objj_msgSend(_stateView,"removeFromSuperview");
_stateView=nil;
}
if(!_imageAndTextView){
_imageAndTextView=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_imageAndTextView,"setImagePosition:",CPImageLeft);
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_bc,"addSubview:",_imageAndTextView);
}
var _c2=objj_msgSend(_menuItem,"font");
if(!_c2){
_c2=_font;
}
objj_msgSend(_imageAndTextView,"setFont:",_c2);
objj_msgSend(_imageAndTextView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setText:",objj_msgSend(_menuItem,"title"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_bc,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_bc,"textShadowColor"));
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_imageAndTextView,"setFrameOrigin:",CGPointMake(x,_af));
objj_msgSend(_imageAndTextView,"sizeToFit");
var _c3=objj_msgSend(_imageAndTextView,"frame");
_c3.size.height+=2*_af;
x+=CGRectGetWidth(_c3);
if(objj_msgSend(_menuItem,"hasSubmenu")){
x+=3;
if(!_submenuView){
_submenuView=objj_msgSend(objj_msgSend(_CPMenuItemArrowView,"alloc"),"initWithFrame:",CGRectMake(0,0,10,10));
objj_msgSend(_bc,"addSubview:",_submenuView);
}
objj_msgSend(_submenuView,"setHidden:",NO);
objj_msgSend(_submenuView,"setColor:",_belongsToMenuBar?objj_msgSend(_bc,"textColor"):nil);
objj_msgSend(_submenuView,"setFrameOrigin:",CGPointMake(x,(CGRectGetHeight(_c3)-10)/2));
x+=10;
}else{
objj_msgSend(_submenuView,"setHidden:",YES);
}
_minSize=CGSizeMake(x+(_belongsToMenuBar?0:_ac)+3,CGRectGetHeight(_c3));
objj_msgSend(_bc,"setFrameSize:",_minSize);
}
}),new objj_method(sel_getUid("overlapOffsetWidth"),function(_c4,_c5){
with(_c4){
return _ab+(objj_msgSend(objj_msgSend(_menuItem,"menu"),"showsStateColumn")?_ad:0);
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_c6,_c7,_c8){
with(_c6){
_showsStateColumn=_c8;
}
}),new objj_method(sel_getUid("setBelongsToMenuBar:"),function(_c9,_ca,_cb){
with(_c9){
_belongsToMenuBar=_cb;
}
}),new objj_method(sel_getUid("highlight:"),function(_cc,_cd,_ce){
with(_cc){
if(_belongsToMenuBar){
objj_msgSend(_imageAndTextView,"setImage:",_ce?objj_msgSend(_menuItem,"alternateImage"):objj_msgSend(_menuItem,"image"));
}else{
if(objj_msgSend(_menuItem,"isEnabled")){
if(_ce){
objj_msgSend(_cc,"setBackgroundColor:",_b0);
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",_b1);
}else{
objj_msgSend(_cc,"setBackgroundColor:",nil);
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_cc,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_cc,"textShadowColor"));
}
var _cf=objj_msgSend(_menuItem,"state");
switch(_cf){
case CPOffState:
case CPOnState:
case CPMixedState:
objj_msgSend(_stateView,"setImage:",_ce?_b3[_cf]:_b2[_cf]);
break;
default:
objj_msgSend(_stateView,"setImage:",nil);
}
}
}
}
}),new objj_method(sel_getUid("activate:"),function(_d0,_d1,_d2){
with(_d0){
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
if(_d2){
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_d0,"activateColor")||objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_d0,"activateShadowColor")||objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_d0,"activateColor")||objj_msgSend(CPColor,"whiteColor"));
}else{
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_d0,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_d0,"textShadowColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_d0,"textColor"));
}
}
}),new objj_method(sel_getUid("eventOnSubmenu:"),function(_d3,_d4,_d5){
with(_d3){
if(!objj_msgSend(_menuItem,"hasSubmenu")){
return NO;
}
return CGRectContainsPoint(objj_msgSend(_submenuView,"frame"),objj_msgSend(_d3,"convertPoint:fromView:",objj_msgSend(_d5,"locationInWindow"),nil));
}
}),new objj_method(sel_getUid("isHidden"),function(_d6,_d7){
with(_d6){
return objj_msgSend(_menuItem,"isHidden");
}
}),new objj_method(sel_getUid("menuItem"),function(_d8,_d9){
with(_d8){
return _menuItem;
}
}),new objj_method(sel_getUid("setFont:"),function(_da,_db,_dc){
with(_da){
if(_font==_dc){
return;
}
_font=_dc;
objj_msgSend(_da,"setDirty");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_dd,_de,_df){
with(_dd){
if(_textColor==_df){
return;
}
_textColor=_df;
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_dd,"textColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_dd,"textColor"));
}
}),new objj_method(sel_getUid("textColor"),function(_e0,_e1){
with(_e0){
return objj_msgSend(_menuItem,"isEnabled")?(_textColor?_textColor:objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",70/255,69/255,69/255,1)):objj_msgSend(CPColor,"lightGrayColor");
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_e2,_e3,_e4){
with(_e2){
if(_textShadowColor==_e4){
return;
}
_textShadowColor=_e4;
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_e2,"textShadowColor"));
}
}),new objj_method(sel_getUid("textShadowColor"),function(_e5,_e6){
with(_e5){
return objj_msgSend(_menuItem,"isEnabled")?(_textShadowColor?_textShadowColor:objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.8)):objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,0.8);
}
}),new objj_method(sel_getUid("setActivateColor:"),function(_e7,_e8,_e9){
with(_e7){
_activateColor=_e9;
}
}),new objj_method(sel_getUid("activateColor"),function(_ea,_eb){
with(_ea){
return _activateColor;
}
}),new objj_method(sel_getUid("setActivateShadowColor:"),function(_ec,_ed,_ee){
with(_ec){
_activateShadowColor=_ee;
}
}),new objj_method(sel_getUid("activateShadowColor"),function(_ef,_f0){
with(_ef){
return _activateShadowColor;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initialize"),function(_f1,_f2){
with(_f1){
if(_f1!=objj_msgSend(_CPMenuItemView,"class")){
return;
}
_b0=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",95/255,131/255,185/255,1);
_b1=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",26/255,73/255,109/255,1);
var _f3=objj_msgSend(CPBundle,"bundleForClass:",_f1);
_b2[CPOffState]=nil;
_b3[CPOffState]=nil;
_b2[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f3,"pathForResource:","CPMenuItem/CPMenuItemOnState.png"),CGSizeMake(14,14));
_b3[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f3,"pathForResource:","CPMenuItem/CPMenuItemOnStateHighlighted.png"),CGSizeMake(14,14));
_b2[CPMixedState]=nil;
_b3[CPMixedState]=nil;
}
}),new objj_method(sel_getUid("leftMargin"),function(_f4,_f5){
with(_f4){
return _ab+_ad;
}
})]);
var _1=objj_allocateClassPair(CPView,"_CPMenuItemArrowView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_color")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setColor:"),function(_f6,_f7,_f8){
with(_f6){
if(_color==_f8){
return;
}
_color=_f8;
objj_msgSend(_f6,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_f9,_fa,_fb){
with(_f9){
var _fc=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_fc);
CGContextMoveToPoint(_fc,1,4);
CGContextAddLineToPoint(_fc,9,4);
CGContextAddLineToPoint(_fc,5,8);
CGContextAddLineToPoint(_fc,1,4);
CGContextClosePath(_fc);
CGContextSetFillColor(_fc,_color);
CGContextFillPath(_fc);
}
})]);
