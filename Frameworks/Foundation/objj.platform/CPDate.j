i;10;CPObject.ji;10;CPString.jc;3472;
var _1=new Date(Date.UTC(2001,1,1,0,0,0,0));
var _2=objj_allocateClassPair(CPObject,"CPDate"),_3=_2.isa;
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithTimeIntervalSinceNow:"),function(_4,_5,_6){
with(_4){
_4=new Date((new Date()).getTime()+_6*1000);
return _4;
}
}),new objj_method(sel_getUid("initWithTimeIntervalSince1970:"),function(_7,_8,_9){
with(_7){
_7=new Date(_9*1000);
return _7;
}
}),new objj_method(sel_getUid("initWithTimeIntervalSinceReferenceDate:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSend(_a,"initWithTimeInterval:sinceDate:",_c,_1);
return _a;
}
}),new objj_method(sel_getUid("initWithTimeInterval:sinceDate:"),function(_d,_e,_f,_10){
with(_d){
_d=new Date(_10.getTime()+_f*1000);
return _d;
}
}),new objj_method(sel_getUid("initWithString:"),function(_11,_12,_13){
with(_11){
_11=new Date(_13);
return _11;
}
}),new objj_method(sel_getUid("timeIntervalSinceDate:"),function(_14,_15,_16){
with(_14){
return (_14.getTime()-_16.getTime())/1000;
}
}),new objj_method(sel_getUid("timeIntervalSinceNow"),function(_17,_18){
with(_17){
return objj_msgSend(_17,"timeIntervalSinceDate:",objj_msgSend(CPDate,"date"));
}
}),new objj_method(sel_getUid("timeIntervalSince1970"),function(_19,_1a){
with(_19){
return _19.getTime()/1000;
}
}),new objj_method(sel_getUid("timeIntervalSinceReferenceDate"),function(_1b,_1c){
with(_1b){
return (_1b.getTime()-_1.getTime())/1000;
}
}),new objj_method(sel_getUid("isEqual:"),function(_1d,_1e,_1f){
with(_1d){
return objj_msgSend(_1d,"isEqualToDate:",_1f);
}
}),new objj_method(sel_getUid("isEqualToDate:"),function(_20,_21,_22){
with(_20){
return !(_20<_22||_20>_22);
}
}),new objj_method(sel_getUid("compare:"),function(_23,_24,_25){
with(_23){
return (_23>_25)?CPOrderedDescending:((_23<_25)?CPOrderedAscending:CPOrderedSame);
}
}),new objj_method(sel_getUid("earlierDate:"),function(_26,_27,_28){
with(_26){
return (_26<_28)?_26:_28;
}
}),new objj_method(sel_getUid("laterDate:"),function(_29,_2a,_2b){
with(_29){
return (_29>_2b)?_29:_2b;
}
}),new objj_method(sel_getUid("description"),function(_2c,_2d){
with(_2c){
return _2c.toString();
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("alloc"),function(_2e,_2f){
with(_2e){
return new Date;
}
}),new objj_method(sel_getUid("date"),function(_30,_31){
with(_30){
return objj_msgSend(objj_msgSend(_30,"alloc"),"init");
}
}),new objj_method(sel_getUid("dateWithTimeIntervalSinceNow:"),function(_32,_33,_34){
with(_32){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSinceNow:",_34);
}
}),new objj_method(sel_getUid("dateWithTimeIntervalSince1970:"),function(_35,_36,_37){
with(_35){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_37);
}
}),new objj_method(sel_getUid("dateWithTimeIntervalSinceReferenceDate:"),function(_38,_39,_3a){
with(_38){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSinceReferenceDate:",_3a);
}
}),new objj_method(sel_getUid("distantPast"),function(_3b,_3c){
with(_3b){
return new Date(-10000,1,1,0,0,0,0);
}
}),new objj_method(sel_getUid("distantFuture"),function(_3d,_3e){
with(_3d){
return new Date(10000,1,1,0,0,0,0);
}
}),new objj_method(sel_getUid("timeIntervalSinceReferenceDate"),function(_3f,_40){
with(_3f){
return objj_msgSend(objj_msgSend(CPDate,"date"),"timeIntervalSinceReferenceDate");
}
})]);
Date.prototype.isa=CPDate;
