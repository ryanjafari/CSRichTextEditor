I;16;AppKit/CPPanel.jc;953;
var _1=objj_allocateClassPair(CPPanel,"CPSavePanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_URL")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("runModal"),function(_3,_4){
with(_3){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
if(typeof window["cpSavePanel"]==="function"){
var _5=window.cpSavePanel(),_6=_5.button;
_URL=_6?objj_msgSend(CPURL,"URLWithString:",_5.URL):nil;
}else{
var _7=window.prompt("Document Name:"),_6=_7!==null;
_URL=_6?objj_msgSend(objj_msgSend(_3,"class"),"proposedFileURLWithDocumentName:",_7):nil;
}
return _6;
}
}),new objj_method(sel_getUid("URL"),function(_8,_9){
with(_8){
return _URL;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("savePanel"),function(_a,_b){
with(_a){
return objj_msgSend(objj_msgSend(CPSavePanel,"alloc"),"init");
}
})]);
