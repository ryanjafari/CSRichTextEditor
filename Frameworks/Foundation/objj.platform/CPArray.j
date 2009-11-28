i;10;CPObject.ji;9;CPRange.ji;14;CPEnumerator.ji;18;CPSortDescriptor.ji;13;CPException.jc;18177;
var _1=objj_allocateClassPair(CPEnumerator,"_CPArrayEnumerator"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_array"),new objj_ivar("_index")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithArray:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPEnumerator")},"init");
if(_3){
_array=_5;
_index=-1;
}
return _3;
}
}),new objj_method(sel_getUid("nextObject"),function(_6,_7){
with(_6){
if(++_index>=objj_msgSend(_array,"count")){
return nil;
}
return objj_msgSend(_array,"objectAtIndex:",_index);
}
})]);
var _1=objj_allocateClassPair(CPEnumerator,"_CPReverseArrayEnumerator"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_array"),new objj_ivar("_index")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithArray:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPEnumerator")},"init");
if(_8){
_array=_a;
_index=objj_msgSend(_array,"count");
}
return _8;
}
}),new objj_method(sel_getUid("nextObject"),function(_b,_c){
with(_b){
if(--_index<0){
return nil;
}
return objj_msgSend(_array,"objectAtIndex:",_index);
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPArray"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
return _d;
}
}),new objj_method(sel_getUid("initWithArray:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPObject")},"init");
if(_f){
objj_msgSend(_f,"setArray:",_11);
}
return _f;
}
}),new objj_method(sel_getUid("initWithArray:copyItems:"),function(_12,_13,_14,_15){
with(_12){
if(!_15){
return objj_msgSend(_12,"initWithArray:",_14);
}
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPObject")},"init");
if(_12){
var _16=0,_17=objj_msgSend(_14,"count");
for(;_16<_17;++i){
if(_14[i].isa){
_12[i]=objj_msgSend(_14,"copy");
}else{
_12[i]=_14;
}
}
}
return _12;
}
}),new objj_method(sel_getUid("initWithObjects:"),function(_18,_19,_1a){
with(_18){
var i=2,_1c;
for(;i<arguments.length&&(_1c=arguments[i])!=nil;++i){
push(_1c);
}
return _18;
}
}),new objj_method(sel_getUid("initWithObjects:count:"),function(_1d,_1e,_1f,_20){
with(_1d){
_1d=objj_msgSendSuper({receiver:_1d,super_class:objj_getClass("CPObject")},"init");
if(_1d){
var _21=0;
for(;_21<_20;++_21){
push(_1f[_21]);
}
}
return _1d;
}
}),new objj_method(sel_getUid("containsObject:"),function(_22,_23,_24){
with(_22){
return objj_msgSend(_22,"indexOfObject:",_24)!=CPNotFound;
}
}),new objj_method(sel_getUid("count"),function(_25,_26){
with(_25){
return length;
}
}),new objj_method(sel_getUid("indexOfObject:"),function(_27,_28,_29){
with(_27){
if(_29===nil){
return CPNotFound;
}
var i=0,_2b=length;
if(_29.isa){
for(;i<_2b;++i){
if(objj_msgSend(_27[i],"isEqual:",_29)){
return i;
}
}
}else{
if(_27.indexOf){
return indexOf(_29);
}else{
for(;i<_2b;++i){
if(_27[i]==_29){
return i;
}
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_2c,_2d,_2e,_2f){
with(_2c){
if(_2e===nil){
return CPNotFound;
}
var i=_2f.location,_31=MIN(CPMaxRange(_2f),length);
if(_2e.isa){
for(;i<_31;++i){
if(objj_msgSend(_2c[i],"isEqual:",_2e)){
return i;
}
}
}else{
for(;i<_31;++i){
if(_2c[i]==_2e){
return i;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:"),function(_32,_33,_34){
with(_32){
if(_34===nil){
return CPNotFound;
}
if(_32.indexOf){
return indexOf(_34);
}else{
var _35=0,_36=length;
for(;_35<_36;++_35){
if(_32[_35]==_34){
return _35;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_37,_38,_39,_3a){
with(_37){
if(_39===nil){
return CPNotFound;
}
if(_37.indexOf){
var _3b=indexOf(_39,_3a.location);
if(CPLocationInRange(_3b,_3a)){
return _3b;
}
}else{
var _3b=_3a.location,_3c=MIN(CPMaxRange(_3a),length);
for(;_3b<_3c;++_3b){
if(_37[_3b]==_39){
return _3b;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:sortedBySelector:"),function(_3d,_3e,_3f,_40){
with(_3d){
return objj_msgSend(_3d,"indexOfObject:sortedByFunction:",_3f,function(lhs,rhs){
objj_msgSend(lhs,_40,rhs);
});
}
}),new objj_method(sel_getUid("indexOfObject:sortedByFunction:"),function(_43,_44,_45,_46){
with(_43){
return objj_msgSend(_43,"indexOfObject:sortedByFunction:context:",_45,_46,nil);
}
}),new objj_method(sel_getUid("indexOfObject:sortedByFunction:context:"),function(_47,_48,_49,_4a,_4b){
with(_47){
if(!_4a||_49===undefined){
return CPNotFound;
}
var mid,c,_4e=0,_4f=length-1;
while(_4e<=_4f){
mid=FLOOR((_4e+_4f)/2);
c=_4a(_49,_47[mid],_4b);
if(c>0){
_4e=mid+1;
}else{
if(c<0){
_4f=mid-1;
}else{
while(mid<length-1&&_4a(_49,_47[mid+1],_4b)==CPOrderedSame){
mid++;
}
return mid;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:sortedByDescriptors:"),function(_50,_51,_52,_53){
with(_50){
return objj_msgSend(_50,"indexOfObject:sortedByFunction:",_52,function(lhs,rhs){
var i=0,_57=objj_msgSend(_53,"count"),_58=CPOrderedSame;
while(i<_57){
if((_58=objj_msgSend(_53[i++],"compareObject:withObject:",lhs,rhs))!=CPOrderedSame){
return _58;
}
}
return _58;
});
}
}),new objj_method(sel_getUid("lastObject"),function(_59,_5a){
with(_59){
var _5b=objj_msgSend(_59,"count");
if(!_5b){
return nil;
}
return _59[_5b-1];
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_5c,_5d,_5e){
with(_5c){
if(_5e>=length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"index ("+_5e+") beyond bounds ("+length+")");
}
return _5c[_5e];
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_5f,_60,_61){
with(_5f){
var _62=objj_msgSend(_61,"firstIndex"),_63=[];
while(_62!=CPNotFound){
objj_msgSend(_63,"addObject:",_5f[_62]);
_62=objj_msgSend(_61,"indexGreaterThanIndex:",_62);
}
return _63;
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_64,_65){
with(_64){
return objj_msgSend(objj_msgSend(_CPArrayEnumerator,"alloc"),"initWithArray:",_64);
}
}),new objj_method(sel_getUid("reverseObjectEnumerator"),function(_66,_67){
with(_66){
return objj_msgSend(objj_msgSend(_CPReverseArrayEnumerator,"alloc"),"initWithArray:",_66);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:"),function(_68,_69,_6a){
with(_68){
if(!_6a){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector: 'aSelector' can't be nil");
}
var _6b=0,_6c=length;
for(;_6b<_6c;++_6b){
objj_msgSend(_68[_6b],_6a);
}
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"),function(_6d,_6e,_6f,_70){
with(_6d){
if(!_6f){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector:withObject 'aSelector' can't be nil");
}
var _71=0,_72=length;
for(;_71<_72;++_71){
objj_msgSend(_6d[_71],_6f,_70);
}
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"),function(_73,_74,_75,_76){
with(_73){
if(!_75){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");
}
var _77=0,_78=length,_79=[nil,_75].concat(_76||[]);
for(;_77<_78;++_77){
_79[0]=_73[_77];
objj_msgSend.apply(this,_79);
}
}
}),new objj_method(sel_getUid("firstObjectCommonWithArray:"),function(_7a,_7b,_7c){
with(_7a){
if(!objj_msgSend(_7c,"count")||!objj_msgSend(_7a,"count")){
return nil;
}
var i=0,_7e=objj_msgSend(_7a,"count");
for(;i<_7e;++i){
if(objj_msgSend(_7c,"containsObject:",_7a[i])){
return _7a[i];
}
}
return nil;
}
}),new objj_method(sel_getUid("isEqualToArray:"),function(_7f,_80,_81){
with(_7f){
if(_7f===_81){
return YES;
}
if(length!=_81.length){
return NO;
}
var _82=0,_83=objj_msgSend(_7f,"count");
for(;_82<_83;++_82){
var lhs=_7f[_82],rhs=_81[_82];
if(lhs!==rhs&&(!lhs.isa||!rhs.isa||!objj_msgSend(lhs,"isEqual:",rhs))){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_86,_87,_88){
with(_86){
if(_86===_88){
return YES;
}
if(!objj_msgSend(_88,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
return NO;
}
return objj_msgSend(_86,"isEqualToArray:",_88);
}
}),new objj_method(sel_getUid("arrayByAddingObject:"),function(_89,_8a,_8b){
with(_89){
if(_8b===nil||_8b===undefined){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"arrayByAddingObject: object can't be nil");
}
var _8c=objj_msgSend(_89,"copy");
_8c.push(_8b);
return _8c;
}
}),new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"),function(_8d,_8e,_8f){
with(_8d){
return slice(0).concat(_8f);
}
}),new objj_method(sel_getUid("subarrayWithRange:"),function(_90,_91,_92){
with(_90){
if(_92.location<0||CPMaxRange(_92)>length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"subarrayWithRange: aRange out of bounds");
}
return slice(_92.location,CPMaxRange(_92));
}
}),new objj_method(sel_getUid("sortedArrayUsingDescriptors:"),function(_93,_94,_95){
with(_93){
var _96=objj_msgSend(_93,"copy");
objj_msgSend(_96,"sortUsingDescriptors:",_95);
return _96;
}
}),new objj_method(sel_getUid("sortedArrayUsingFunction:"),function(_97,_98,_99){
with(_97){
return objj_msgSend(_97,"sortedArrayUsingFunction:context:",_99,nil);
}
}),new objj_method(sel_getUid("sortedArrayUsingFunction:context:"),function(_9a,_9b,_9c,_9d){
with(_9a){
var _9e=objj_msgSend(_9a,"copy");
objj_msgSend(_9e,"sortUsingFunction:context:",_9c,_9d);
return _9e;
}
}),new objj_method(sel_getUid("sortedArrayUsingSelector:"),function(_9f,_a0,_a1){
with(_9f){
var _a2=objj_msgSend(_9f,"copy");
objj_msgSend(_a2,"sortUsingSelector:",_a1);
return _a2;
}
}),new objj_method(sel_getUid("componentsJoinedByString:"),function(_a3,_a4,_a5){
with(_a3){
return join(_a5);
}
}),new objj_method(sel_getUid("description"),function(_a6,_a7){
with(_a6){
var _a8=0,_a9=objj_msgSend(_a6,"count"),_aa="(";
for(;_a8<_a9;++_a8){
var _ab=_a6[_a8];
if(_ab&&_ab.isa){
_aa+=objj_msgSend(_ab,"description");
}else{
_aa+=_ab;
}
if(_a8!==_a9-1){
_aa+=", ";
}
}
return _aa+")";
}
}),new objj_method(sel_getUid("pathsMatchingExtensions:"),function(_ac,_ad,_ae){
with(_ac){
var _af=0,_b0=objj_msgSend(_ac,"count"),_b1=[];
for(;_af<_b0;++_af){
if(_ac[_af].isa&&objj_msgSend(_ac[_af],"isKindOfClass:",objj_msgSend(CPString,"class"))&&objj_msgSend(_ae,"containsObject:",objj_msgSend(_ac[_af],"pathExtension"))){
_b1.push(_ac[_af]);
}
}
return _b1;
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_b2,_b3,_b4,_b5){
with(_b2){
var i=0,_b7=objj_msgSend(_b2,"count");
for(;i<_b7;++i){
objj_msgSend(_b2[i],"setValue:forKey:",_b4,_b5);
}
}
}),new objj_method(sel_getUid("valueForKey:"),function(_b8,_b9,_ba){
with(_b8){
var i=0,_bc=objj_msgSend(_b8,"count"),_bd=[];
for(;i<_bc;++i){
_bd.push(objj_msgSend(_b8[i],"valueForKey:",_ba));
}
return _bd;
}
}),new objj_method(sel_getUid("copy"),function(_be,_bf){
with(_be){
return slice(0);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_c0,_c1){
with(_c0){
return [];
}
}),new objj_method(sel_getUid("array"),function(_c2,_c3){
with(_c2){
return objj_msgSend(objj_msgSend(_c2,"alloc"),"init");
}
}),new objj_method(sel_getUid("arrayWithArray:"),function(_c4,_c5,_c6){
with(_c4){
return objj_msgSend(objj_msgSend(_c4,"alloc"),"initWithArray:",_c6);
}
}),new objj_method(sel_getUid("arrayWithObject:"),function(_c7,_c8,_c9){
with(_c7){
return objj_msgSend(objj_msgSend(_c7,"alloc"),"initWithObjects:",_c9);
}
}),new objj_method(sel_getUid("arrayWithObjects:"),function(_ca,_cb,_cc){
with(_ca){
var i=2,_ce=objj_msgSend(objj_msgSend(_ca,"alloc"),"init"),_cf;
for(;i<arguments.length&&(_cf=arguments[i])!=nil;++i){
_ce.push(_cf);
}
return _ce;
}
}),new objj_method(sel_getUid("arrayWithObjects:count:"),function(_d0,_d1,_d2,_d3){
with(_d0){
return objj_msgSend(objj_msgSend(_d0,"alloc"),"initWithObjects:count:",_d2,_d3);
}
})]);
var _1=objj_getClass("CPArray");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPArray\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCapacity:"),function(_d4,_d5,_d6){
with(_d4){
return _d4;
}
}),new objj_method(sel_getUid("addObject:"),function(_d7,_d8,_d9){
with(_d7){
push(_d9);
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_da,_db,_dc){
with(_da){
splice.apply(_da,[length,0].concat(_dc));
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_dd,_de,_df,_e0){
with(_dd){
splice(_e0,0,_df);
}
}),new objj_method(sel_getUid("insertObjects:atIndexes:"),function(_e1,_e2,_e3,_e4){
with(_e1){
var _e5=objj_msgSend(_e4,"count"),_e6=objj_msgSend(_e3,"count");
if(_e5!==_e6){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"the counts of the passed-in array ("+_e6+") and index set ("+_e5+") must be identical.");
}
var _e7=objj_msgSend(_e4,"lastIndex");
if(_e7>=objj_msgSend(_e1,"count")+_e5){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"the last index ("+_e7+") must be less than the sum of the original count ("+objj_msgSend(_e1,"count")+") and the insertion count ("+_e5+").");
}
var _e8=0,_e9=objj_msgSend(_e4,"firstIndex");
for(;_e8<_e6;++_e8,_e9=objj_msgSend(_e4,"indexGreaterThanIndex:",_e9)){
objj_msgSend(_e1,"insertObject:atIndex:",_e3[_e8],_e9);
}
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_ea,_eb,_ec,_ed){
with(_ea){
_ea[_ec]=_ed;
}
}),new objj_method(sel_getUid("replaceObjectsAtIndexes:withObjects:"),function(_ee,_ef,_f0,_f1){
with(_ee){
var i=0,_f3=objj_msgSend(_f0,"firstIndex");
while(_f3!=CPNotFound){
objj_msgSend(_ee,"replaceObjectAtIndex:withObject:",_f3,_f1[i++]);
_f3=objj_msgSend(_f0,"indexGreaterThanIndex:",_f3);
}
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"),function(_f4,_f5,_f6,_f7,_f8){
with(_f4){
if(!_f8.location&&_f8.length==objj_msgSend(_f7,"count")){
objj_msgSend(_f4,"replaceObjectsInRange:withObjectsFromArray:",_f6,_f7);
}else{
splice.apply(_f4,[_f6.location,_f6.length].concat(objj_msgSend(_f7,"subarrayWithRange:",_f8)));
}
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:"),function(_f9,_fa,_fb,_fc){
with(_f9){
splice.apply(_f9,[_fb.location,_fb.length].concat(_fc));
}
}),new objj_method(sel_getUid("setArray:"),function(_fd,_fe,_ff){
with(_fd){
if(_fd==_ff){
return;
}
splice.apply(_fd,[0,length].concat(_ff));
}
}),new objj_method(sel_getUid("removeAllObjects"),function(self,_cmd){
with(self){
splice(0,length);
}
}),new objj_method(sel_getUid("removeLastObject"),function(self,_cmd){
with(self){
pop();
}
}),new objj_method(sel_getUid("removeObject:"),function(self,_cmd,_106){
with(self){
objj_msgSend(self,"removeObject:inRange:",_106,CPMakeRange(0,length));
}
}),new objj_method(sel_getUid("removeObject:inRange:"),function(self,_cmd,_109,_10a){
with(self){
var _10b;
while((_10b=objj_msgSend(self,"indexOfObject:inRange:",_109,_10a))!=CPNotFound){
objj_msgSend(self,"removeObjectAtIndex:",_10b);
_10a=CPIntersectionRange(CPMakeRange(_10b,length-_10b),_10a);
}
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(self,_cmd,_10e){
with(self){
splice(_10e,1);
}
}),new objj_method(sel_getUid("removeObjectsAtIndexes:"),function(self,_cmd,_111){
with(self){
var _112=objj_msgSend(_111,"lastIndex");
while(_112!=CPNotFound){
objj_msgSend(self,"removeObjectAtIndex:",_112);
_112=objj_msgSend(_111,"indexLessThanIndex:",_112);
}
}
}),new objj_method(sel_getUid("removeObjectIdenticalTo:"),function(self,_cmd,_115){
with(self){
objj_msgSend(self,"removeObjectIdenticalTo:inRange:",_115,CPMakeRange(0,length));
}
}),new objj_method(sel_getUid("removeObjectIdenticalTo:inRange:"),function(self,_cmd,_118,_119){
with(self){
var _11a;
while((_11a=objj_msgSend(self,"indexOfObjectIdenticalTo:inRange:",_118,_119))!=CPNotFound){
objj_msgSend(self,"removeObjectAtIndex:",_11a);
_119=CPIntersectionRange(CPMakeRange(_11a,length-_11a),_119);
}
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(self,_cmd,_11d){
with(self){
var _11e=0,_11f=objj_msgSend(_11d,"count");
for(;_11e<_11f;++_11e){
objj_msgSend(self,"removeObject:",_11d[_11e]);
}
}
}),new objj_method(sel_getUid("removeObjectsInRange:"),function(self,_cmd,_122){
with(self){
splice(_122.location,_122.length);
}
}),new objj_method(sel_getUid("exchangeObjectAtIndex:withObjectAtIndex:"),function(self,_cmd,_125,_126){
with(self){
var _127=self[_125];
self[_125]=self[_126];
self[_126]=_127;
}
}),new objj_method(sel_getUid("sortUsingDescriptors:"),function(self,_cmd,_12a){
with(self){
sort(function(lhs,rhs){
var i=0,_12e=objj_msgSend(_12a,"count"),_12f=CPOrderedSame;
while(i<_12e){
if((_12f=objj_msgSend(_12a[i++],"compareObject:withObject:",lhs,rhs))!=CPOrderedSame){
return _12f;
}
}
return _12f;
});
}
}),new objj_method(sel_getUid("sortUsingFunction:context:"),function(self,_cmd,_132,_133){
with(self){
sort(function(lhs,rhs){
return _132(lhs,rhs,_133);
});
}
}),new objj_method(sel_getUid("sortUsingSelector:"),function(self,_cmd,_138){
with(self){
sort(function(lhs,rhs){
return objj_msgSend(lhs,_138,rhs);
});
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("arrayWithCapacity:"),function(self,_cmd,_13d){
with(self){
return objj_msgSend(objj_msgSend(self,"alloc"),"initWithCapacity:",_13d);
}
})]);
var _1=objj_getClass("CPArray");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPArray\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(self,_cmd,_140){
with(self){
return objj_msgSend(_140,"decodeObjectForKey:","CP.objects");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_cmd,_143){
with(self){
objj_msgSend(_143,"_encodeArrayOfObjects:forKey:",self,"CP.objects");
}
})]);
var _1=objj_allocateClassPair(CPArray,"CPMutableArray"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
Array.prototype.isa=CPArray;
objj_msgSend(CPArray,"initialize");
