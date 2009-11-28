I;21;Foundation/CPBundle.ji;17;CPCompatibility.ji;9;CPEvent.ji;8;CPMenu.ji;13;CPResponder.ji;22;CPDocumentController.ji;14;CPThemeBlend.ji;14;CPCibLoading.ji;12;CPPlatform.jc;20966;
var _1="CPMainCibFile",_2="Main cib file base name";
CPApp=nil;
CPApplicationWillFinishLaunchingNotification="CPApplicationWillFinishLaunchingNotification";
CPApplicationDidFinishLaunchingNotification="CPApplicationDidFinishLaunchingNotification";
CPApplicationWillTerminateNotification="CPApplicationWillTerminateNotification";
CPTerminateNow=YES;
CPTerminateCancel=NO;
CPTerminateLater=-1;
CPRunStoppedResponse=-1000;
CPRunAbortedResponse=-1001;
CPRunContinuesResponse=-1002;
var _3=objj_allocateClassPair(CPResponder,"CPApplication"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_eventListeners"),new objj_ivar("_currentEvent"),new objj_ivar("_windows"),new objj_ivar("_keyWindow"),new objj_ivar("_mainWindow"),new objj_ivar("_mainMenu"),new objj_ivar("_documentController"),new objj_ivar("_currentSession"),new objj_ivar("_delegate"),new objj_ivar("_finishedLaunching"),new objj_ivar("_namedArgs"),new objj_ivar("_args"),new objj_ivar("_fullArgsString")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("init"),function(_5,_6){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPResponder")},"init");
if(_5){
_eventListeners=[];
_windows=[];
objj_msgSend(_windows,"addObject:",nil);
_mainMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","MainMenu");
objj_msgSend(_mainMenu,"setAutoenablesItems:",NO);
var _7=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),_8=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","New",sel_getUid("newDocument:"),"N");
objj_msgSend(_8,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/New.png"),CGSizeMake(16,16)));
objj_msgSend(_8,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/NewHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_mainMenu,"addItem:",_8);
var _9=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Open",sel_getUid("openDocument:"),"O");
objj_msgSend(_9,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/Open.png"),CGSizeMake(16,16)));
objj_msgSend(_9,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/OpenHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_mainMenu,"addItem:",_9);
var _a=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Save"),_b=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),nil);
objj_msgSend(_b,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/Save.png"),CGSizeMake(16,16)));
objj_msgSend(_b,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/SaveHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_a,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),"S"));
objj_msgSend(_a,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save As",sel_getUid("saveDocumentAs:"),nil));
objj_msgSend(_b,"setSubmenu:",_a);
objj_msgSend(_mainMenu,"addItem:",_b);
var _c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Edit",nil,nil),_d=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Edit"),_e=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Undo",sel_getUid("undo:"),CPUndoKeyEquivalent),_f=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Redo",sel_getUid("redo:"),CPRedoKeyEquivalent);
objj_msgSend(_e,"setKeyEquivalentModifierMask:",CPUndoKeyEquivalentModifierMask);
objj_msgSend(_f,"setKeyEquivalentModifierMask:",CPRedoKeyEquivalentModifierMask);
objj_msgSend(_d,"addItem:",_e);
objj_msgSend(_d,"addItem:",_f);
objj_msgSend(_d,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Cut",sel_getUid("cut:"),"X")),objj_msgSend(_d,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Copy",sel_getUid("copy:"),"C")),objj_msgSend(_d,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Paste",sel_getUid("paste:"),"V"));
objj_msgSend(_c,"setSubmenu:",_d);
objj_msgSend(_c,"setHidden:",YES);
objj_msgSend(_mainMenu,"addItem:",_c);
objj_msgSend(_mainMenu,"addItem:",objj_msgSend(CPMenuItem,"separatorItem"));
}
return _5;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_10,_11,_12){
with(_10){
if(_delegate==_12){
return;
}
var _13=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_13,"removeObserver:name:object:",_delegate,CPApplicationWillFinishLaunchingNotification,_10);
objj_msgSend(_13,"removeObserver:name:object:",_delegate,CPApplicationDidFinishLaunchingNotification,_10);
}
_delegate=_12;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationWillFinishLaunching:"))){
objj_msgSend(_13,"addObserver:selector:name:object:",_delegate,sel_getUid("applicationWillFinishLaunching:"),CPApplicationWillFinishLaunchingNotification,_10);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationDidFinishLaunching:"))){
objj_msgSend(_13,"addObserver:selector:name:object:",_delegate,sel_getUid("applicationDidFinishLaunching:"),CPApplicationDidFinishLaunchingNotification,_10);
}
}
}),new objj_method(sel_getUid("delegate"),function(_14,_15){
with(_14){
return _delegate;
}
}),new objj_method(sel_getUid("finishLaunching"),function(_16,_17){
with(_16){
var _18=objj_msgSend(CPBundle,"mainBundle"),_19=objj_msgSend(_18,"objectForInfoDictionaryKey:","CPBundleDocumentTypes");
if(objj_msgSend(_19,"count")>0){
_documentController=objj_msgSend(CPDocumentController,"sharedDocumentController");
}
var _1a=objj_msgSend(_18,"objectForInfoDictionaryKey:","CPApplicationDelegateClass");
if(_1a){
var _1b=objj_getClass(_1a);
if(_1b){
if(objj_msgSend(_documentController,"class")==_1b){
objj_msgSend(_16,"setDelegate:",_documentController);
}else{
objj_msgSend(_16,"setDelegate:",objj_msgSend(objj_msgSend(_1b,"alloc"),"init"));
}
}
}
var _1c=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_1c,"postNotificationName:object:",CPApplicationWillFinishLaunchingNotification,_16);
var _1d=window.cpOpeningFilename&&window.cpOpeningFilename(),_1e=!!_documentController;
if(objj_msgSend(_1d,"length")){
_1e=!objj_msgSend(_16,"_openFile:",_1d);
}
if(_1e&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationShouldOpenUntitledFile:"))){
_1e=objj_msgSend(_delegate,"applicationShouldOpenUntitledFile:",_16);
}
if(_1e){
objj_msgSend(_documentController,"newDocument:",_16);
}
objj_msgSend(_documentController,"_updateRecentDocumentsMenu");
objj_msgSend(_1c,"postNotificationName:object:",CPApplicationDidFinishLaunchingNotification,_16);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
_finishedLaunching=YES;
}
}),new objj_method(sel_getUid("terminate:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(objj_msgSend(CPDocumentController,"sharedDocumentController"),"closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:",_1f,sel_getUid("_documentController:didCloseAll:context:"),nil);
}
}),new objj_method(sel_getUid("_documentController:didCloseAll:context:"),function(_22,_23,_24,_25,_26){
with(_22){
if(_25){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationShouldTerminate:"))){
objj_msgSend(_22,"replyToApplicationShouldTerminate:",objj_msgSend(_delegate,"applicationShouldTerminate:",_22));
}else{
objj_msgSend(_22,"replyToApplicationShouldTerminate:",YES);
}
}
}
}),new objj_method(sel_getUid("replyToApplicationShouldTerminate:"),function(_27,_28,_29){
with(_27){
if(_29==CPTerminateNow){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPApplicationWillTerminateNotification,_27);
objj_msgSend(CPPlatform,"terminateApplication");
}
}
}),new objj_method(sel_getUid("activateIgnoringOtherApps:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(CPPlatform,"activateIgnoringOtherApps:",_2c);
}
}),new objj_method(sel_getUid("run"),function(_2d,_2e){
with(_2d){
objj_msgSend(_2d,"finishLaunching");
}
}),new objj_method(sel_getUid("runModalForWindow:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(_2f,"runModalSession:",objj_msgSend(_2f,"beginModalSessionForWindow:",_31));
}
}),new objj_method(sel_getUid("stopModalWithCode:"),function(_32,_33,_34){
with(_32){
if(!_currentSession){
return;
}
_currentSession._state=_34;
_currentSession=_currentSession._previous;
objj_msgSend(_32,"_removeRunModalLoop");
}
}),new objj_method(sel_getUid("_removeRunModalLoop"),function(_35,_36){
with(_35){
var _37=_eventListeners.length;
while(_37--){
if(_eventListeners[_37]._callback===_38){
_eventListeners.splice(_37,1);
return;
}
}
}
}),new objj_method(sel_getUid("stopModal"),function(_39,_3a){
with(_39){
objj_msgSend(_39,"stopModalWithCode:",CPRunStoppedResponse);
}
}),new objj_method(sel_getUid("abortModal"),function(_3b,_3c){
with(_3b){
objj_msgSend(_3b,"stopModalWithCode:",CPRunAbortedResponse);
}
}),new objj_method(sel_getUid("beginModalSessionForWindow:"),function(_3d,_3e,_3f){
with(_3d){
return _40(_3f,0);
}
}),new objj_method(sel_getUid("runModalSession:"),function(_41,_42,_43){
with(_41){
_43._previous=_currentSession;
_currentSession=_43;
var _44=_43._window;
objj_msgSend(_44,"center");
objj_msgSend(_44,"makeKeyAndOrderFront:",_41);
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_38,CPAnyEventMask,nil,0,NO);
}
}),new objj_method(sel_getUid("modalWindow"),function(_45,_46){
with(_45){
if(!_currentSession){
return nil;
}
return _currentSession._window;
}
}),new objj_method(sel_getUid("_handleKeyEquivalent:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(objj_msgSend(_47,"keyWindow"),"performKeyEquivalent:",_49)||objj_msgSend(_mainMenu,"performKeyEquivalent:",_49);
}
}),new objj_method(sel_getUid("sendEvent:"),function(_4a,_4b,_4c){
with(_4a){
_currentEvent=_4c;
if(objj_msgSend(_4c,"_couldBeKeyEquivalent")&&objj_msgSend(_4a,"_handleKeyEquivalent:",_4c)){
objj_msgSend(objj_msgSend(objj_msgSend(_4c,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",NO);
return;
}
if(_eventListeners.length){
if(_eventListeners[_eventListeners.length-1]._mask&(1<<objj_msgSend(_4c,"type"))){
_eventListeners.pop()._callback(_4c);
}
return;
}
objj_msgSend(objj_msgSend(_4c,"window"),"sendEvent:",_4c);
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_4d,_4e,_4f){
with(_4d){
if(objj_msgSend(_delegate,"respondsToSelector:",_4f)){
objj_msgSend(_delegate,"performSelector:",_4f);
}else{
objj_msgSendSuper({receiver:_4d,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_4f);
}
}
}),new objj_method(sel_getUid("keyWindow"),function(_50,_51){
with(_50){
return _keyWindow;
}
}),new objj_method(sel_getUid("mainWindow"),function(_52,_53){
with(_52){
return _mainWindow;
}
}),new objj_method(sel_getUid("windowWithWindowNumber:"),function(_54,_55,_56){
with(_54){
return _windows[_56];
}
}),new objj_method(sel_getUid("windows"),function(_57,_58){
with(_57){
return _windows;
}
}),new objj_method(sel_getUid("mainMenu"),function(_59,_5a){
with(_59){
return _mainMenu;
}
}),new objj_method(sel_getUid("setMainMenu:"),function(_5b,_5c,_5d){
with(_5b){
if(objj_msgSend(_5d,"_menuName")==="CPMainMenu"){
if(_mainMenu===_5d){
return;
}
_mainMenu=_5d;
if(objj_msgSend(CPPlatform,"supportsNativeMainMenu")){
window.cpSetMainMenu(_mainMenu);
}
}else{
objj_msgSend(_5d,"_setMenuName:","CPMainMenu");
}
}
}),new objj_method(sel_getUid("orderFrontColorPanel:"),function(_5e,_5f,_60){
with(_5e){
objj_msgSend(objj_msgSend(CPColorPanel,"sharedColorPanel"),"orderFront:",_5e);
}
}),new objj_method(sel_getUid("orderFrontStandardAboutPanel:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_61,"orderFrontStandardAboutPanelWithOptions:",nil);
}
}),new objj_method(sel_getUid("orderFrontStandardAboutPanelWithOptions:"),function(_64,_65,_66){
with(_64){
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_67,_68,_69,_6a){
with(_67){
if(!_69){
return NO;
}
if(objj_msgSendSuper({receiver:_67,super_class:objj_getClass("CPResponder")},"tryToPerform:with:",_69,_6a)){
return YES;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_69)){
objj_msgSend(_delegate,"performSelector:withObject:",_69,_6a);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("sendAction:to:from:"),function(_6b,_6c,_6d,_6e,_6f){
with(_6b){
var _70=objj_msgSend(_6b,"targetForAction:to:from:",_6d,_6e,_6f);
if(!_70){
return NO;
}
objj_msgSend(_70,"performSelector:withObject:",_6d,_6f);
return YES;
}
}),new objj_method(sel_getUid("targetForAction:to:from:"),function(_71,_72,_73,_74,_75){
with(_71){
if(!_73){
return nil;
}
if(_74){
return _74;
}
return objj_msgSend(_71,"targetForAction:",_73);
}
}),new objj_method(sel_getUid("_targetForWindow:action:"),function(_76,_77,_78,_79){
with(_76){
var _7a=objj_msgSend(_78,"firstResponder"),_7b=YES;
while(_7a){
if(objj_msgSend(_7a,"respondsToSelector:",_79)){
return _7a;
}
if(_7a==_78){
_7b=NO;
}
_7a=objj_msgSend(_7a,"nextResponder");
}
if(_7b&&objj_msgSend(_78,"respondsToSelector:",_79)){
return _78;
}
var _7c=objj_msgSend(_78,"delegate");
if(objj_msgSend(_7c,"respondsToSelector:",_79)){
return _7c;
}
var _7d=objj_msgSend(_78,"windowController");
if(objj_msgSend(_7d,"respondsToSelector:",_79)){
return _7d;
}
var _7e=objj_msgSend(_7d,"document");
if(_7e!=_7c&&objj_msgSend(_7e,"respondsToSelector:",_79)){
return _7e;
}
return nil;
}
}),new objj_method(sel_getUid("targetForAction:"),function(_7f,_80,_81){
with(_7f){
if(!_81){
return nil;
}
var _82=objj_msgSend(_7f,"_targetForWindow:action:",objj_msgSend(_7f,"keyWindow"),_81);
if(_82){
return _82;
}
_82=objj_msgSend(_7f,"_targetForWindow:action:",objj_msgSend(_7f,"mainWindow"),_81);
if(_82){
return _82;
}
if(objj_msgSend(_7f,"respondsToSelector:",_81)){
return _7f;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_81)){
return _delegate;
}
if(objj_msgSend(_documentController,"respondsToSelector:",_81)){
return _documentController;
}
return nil;
}
}),new objj_method(sel_getUid("setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_83,_84,_85,_86,_87,_88,_89){
with(_83){
_eventListeners.push(_8a(_86,_85));
if(_eventListeners.length==3){
objj_debug_print_backtrace();
}
}
}),new objj_method(sel_getUid("setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_8b,_8c,_8d,_8e,_8f,_90,_91,_92){
with(_8b){
_eventListeners.push(_8a(_8f,function(_93){
objj_msgSend(_8d,_8e,_93);
}));
}
}),new objj_method(sel_getUid("currentEvent"),function(_94,_95){
with(_94){
return _currentEvent;
}
}),new objj_method(sel_getUid("beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_96,_97,_98,_99,_9a,_9b,_9c){
with(_96){
var _9d=objj_msgSend(_98,"styleMask");
if(!(_9d&CPDocModalWindowMask)){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Currently only CPDocModalWindowMask style mask is supported for attached sheets");
return;
}
objj_msgSend(_99,"_attachSheet:modalDelegate:didEndSelector:contextInfo:",_98,_9a,_9b,_9c);
}
}),new objj_method(sel_getUid("endSheet:returnCode:"),function(_9e,_9f,_a0,_a1){
with(_9e){
var _a2=objj_msgSend(_windows,"count");
while(--_a2>=0){
var _a3=objj_msgSend(_windows,"objectAtIndex:",_a2);
var _a4=_a3._sheetContext;
if(_a4!=nil&&_a4["sheet"]===_a0){
_a4["returnCode"]=_a1;
objj_msgSend(_a3,"_detachSheetWindow");
return;
}
}
}
}),new objj_method(sel_getUid("endSheet:"),function(_a5,_a6,_a7){
with(_a5){
objj_msgSend(_a5,"endSheet:returnCode:",_a7,0);
}
}),new objj_method(sel_getUid("arguments"),function(_a8,_a9){
with(_a8){
if(_fullArgsString!=window.location.hash){
objj_msgSend(_a8,"_reloadArguments");
}
return _args;
}
}),new objj_method(sel_getUid("setArguments:"),function(_aa,_ab,_ac){
with(_aa){
if(!_ac||_ac.length==0){
_args=[];
window.location.hash="#";
return;
}
if(objj_msgSend(_ac,"class")!=CPArray){
_ac=objj_msgSend(CPArray,"arrayWithObject:",_ac);
}
_args=_ac;
var _ad=objj_msgSend(_args,"copy");
for(var i=0,_af=_ad.length;i<_af;i++){
_ad[i]=encodeURIComponent(_ad[i]);
}
var _b0=objj_msgSend(_ad,"componentsJoinedByString:","/");
window.location.hash="#"+_b0;
}
}),new objj_method(sel_getUid("_reloadArguments"),function(_b1,_b2){
with(_b1){
_fullArgsString=window.location.hash;
var _b3=_fullArgsString.replace("#","").split("/").slice(0);
for(var i=0,_b5=_b3.length;i<_b5;i++){
_b3[i]=decodeURIComponent(_b3[i]);
}
_args=_b3;
}
}),new objj_method(sel_getUid("namedArguments"),function(_b6,_b7){
with(_b6){
return _namedArgs;
}
}),new objj_method(sel_getUid("_openFile:"),function(_b8,_b9,_ba){
with(_b8){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("application:openFile:"))){
return objj_msgSend(_delegate,"application:openFile:",_b8,_ba);
}else{
return objj_msgSend(_documentController,"openDocumentWithContentsOfURL:display:error:",_ba,YES,NULL);
}
}
}),new objj_method(sel_getUid("_didResignActive"),function(_bb,_bc){
with(_bb){
if(_bb._activeMenu){
objj_msgSend(_bb._activeMenu,"cancelTracking");
}
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedApplication"),function(_bd,_be){
with(_bd){
if(!CPApp){
CPApp=objj_msgSend(objj_msgSend(CPApplication,"alloc"),"init");
}
return CPApp;
}
})]);
var _40=function(_bf,_c0){
return {_window:_bf,_state:CPRunContinuesResponse,_previous:nil};
};
var _8a=function(_c1,_c2){
return {_mask:_c1,_callback:_c2};
};
var _38=function(_c3){
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_38,CPAnyEventMask,nil,0,NO);
var _c4=objj_msgSend(_c3,"window"),_c5=CPApp._currentSession;
if(_c4==_c5._window||objj_msgSend(_c4,"worksWhenModal")){
objj_msgSend(_c4,"sendEvent:",_c3);
}
};
CPApplicationMain=function(_c6,_c7){
var _c8=objj_msgSend(CPBundle,"mainBundle"),_c9=objj_msgSend(_c8,"principalClass");
if(!_c9){
_c9=objj_msgSend(CPApplication,"class");
}
objj_msgSend(_c9,"sharedApplication");
if(!_c6){
var _c6=objj_msgSend(CPApp,"arguments");
if(objj_msgSend(_c6,"containsObject:","debug")){
CPLogRegister(CPLogPopup);
}
}
if(!_c7){
var _ca=window.location.search.substring(1).split("&");
_c7=objj_msgSend(CPDictionary,"dictionary");
for(var i=0;i<_ca.length;i++){
var _cc=_ca[i].indexOf("=");
if(_cc==-1){
objj_msgSend(_c7,"setObject:forKey:","",_ca[i]);
}else{
objj_msgSend(_c7,"setObject:forKey:",_ca[i].substring(_cc+1),_ca[i].substring(0,_cc));
}
}
}
CPApp._args=_c6;
CPApp._namedArgs=_c7;
objj_msgSend(_CPAppBootstrapper,"performActions");
};
var _cd=nil;
var _3=objj_allocateClassPair(CPObject,"_CPAppBootstrapper"),_4=_3.isa;
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("actions"),function(_ce,_cf){
with(_ce){
return [sel_getUid("bootstrapPlatform"),sel_getUid("loadDefaultTheme"),sel_getUid("loadMainCibFile")];
}
}),new objj_method(sel_getUid("performActions"),function(_d0,_d1){
with(_d0){
if(!_cd){
_cd=objj_msgSend(_d0,"actions");
}
while(_cd.length){
var _d2=_cd.shift();
if(objj_msgSend(_d0,_d2)){
return;
}
}
objj_msgSend(CPApp,"run");
}
}),new objj_method(sel_getUid("bootstrapPlatform"),function(_d3,_d4){
with(_d3){
return objj_msgSend(CPPlatform,"bootstrap");
}
}),new objj_method(sel_getUid("loadDefaultTheme"),function(_d5,_d6){
with(_d5){
var _d7=objj_msgSend(objj_msgSend(CPThemeBlend,"alloc"),"initWithContentsOfURL:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),"pathForResource:","Aristo.blend"));
objj_msgSend(_d7,"loadWithDelegate:",_d5);
return YES;
}
}),new objj_method(sel_getUid("blendDidFinishLoading:"),function(_d8,_d9,_da){
with(_d8){
objj_msgSend(CPTheme,"setDefaultTheme:",objj_msgSend(CPTheme,"themeNamed:","Aristo"));
objj_msgSend(_d8,"performActions");
}
}),new objj_method(sel_getUid("loadMainCibFile"),function(_db,_dc){
with(_db){
var _dd=objj_msgSend(CPBundle,"mainBundle"),_de=objj_msgSend(_dd,"objectForInfoDictionaryKey:",_1)||objj_msgSend(_dd,"objectForInfoDictionaryKey:",_2);
if(_de){
objj_msgSend(_dd,"loadCibFile:externalNameTable:loadDelegate:",_de,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPApp,CPCibOwner),_db);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("cibDidFinishLoading:"),function(_df,_e0,_e1){
with(_df){
objj_msgSend(_df,"performActions");
}
})]);
