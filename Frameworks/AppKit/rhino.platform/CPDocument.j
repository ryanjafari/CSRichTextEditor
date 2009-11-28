I;21;Foundation/CPString.jI;20;Foundation/CPArray.ji;13;CPResponder.ji;13;CPSavePanel.ji;18;CPViewController.ji;20;CPWindowController.jc;18570;
CPSaveOperation=0;
CPSaveAsOperation=1;
CPSaveToOperation=2;
CPAutosaveOperation=3;
CPChangeDone=0;
CPChangeUndone=1;
CPChangeCleared=2;
CPChangeReadOtherContents=3;
CPChangeAutosaved=4;
CPDocumentWillSaveNotification="CPDocumentWillSaveNotification";
CPDocumentDidSaveNotification="CPDocumentDidSaveNotification";
CPDocumentDidFailToSaveNotification="CPDocumentDidFailToSaveNotification";
var _1=0;
var _2=objj_allocateClassPair(CPResponder,"CPDocument"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_window"),new objj_ivar("_view"),new objj_ivar("_viewControllersForWindowControllers"),new objj_ivar("_fileURL"),new objj_ivar("_fileType"),new objj_ivar("_windowControllers"),new objj_ivar("_untitledDocumentIndex"),new objj_ivar("_hasUndoManager"),new objj_ivar("_undoManager"),new objj_ivar("_changeCount"),new objj_ivar("_readConnection"),new objj_ivar("_writeRequest"),new objj_ivar("_canCloseAlert")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPResponder")},"init");
if(_4){
_windowControllers=[];
_viewControllersForWindowControllers=objj_msgSend(CPDictionary,"dictionary");
_hasUndoManager=YES;
_changeCount=0;
objj_msgSend(_4,"setNextResponder:",CPApp);
}
return _4;
}
}),new objj_method(sel_getUid("initWithType:error:"),function(_6,_7,_8,_9){
with(_6){
_6=objj_msgSend(_6,"init");
if(_6){
objj_msgSend(_6,"setFileType:",_8);
}
return _6;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_a,_b,_c,_d,_e,_f,_10){
with(_a){
_a=objj_msgSend(_a,"init");
if(_a){
objj_msgSend(_a,"setFileURL:",_c);
objj_msgSend(_a,"setFileType:",_d);
objj_msgSend(_a,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_c,_d,_e,_f,_10);
}
return _a;
}
}),new objj_method(sel_getUid("initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_11,_12,_13,_14,_15,_16,_17,_18){
with(_11){
_11=objj_msgSend(_11,"init");
if(_11){
objj_msgSend(_11,"setFileURL:",_13);
objj_msgSend(_11,"setFileType:",_15);
objj_msgSend(_11,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_14,_15,_16,_17,_18);
}
return _11;
}
}),new objj_method(sel_getUid("dataOfType:error:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataOfType:error: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("readFromData:ofType:error:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"readFromData:ofType: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("viewControllerWillLoadCib:"),function(_22,_23,_24){
with(_22){
}
}),new objj_method(sel_getUid("viewControllerDidLoadCib:"),function(_25,_26,_27){
with(_25){
}
}),new objj_method(sel_getUid("firstEligibleExistingWindowController"),function(_28,_29){
with(_28){
return nil;
}
}),new objj_method(sel_getUid("makeWindowControllers"),function(_2a,_2b){
with(_2a){
objj_msgSend(_2a,"makeViewAndWindowControllers");
}
}),new objj_method(sel_getUid("makeViewAndWindowControllers"),function(_2c,_2d){
with(_2c){
var _2e=objj_msgSend(_2c,"viewCibName"),_2f=nil,_30=nil;
if(objj_msgSend(_2e,"length")){
_2f=objj_msgSend(objj_msgSend(CPViewController,"alloc"),"initWithCibName:bundle:owner:",_2e,nil,_2c);
}
if(_2f){
_30=objj_msgSend(_2c,"firstEligibleExistingWindowController");
}
if(!_30){
var _31=objj_msgSend(_2c,"windowCibName");
if(objj_msgSend(_31,"length")){
_30=objj_msgSend(objj_msgSend(CPWindowController,"alloc"),"initWithWindowCibName:owner:",_31,_2c);
}else{
if(_2f){
var _32=objj_msgSend(_2f,"view"),_33=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(_32,"frame"),CPTitledWindowMask|CPClosableWindowMask|CPMiniaturizableWindowMask|CPResizableWindowMask);
_30=objj_msgSend(objj_msgSend(CPWindowController,"alloc"),"initWithWindow:",_33);
}
}
}
if(_30&&_2f){
objj_msgSend(_30,"setSupportsMultipleDocuments:",YES);
}
if(_30){
objj_msgSend(_2c,"addWindowController:",_30);
}
if(_2f){
objj_msgSend(_2c,"addViewController:forWindowController:",_2f,_30);
}
}
}),new objj_method(sel_getUid("windowControllers"),function(_34,_35){
with(_34){
return _windowControllers;
}
}),new objj_method(sel_getUid("addWindowController:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_windowControllers,"addObject:",_38);
if(objj_msgSend(_38,"document")!==_36){
objj_msgSend(_38,"setDocument:",_36);
}
}
}),new objj_method(sel_getUid("removeWindowController:"),function(_39,_3a,_3b){
with(_39){
if(_3b){
objj_msgSend(_windowControllers,"removeObject:",_3b);
}
if(objj_msgSend(_3b,"document")===_39){
objj_msgSend(_3b,"setDocument:",nil);
}
}
}),new objj_method(sel_getUid("view"),function(_3c,_3d){
with(_3c){
return _view;
}
}),new objj_method(sel_getUid("viewControllers"),function(_3e,_3f){
with(_3e){
return objj_msgSend(_viewControllersForWindowControllers,"allValues");
}
}),new objj_method(sel_getUid("addViewController:forWindowController:"),function(_40,_41,_42,_43){
with(_40){
objj_msgSend(_viewControllersForWindowControllers,"setObject:forKey:",_42,objj_msgSend(_43,"UID"));
if(objj_msgSend(_43,"document")===_40){
objj_msgSend(_43,"setViewController:",_42);
}
}
}),new objj_method(sel_getUid("removeViewController:"),function(_44,_45,_46){
with(_44){
objj_msgSend(_viewControllersForWindowControllers,"removeObject:",_46);
}
}),new objj_method(sel_getUid("viewControllerForWindowController:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(_viewControllersForWindowControllers,"objectForKey:",objj_msgSend(_49,"UID"));
}
}),new objj_method(sel_getUid("showWindows"),function(_4a,_4b){
with(_4a){
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocument:"),_4a);
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("showWindow:"),_4a);
}
}),new objj_method(sel_getUid("displayName"),function(_4c,_4d){
with(_4c){
if(_fileURL){
return objj_msgSend(_fileURL,"lastPathComponent");
}
if(!_untitledDocumentIndex){
_untitledDocumentIndex=++_1;
}
if(_untitledDocumentIndex==1){
return "Untitled";
}
return "Untitled "+_untitledDocumentIndex;
}
}),new objj_method(sel_getUid("viewCibName"),function(_4e,_4f){
with(_4e){
return nil;
}
}),new objj_method(sel_getUid("windowCibName"),function(_50,_51){
with(_50){
return nil;
}
}),new objj_method(sel_getUid("windowControllerDidLoadCib:"),function(_52,_53,_54){
with(_52){
}
}),new objj_method(sel_getUid("windowControllerWillLoadCib:"),function(_55,_56,_57){
with(_55){
}
}),new objj_method(sel_getUid("readFromURL:ofType:delegate:didReadSelector:contextInfo:"),function(_58,_59,_5a,_5b,_5c,_5d,_5e){
with(_58){
objj_msgSend(_readConnection,"cancel");
_readConnection=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_5a),_58);
_readConnection.session=_5f(_5b,_5c,_5d,_5e);
}
}),new objj_method(sel_getUid("fileURL"),function(_60,_61){
with(_60){
return _fileURL;
}
}),new objj_method(sel_getUid("setFileURL:"),function(_62,_63,_64){
with(_62){
if(_fileURL===_64){
return;
}
_fileURL=_64;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:",sel_getUid("synchronizeWindowTitleWithDocumentName"));
}
}),new objj_method(sel_getUid("saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:"),function(_65,_66,_67,_68,_69,_6a,_6b,_6c){
with(_65){
var _6d=objj_msgSend(_65,"dataOfType:error:",objj_msgSend(_65,"fileType"),nil),_6e=_changeCount;
_writeRequest=objj_msgSend(CPURLRequest,"requestWithURL:",_67);
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_writeRequest,"setHTTPMethod:","POST");
}else{
objj_msgSend(_writeRequest,"setHTTPMethod:","PUT");
}
objj_msgSend(_writeRequest,"setHTTPBody:",objj_msgSend(_6d,"string"));
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","close","Connection");
if(_69==CPSaveOperation){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
}
if(_69!=CPSaveToOperation){
objj_msgSend(_65,"updateChangeCount:",CPChangeCleared);
}
var _6f=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_writeRequest,_65);
_6f.session=_70(_67,_69,_6e,_6a,_6b,_6c,_6f);
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_71,_72,_73,_74){
with(_71){
if(!objj_msgSend(_74,"isKindOfClass:",objj_msgSend(CPHTTPURLResponse,"class"))){
return;
}
var _75=objj_msgSend(_74,"statusCode");
if(_75===200){
return;
}
var _76=_73.session;
if(_73==_readConnection){
objj_msgSend(_73,"cancel");
alert("There was an error retrieving the document.");
objj_msgSend(_76.delegate,_76.didReadSelector,_71,NO,_76.contextInfo);
}else{
if(_75==409){
objj_msgSend(_73,"cancel");
if(confirm("There already exists a file with that name, would you like to overwrite it?")){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
objj_msgSend(_73,"start");
}else{
if(_76.saveOperation!=CPSaveToOperation){
_changeCount+=_76.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_71,"isDocumentEdited"));
}
_writeRequest=nil;
objj_msgSend(_76.delegate,_76.didSaveSelector,_71,NO,_76.contextInfo);
objj_msgSend(_71,"_sendDocumentSavedNotification:",NO);
}
}
}
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_77,_78,_79,_7a){
with(_77){
var _7b=_79.session;
if(_79==_readConnection){
objj_msgSend(_77,"readFromData:ofType:error:",objj_msgSend(CPData,"dataWithString:",_7a),_7b.fileType,nil);
objj_msgSend(_7b.delegate,_7b.didReadSelector,_77,YES,_7b.contextInfo);
}else{
if(_7b.saveOperation!=CPSaveToOperation){
objj_msgSend(_77,"setFileURL:",_7b.absoluteURL);
}
_writeRequest=nil;
objj_msgSend(_7b.delegate,_7b.didSaveSelector,_77,YES,_7b.contextInfo);
objj_msgSend(_77,"_sendDocumentSavedNotification:",YES);
}
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_7c,_7d,_7e,_7f){
with(_7c){
var _80=_7e.session;
if(_readConnection==_7e){
objj_msgSend(_80.delegate,_80.didReadSelector,_7c,NO,_80.contextInfo);
}else{
if(_80.saveOperation!=CPSaveToOperation){
_changeCount+=_80.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_7c,"isDocumentEdited"));
}
_writeRequest=nil;
alert("There was an error saving the document.");
objj_msgSend(_80.delegate,_80.didSaveSelector,_7c,NO,_80.contextInfo);
objj_msgSend(_7c,"_sendDocumentSavedNotification:",NO);
}
}
}),new objj_method(sel_getUid("connectionDidFinishLoading:"),function(_81,_82,_83){
with(_81){
if(_readConnection==_83){
_readConnection=nil;
}
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_84,_85){
with(_84){
return _changeCount!=0;
}
}),new objj_method(sel_getUid("updateChangeCount:"),function(_86,_87,_88){
with(_86){
if(_88==CPChangeDone){
++_changeCount;
}else{
if(_88==CPChangeUndone){
--_changeCount;
}else{
if(_88==CPChangeCleared){
_changeCount=0;
}
}
}
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_86,"isDocumentEdited"));
}
}),new objj_method(sel_getUid("setFileType:"),function(_89,_8a,_8b){
with(_89){
_fileType=_8b;
}
}),new objj_method(sel_getUid("fileType"),function(_8c,_8d){
with(_8c){
return _fileType;
}
}),new objj_method(sel_getUid("hasUndoManager"),function(_8e,_8f){
with(_8e){
return _hasUndoManager;
}
}),new objj_method(sel_getUid("setHasUndoManager:"),function(_90,_91,_92){
with(_90){
if(_hasUndoManager==_92){
return;
}
_hasUndoManager=_92;
if(!_hasUndoManager){
objj_msgSend(_90,"setUndoManager:",nil);
}
}
}),new objj_method(sel_getUid("_undoManagerWillCloseGroup:"),function(_93,_94,_95){
with(_93){
var _96=objj_msgSend(_95,"object");
if(objj_msgSend(_96,"isUndoing")||objj_msgSend(_96,"isRedoing")){
return;
}
objj_msgSend(_93,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("_undoManagerDidUndoChange:"),function(_97,_98,_99){
with(_97){
objj_msgSend(_97,"updateChangeCount:",CPChangeUndone);
}
}),new objj_method(sel_getUid("_undoManagerDidRedoChange:"),function(_9a,_9b,_9c){
with(_9a){
objj_msgSend(_9a,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("setUndoManager:"),function(_9d,_9e,_9f){
with(_9d){
var _a0=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_undoManager){
objj_msgSend(_a0,"removeObserver:name:object:",_9d,CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_a0,"removeObserver:name:object:",_9d,CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_a0,"removeObserver:name:object:",_9d,CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
_undoManager=_9f;
if(_undoManager){
objj_msgSend(_a0,"addObserver:selector:name:object:",_9d,sel_getUid("_undoManagerDidUndoChange:"),CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_a0,"addObserver:selector:name:object:",_9d,sel_getUid("_undoManagerDidRedoChange:"),CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_a0,"addObserver:selector:name:object:",_9d,sel_getUid("_undoManagerWillCloseGroup:"),CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
}
}),new objj_method(sel_getUid("undoManager"),function(_a1,_a2){
with(_a1){
if(_hasUndoManager&&!_undoManager){
objj_msgSend(_a1,"setUndoManager:",objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init"));
}
return _undoManager;
}
}),new objj_method(sel_getUid("windowWillReturnUndoManager:"),function(_a3,_a4,_a5){
with(_a3){
return objj_msgSend(_a3,"undoManager");
}
}),new objj_method(sel_getUid("saveDocument:"),function(_a6,_a7,_a8){
with(_a6){
objj_msgSend(_a6,"saveDocumentWithDelegate:didSaveSelector:contextInfo:",nil,nil,nil);
}
}),new objj_method(sel_getUid("saveDocumentWithDelegate:didSaveSelector:contextInfo:"),function(_a9,_aa,_ab,_ac,_ad){
with(_a9){
if(_fileURL){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_a9);
objj_msgSend(_a9,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",_fileURL,objj_msgSend(_a9,"fileType"),CPSaveOperation,_ab,_ac,_ad);
}else{
objj_msgSend(_a9,"_saveDocumentAsWithDelegate:didSaveSelector:contextInfo:",_ab,_ac,_ad);
}
}
}),new objj_method(sel_getUid("saveDocumentAs:"),function(_ae,_af,_b0){
with(_ae){
objj_msgSend(_ae,"_saveDocumentAsWithDelegate:didSaveSelector:contextInfo:",nil,nil,nil);
}
}),new objj_method(sel_getUid("_saveDocumentAsWithDelegate:didSaveSelector:contextInfo:"),function(_b1,_b2,_b3,_b4,_b5){
with(_b1){
var _b6=objj_msgSend(CPSavePanel,"savePanel"),_b7=objj_msgSend(_b6,"runModal");
if(!_b7){
return;
}
var _b8=objj_msgSend(_b6,"URL");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_b1);
objj_msgSend(_b1,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",_b8,objj_msgSend(_b1,"fileType"),CPSaveAsOperation,_b3,_b4,_b5);
}
}),new objj_method(sel_getUid("_sendDocumentSavedNotification:"),function(_b9,_ba,_bb){
with(_b9){
if(_bb){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidSaveNotification,_b9);
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidFailToSaveNotification,_b9);
}
}
})]);
var _2=objj_getClass("CPDocument");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPDocument\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("close"),function(_bc,_bd){
with(_bc){
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("removeDocumentAndCloseIfNecessary:"),_bc);
objj_msgSend(objj_msgSend(CPDocumentController,"sharedDocumentController"),"removeDocument:",_bc);
}
}),new objj_method(sel_getUid("shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:"),function(_be,_bf,_c0,_c1,_c2,_c3){
with(_be){
if(objj_msgSend(_c0,"shouldCloseDocument")||(objj_msgSend(_windowControllers,"count")<2&&objj_msgSend(_windowControllers,"indexOfObject:",_c0)!==CPNotFound)){
objj_msgSend(_be,"canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:",_be,sel_getUid("_document:shouldClose:context:"),{delegate:_c1,selector:_c2,context:_c3});
}else{
if(objj_msgSend(_c1,"respondsToSelector:",_c2)){
objj_msgSend(_c1,_c2,_be,YES,_c3);
}
}
}
}),new objj_method(sel_getUid("_document:shouldClose:context:"),function(_c4,_c5,_c6,_c7,_c8){
with(_c4){
if(_c6===_c4&&_c7){
objj_msgSend(_c4,"close");
}
objj_msgSend(_c8.delegate,_c8.selector,_c6,_c7,_c8.context);
}
}),new objj_method(sel_getUid("canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:"),function(_c9,_ca,_cb,_cc,_cd){
with(_c9){
if(!objj_msgSend(_c9,"isDocumentEdited")){
return objj_msgSend(_cb,"respondsToSelector:",_cc)&&objj_msgSend(_cb,_cc,_c9,YES,_cd);
}
_canCloseAlert=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_canCloseAlert,"setDelegate:",_c9);
objj_msgSend(_canCloseAlert,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_canCloseAlert,"setTitle:","Unsaved Document");
objj_msgSend(_canCloseAlert,"setMessageText:",sprintf("Do you want to save the changes you've made to the document \"%@\"?",objj_msgSend(_c9,"displayName")||objj_msgSend(_c9,"fileName")));
objj_msgSend(_canCloseAlert,"addButtonWithTitle:","Save");
objj_msgSend(_canCloseAlert,"addButtonWithTitle:","Cancel");
objj_msgSend(_canCloseAlert,"addButtonWithTitle:","Don't Save");
_canCloseAlert._context={delegate:_cb,selector:_cc,context:_cd};
objj_msgSend(_canCloseAlert,"runModal");
}
}),new objj_method(sel_getUid("alertDidEnd:returnCode:"),function(_ce,_cf,_d0,_d1){
with(_ce){
if(_d0!==_canCloseAlert){
return;
}
var _d2=_d0._context.delegate,_d3=_d0._context.selector,_d4=_d0._context.context;
if(_d1===0){
objj_msgSend(_ce,"saveDocumentWithDelegate:didSaveSelector:contextInfo:",_d2,_d3,_d4);
}else{
objj_msgSend(_d2,_d3,_ce,_d1===2,_d4);
}
_canCloseAlert=nil;
}
})]);
var _5f=function(_d5,_d6,_d7,_d8){
return {fileType:_d5,delegate:_d6,didReadSelector:_d7,contextInfo:_d8};
};
var _70=function(_d9,_da,_db,_dc,_dd,_de,_df){
return {absoluteURL:_d9,saveOperation:_da,changeCount:_db,delegate:_dc,didSaveSelector:_dd,contextInfo:_de,connection:_df};
};
