I;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPString.ji;15;CPApplication.ji;12;CPClipView.ji;12;CPMenuItem.ji;9;CPPanel.jc;50075;
CPMenuDidAddItemNotification="CPMenuDidAddItemNotification";
CPMenuDidChangeItemNotification="CPMenuDidChangeItemNotification";
CPMenuDidRemoveItemNotification="CPMenuDidRemoveItemNotification";
CPMenuDidEndTrackingNotification="CPMenuDidEndTrackingNotification";
var _1=19;
var _2=NO,_3="",_4=nil,_5=1,_6=nil,_7=nil;
var _8=objj_allocateClassPair(CPObject,"CPMenu"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_supermenu"),new objj_ivar("_title"),new objj_ivar("_name"),new objj_ivar("_items"),new objj_ivar("_attachedMenu"),new objj_ivar("_autoenablesItems"),new objj_ivar("_showsStateColumn"),new objj_ivar("_delegate"),new objj_ivar("_highlightedIndex"),new objj_ivar("_menuWindow")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("menuBarHeight"),function(_a,_b){
with(_a){
if(_a==objj_msgSend(CPApp,"mainMenu")){
return _1;
}
return 0;
}
}),new objj_method(sel_getUid("initWithTitle:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPObject")},"init");
if(_c){
_title=_e;
_items=[];
_autoenablesItems=YES;
_showsStateColumn=YES;
}
return _c;
}
}),new objj_method(sel_getUid("init"),function(_f,_10){
with(_f){
return objj_msgSend(_f,"initWithTitle:","");
}
}),new objj_method(sel_getUid("insertItem:atIndex:"),function(_11,_12,_13,_14){
with(_11){
var _15=objj_msgSend(_13,"menu");
if(_15){
if(_15!==_11){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Attempted to insert item into menu that was already in another menu.");
}else{
return;
}
}
objj_msgSend(_13,"setMenu:",_11);
objj_msgSend(_items,"insertObject:atIndex:",_13,_14);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidAddItemNotification,_11,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_14,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("insertItemWithTitle:action:keyEquivalent:atIndex:"),function(_16,_17,_18,_19,_1a,_1b){
with(_16){
var _1c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_18,_19,_1a);
objj_msgSend(_16,"insertItem:atIndex:",_1c,_1b);
return _1c;
}
}),new objj_method(sel_getUid("addItem:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_1d,"insertItem:atIndex:",_1f,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("addItemWithTitle:action:keyEquivalent:"),function(_20,_21,_22,_23,_24){
with(_20){
return objj_msgSend(_20,"insertItemWithTitle:action:keyEquivalent:atIndex:",_22,_23,_24,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("removeItem:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_25,"removeItemAtIndex:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_27));
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_28,_29,_2a){
with(_28){
if(_2a<0||_2a>=_items.length){
return;
}
objj_msgSend(_items[_2a],"setMenu:",nil);
objj_msgSend(_items,"removeObjectAtIndex:",_2a);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidRemoveItemNotification,_28,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_2a,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("itemChanged:"),function(_2b,_2c,_2d){
with(_2b){
if(objj_msgSend(_2d,"menu")!=_2b){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidChangeItemNotification,_2b,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_2d),"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("itemWithTag:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(_2e,"indexOfItemWithTag:",_30);
if(_31==CPNotFound){
return nil;
}
return _items[_31];
}
}),new objj_method(sel_getUid("itemWithTitle:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(_32,"indexOfItemWithTitle:",_34);
if(_35==CPNotFound){
return nil;
}
return _items[_35];
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_36,_37,_38){
with(_36){
return objj_msgSend(_items,"objectAtIndex:",_38);
}
}),new objj_method(sel_getUid("numberOfItems"),function(_39,_3a){
with(_39){
return objj_msgSend(_items,"count");
}
}),new objj_method(sel_getUid("itemArray"),function(_3b,_3c){
with(_3b){
return _items;
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3f,"menu")!=_3d){
return CPNotFound;
}
return objj_msgSend(_items,"indexOfObjectIdenticalTo:",_3f);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_40,_41,_42){
with(_40){
var _43=0,_44=_items.length;
for(;_43<_44;++_43){
if(objj_msgSend(_items[_43],"title")===_42){
return _43;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_45,_46,_47){
with(_45){
var _48=0,_49=_items.length;
for(;_48<_49;++_48){
if(objj_msgSend(_items[_48],"tag")==_47){
return _48;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:andAction:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var _4e=0,_4f=_items.length;
for(;_4e<_4f;++_4e){
var _50=_items[_4e];
if(objj_msgSend(_50,"target")==_4c&&(!_4d||objj_msgSend(_50,"action")==_4d)){
return _4e;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_51,_52,_53){
with(_51){
var _54=0,_55=_items.length;
for(;_54<_55;++_54){
if(objj_msgSend(objj_msgSend(_items[_54],"representedObject"),"isEqual:",_53)){
return _54;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithSubmenu:"),function(_56,_57,_58){
with(_56){
var _59=0,_5a=_items.length;
for(;_59<_5a;++_59){
if(objj_msgSend(_items[_59],"submenu")==_58){
return _59;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setSubmenu:forItem:"),function(_5b,_5c,_5d,_5e){
with(_5b){
objj_msgSend(_5e,"setTarget:",_5e);
objj_msgSend(_5e,"setAction:",sel_getUid("submenuAction:"));
objj_msgSend(_5e,"setSubmenu:",_5d);
}
}),new objj_method(sel_getUid("submenuAction:"),function(_5f,_60,_61){
with(_5f){
}
}),new objj_method(sel_getUid("attachedMenu"),function(_62,_63){
with(_62){
return _attachedMenu;
}
}),new objj_method(sel_getUid("isAttached"),function(_64,_65){
with(_64){
return _isAttached;
}
}),new objj_method(sel_getUid("locationOfSubmenu:"),function(_66,_67,_68){
with(_66){
}
}),new objj_method(sel_getUid("supermenu"),function(_69,_6a){
with(_69){
return _supermenu;
}
}),new objj_method(sel_getUid("setSupermenu:"),function(_6b,_6c,_6d){
with(_6b){
_supermenu=_6d;
}
}),new objj_method(sel_getUid("isTornOff"),function(_6e,_6f){
with(_6e){
return !_supermenu||_6e==objj_msgSend(CPApp,"mainMenu");
}
}),new objj_method(sel_getUid("setAutoenablesItems:"),function(_70,_71,_72){
with(_70){
_autoenablesItems=_72;
}
}),new objj_method(sel_getUid("autoenablesItems"),function(_73,_74){
with(_73){
return _autoenablesItems;
}
}),new objj_method(sel_getUid("update"),function(_75,_76){
with(_75){
}
}),new objj_method(sel_getUid("setTitle:"),function(_77,_78,_79){
with(_77){
_title=_79;
}
}),new objj_method(sel_getUid("title"),function(_7a,_7b){
with(_7a){
return _title;
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_7c,_7d,_7e){
with(_7c){
_showsStateColumn=_7e;
}
}),new objj_method(sel_getUid("showsStateColumn"),function(_7f,_80){
with(_7f){
return _showsStateColumn;
}
}),new objj_method(sel_getUid("highlightedItem"),function(_81,_82){
with(_81){
return _highlightedIndex>=0?_items[_highlightedIndex]:nil;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_83,_84,_85){
with(_83){
_delegate=_85;
}
}),new objj_method(sel_getUid("delegate"),function(_86,_87){
with(_86){
return _delegate;
}
}),new objj_method(sel_getUid("cancelTracking"),function(_88,_89){
with(_88){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_fireCancelTrackingEvent"),_88,nil,0,[CPDefaultRunLoopMode]);
}
}),new objj_method(sel_getUid("_fireCancelTrackingEvent"),function(_8a,_8b){
with(_8a){
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",CPAppKitDefined,{x:0,y:0},0,0,0,0,0,0,0));
}
}),new objj_method(sel_getUid("_setMenuWindow:"),function(_8c,_8d,_8e){
with(_8c){
_menuWindow=_8e;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_8f,_90,_91){
with(_8f){
if(_autoenablesItems){
objj_msgSend(_8f,"update");
}
var _92=0,_93=_items.length,_94=objj_msgSend(_91,"charactersIgnoringModifiers"),_95=objj_msgSend(_91,"modifierFlags");
for(;_92<_93;++_92){
var _96=_items[_92],_97=objj_msgSend(_96,"keyEquivalentModifierMask");
if((_95&(CPShiftKeyMask|CPAlternateKeyMask|CPCommandKeyMask|CPControlKeyMask))==_97&&objj_msgSend(_94,"caseInsensitiveCompare:",objj_msgSend(_96,"keyEquivalent"))==CPOrderedSame){
if(objj_msgSend(_96,"isEnabled")){
objj_msgSend(_8f,"performActionForItemAtIndex:",_92);
}else{
}
return YES;
}
if(objj_msgSend(objj_msgSend(_96,"submenu"),"performKeyEquivalent:",_91)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("performActionForItemAtIndex:"),function(_98,_99,_9a){
with(_98){
var _9b=_items[_9a];
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_9b,"action"),objj_msgSend(_9b,"target"),_9b);
}
}),new objj_method(sel_getUid("_itemIsHighlighted:"),function(_9c,_9d,_9e){
with(_9c){
return _items[_highlightedIndex]==_9e;
}
}),new objj_method(sel_getUid("_highlightItemAtIndex:"),function(_9f,_a0,_a1){
with(_9f){
var _a2=_highlightedIndex;
_highlightedIndex=_a1;
if(_a2!=CPNotFound){
objj_msgSend(objj_msgSend(_items[_a2],"_menuItemView"),"highlight:",NO);
}
if(_highlightedIndex!=CPNotFound){
objj_msgSend(objj_msgSend(_items[_highlightedIndex],"_menuItemView"),"highlight:",YES);
}
}
}),new objj_method(sel_getUid("_setMenuName:"),function(_a3,_a4,_a5){
with(_a3){
if(_name===_a5){
return;
}
_name=_a5;
if(_name==="CPMainMenu"){
objj_msgSend(CPApp,"setMainMenu:",_a3);
}
}
}),new objj_method(sel_getUid("_menuName"),function(_a6,_a7){
with(_a6){
return _name;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_a8,_a9){
with(_a8){
if(_name==="_CPMainMenu"){
objj_msgSend(_a8,"_setMenuName:","CPMainMenu");
objj_msgSend(CPMenu,"setMenuBarVisible:",YES);
}
}
}),new objj_method(sel_getUid("_menuWithName:"),function(_aa,_ab,_ac){
with(_aa){
if(_ac===_name){
return _aa;
}
for(var i=0,_ae=objj_msgSend(_items,"count");i<_ae;i++){
var _af=objj_msgSend(objj_msgSend(_items[i],"submenu"),"_menuWithName:",_ac);
if(_af){
return _af;
}
}
return nil;
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(_b0,_b1){
with(_b0){
objj_msgSend(objj_msgSend(_b0,"class"),"setMenuBarAttributes:",objj_msgSend(CPDictionary,"dictionary"));
}
}),new objj_method(sel_getUid("menuBarVisible"),function(_b2,_b3){
with(_b2){
return _2;
}
}),new objj_method(sel_getUid("setMenuBarVisible:"),function(_b4,_b5,_b6){
with(_b4){
if(_2==_b6){
return;
}
_2=_b6;
if(objj_msgSend(CPPlatform,"supportsNativeMainMenu")){
return;
}
if(_b6){
if(!_7){
_7=objj_msgSend(objj_msgSend(_CPMenuBarWindow,"alloc"),"init");
}
objj_msgSend(_7,"setMenu:",objj_msgSend(CPApp,"mainMenu"));
objj_msgSend(_7,"setTitle:",_3);
objj_msgSend(_7,"setIconImage:",_4);
objj_msgSend(_7,"setIconImageAlphaValue:",_5);
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"setTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextShadowColor"));
objj_msgSend(_7,"setTitleShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleShadowColor"));
objj_msgSend(_7,"setHighlightColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightColor"));
objj_msgSend(_7,"setHighlightTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextColor"));
objj_msgSend(_7,"setHighlightTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextShadowColor"));
objj_msgSend(_7,"orderFront:",_b4);
}else{
objj_msgSend(_7,"orderOut:",_b4);
}
objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"resizeEvent:",nil);
}
}),new objj_method(sel_getUid("setMenuBarTitle:"),function(_b7,_b8,_b9){
with(_b7){
_3=_b9;
objj_msgSend(_7,"setTitle:",_3);
}
}),new objj_method(sel_getUid("menuBarTitle"),function(_ba,_bb){
with(_ba){
return _3;
}
}),new objj_method(sel_getUid("setMenuBarIconImage:"),function(_bc,_bd,_be){
with(_bc){
_CPMenuBarImage=_be;
objj_msgSend(_7,"setIconImage:",_be);
}
}),new objj_method(sel_getUid("menuBarIconImage"),function(_bf,_c0){
with(_bf){
return _CPMenuBarImage;
}
}),new objj_method(sel_getUid("setMenuBarAttributes:"),function(_c1,_c2,_c3){
with(_c1){
if(_6==_c3){
return;
}
_6=objj_msgSend(_c3,"copy");
var _c4=objj_msgSend(_c3,"objectForKey:","CPMenuBarTextColor"),_c5=objj_msgSend(_c3,"objectForKey:","CPMenuBarTitleColor"),_c6=objj_msgSend(_c3,"objectForKey:","CPMenuBarTextShadowColor"),_c7=objj_msgSend(_c3,"objectForKey:","CPMenuBarTitleShadowColor"),_c8=objj_msgSend(_c3,"objectForKey:","CPMenuBarHighlightColor"),_c9=objj_msgSend(_c3,"objectForKey:","CPMenuBarHighlightTextColor"),_ca=objj_msgSend(_c3,"objectForKey:","CPMenuBarHighlightTextShadowColor");
if(!_c4&&_c5){
objj_msgSend(_6,"setObject:forKey:",_c5,"CPMenuBarTextColor");
}else{
if(_c4&&!_c5){
objj_msgSend(_6,"setObject:forKey:",_c4,"CPMenuBarTitleColor");
}else{
if(!_c4&&!_c5){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.051,0.2,0.275,1),"CPMenuBarTextColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.051,0.2,0.275,1),"CPMenuBarTitleColor");
}
}
}
if(!_c6&&_c7){
objj_msgSend(_6,"setObject:forKey:",_c7,"CPMenuBarTextShadowColor");
}else{
if(_c6&&!_c7){
objj_msgSend(_6,"setObject:forKey:",_c6,"CPMenuBarTitleShadowColor");
}else{
if(!_c6&&!_c7){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarTextShadowColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarTitleShadowColor");
}
}
}
if(!_c8){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",94/255,130/255,186/255,1),"CPMenuBarHighlightColor");
}
if(!_c9){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarHighlightTextColor");
}
if(!_ca){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"blackColor"),"CPMenuBarHighlightTextShadowColor");
}
if(_7){
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"setTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextShadowColor"));
objj_msgSend(_7,"setTitleShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleShadowColor"));
objj_msgSend(_7,"setHighlightColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightColor"));
objj_msgSend(_7,"setHighlightTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextColor"));
objj_msgSend(_7,"setHighlightTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextShadowColor"));
}
}
}),new objj_method(sel_getUid("menuBarAttributes"),function(_cb,_cc){
with(_cb){
return _6;
}
}),new objj_method(sel_getUid("_setMenuBarIconImageAlphaValue:"),function(_cd,_ce,_cf){
with(_cd){
_5=_cf;
objj_msgSend(_7,"setIconImageAlphaValue:",_cf);
}
}),new objj_method(sel_getUid("menuBarHeight"),function(_d0,_d1){
with(_d0){
return _1;
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:"),function(_d2,_d3,_d4,_d5,_d6){
with(_d2){
objj_msgSend(_d2,"popUpContextMenu:withEvent:forView:withFont:",_d4,_d5,_d6,nil);
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:withFont:"),function(_d7,_d8,_d9,_da,_db,_dc){
with(_d7){
objj_msgSend(_d7,"_popUpContextMenu:withEvent:forView:withFont:forMenuBar:",_d9,_da,_db,_dc,NO);
}
}),new objj_method(sel_getUid("_popUpContextMenu:withEvent:forView:withFont:forMenuBar:"),function(_dd,_de,_df,_e0,_e1,_e2,_e3){
with(_dd){
var _e4=objj_msgSend(_df,"delegate");
if(objj_msgSend(_e4,"respondsToSelector:",sel_getUid("menuWillOpen:"))){
objj_msgSend(_e4,"menuWillOpen:",_df);
}
if(!_e2){
_e2=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
var _e5=objj_msgSend(_e1,"window"),_e6=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_df,_e2);
objj_msgSend(_e6,"setDelegate:",_dd);
objj_msgSend(_e6,"setBackgroundStyle:",_e3?_CPMenuWindowMenuBarBackgroundStyle:_CPMenuWindowPopUpBackgroundStyle);
objj_msgSend(_e6,"setFrameOrigin:",objj_msgSend(objj_msgSend(_e0,"window"),"convertBaseToGlobal:",objj_msgSend(_e0,"locationInWindow")));
objj_msgSend(_e6,"orderFront:",_dd);
objj_msgSend(_e6,"beginTrackingWithEvent:sessionDelegate:didEndSelector:",_e0,_dd,sel_getUid("_menuWindowDidFinishTracking:highlightedItem:"));
}
}),new objj_method(sel_getUid("_menuWindowDidFinishTracking:highlightedItem:"),function(_e7,_e8,_e9,_ea){
with(_e7){
var _eb=objj_msgSend(_e9,"menu");
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_e9);
if(objj_msgSend(_ea,"isEnabled")){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_ea,"action"),objj_msgSend(_ea,"target"),_ea);
}
}
})]);
var _ec="CPMenuTitleKey",_ed="CPMenuNameKey",_ee="CPMenuItemsKey",_ef="CPMenuShowsStateColumnKey";
var _8=objj_getClass("CPMenu");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPMenu\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_f0,_f1,_f2){
with(_f0){
_f0=objj_msgSendSuper({receiver:_f0,super_class:objj_getClass("CPObject")},"init");
if(_f0){
_title=objj_msgSend(_f2,"decodeObjectForKey:",_ec);
_items=objj_msgSend(_f2,"decodeObjectForKey:",_ee);
objj_msgSend(_f0,"_setMenuName:",objj_msgSend(_f2,"decodeObjectForKey:",_ed));
_showsStateColumn=!objj_msgSend(_f2,"containsValueForKey:",_ef)||objj_msgSend(_f2,"decodeBoolForKey:",_ef);
}
return _f0;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_f3,_f4,_f5){
with(_f3){
objj_msgSend(_f5,"encodeObject:forKey:",_title,_ec);
if(_name){
objj_msgSend(_f5,"encodeObject:forKey:",_name,_ed);
}
objj_msgSend(_f5,"encodeObject:forKey:",_items,_ee);
if(!_showsStateColumn){
objj_msgSend(_f5,"encodeBool:forKey:",_showsStateColumn,_ef);
}
}
})]);
var _f6=[],_f7=5,_f8=[],_f9=-1,_fa=1,_fb=0;
_CPMenuWindowMenuBarBackgroundStyle=0;
_CPMenuWindowPopUpBackgroundStyle=1;
_CPMenuWindowAttachedMenuBackgroundStyle=2;
var _fc=500,_fd=5,_fe=1,_ff=1,_100=5,_101=16;
var _8=objj_allocateClassPair(CPWindow,"_CPMenuWindow"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menuView"),new objj_ivar("_menuClipView"),new objj_ivar("_lastMouseOverMenuView"),new objj_ivar("_moreAboveView"),new objj_ivar("_moreBelowView"),new objj_ivar("_sessionDelegate"),new objj_ivar("_didEndSelector"),new objj_ivar("_startTime"),new objj_ivar("_scrollingState"),new objj_ivar("_lastGlobalLocation"),new objj_ivar("_isShowingTopScrollIndicator"),new objj_ivar("_isShowingBottomScrollIndicator"),new objj_ivar("_trackingCanceled"),new objj_ivar("_unconstrainedFrame")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(self,_cmd){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessWindowMask);
if(self){
objj_msgSend(self,"setLevel:",CPPopUpMenuWindowLevel);
objj_msgSend(self,"setHasShadow:",YES);
objj_msgSend(self,"setShadowStyle:",CPMenuWindowShadowStyle);
objj_msgSend(self,"setAcceptsMouseMovedEvents:",YES);
_unconstrainedFrame=CGRectMakeZero();
var _104=objj_msgSend(self,"contentView");
_menuView=objj_msgSend(objj_msgSend(_CPMenuView,"alloc"),"initWithFrame:",CGRectMakeZero());
_menuClipView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",CGRectMake(_fe,_fd,0,0));
objj_msgSend(_menuClipView,"setDocumentView:",_menuView);
objj_msgSend(_104,"addSubview:",_menuClipView);
_moreAboveView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreAboveView,"setImage:",_CPMenuWindowMoreAboveImage);
objj_msgSend(_moreAboveView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreAboveImage,"size"));
objj_msgSend(_104,"addSubview:",_moreAboveView);
_moreBelowView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreBelowView,"setImage:",_CPMenuWindowMoreBelowImage);
objj_msgSend(_moreBelowView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreBelowImage,"size"));
objj_msgSend(_104,"addSubview:",_moreBelowView);
objj_msgSend(self,"setShadowStyle:",CPWindowShadowStyleMenu);
}
return self;
}
}),new objj_method(sel_getUid("overlapOffsetWidth"),function(self,_cmd){
with(self){
return _fe;
}
}),new objj_method(sel_getUid("setFont:"),function(self,_cmd,_109){
with(self){
objj_msgSend(_menuView,"setFont:",_109);
}
}),new objj_method(sel_getUid("setBackgroundStyle:"),function(self,_cmd,_10c){
with(self){
objj_msgSend(self,"setBackgroundColor:",objj_msgSend(objj_msgSend(self,"class"),"backgroundColorForBackgroundStyle:",_10c));
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_10f){
with(self){
objj_msgSend(_10f,"_setMenuWindow:",self);
objj_msgSend(_menuView,"setMenu:",_10f);
var _110=objj_msgSend(_menuView,"frame").size;
objj_msgSend(self,"setFrameSize:",CGSizeMake(_fe+_110.width+_ff,_fd+_110.height+_100));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(_menuClipView,"setFrame:",CGRectMake(_fe,_fd,_110.width,_110.height));
}
}),new objj_method(sel_getUid("setMinWidth:"),function(self,_cmd,_113){
with(self){
var size=objj_msgSend(self,"frame").size;
objj_msgSend(self,"setFrameSize:",CGSizeMake(MAX(size.width,_113),size.height));
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(self,_cmd,_117){
with(self){
return objj_msgSend(_menuView,"convertRect:toView:",objj_msgSend(_menuView,"rectForItemAtIndex:",_117),nil);
}
}),new objj_method(sel_getUid("orderFront:"),function(self,_cmd,_11a){
with(self){
objj_msgSend(self,"constrainToScreen");
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"orderFront:",_11a);
}
}),new objj_method(sel_getUid("constrainToScreen"),function(self,_cmd){
with(self){
_unconstrainedFrame=CGRectMakeCopy(objj_msgSend(self,"frame"));
var _11d=objj_msgSend(CPPlatform,"isBrowser"),_11e=CGRectInset(_11d?objj_msgSend(objj_msgSend(self,"platformWindow"),"contentBounds"):objj_msgSend(objj_msgSend(self,"screen"),"visibleFrame"),5,5),_11f=CGRectIntersection(_unconstrainedFrame,_11e);
_11f.origin.x=CGRectGetMinX(_unconstrainedFrame);
_11f.size.width=CGRectGetWidth(_unconstrainedFrame);
if(CGRectGetWidth(_11f)>CGRectGetWidth(_11e)){
_11f.size.width=CGRectGetWidth(_11e);
}
if(CGRectGetMaxX(_11f)>CGRectGetMaxX(_11e)){
_11f.origin.x-=CGRectGetMaxX(_11f)-CGRectGetMaxX(_11e);
}
if(CGRectGetMinX(_11f)<CGRectGetMinX(_11e)){
_11f.origin.x=CGRectGetMinX(_11e);
}
var _120=objj_msgSend(self,"convertBaseToGlobal:",CGPointMake(_fe,_fd));
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"setFrame:",_11f);
var _121=_120.y<CGRectGetMinY(_11f)+_fd,_122=_120.y+CGRectGetHeight(objj_msgSend(_menuView,"frame"))>CGRectGetMaxY(_11f)-_100,_123=_fd,_124=_100,_125=objj_msgSend(self,"contentView"),_126=objj_msgSend(_125,"bounds");
if(_121){
_123+=_101;
var _127=objj_msgSend(_moreAboveView,"frame");
objj_msgSend(_moreAboveView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_126)-CGRectGetWidth(_127))/2,(_fd+_101-CGRectGetHeight(_127))/2));
}
objj_msgSend(_moreAboveView,"setHidden:",!_121);
if(_122){
_124+=_101;
objj_msgSend(_moreBelowView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_126)-CGRectGetWidth(objj_msgSend(_moreBelowView,"frame")))/2,CGRectGetHeight(_126)-_101-_100));
}
objj_msgSend(_moreBelowView,"setHidden:",!_122);
var _128=CGRectMake(_fe,_123,CGRectGetWidth(_11f)-_fe-_ff,CGRectGetHeight(_11f)-_123-_124);
objj_msgSend(_menuClipView,"setFrame:",_128);
objj_msgSend(_menuView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_128),CGRectGetHeight(objj_msgSend(_menuView,"frame"))));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,objj_msgSend(self,"convertBaseToGlobal:",_128.origin).y-_120.y));
}
}),new objj_method(sel_getUid("beginTrackingWithEvent:sessionDelegate:didEndSelector:"),function(self,_cmd,_12b,_12c,_12d){
with(self){
CPApp._activeMenu=objj_msgSend(_menuView,"menu");
_startTime=objj_msgSend(_12b,"timestamp");
_scrollingState=_fb;
_trackingCanceled=NO;
_sessionDelegate=_12c;
_didEndSelector=_12d;
objj_msgSend(self,"trackEvent:",_12b);
}
}),new objj_method(sel_getUid("trackEvent:"),function(self,_cmd,_130){
with(self){
var type=objj_msgSend(_130,"type"),menu=objj_msgSend(_menuView,"menu");
if(type===CPAppKitDefined){
objj_msgSend(CPEvent,"stopPeriodicEvents");
var _133=objj_msgSend(objj_msgSend(_menuView,"menu"),"highlightedItem");
objj_msgSend(menu,"_highlightItemAtIndex:",CPNotFound);
objj_msgSend(self,"orderOut:",self);
var _134=objj_msgSend(menu,"delegate");
if(objj_msgSend(_134,"respondsToSelector:",sel_getUid("menuDidClose:"))){
objj_msgSend(_134,"menuDidClose:",menu);
}
if(_sessionDelegate&&_didEndSelector){
objj_msgSend(_sessionDelegate,_didEndSelector,self,_133);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPMenuDidEndTrackingNotification,menu);
objj_msgSend(_menuView,"setMenu:",nil);
CPApp._activeMenu=nil;
return;
}
var _135=objj_msgSend(_130,"window"),_136=_135?objj_msgSend(_135,"convertBaseToGlobal:",objj_msgSend(_130,"locationInWindow")):objj_msgSend(_130,"locationInWindow");
if(type===CPPeriodic){
var _137=CGRectInset(objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(objj_msgSend(self,"platformWindow"),"contentBounds"):objj_msgSend(objj_msgSend(self,"screen"),"visibleFrame"),5,5);
if(_scrollingState==_f9){
if(CGRectGetMinY(_unconstrainedFrame)<CGRectGetMinY(_137)){
_unconstrainedFrame.origin.y+=10;
}
}else{
if(_scrollingState==_fa){
if(CGRectGetMaxY(_unconstrainedFrame)>CGRectGetHeight(_137)){
_unconstrainedFrame.origin.y-=10;
}
}
}
objj_msgSend(self,"setFrame:",_unconstrainedFrame);
objj_msgSend(self,"constrainToScreen");
_136=_lastGlobalLocation;
}
_lastGlobalLocation=_136;
var _138=objj_msgSend(self,"convertGlobalToBase:",_136),_139=objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",_138,nil)),_13a=objj_msgSend(objj_msgSend(menu,"itemAtIndex:",_139),"view");
if(_13a){
if(!_lastMouseOverMenuView){
objj_msgSend(menu,"_highlightItemAtIndex:",CPNotFound);
}
if(_lastMouseOverMenuView!=_13a){
objj_msgSend(_13a,"mouseExited:",_130);
objj_msgSend(_lastMouseOverMenuView,"mouseEntered:",_130);
_lastMouseOverMenuView=_13a;
}
objj_msgSend(self,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",type,_138,objj_msgSend(_130,"modifierFlags"),objj_msgSend(_130,"timestamp"),objj_msgSend(self,"windowNumber"),nil,0,objj_msgSend(_130,"clickCount"),objj_msgSend(_130,"pressure")));
}else{
if(_lastMouseOverMenuView){
objj_msgSend(_lastMouseOverMenuView,"mouseExited:",_130);
_lastMouseOverMenuView=nil;
}
objj_msgSend(menu,"_highlightItemAtIndex:",objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",objj_msgSend(self,"convertGlobalToBase:",_136),nil)));
if(type==CPMouseMoved||type==CPLeftMouseDragged||type==CPLeftMouseDown){
var _13b=objj_msgSend(self,"frame"),_13c=_scrollingState;
_scrollingState=_fb;
if(_136.y<CGRectGetMinY(_13b)+_fd+_101){
_scrollingState=_f9;
}else{
if(_136.y>CGRectGetMaxY(_13b)-_100-_101){
_scrollingState=_fa;
}
}
if(_scrollingState!=_13c){
if(_scrollingState==_fb){
objj_msgSend(CPEvent,"stopPeriodicEvents");
}else{
if(_13c==_fb){
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.04);
}
}
}
}else{
if(type==CPLeftMouseUp&&(objj_msgSend(_130,"timestamp")-_startTime>_fc)){
objj_msgSend(menu,"cancelTracking");
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackEvent:"),CPPeriodicMask|CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask|CPAppKitDefinedMask,nil,nil,YES);
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("menuWindowWithMenu:font:"),function(self,_cmd,_13f,_140){
with(self){
var _141=nil;
if(_f6.length){
_141=_f6.pop();
}else{
_141=objj_msgSend(objj_msgSend(_CPMenuWindow,"alloc"),"init");
}
objj_msgSend(_141,"setFont:",_140);
objj_msgSend(_141,"setMenu:",_13f);
return _141;
}
}),new objj_method(sel_getUid("poolMenuWindow:"),function(self,_cmd,_144){
with(self){
if(!_144||_f6.length>=_f7){
return;
}
_f6.push(_144);
}
}),new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(_CPMenuWindow,"class")){
return;
}
var _147=objj_msgSend(CPBundle,"bundleForClass:",self);
_CPMenuWindowMoreAboveImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_147,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreAbove.png"),CGSizeMake(38,18));
_CPMenuWindowMoreBelowImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_147,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreBelow.png"),CGSizeMake(38,18));
}
}),new objj_method(sel_getUid("backgroundColorForBackgroundStyle:"),function(self,_cmd,_14a){
with(self){
var _14b=_f8[_14a];
if(!_14b){
var _14c=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(self,"class"));
if(_14a==_CPMenuWindowPopUpBackgroundStyle){
_14b=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded0.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow1.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded2.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}else{
if(_14a==_CPMenuWindowMenuBarBackgroundStyle){
_14b=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_14c,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}
}
_f8[_14a]=_14b;
}
return _14b;
}
})]);
var _8=objj_allocateClassPair(CPView,"_CPMenuView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menuItemViews"),new objj_ivar("_visibleMenuItemInfos"),new objj_ivar("_font")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("setFont:"),function(self,_cmd,_14f){
with(self){
_font=_14f;
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(self,_cmd,_152){
with(self){
return objj_msgSend(_menuItemViews[_152==CPNotFound?0:_152],"frame");
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(self,_cmd,_155){
with(self){
var x=_155.x,_157=objj_msgSend(self,"bounds");
if(x<CGRectGetMinX(_157)||x>CGRectGetMaxX(_157)){
return CPNotFound;
}
var y=_155.y,low=0,high=_visibleMenuItemInfos.length-1;
while(low<=high){
var _15b=FLOOR(low+(high-low)/2),info=_visibleMenuItemInfos[_15b];
frame=objj_msgSend(info.view,"frame");
if(y<CGRectGetMinY(frame)){
high=_15b-1;
}else{
if(y>CGRectGetMaxY(frame)){
low=_15b+1;
}else{
return info.index;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_15f){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView")},"setMenu:",_15f);
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
_menuItemViews=[];
_visibleMenuItemInfos=[];
var menu=objj_msgSend(self,"menu");
if(!menu){
return;
}
var _161=objj_msgSend(menu,"itemArray"),_162=0,_163=objj_msgSend(_161,"count"),_164=0,y=0,_166=objj_msgSend(menu,"showsStateColumn");
for(;_162<_163;++_162){
var item=_161[_162],view=objj_msgSend(item,"_menuItemView");
_menuItemViews.push(view);
if(objj_msgSend(item,"isHidden")){
continue;
}
_visibleMenuItemInfos.push({view:view,index:_162});
objj_msgSend(view,"setFont:",_font);
objj_msgSend(view,"setShowsStateColumn:",_166);
objj_msgSend(view,"synchronizeWithMenuItem");
objj_msgSend(view,"setFrameOrigin:",CGPointMake(0,y));
objj_msgSend(self,"addSubview:",view);
var size=objj_msgSend(view,"minSize"),_16a=size.width;
if(_164<_16a){
_164=_16a;
}
y+=size.height;
}
for(_162=0;_162<_163;++_162){
var view=_menuItemViews[_162];
objj_msgSend(view,"setFrameSize:",CGSizeMake(_164,CGRectGetHeight(objj_msgSend(view,"frame"))));
}
objj_msgSend(self,"setAutoresizesSubviews:",NO);
objj_msgSend(self,"setFrameSize:",CGSizeMake(_164,y));
objj_msgSend(self,"setAutoresizesSubviews:",YES);
}
})]);
var _1=29,_16b=10,_16c=10,_16d=10;
var _16e=nil,_16f=nil;
var _8=objj_allocateClassPair(CPPanel,"_CPMenuBarWindow"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menu"),new objj_ivar("_highlightView"),new objj_ivar("_menuItemViews"),new objj_ivar("_trackingMenuItem"),new objj_ivar("_iconImageView"),new objj_ivar("_titleField"),new objj_ivar("_textColor"),new objj_ivar("_titleColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_titleShadowColor"),new objj_ivar("_highlightColor"),new objj_ivar("_highlightTextColor"),new objj_ivar("_highlightTextShadowColor")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(self,_cmd){
with(self){
var _172=objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"contentBounds");
_172.size.height=_1;
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPPanel")},"initWithContentRect:styleMask:",_172,CPBorderlessWindowMask);
if(self){
objj_msgSend(self,"setLevel:",-1);
objj_msgSend(self,"setAutoresizingMask:",CPWindowWidthSizable);
var _173=objj_msgSend(self,"contentView");
objj_msgSend(_173,"setAutoresizesSubviews:",NO);
objj_msgSend(self,"setBecomesKeyOnlyIfNeeded:",YES);
_iconImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,16,16));
objj_msgSend(_173,"addSubview:",_iconImageView);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_173,"addSubview:",_titleField);
}
return self;
}
}),new objj_method(sel_getUid("setTitle:"),function(self,_cmd,_176){
with(self){
var _177=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName");
if(!objj_msgSend(_177,"length")){
document.title=_176;
}else{
if(objj_msgSend(_176,"length")){
document.title=_176+" - "+_177;
}else{
document.title=_177;
}
}
objj_msgSend(_titleField,"setStringValue:",_176);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("setIconImage:"),function(self,_cmd,_17a){
with(self){
objj_msgSend(_iconImageView,"setImage:",_17a);
objj_msgSend(_iconImageView,"setHidden:",_17a==nil);
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("setIconImageAlphaValue:"),function(self,_cmd,_17d){
with(self){
objj_msgSend(_iconImageView,"setAlphaValue:",_17d);
}
}),new objj_method(sel_getUid("setColor:"),function(self,_cmd,_180){
with(self){
if(!_180){
if(!_16e){
_16e=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPMenuBarWindow,"class")),"pathForResource:","_CPMenuBarWindow/_CPMenuBarWindowBackground.png"),CGSizeMake(1,18)));
}
objj_msgSend(objj_msgSend(self,"contentView"),"setBackgroundColor:",_16e);
}else{
objj_msgSend(objj_msgSend(self,"contentView"),"setBackgroundColor:",_180);
}
}
}),new objj_method(sel_getUid("setTextColor:"),function(self,_cmd,_183){
with(self){
if(_textColor==_183){
return;
}
_textColor=_183;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextColor:"),_textColor);
}
}),new objj_method(sel_getUid("setTitleColor:"),function(self,_cmd,_186){
with(self){
if(_titleColor==_186){
return;
}
_titleColor=_186;
objj_msgSend(_titleField,"setTextColor:",_186?_186:objj_msgSend(CPColor,"blackColor"));
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(self,_cmd,_189){
with(self){
if(_textShadowColor==_189){
return;
}
_textShadowColor=_189;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextShadowColor:"),_textShadowColor);
}
}),new objj_method(sel_getUid("setTitleShadowColor:"),function(self,_cmd,_18c){
with(self){
if(_titleShadowColor==_18c){
return;
}
_titleShadowColor=_18c;
objj_msgSend(_titleField,"setTextShadowColor:",_18c?_18c:objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("setHighlightColor:"),function(self,_cmd,_18f){
with(self){
if(_highlightColor==_18f){
return;
}
_highlightColor=_18f;
}
}),new objj_method(sel_getUid("setHighlightTextColor:"),function(self,_cmd,_192){
with(self){
if(_highlightTextColor==_192){
return;
}
_highlightTextColor=_192;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setActivateColor:"),_highlightTextColor);
}
}),new objj_method(sel_getUid("setHighlightTextShadowColor:"),function(self,_cmd,_195){
with(self){
if(_highlightTextShadowColor==_195){
return;
}
_highlightTextShadowColor=_195;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setActivateShadowColor:"),_highlightTextShadowColor);
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_198){
with(self){
if(_menu==_198){
return;
}
var _199=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_199,"removeObserver:name:object:",self,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_199,"removeObserver:name:object:",self,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_199,"removeObserver:name:object:",self,CPMenuDidRemoveItemNotification,_menu);
var _19a=objj_msgSend(_menu,"itemArray"),_19b=_19a.length;
while(_19b--){
objj_msgSend(objj_msgSend(_19a[_19b],"_menuItemView"),"removeFromSuperview");
}
}
_menu=_198;
if(_menu){
objj_msgSend(_199,"addObserver:selector:name:object:",self,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_199,"addObserver:selector:name:object:",self,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_199,"addObserver:selector:name:object:",self,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
_menuItemViews=[];
var _19c=objj_msgSend(self,"contentView"),_19a=objj_msgSend(_menu,"itemArray"),_19b=_19a.length;
for(index=0;index<_19b;++index){
var item=_19a[index],_19e=objj_msgSend(item,"_menuItemView");
_menuItemViews.push(_19e);
objj_msgSend(_19e,"setShowsStateColumn:",NO);
objj_msgSend(_19e,"setBelongsToMenuBar:",YES);
objj_msgSend(_19e,"setFont:",_16f);
objj_msgSend(_19e,"setTextColor:",_textColor);
objj_msgSend(_19e,"setHidden:",objj_msgSend(item,"isHidden"));
objj_msgSend(_19e,"synchronizeWithMenuItem");
objj_msgSend(_19c,"addSubview:",_19e);
}
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(self,_cmd,_1a1){
with(self){
var _1a2=objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(objj_msgSend(_1a1,"userInfo"),"objectForKey:","CPMenuItemIndex")),_1a3=objj_msgSend(_1a2,"_menuItemView");
objj_msgSend(_1a3,"setHidden:",objj_msgSend(_1a2,"isHidden"));
objj_msgSend(_1a3,"synchronizeWithMenuItem");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(self,_cmd,_1a6){
with(self){
var _1a7=objj_msgSend(objj_msgSend(_1a6,"userInfo"),"objectForKey:","CPMenuItemIndex"),_1a8=objj_msgSend(_menu,"itemAtIndex:",_1a7),_1a9=objj_msgSend(_1a8,"_menuItemView");
objj_msgSend(_menuItemViews,"insertObject:atIndex:",_1a9,_1a7);
objj_msgSend(_1a9,"setShowsStateColumn:",NO);
objj_msgSend(_1a9,"setBelongsToMenuBar:",YES);
objj_msgSend(_1a9,"setFont:",_16f);
objj_msgSend(_1a9,"setTextColor:",_textColor);
objj_msgSend(_1a9,"setHidden:",objj_msgSend(_1a8,"isHidden"));
objj_msgSend(_1a9,"synchronizeWithMenuItem");
objj_msgSend(objj_msgSend(self,"contentView"),"addSubview:",_1a9);
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(self,_cmd,_1ac){
with(self){
var _1ad=objj_msgSend(objj_msgSend(_1ac,"userInfo"),"objectForKey:","CPMenuItemIndex"),_1ae=objj_msgSend(_menuItemViews,"objectAtIndex:",_1ad);
objj_msgSend(_menuItemViews,"removeObjectAtIndex:",_1ad);
objj_msgSend(_1ae,"removeFromSuperview");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("frameForMenuItem:"),function(self,_cmd,_1b1){
with(self){
var _1b2=objj_msgSend(objj_msgSend(_1b1,"_menuItemView"),"frame");
_1b2.origin.x-=5;
_1b2.origin.y=0;
_1b2.size.width+=10;
_1b2.size.height=_1;
return _1b2;
}
}),new objj_method(sel_getUid("menuItemAtPoint:"),function(self,_cmd,_1b5){
with(self){
var _1b6=objj_msgSend(_menu,"itemArray"),_1b7=_1b6.length;
while(_1b7--){
var item=_1b6[_1b7];
if(objj_msgSend(item,"isHidden")||objj_msgSend(item,"isSeparatorItem")){
continue;
}
if(CGRectContainsPoint(objj_msgSend(self,"frameForMenuItem:",item),_1b5)){
return item;
}
}
return nil;
}
}),new objj_method(sel_getUid("mouseDown:"),function(self,_cmd,_1bb){
with(self){
_trackingMenuItem=objj_msgSend(self,"menuItemAtPoint:",objj_msgSend(_1bb,"locationInWindow"));
if(!objj_msgSend(_trackingMenuItem,"isEnabled")){
return;
}
if(objj_msgSend(objj_msgSend(_trackingMenuItem,"_menuItemView"),"eventOnSubmenu:",_1bb)){
return objj_msgSend(self,"showMenu:",_1bb);
}
if(objj_msgSend(_trackingMenuItem,"isEnabled")){
objj_msgSend(self,"trackEvent:",_1bb);
}
}
}),new objj_method(sel_getUid("trackEvent:"),function(self,_cmd,_1be){
with(self){
var type=objj_msgSend(_1be,"type");
if(type===CPPeriodic){
return objj_msgSend(self,"showMenu:",_1be);
}
var _1c0=objj_msgSend(self,"frameForMenuItem:",_trackingMenuItem),_1c1=objj_msgSend(_trackingMenuItem,"_menuItemView"),_1c2=CGRectContainsPoint(_1c0,objj_msgSend(_1be,"locationInWindow"));
if(type==CPLeftMouseDown){
if(objj_msgSend(_trackingMenuItem,"submenu")!=nil){
var _1c3=objj_msgSend(_trackingMenuItem,"action");
if(!_1c3||_1c3===sel_getUid("submenuAction:")){
return objj_msgSend(self,"showMenu:",_1be);
}
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.5);
}
objj_msgSend(_1c1,"highlight:",_1c2);
}else{
if(type==CPLeftMouseDragged){
if(!_1c2&&objj_msgSend(_trackingMenuItem,"submenu")){
return objj_msgSend(self,"showMenu:",_1be);
}
objj_msgSend(_1c1,"highlight:",_1c2);
}else{
objj_msgSend(CPEvent,"stopPeriodicEvents");
objj_msgSend(_1c1,"highlight:",NO);
if(_1c2){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_trackingMenuItem,"action"),objj_msgSend(_trackingMenuItem,"target"),_trackingMenuItem);
}
return;
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackEvent:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("showMenu:"),function(self,_cmd,_1c6){
with(self){
objj_msgSend(CPEvent,"stopPeriodicEvents");
var _1c7=objj_msgSend(self,"frameForMenuItem:",_trackingMenuItem),_1c8=objj_msgSend(_trackingMenuItem,"_menuItemView");
if(!_highlightView){
_highlightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_1c7);
objj_msgSend(_highlightView,"setBackgroundColor:",_highlightColor?_highlightColor:objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",95/255,131/255,185/255,1));
}else{
objj_msgSend(_highlightView,"setFrame:",_1c7);
}
objj_msgSend(objj_msgSend(self,"contentView"),"addSubview:positioned:relativeTo:",_highlightView,CPWindowBelow,_1c8);
objj_msgSend(_1c8,"activate:",YES);
var _1c9=objj_msgSend(_trackingMenuItem,"submenu");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",self,sel_getUid("menuDidEndTracking:"),CPMenuDidEndTrackingNotification,_1c9);
objj_msgSend(CPMenu,"_popUpContextMenu:withEvent:forView:withFont:forMenuBar:",_1c9,objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,CGPointMake(CGRectGetMinX(_1c7),CGRectGetMaxY(_1c7)),objj_msgSend(_1c6,"modifierFlags"),objj_msgSend(_1c6,"timestamp"),objj_msgSend(self,"windowNumber"),nil,0,objj_msgSend(_1c6,"clickCount"),objj_msgSend(_1c6,"pressure")),objj_msgSend(self,"contentView"),nil,YES);
}
}),new objj_method(sel_getUid("menuDidEndTracking:"),function(self,_cmd,_1cc){
with(self){
objj_msgSend(_highlightView,"removeFromSuperview");
objj_msgSend(objj_msgSend(_trackingMenuItem,"_menuItemView"),"activate:",NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",self,CPMenuDidEndTrackingNotification,objj_msgSend(_1cc,"object"));
}
}),new objj_method(sel_getUid("tile"),function(self,_cmd){
with(self){
var _1cf=objj_msgSend(_menu,"itemArray"),_1d0=0,_1d1=_1cf.length,x=_16c,y=0,_1d4=YES;
for(;_1d0<_1d1;++_1d0){
var item=_1cf[_1d0];
if(objj_msgSend(item,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(self,"frame"))-_16d;
_1d4=NO;
continue;
}
if(objj_msgSend(item,"isHidden")){
continue;
}
var _1d6=objj_msgSend(item,"_menuItemView"),_1d7=objj_msgSend(_1d6,"frame");
if(_1d4){
objj_msgSend(_1d6,"setFrameOrigin:",CGPointMake(x,(_1-1-CGRectGetHeight(_1d7))/2));
x+=CGRectGetWidth(objj_msgSend(_1d6,"frame"))+_16b;
}else{
objj_msgSend(_1d6,"setFrameOrigin:",CGPointMake(x-CGRectGetWidth(_1d7),(_1-1-CGRectGetHeight(_1d7))/2));
x=CGRectGetMinX(objj_msgSend(_1d6,"frame"))-_16b;
}
}
var _1d8=objj_msgSend(objj_msgSend(self,"contentView"),"bounds"),_1d9=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1d8)-CGRectGetWidth(_1d9))/2,(CGRectGetHeight(_1d8)-CGRectGetHeight(_1d9))/2));
}else{
var _1da=objj_msgSend(_iconImageView,"frame"),_1db=CGRectGetWidth(_1da),_1dc=_1db+CGRectGetWidth(_1d9);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1d8)-_1dc)/2,(CGRectGetHeight(_1d8)-CGRectGetHeight(_1da))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1d8)-_1dc)/2+_1db,(CGRectGetHeight(_1d8)-CGRectGetHeight(_1d9))/2));
}
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(self,_cmd,_1df,_1e0,_1e1){
with(self){
var size=objj_msgSend(self,"frame").size;
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPPanel")},"setFrame:display:animate:",_1df,_1e0,_1e1);
if(!(size.width==_1df.size.width&&size.height==_1df.size.height)){
objj_msgSend(self,"tile");
}
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(_CPMenuBarWindow,"class")){
return;
}
var _1e5=objj_msgSend(CPBundle,"bundleForClass:",self);
_16f=objj_msgSend(CPFont,"systemFontOfSize:",11);
}
})]);
