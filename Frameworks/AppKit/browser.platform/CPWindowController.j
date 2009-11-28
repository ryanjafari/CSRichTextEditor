I;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;13;CPResponder.ji;10;CPWindow.ji;12;CPDocument.jc;9453;
var _1=objj_allocateClassPair(CPResponder,"CPWindowController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_window"),new objj_ivar("_documents"),new objj_ivar("_document"),new objj_ivar("_shouldCloseDocument"),new objj_ivar("_supportsMultipleDocuments"),new objj_ivar("_cibOwner"),new objj_ivar("_windowCibName"),new objj_ivar("_windowCibPath"),new objj_ivar("_viewController"),new objj_ivar("_viewControllerContainerView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithWindow:",nil);
}
}),new objj_method(sel_getUid("initWithWindow:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPResponder")},"init");
if(_5){
objj_msgSend(_5,"setWindow:",_7);
objj_msgSend(_5,"setShouldCloseDocument:",NO);
objj_msgSend(_5,"setNextResponder:",CPApp);
_documents=[];
}
return _5;
}
}),new objj_method(sel_getUid("initWithWindowCibName:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"initWithWindowCibName:owner:",_a,_8);
}
}),new objj_method(sel_getUid("initWithWindowCibName:owner:"),function(_b,_c,_d,_e){
with(_b){
_b=objj_msgSend(_b,"initWithWindow:",nil);
if(_b){
_cibOwner=_e;
_windowCibName=_d;
}
return _b;
}
}),new objj_method(sel_getUid("initWithWindowCibPath:owner:"),function(_f,_10,_11,_12){
with(_f){
_f=objj_msgSend(_f,"initWithWindow:",nil);
if(_f){
_cibOwner=_12;
_windowCibPath=_11;
}
return _f;
}
}),new objj_method(sel_getUid("loadWindow"),function(_13,_14){
with(_13){
if(_window){
return;
}
objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_cibOwner,"class")),"loadCibFile:externalNameTable:",objj_msgSend(_13,"windowCibPath"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_cibOwner,CPCibOwner));
}
}),new objj_method(sel_getUid("showWindow:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSend(_15,"window");
if(objj_msgSend(_18,"respondsToSelector:",sel_getUid("becomesKeyOnlyIfNeeded"))&&objj_msgSend(_18,"becomesKeyOnlyIfNeeded")){
objj_msgSend(_18,"orderFront:",_17);
}else{
objj_msgSend(_18,"makeKeyAndOrderFront:",_17);
}
}
}),new objj_method(sel_getUid("isWindowLoaded"),function(_19,_1a){
with(_19){
return _window!==nil;
}
}),new objj_method(sel_getUid("window"),function(_1b,_1c){
with(_1b){
if(!_window){
objj_msgSend(_1b,"windowWillLoad");
objj_msgSend(_document,"windowControllerWillLoadCib:",_1b);
objj_msgSend(_1b,"loadWindow");
if(_window===nil&&objj_msgSend(_cibOwner,"isKindOfClass:",objj_msgSend(CPDocument,"class"))){
objj_msgSend(_1b,"setWindow:",objj_msgSend(_cibOwner,"valueForKey:","window"));
}
objj_msgSend(_1b,"windowDidLoad");
objj_msgSend(_document,"windowControllerDidLoadCib:",_1b);
objj_msgSend(_1b,"synchronizeWindowTitleWithDocumentName");
}
return _window;
}
}),new objj_method(sel_getUid("setWindow:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_window,"setWindowController:",nil);
_window=_1f;
objj_msgSend(_window,"setWindowController:",_1d);
objj_msgSend(_window,"setNextResponder:",_1d);
}
}),new objj_method(sel_getUid("windowDidLoad"),function(_20,_21){
with(_20){
}
}),new objj_method(sel_getUid("windowWillLoad"),function(_22,_23){
with(_22){
}
}),new objj_method(sel_getUid("setDocument:"),function(_24,_25,_26){
with(_24){
if(_document===_26){
return;
}
var _27=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_document){
if(!objj_msgSend(_24,"supportsMultipleDocuments")){
objj_msgSend(_24,"removeDocument:",_document);
}
objj_msgSend(_27,"removeObserver:name:object:",_24,CPDocumentWillSaveNotification,_document);
objj_msgSend(_27,"removeObserver:name:object:",_24,CPDocumentDidSaveNotification,_document);
objj_msgSend(_27,"removeObserver:name:object:",_24,CPDocumentDidFailToSaveNotification,_document);
}
_document=_26;
if(_document){
objj_msgSend(_24,"addDocument:",_document);
objj_msgSend(_27,"addObserver:selector:name:object:",_24,sel_getUid("_documentWillSave:"),CPDocumentWillSaveNotification,_document);
objj_msgSend(_27,"addObserver:selector:name:object:",_24,sel_getUid("_documentDidSave:"),CPDocumentDidSaveNotification,_document);
objj_msgSend(_27,"addObserver:selector:name:object:",_24,sel_getUid("_documentDidFailToSave:"),CPDocumentDidFailToSaveNotification,_document);
objj_msgSend(_24,"setDocumentEdited:",objj_msgSend(_document,"isDocumentEdited"));
}
var _28=objj_msgSend(_document,"viewControllerForWindowController:",_24);
if(_28){
objj_msgSend(_24,"setViewController:",_28);
}
objj_msgSend(_24,"synchronizeWindowTitleWithDocumentName");
}
}),new objj_method(sel_getUid("setSupportsMultipleDocuments:"),function(_29,_2a,_2b){
with(_29){
_supportsMultipleDocuments=_2b;
}
}),new objj_method(sel_getUid("supportsMultipleDocuments"),function(_2c,_2d){
with(_2c){
return _supportsMultipleDocuments;
}
}),new objj_method(sel_getUid("addDocument:"),function(_2e,_2f,_30){
with(_2e){
if(_30&&!objj_msgSend(_documents,"containsObject:",_30)){
objj_msgSend(_documents,"addObject:",_30);
}
}
}),new objj_method(sel_getUid("removeDocument:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(_documents,"indexOfObjectIdenticalTo:",_33);
if(_34===CPNotFound){
return;
}
objj_msgSend(_documents,"removeObjectAtIndex:",_34);
if(_document===_33&&objj_msgSend(_documents,"count")){
objj_msgSend(_31,"setDocument:",objj_msgSend(_documents,"objectAtIndex:",MIN(_34,objj_msgSend(_documents,"count")-1)));
}
}
}),new objj_method(sel_getUid("removeDocumentAndCloseIfNecessary:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"removeDocument:",_37);
if(!objj_msgSend(_documents,"count")){
objj_msgSend(_35,"close");
}
}
}),new objj_method(sel_getUid("documents"),function(_38,_39){
with(_38){
return _documents;
}
}),new objj_method(sel_getUid("setViewController:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(_3a,"viewControllerContainerView")||objj_msgSend(objj_msgSend(_3a,"window"),"contentView"),_3e=objj_msgSend(_viewController,"view"),_3f=_3e?objj_msgSend(_3e,"frame"):objj_msgSend(_3d,"bounds");
objj_msgSend(_3e,"removeFromSuperview");
_viewController=_3c;
_3e=objj_msgSend(_viewController,"view");
if(_3e){
objj_msgSend(_3e,"setFrame:",_3f);
objj_msgSend(_3d,"addSubview:",_3e);
}
}
}),new objj_method(sel_getUid("setViewControllerContainerView:"),function(_40,_41,_42){
with(_40){
_viewControllerContainerView=_42;
}
}),new objj_method(sel_getUid("viewControllerContainerView"),function(_43,_44){
with(_43){
return _viewControllerContainerView;
}
}),new objj_method(sel_getUid("setViewController:"),function(_45,_46,_47){
with(_45){
var _48=objj_msgSend(_45,"viewControllerContainerView")||objj_msgSend(objj_msgSend(_45,"window"),"contentView"),_49=objj_msgSend(_viewController,"view"),_4a=_49?objj_msgSend(_49,"frame"):objj_msgSend(_48,"bounds");
objj_msgSend(_49,"removeFromSuperview");
_viewController=_47;
_49=objj_msgSend(_viewController,"view");
if(_49){
objj_msgSend(_49,"setFrame:",_4a);
objj_msgSend(_48,"addSubview:",_49);
}
}
}),new objj_method(sel_getUid("viewController"),function(_4b,_4c){
with(_4b){
return _viewController;
}
}),new objj_method(sel_getUid("_documentWillSave:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(objj_msgSend(_4d,"window"),"setDocumentSaving:",YES);
}
}),new objj_method(sel_getUid("_documentDidSave:"),function(_50,_51,_52){
with(_50){
objj_msgSend(objj_msgSend(_50,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("_documentDidFailToSave:"),function(_53,_54,_55){
with(_53){
objj_msgSend(objj_msgSend(_53,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("document"),function(_56,_57){
with(_56){
return _document;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_58,_59,_5a){
with(_58){
objj_msgSend(_58,"_synchronizeDocumentEditedState");
}
}),new objj_method(sel_getUid("_synchronizeDocumentEditedState"),function(_5b,_5c){
with(_5b){
var _5d=objj_msgSend(_5b,"documents"),_5e=objj_msgSend(_5d,"count"),_5f=NO;
while(_5e--){
if(objj_msgSend(_5d[_5e],"isDocumentEdited")){
_5f=YES;
break;
}
}
objj_msgSend(objj_msgSend(_5b,"window"),"setDocumentEdited:",_5f);
}
}),new objj_method(sel_getUid("close"),function(_60,_61){
with(_60){
objj_msgSend(objj_msgSend(_60,"window"),"close");
}
}),new objj_method(sel_getUid("setShouldCloseDocument:"),function(_62,_63,_64){
with(_62){
_shouldCloseDocument=_64;
}
}),new objj_method(sel_getUid("shouldCloseDocument"),function(_65,_66){
with(_65){
return _shouldCloseDocument;
}
}),new objj_method(sel_getUid("owner"),function(_67,_68){
with(_67){
return _cibOwner;
}
}),new objj_method(sel_getUid("windowCibName"),function(_69,_6a){
with(_69){
if(_windowCibName){
return _windowCibName;
}
return objj_msgSend(objj_msgSend(_windowCibPath,"lastPathComponent"),"stringByDeletingPathExtension");
}
}),new objj_method(sel_getUid("windowCibPath"),function(_6b,_6c){
with(_6b){
if(_windowCibPath){
return _windowCibPath;
}
return objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_cibOwner,"class")),"pathForResource:",_windowCibName+".cib");
}
}),new objj_method(sel_getUid("synchronizeWindowTitleWithDocumentName"),function(_6d,_6e){
with(_6d){
if(!_document||!_window){
return;
}
objj_msgSend(_window,"setTitle:",objj_msgSend(_6d,"windowTitleForDocumentDisplayName:",objj_msgSend(_document,"displayName")));
}
}),new objj_method(sel_getUid("windowTitleForDocumentDisplayName:"),function(_6f,_70,_71){
with(_6f){
return _71;
}
})]);
