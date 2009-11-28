I;21;Foundation/CPObject.jI;21;Foundation/CPBundle.ji;12;CPDocument.ji;13;CPOpenPanel.jc;9456;
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPDocumentController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_documents"),new objj_ivar("_documentTypes")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_documents=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
if(!_1){
_1=_4;
}
_documentTypes=objj_msgSend(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"infoDictionary"),"objectForKey:","CPBundleDocumentTypes");
}
return _4;
}
}),new objj_method(sel_getUid("documentForURL:"),function(_6,_7,_8){
with(_6){
var _9=0,_a=objj_msgSend(_documents,"count");
for(;_9<_a;++_9){
var _b=_documents[_9];
if(objj_msgSend(objj_msgSend(_b,"fileURL"),"isEqual:",_8)){
return _b;
}
}
return nil;
}
}),new objj_method(sel_getUid("openUntitledDocumentOfType:display:"),function(_c,_d,_e,_f){
with(_c){
var _10=objj_msgSend(_c,"makeUntitledDocumentOfType:error:",_e,nil);
if(_10){
objj_msgSend(_c,"addDocument:",_10);
}
if(_f){
objj_msgSend(_10,"makeWindowControllers");
objj_msgSend(_10,"showWindows");
}
return _10;
}
}),new objj_method(sel_getUid("makeUntitledDocumentOfType:error:"),function(_11,_12,_13,_14){
with(_11){
return objj_msgSend(objj_msgSend(objj_msgSend(_11,"documentClassForType:",_13),"alloc"),"initWithType:error:",_13,_14);
}
}),new objj_method(sel_getUid("openDocumentWithContentsOfURL:display:error:"),function(_15,_16,_17,_18,_19){
with(_15){
var _1a=objj_msgSend(_15,"documentForURL:",_17);
if(!_1a){
var _1b=objj_msgSend(_15,"typeForContentsOfURL:error:",_17,_19);
_1a=objj_msgSend(_15,"makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_17,_1b,_15,sel_getUid("document:didRead:contextInfo:"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_18,"shouldDisplay"));
if(_1a){
objj_msgSend(_15,"noteNewRecentDocument:",_1a);
}
}else{
if(_18){
objj_msgSend(_1a,"showWindows");
}
}
return _1a;
}
}),new objj_method(sel_getUid("reopenDocumentForURL:withContentsOfURL:error:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
return objj_msgSend(_1c,"makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_1e,_1f,objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),_1c,sel_getUid("document:didRead:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_21,_22,_23,_24,_25,_26,_27){
with(_21){
return objj_msgSend(objj_msgSend(objj_msgSend(_21,"documentClassForType:",_24),"alloc"),"initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_23,_24,_25,_26,_27);
}
}),new objj_method(sel_getUid("makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_28,_29,_2a,_2b,_2c,_2d,_2e,_2f){
with(_28){
return objj_msgSend(objj_msgSend(objj_msgSend(_28,"documentClassForType:",_2c),"alloc"),"initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_2a,_2b,_2c,_2d,_2e,_2f);
}
}),new objj_method(sel_getUid("document:didRead:contextInfo:"),function(_30,_31,_32,_33,_34){
with(_30){
if(!_33){
return;
}
objj_msgSend(_30,"addDocument:",_32);
objj_msgSend(_32,"makeWindowControllers");
if(objj_msgSend(_34,"objectForKey:","shouldDisplay")){
objj_msgSend(_32,"showWindows");
}
}
}),new objj_method(sel_getUid("newDocument:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"openUntitledDocumentOfType:display:",objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),YES);
}
}),new objj_method(sel_getUid("openDocument:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(CPOpenPanel,"openPanel");
objj_msgSend(_3b,"runModal");
var _3c=objj_msgSend(_3b,"URLs"),_3d=0,_3e=objj_msgSend(_3c,"count");
for(;_3d<_3e;++_3d){
objj_msgSend(_38,"openDocumentWithContentsOfURL:display:error:",objj_msgSend(CPURL,"URLWithString:",_3c[_3d]),YES,nil);
}
}
}),new objj_method(sel_getUid("documents"),function(_3f,_40){
with(_3f){
return _documents;
}
}),new objj_method(sel_getUid("addDocument:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_documents,"addObject:",_43);
}
}),new objj_method(sel_getUid("removeDocument:"),function(_44,_45,_46){
with(_44){
objj_msgSend(_documents,"removeObjectIdenticalTo:",_46);
}
}),new objj_method(sel_getUid("defaultType"),function(_47,_48){
with(_47){
return objj_msgSend(_documentTypes[0],"objectForKey:","CPBundleTypeName");
}
}),new objj_method(sel_getUid("typeForContentsOfURL:error:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=0,_4e=_documentTypes.length,_4f=objj_msgSend(objj_msgSend(_4b,"pathExtension"),"lowercaseString");
for(;_4d<_4e;++_4d){
var _50=_documentTypes[_4d],_51=objj_msgSend(_50,"objectForKey:","CFBundleTypeExtensions"),_52=0,_53=_51.length;
for(;_52<_53;++_52){
if(objj_msgSend(_51[_52],"lowercaseString")==_4f){
return objj_msgSend(_50,"objectForKey:","CPBundleTypeName");
}
}
}
return objj_msgSend(_49,"defaultType");
}
}),new objj_method(sel_getUid("_infoForType:"),function(_54,_55,_56){
with(_54){
var i=0,_58=objj_msgSend(_documentTypes,"count");
for(;i<_58;++i){
var _59=_documentTypes[i];
if(objj_msgSend(_59,"objectForKey:","CPBundleTypeName")==_56){
return _59;
}
}
return nil;
}
}),new objj_method(sel_getUid("documentClassForType:"),function(_5a,_5b,_5c){
with(_5a){
var _5d=objj_msgSend(objj_msgSend(_5a,"_infoForType:",_5c),"objectForKey:","CPDocumentClass");
return _5d?CPClassFromString(_5d):nil;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDocumentController"),function(_5e,_5f){
with(_5e){
if(!_1){
objj_msgSend(objj_msgSend(_5e,"alloc"),"init");
}
return _1;
}
})]);
var _2=objj_getClass("CPDocumentController");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPDocumentController\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:"),function(_60,_61,_62,_63,_64){
with(_60){
var _65={delegate:_62,selector:_63,context:_64};
objj_msgSend(_60,"_closeDocumentsStartingWith:shouldClose:context:",nil,YES,_65);
}
}),new objj_method(sel_getUid("_closeDocumentsStartingWith:shouldClose:context:"),function(_66,_67,_68,_69,_6a){
with(_66){
if(_69){
objj_msgSend(_68,"close");
if(objj_msgSend(objj_msgSend(_66,"documents"),"count")>0){
objj_msgSend(objj_msgSend(objj_msgSend(_66,"documents"),"lastObject"),"canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:",_66,sel_getUid("_closeDocumentsStartingWith:shouldClose:context:"),_6a);
return;
}
}
if(objj_msgSend(_6a.delegate,"respondsToSelector:",_6a.selector)){
objj_msgSend(_6a.delegate,_6a.selector,_66,objj_msgSend(objj_msgSend(_66,"documents"),"count")===0,_6a.context);
}
}
})]);
var _2=objj_getClass("CPDocumentController");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPDocumentController\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("recentDocumentURLs"),function(_6b,_6c){
with(_6b){
if(typeof window["cpRecentDocumentURLs"]==="function"){
return window.cpRecentDocumentURLs();
}
return [];
}
}),new objj_method(sel_getUid("clearRecentDocuments:"),function(_6d,_6e,_6f){
with(_6d){
if(typeof window["cpClearRecentDocuments"]==="function"){
window.cpClearRecentDocuments();
}
objj_msgSend(_6d,"_updateRecentDocumentsMenu");
}
}),new objj_method(sel_getUid("noteNewRecentDocument:"),function(_70,_71,_72){
with(_70){
objj_msgSend(_70,"noteNewRecentDocumentURL:",objj_msgSend(objj_msgSend(_72,"fileURL"),"absoluteString"));
}
}),new objj_method(sel_getUid("noteNewRecentDocumentURL:"),function(_73,_74,_75){
with(_73){
if(typeof window["cpNoteNewRecentDocumentPath"]==="function"){
window.cpNoteNewRecentDocumentPath(_75);
}
objj_msgSend(_73,"_updateRecentDocumentsMenu");
}
}),new objj_method(sel_getUid("_removeAllRecentDocumentsFromMenu:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_78,"itemArray"),_7a=objj_msgSend(_79,"count");
while(_7a--){
var _7b=_79[_7a];
if(objj_msgSend(_7b,"action")===sel_getUid("_openRecentDocument:")){
objj_msgSend(_78,"removeItemAtIndex:",_7a);
}
}
}
}),new objj_method(sel_getUid("_updateRecentDocumentsMenu"),function(_7c,_7d){
with(_7c){
var _7e=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"_menuWithName:","_CPRecentDocumentsMenu"),_7f=objj_msgSend(_7c,"recentDocumentURLs"),_80=objj_msgSend(_7e,"itemArray"),_81=objj_msgSend(_7f,"count"),_82=objj_msgSend(_80,"count");
objj_msgSend(_7c,"_removeAllRecentDocumentsFromMenu:",_7e);
if(_82){
if(!_81){
if(objj_msgSend(_80[0],"isSeparatorItem")){
objj_msgSend(_7e,"removeItemAtIndex:",0);
}
}else{
if(!objj_msgSend(_80[0],"isSeparatorItem")){
objj_msgSend(_7e,"insertItem:atIndex:",objj_msgSend(CPMenuItem,"separatorItem"),0);
}
}
}
while(_81--){
var _83=_7f[_81],_84=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",objj_msgSend(_83,"lastPathComponent"),sel_getUid("_openRecentDocument:"),nil);
objj_msgSend(_84,"setTag:",_83);
objj_msgSend(_7e,"insertItem:atIndex:",_84,0);
}
}
}),new objj_method(sel_getUid("_openRecentDocument:"),function(_85,_86,_87){
with(_85){
objj_msgSend(_85,"openDocumentWithContentsOfURL:display:error:",objj_msgSend(_87,"tag"),YES,nil);
}
})]);
