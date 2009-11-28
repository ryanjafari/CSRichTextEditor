I;25;Foundation/CPDictionary.jI;21;Foundation/CPObject.jI;29;Foundation/CPSortDescriptor.jI;21;Foundation/CPString.ji;19;CPTableHeaderView.jc;8673;
CPTableColumnNoResizing=0;
CPTableColumnAutoresizingMask=1;
CPTableColumnUserResizingMask=2;
var _1=objj_allocateClassPair(CPObject,"CPTableColumn"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_tableView"),new objj_ivar("_headerView"),new objj_ivar("_dataView"),new objj_ivar("_dataViewData"),new objj_ivar("_width"),new objj_ivar("_minWidth"),new objj_ivar("_maxWidth"),new objj_ivar("_identifier"),new objj_ivar("_isEditable"),new objj_ivar("_sortDescriptorPrototype"),new objj_ivar("_isHidden"),new objj_ivar("_headerToolTip")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithIdentifier:","");
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_dataViewData={};
_width=100;
_minWidth=10;
_maxWidth=1000000;
objj_msgSend(_5,"setIdentifier:",_7);
objj_msgSend(_5,"setHeaderView:",objj_msgSend(CPTextField,"new"));
objj_msgSend(_5,"setDataView:",objj_msgSend(CPTextField,"new"));
}
return _5;
}
}),new objj_method(sel_getUid("setTableView:"),function(_8,_9,_a){
with(_8){
_tableView=_a;
}
}),new objj_method(sel_getUid("tableView"),function(_b,_c){
with(_b){
return _tableView;
}
}),new objj_method(sel_getUid("setWidth:"),function(_d,_e,_f){
with(_d){
_f=+_f;
if(_width===_f){
return;
}
var _10=MIN(MAX(_f,objj_msgSend(_d,"minWidth")),objj_msgSend(_d,"maxWidth"));
if(_width===_10){
return;
}
var _11=_width;
_width=_10;
var _12=objj_msgSend(_d,"tableView");
if(_12){
var _13=objj_msgSend(objj_msgSend(_12,"tableColumns"),"indexOfObjectIdenticalTo:",_d);
_12._reloadAllRows=YES;
_12._dirtyTableColumnRangeIndex=_12._dirtyTableColumnRangeIndex<0?_13:MIN(_13,_12._dirtyTableColumnRangeIndex);
objj_msgSend(_12,"tile");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewColumnDidResizeNotification,_12,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_d,_11],["CPTableColumn","CPOldWidth"]));
}
}
}),new objj_method(sel_getUid("width"),function(_14,_15){
with(_14){
return _width;
}
}),new objj_method(sel_getUid("setMinWidth:"),function(_16,_17,_18){
with(_16){
_18=+_18;
if(_minWidth===_18){
return;
}
_minWidth=_18;
var _19=objj_msgSend(_16,"width"),_1a=MAX(_19,objj_msgSend(_16,"minWidth"));
if(_19!==_1a){
objj_msgSend(_16,"setWidth:",_1a);
}
}
}),new objj_method(sel_getUid("minWidth"),function(_1b,_1c){
with(_1b){
return _minWidth;
}
}),new objj_method(sel_getUid("setMaxWidth:"),function(_1d,_1e,_1f){
with(_1d){
_1f=+_1f;
if(_maxWidth===_1f){
return;
}
_maxWidth=_1f;
var _20=objj_msgSend(_1d,"width"),_21=MAX(_20,objj_msgSend(_1d,"maxWidth"));
if(_20!==_21){
objj_msgSend(_1d,"setWidth:",_21);
}
}
}),new objj_method(sel_getUid("maxWidth"),function(_22,_23){
with(_22){
return _maxWidth;
}
}),new objj_method(sel_getUid("setResizingMask:"),function(_24,_25,_26){
with(_24){
_resizingMask=_26;
}
}),new objj_method(sel_getUid("resizingMask"),function(_27,_28){
with(_27){
return _resizingMask;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_29,_2a){
with(_29){
var _2b=_CGRectGetWidth(objj_msgSend(_headerView,"frame"));
if(_2b<objj_msgSend(_29,"minWidth")){
objj_msgSend(_29,"setMinWidth:",_2b);
}else{
if(_2b>objj_msgSend(_29,"maxWidth")){
objj_msgSend(_29,"setMaxWidth:",_2b);
}
}
if(_width!==_2b){
objj_msgSend(_29,"setWidth:",_2b);
}
}
}),new objj_method(sel_getUid("setHeaderView:"),function(_2c,_2d,_2e){
with(_2c){
if(!_2e){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Attempt to set nil header view on "+objj_msgSend(_2c,"description"));
}
_headerView=_2e;
var _2f=objj_msgSend(_tableView,"headerView");
objj_msgSend(_2f,"setNeedsLayout");
objj_msgSend(_2f,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("headerView"),function(_30,_31){
with(_30){
return _headerView;
}
}),new objj_method(sel_getUid("setDataView:"),function(_32,_33,_34){
with(_32){
if(_dataView===_34){
return;
}
if(_dataView){
_dataViewData[objj_msgSend(_dataView,"UID")]=nil;
}
_dataView=_34;
_dataViewData[objj_msgSend(_34,"UID")]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_34);
}
}),new objj_method(sel_getUid("dataView"),function(_35,_36){
with(_35){
return _dataView;
}
}),new objj_method(sel_getUid("dataViewForRow:"),function(_37,_38,_39){
with(_37){
return objj_msgSend(_37,"dataView");
}
}),new objj_method(sel_getUid("_newDataViewForRow:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(_3a,"dataViewForRow:",_3c),_3e=objj_msgSend(_3d,"UID");
var x=objj_msgSend(_3a,"tableView")._cachedDataViews[_3e];
if(x&&x.length){
return x.pop();
}
if(!_dataViewData[_3e]){
_dataViewData[_3e]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_3d);
}
var _40=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_dataViewData[_3e]);
_40.identifier=_3e;
return _40;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_41,_42,_43){
with(_41){
_identifier=_43;
}
}),new objj_method(sel_getUid("identifier"),function(_44,_45){
with(_44){
return _identifier;
}
}),new objj_method(sel_getUid("setEditable:"),function(_46,_47,_48){
with(_46){
_isEditable=_48;
}
}),new objj_method(sel_getUid("isEditable"),function(_49,_4a){
with(_49){
return _isEditable;
}
}),new objj_method(sel_getUid("setSortDescriptorPrototype:"),function(_4b,_4c,_4d){
with(_4b){
_sortDescriptorPrototype=_4d;
}
}),new objj_method(sel_getUid("sortDescriptorPrototype"),function(_4e,_4f){
with(_4e){
return _sortDescriptorPrototype;
}
}),new objj_method(sel_getUid("setHidden:"),function(_50,_51,_52){
with(_50){
_isHidden=_52;
}
}),new objj_method(sel_getUid("isHidden"),function(_53,_54){
with(_53){
return _isHidden;
}
}),new objj_method(sel_getUid("setHeaderToolTip:"),function(_55,_56,_57){
with(_55){
_headerToolTip=_57;
}
}),new objj_method(sel_getUid("headerToolTip"),function(_58,_59){
with(_58){
return _headerToolTip;
}
})]);
var _5a="CPTableColumnIdentifierKey",_5b="CPTableColumnHeaderViewKey",_5c="CPTableColumnDataViewKey",_5d="CPTableColumnWidthKey",_5e="CPTableColumnMinWidthKey",_5f="CPTableColumnMaxWidthKey",_60="CPTableColumnResizingMaskKey";
var _1=objj_getClass("CPTableColumn");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTableColumn\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_61,_62,_63){
with(_61){
_61=objj_msgSendSuper({receiver:_61,super_class:objj_getClass("CPObject")},"init");
if(_61){
_dataViewData={};
_width=objj_msgSend(_63,"decodeFloatForKey:",_5d);
_minWidth=objj_msgSend(_63,"decodeFloatForKey:",_5e);
_maxWidth=objj_msgSend(_63,"decodeFloatForKey:",_5f);
objj_msgSend(_61,"setIdentifier:",objj_msgSend(_63,"decodeObjectForKey:",_5a));
objj_msgSend(_61,"setHeaderView:",objj_msgSend(CPTextField,"new"));
objj_msgSend(_61,"setDataView:",objj_msgSend(CPTextField,"new"));
}
return _61;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_64,_65,_66){
with(_64){
objj_msgSend(_66,"encodeObject:forKey:",_identifier,_5a);
objj_msgSend(_66,"encodeObject:forKey:",_width,_5d);
objj_msgSend(_66,"encodeObject:forKey:",_minWidth,_5e);
objj_msgSend(_66,"encodeObject:forKey:",_maxWidth,_5f);
}
})]);
var _1=objj_getClass("CPTableColumn");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTableColumn\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setHeaderCell:"),function(_67,_68,_69){
with(_67){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"setHeaderCell: is not supported. -setHeaderCell:aView instead.");
}
}),new objj_method(sel_getUid("headerCell"),function(_6a,_6b){
with(_6a){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"headCell is not supported. -headerView instead.");
}
}),new objj_method(sel_getUid("setDataCell:"),function(_6c,_6d,_6e){
with(_6c){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"setDataCell: is not supported. Use -setHeaderCell:aView instead.");
}
}),new objj_method(sel_getUid("dataCell"),function(_6f,_70){
with(_6f){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataCell is not supported. Use -dataCell instead.");
}
}),new objj_method(sel_getUid("dataCellForRow:"),function(_71,_72,row){
with(_71){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataCellForRow: is not supported. Use -dataViewForRow:row instead.");
}
})]);
