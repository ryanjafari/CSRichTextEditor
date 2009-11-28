I;16;AppKit/CPPanel.jc;2075;
var _1=objj_allocateClassPair(CPPanel,"CPOpenPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_canChooseFiles"),new objj_ivar("_canChooseDirectories"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_directoryURL"),new objj_ivar("_URLs")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("canChooseFiles"),function(_3,_4){
with(_3){
return _canChooseFiles;
}
}),new objj_method(sel_getUid("setCanChooseFiles:"),function(_5,_6,_7){
with(_5){
_canChooseFiles=_7;
}
}),new objj_method(sel_getUid("canChooseDirectories"),function(_8,_9){
with(_8){
return _canChooseDirectories;
}
}),new objj_method(sel_getUid("setCanChooseDirectories:"),function(_a,_b,_c){
with(_a){
_canChooseDirectories=_c;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_d,_e){
with(_d){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_f,_10,_11){
with(_f){
_allowsMultipleSelection=_11;
}
}),new objj_method(sel_getUid("directoryURL"),function(_12,_13){
with(_12){
return _directoryURL;
}
}),new objj_method(sel_getUid("setDirectoryURL:"),function(_14,_15,_16){
with(_14){
_directoryURL=_16;
}
}),new objj_method(sel_getUid("runModal"),function(_17,_18){
with(_17){
if(typeof window["cpOpenPanel"]==="function"){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
var _19={directoryURL:objj_msgSend(_17,"directoryURL"),canChooseFiles:objj_msgSend(_17,"canChooseFiles"),canChooseDirectories:objj_msgSend(_17,"canChooseDirectories"),allowsMultipleSelection:objj_msgSend(_17,"allowsMultipleSelection")};
var _1a=window.cpOpenPanel(_19);
_URLs=_1a.URLs;
return _1a.button;
}
throw "-runModal is unimplemented.";
}
}),new objj_method(sel_getUid("URLs"),function(_1b,_1c){
with(_1b){
return _URLs;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("openPanel"),function(_1d,_1e){
with(_1d){
return objj_msgSend(objj_msgSend(CPOpenPanel,"alloc"),"init");
}
})]);
