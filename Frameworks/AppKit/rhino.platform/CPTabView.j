i;13;CPImageView.ji;15;CPTabViewItem.ji;8;CPView.jc;18608;
CPTopTabsBezelBorder=0;
CPNoTabsBezelBorder=4;
CPNoTabsLineBorder=5;
CPNoTabsNoBorder=6;
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil;
var _6=7,_7=7;
var _8=1,_9=2,_a=4,_b=8;
var _c=objj_allocateClassPair(CPView,"CPTabView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_labelsView"),new objj_ivar("_backgroundView"),new objj_ivar("_separatorView"),new objj_ivar("_auxiliaryView"),new objj_ivar("_contentView"),new objj_ivar("_tabViewItems"),new objj_ivar("_selectedTabViewItem"),new objj_ivar("_tabViewType"),new objj_ivar("_delegate"),new objj_ivar("_delegateSelectors")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_e,_f,_10){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPView")},"initWithFrame:",_10);
if(_e){
_tabViewType=CPTopTabsBezelBorder;
_tabViewItems=[];
}
return _e;
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_11,_12){
with(_11){
if(_tabViewType!=CPTopTabsBezelBorder||_labelsView){
return;
}
objj_msgSend(_11,"_createBezelBorder");
objj_msgSend(_11,"layoutSubviews");
}
}),new objj_method(sel_getUid("_createBezelBorder"),function(_13,_14){
with(_13){
var _15=objj_msgSend(_13,"bounds");
_labelsView=objj_msgSend(objj_msgSend(_CPTabLabelsView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_15),0));
objj_msgSend(_labelsView,"setTabView:",_13);
objj_msgSend(_labelsView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_13,"addSubview:",_labelsView);
_backgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_backgroundView,"setBackgroundColor:",_5);
objj_msgSend(_backgroundView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_13,"addSubview:",_backgroundView);
_separatorView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_separatorView,"setBackgroundColor:",objj_msgSend(objj_msgSend(_13,"class"),"bezelBorderColor"));
objj_msgSend(_separatorView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMaxYMargin);
objj_msgSend(_13,"addSubview:",_separatorView);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_16,_17){
with(_16){
if(_tabViewType==CPTopTabsBezelBorder){
var _18=objj_msgSend(_16,"bounds"),_19=objj_msgSend(_CPTabLabelsView,"height");
_18.origin.y+=_19;
_18.size.height-=_19;
objj_msgSend(_backgroundView,"setFrame:",_18);
var _1a=5;
if(_auxiliaryView){
_1a=CGRectGetHeight(objj_msgSend(_auxiliaryView,"frame"));
objj_msgSend(_auxiliaryView,"setFrame:",CGRectMake(_6,_19,CGRectGetWidth(_18)-_6-_7,_1a));
}
objj_msgSend(_separatorView,"setFrame:",CGRectMake(_6,_19+_1a,CGRectGetWidth(_18)-_6-_7,1));
}
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_16,"contentRect"));
}
}),new objj_method(sel_getUid("addTabViewItem:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"insertTabViewItem:atIndex:",_1d,objj_msgSend(_tabViewItems,"count"));
}
}),new objj_method(sel_getUid("insertTabViewItem:atIndex:"),function(_1e,_1f,_20,_21){
with(_1e){
if(!_labelsView&&_tabViewType==CPTopTabsBezelBorder){
objj_msgSend(_1e,"_createBezelBorder");
}
objj_msgSend(_tabViewItems,"insertObject:atIndex:",_20,_21);
objj_msgSend(_labelsView,"tabView:didAddTabViewItem:",_1e,_20);
if(objj_msgSend(_tabViewItems,"count")==1){
objj_msgSend(_1e,"selectFirstTabViewItem:",_1e);
}
if(_delegateSelectors&_b){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_1e);
}
}
}),new objj_method(sel_getUid("removeTabViewItem:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(_22,"indexOfTabViewItem:",_24);
objj_msgSend(_tabViewItems,"removeObjectIdenticalTo:",_24);
objj_msgSend(_labelsView,"tabView:didRemoveTabViewItemAtIndex:",_22,_25);
if(_delegateSelectors&_b){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_22);
}
}
}),new objj_method(sel_getUid("indexOfTabViewItem:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_tabViewItems,"indexOfObjectIdenticalTo:",_28);
}
}),new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"),function(_29,_2a,_2b){
with(_29){
var _2c=0,_2d=objj_msgSend(_tabViewItems,"count");
for(;_2c<_2d;++_2c){
if(objj_msgSend(objj_msgSend(_tabViewItems[_2c],"identifier"),"isEqual:",_2b)){
return _2c;
}
}
return _2c;
}
}),new objj_method(sel_getUid("numberOfTabViewItems"),function(_2e,_2f){
with(_2e){
return objj_msgSend(_tabViewItems,"count");
}
}),new objj_method(sel_getUid("tabViewItemAtIndex:"),function(_30,_31,_32){
with(_30){
return _tabViewItems[_32];
}
}),new objj_method(sel_getUid("tabViewItems"),function(_33,_34){
with(_33){
return _tabViewItems;
}
}),new objj_method(sel_getUid("selectFirstTabViewItem:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(_tabViewItems,"count");
if(_38){
objj_msgSend(_35,"selectTabViewItemAtIndex:",0);
}
}
}),new objj_method(sel_getUid("selectLastTabViewItem:"),function(_39,_3a,_3b){
with(_39){
var _3c=objj_msgSend(_tabViewItems,"count");
if(_3c){
objj_msgSend(_39,"selectTabViewItemAtIndex:",_3c-1);
}
}
}),new objj_method(sel_getUid("selectNextTabViewItem:"),function(_3d,_3e,_3f){
with(_3d){
if(!_selectedTabViewItem){
return;
}
var _40=objj_msgSend(_3d,"indexOfTabViewItem:",_selectedTabViewItem),_41=objj_msgSend(_tabViewItems,"count");
objj_msgSend(_3d,"selectTabViewItemAtIndex:",_40+1%_41);
}
}),new objj_method(sel_getUid("selectPreviousTabViewItem:"),function(_42,_43,_44){
with(_42){
if(!_selectedTabViewItem){
return;
}
var _45=objj_msgSend(_42,"indexOfTabViewItem:",_selectedTabViewItem),_46=objj_msgSend(_tabViewItems,"count");
objj_msgSend(_42,"selectTabViewItemAtIndex:",_45==0?_46:_45-1);
}
}),new objj_method(sel_getUid("selectTabViewItem:"),function(_47,_48,_49){
with(_47){
if((_delegateSelectors&_9)&&!objj_msgSend(_delegate,"tabView:shouldSelectTabViewItem:",_47,_49)){
return;
}
if(_delegateSelectors&_a){
objj_msgSend(_delegate,"tabView:willSelectTabViewItem:",_47,_49);
}
if(_selectedTabViewItem){
_selectedTabViewItem._tabState=CPBackgroundTab;
objj_msgSend(_labelsView,"tabView:didChangeStateOfTabViewItem:",_47,_selectedTabViewItem);
objj_msgSend(_contentView,"removeFromSuperview");
objj_msgSend(_auxiliaryView,"removeFromSuperview");
}
_selectedTabViewItem=_49;
_selectedTabViewItem._tabState=CPSelectedTab;
_contentView=objj_msgSend(_selectedTabViewItem,"view");
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_auxiliaryView=objj_msgSend(_selectedTabViewItem,"auxiliaryView");
objj_msgSend(_auxiliaryView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_47,"addSubview:",_contentView);
if(_auxiliaryView){
objj_msgSend(_47,"addSubview:",_auxiliaryView);
}
objj_msgSend(_labelsView,"tabView:didChangeStateOfTabViewItem:",_47,_selectedTabViewItem);
objj_msgSend(_47,"layoutSubviews");
if(_delegateSelectors&_8){
objj_msgSend(_delegate,"tabView:didSelectTabViewItem:",_47,_49);
}
}
}),new objj_method(sel_getUid("selectTabViewItemAtIndex:"),function(_4a,_4b,_4c){
with(_4a){
objj_msgSend(_4a,"selectTabViewItem:",_tabViewItems[_4c]);
}
}),new objj_method(sel_getUid("selectedTabViewItem"),function(_4d,_4e){
with(_4d){
return _selectedTabViewItem;
}
}),new objj_method(sel_getUid("setTabViewType:"),function(_4f,_50,_51){
with(_4f){
if(_tabViewType==_51){
return;
}
_tabViewType=_51;
if(_tabViewType==CPNoTabsBezelBorder||_tabViewType==CPNoTabsLineBorder||_tabViewType==CPNoTabsNoBorder){
objj_msgSend(_labelsView,"removeFromSuperview");
}else{
if(!objj_msgSend(_labelsView,"superview")){
objj_msgSend(_4f,"addSubview:",_labelsView);
}
}
if(_tabViewType==CPNoTabsLineBorder||_tabViewType==CPNoTabsNoBorder){
objj_msgSend(_backgroundView,"removeFromSuperview");
}else{
if(!objj_msgSend(_backgroundView,"superview")){
objj_msgSend(_4f,"addSubview:",_backgroundView);
}
}
objj_msgSend(_4f,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabViewType"),function(_52,_53){
with(_52){
return _tabViewType;
}
}),new objj_method(sel_getUid("contentRect"),function(_54,_55){
with(_54){
var _56=CGRectMakeCopy(objj_msgSend(_54,"bounds"));
if(_tabViewType==CPTopTabsBezelBorder){
var _57=objj_msgSend(_CPTabLabelsView,"height"),_58=_auxiliaryView?CGRectGetHeight(objj_msgSend(_auxiliaryView,"frame")):5,_59=1;
_56.origin.y+=_57+_58+_59;
_56.size.height-=_57+_58+_59*2;
_56.origin.x+=_6;
_56.size.width-=_6+_7;
}
return _56;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5a,_5b,_5c){
with(_5a){
if(_delegate==_5c){
return;
}
_delegate=_5c;
_delegateSelectors=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:shouldSelectTabViewItem:"))){
_delegateSelectors|=_9;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:willSelectTabViewItem:"))){
_delegateSelectors|=_a;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:didSelectTabViewItem:"))){
_delegateSelectors|=_8;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabViewDidChangeNumberOfTabViewItems:"))){
_delegateSelectors|=_b;
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_5d,_5e,_5f){
with(_5d){
var _60=objj_msgSend(_labelsView,"convertPoint:fromView:",objj_msgSend(_5f,"locationInWindow"),nil),_61=objj_msgSend(_labelsView,"representedTabViewItemAtPoint:",_60);
if(_61){
objj_msgSend(_5d,"selectTabViewItem:",_61);
}
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(_62,_63){
with(_62){
if(_62!=CPTabView){
return;
}
var _64=objj_msgSend(CPBundle,"bundleForClass:",_62),_65=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:","",CGSizeMake(7,0)),_66=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_64,"pathForResource:","CPTabView/CPTabViewBezelBackgroundCenter.png"),CGSizeMake(1,1)),_67=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_64,"pathForResource:","CPTabView/CPTabViewBezelBorderLeft.png"),CGSizeMake(7,1)),_68=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_64,"pathForResource:","CPTabView/CPTabViewBezelBorder.png"),CGSizeMake(1,1)),_69=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_64,"pathForResource:","CPTabView/CPTabViewBezelBorderRight.png"),CGSizeMake(7,1));
_5=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[_65,_65,_65,_67,_66,_69,_67,_68,_69]));
_4=objj_msgSend(CPColor,"colorWithPatternImage:",_68);
}
}),new objj_method(sel_getUid("bezelBorderColor"),function(_6a,_6b){
with(_6a){
return _4;
}
})]);
var _6c="CPTabViewItemsKey",_6d="CPTabViewSelectedItemKey",_6e="CPTabViewTypeKey",_6f="CPTabViewDelegateKey";
var _c=objj_getClass("CPTabView");
if(!_c){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTabView\""));
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("initWithCoder:"),function(_70,_71,_72){
with(_70){
if(_70=objj_msgSendSuper({receiver:_70,super_class:objj_getClass("CPView")},"initWithCoder:",_72)){
_tabViewType=objj_msgSend(_72,"decodeIntForKey:",_6e);
_tabViewItems=[];
objj_msgSend(_70,"_createBezelBorder");
var _73=objj_msgSend(_72,"decodeObjectForKey:",_6c);
for(var i=0;_73&&i<_73.length;i++){
objj_msgSend(_70,"insertTabViewItem:atIndex:",_73[i],i);
}
var _75=objj_msgSend(_72,"decodeObjectForKey:",_6d);
if(_75){
objj_msgSend(_70,"selectTabViewItem:",_75);
}
objj_msgSend(_70,"setDelegate:",objj_msgSend(_72,"decodeObjectForKey:",_6f));
}
return _70;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_76,_77,_78){
with(_76){
var _79=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_76,super_class:objj_getClass("CPView")},"encodeWithCoder:",_78);
_subviews=_79;
objj_msgSend(_78,"encodeObject:forKey:",_tabViewItems,_6c);
objj_msgSend(_78,"encodeObject:forKey:",_selectedTabViewItem,_6d);
objj_msgSend(_78,"encodeInt:forKey:",_tabViewType,_6e);
objj_msgSend(_78,"encodeConditionalObject:forKey:",_delegate,_6f);
}
})]);
var _7a=nil,_7b=10,_7c=15;
var _c=objj_allocateClassPair(CPView,"_CPTabLabelsView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_tabView"),new objj_ivar("_tabLabels")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_7d,_7e,_7f){
with(_7d){
_7d=objj_msgSendSuper({receiver:_7d,super_class:objj_getClass("CPView")},"initWithFrame:",_7f);
if(_7d){
_tabLabels=[];
objj_msgSend(_7d,"setBackgroundColor:",_7a);
objj_msgSend(_7d,"setFrameSize:",CGSizeMake(CGRectGetWidth(_7f),26));
}
return _7d;
}
}),new objj_method(sel_getUid("setTabView:"),function(_80,_81,_82){
with(_80){
_tabView=_82;
}
}),new objj_method(sel_getUid("tabView"),function(_83,_84){
with(_83){
return _tabView;
}
}),new objj_method(sel_getUid("tabView:didAddTabViewItem:"),function(_85,_86,_87,_88){
with(_85){
var _89=objj_msgSend(objj_msgSend(_CPTabLabel,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_89,"setTabViewItem:",_88);
_tabLabels.push(_89);
objj_msgSend(_85,"addSubview:",_89);
objj_msgSend(_85,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabView:didRemoveTabViewItemAtIndex:"),function(_8a,_8b,_8c,_8d){
with(_8a){
var _8e=_tabLabels[_8d];
objj_msgSend(_tabLabels,"removeObjectAtIndex:",_8d);
objj_msgSend(_8e,"removeFromSuperview");
objj_msgSend(_8a,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabView:didChangeStateOfTabViewItem:"),function(_8f,_90,_91,_92){
with(_8f){
objj_msgSend(_tabLabels[objj_msgSend(_91,"indexOfTabViewItem:",_92)],"setTabState:",objj_msgSend(_92,"tabState"));
}
}),new objj_method(sel_getUid("representedTabViewItemAtPoint:"),function(_93,_94,_95){
with(_93){
var _96=0,_97=_tabLabels.length;
for(;_96<_97;++_96){
var _98=_tabLabels[_96];
if(CGRectContainsPoint(objj_msgSend(_98,"frame"),_95)){
return objj_msgSend(_98,"tabViewItem");
}
}
return nil;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_99,_9a){
with(_99){
var _9b=0,_9c=_tabLabels.length,_9d=((objj_msgSend(_99,"bounds").size.width)-(_9c-1)*_7b-2*_7c)/_9c,x=_7c;
for(;_9b<_9c;++_9b){
var _9f=_tabLabels[_9b],_a0={origin:{x:x,y:8},size:{width:_9d,height:18}};
objj_msgSend(_9f,"setFrame:",_a0);
x=(_a0.origin.x+_a0.size.width)+_7b;
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_a1,_a2,_a3){
with(_a1){
if(CGSizeEqualToSize(objj_msgSend(_a1,"frame").size,_a3)){
return;
}
objj_msgSendSuper({receiver:_a1,super_class:objj_getClass("CPView")},"setFrameSize:",_a3);
objj_msgSend(_a1,"layoutSubviews");
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(_a4,_a5){
with(_a4){
if(_a4!=objj_msgSend(_CPTabLabelsView,"class")){
return;
}
var _a6=objj_msgSend(CPBundle,"bundleForClass:",_a4);
_7a=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a6,"pathForResource:","CPTabView/_CPTabLabelsViewLeft.png"),CGSizeMake(12,26)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a6,"pathForResource:","CPTabView/_CPTabLabelsViewCenter.png"),CGSizeMake(1,26)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a6,"pathForResource:","CPTabView/_CPTabLabelsViewRight.png"),CGSizeMake(12,26))],NO));
}
}),new objj_method(sel_getUid("height"),function(_a7,_a8){
with(_a7){
return 26;
}
})]);
var _a9=nil,_aa=nil;
var _c=objj_allocateClassPair(CPView,"_CPTabLabel"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_tabViewItem"),new objj_ivar("_labelField")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_ab,_ac,_ad){
with(_ab){
_ab=objj_msgSendSuper({receiver:_ab,super_class:objj_getClass("CPView")},"initWithFrame:",_ad);
if(_ab){
_labelField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_labelField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_labelField,"setFrame:",CGRectMake(5,0,CGRectGetWidth(_ad)-10,20));
objj_msgSend(_labelField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_labelField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",11));
objj_msgSend(_ab,"addSubview:",_labelField);
objj_msgSend(_ab,"setTabState:",CPBackgroundTab);
}
return _ab;
}
}),new objj_method(sel_getUid("setTabState:"),function(_ae,_af,_b0){
with(_ae){
objj_msgSend(_ae,"setBackgroundColor:",_b0==CPSelectedTab?_aa:_a9);
}
}),new objj_method(sel_getUid("setTabViewItem:"),function(_b1,_b2,_b3){
with(_b1){
_tabViewItem=_b3;
objj_msgSend(_b1,"update");
}
}),new objj_method(sel_getUid("tabViewItem"),function(_b4,_b5){
with(_b4){
return _tabViewItem;
}
}),new objj_method(sel_getUid("update"),function(_b6,_b7){
with(_b6){
objj_msgSend(_labelField,"setStringValue:",objj_msgSend(_tabViewItem,"label"));
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(_b8,_b9){
with(_b8){
if(_b8!=objj_msgSend(_CPTabLabel,"class")){
return;
}
var _ba=objj_msgSend(CPBundle,"bundleForClass:",_b8);
_a9=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelBackgroundLeft.png"),CGSizeMake(6,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelBackgroundCenter.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelBackgroundRight.png"),CGSizeMake(6,18))],NO));
_aa=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelSelectedLeft.png"),CGSizeMake(3,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelSelectedCenter.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelSelectedRight.png"),CGSizeMake(3,18))],NO));
}
})]);
