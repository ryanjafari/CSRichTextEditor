I;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.ji;9;CPEvent.ji;17;CPCompatibility.ji;18;CPDOMWindowLayer.ji;12;CPPlatform.ji;18;CPPlatformWindow.jc;24053;
var _1="dblclick",_2="mousedown",_3="mouseup",_4="mousemove",_5="mousedrag",_6="keyup",_7="keydown",_8="keypress",_9="copy",_a="paste",_b="resize",_c="mousewheel",_d="touchstart",_e="touchmove",_f="touchend",_10="touchcancel";
var _11=[];
_11["INPUT"]=YES;
_11["SELECT"]=YES;
_11["TEXTAREA"]=YES;
_11["OPTION"]=YES;
var _12,_13,_14;
var _15={},_16={},_17={"8":1,"9":1,"16":1,"37":1,"38":1,"39":1,"40":1,"46":1,"33":1,"34":1};
var _18=17;
var _19=objj_msgSend(CPPlatform,"supportsDragAndDrop");
var _1a=objj_getClass("CPPlatformWindow");
if(!_1a){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPPlatformWindow\""));
}
var _1b=_1a.isa;
class_addMethods(_1a,[new objj_method(sel_getUid("_init"),function(_1c,_1d){
with(_1c){
_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPObject")},"init");
if(_1c){
_DOMWindow=window;
_contentRect={origin:{x:0,y:0},size:{width:0,height:0}};
_windowLevels=[];
_windowLayers=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_1c,"registerDOMWindow");
objj_msgSend(_1c,"updateFromNativeContentRect");
_charCodes={};
}
return _1c;
}
}),new objj_method(sel_getUid("nativeContentRect"),function(_1e,_1f){
with(_1e){
if(!_DOMWindow){
return objj_msgSend(_1e,"contentRect");
}
if(_DOMWindow.cpFrame){
return _DOMWindow.cpFrame();
}
var _20={origin:{x:0,y:0},size:{width:0,height:0}};
if(window.screenTop){
_20.origin={x:_DOMWindow.screenLeft,y:_DOMWindow.screenTop};
}else{
if(window.screenX){
_20.origin={x:_DOMWindow.screenX,y:_DOMWindow.screenY};
}
}
if(_DOMWindow.innerWidth){
_20.size={width:_DOMWindow.innerWidth,height:_DOMWindow.innerHeight};
}else{
if(document.documentElement&&document.documentElement.clientWidth){
_20.size={width:_DOMWindow.document.documentElement.clientWidth,height:_DOMWindow.document.documentElement.clientHeight};
}else{
_20.size={width:_DOMWindow.document.body.clientWidth,height:_DOMWindow.document.body.clientHeight};
}
}
return _20;
}
}),new objj_method(sel_getUid("updateNativeContentRect"),function(_21,_22){
with(_21){
if(!_DOMWindow){
return;
}
if(typeof _DOMWindow["cpSetFrame"]==="function"){
return _DOMWindow.cpSetFrame(objj_msgSend(_21,"contentRect"));
}
var _23=objj_msgSend(_21,"contentRect").origin,_24=objj_msgSend(_21,"nativeContentRect").origin;
if(_23.x!==_24.x||_23.y!==_24.y){
_DOMWindow.moveBy(_23.x-_24.x,_23.y-_24.y);
}
var _25=objj_msgSend(_21,"contentRect").size,_26=objj_msgSend(_21,"nativeContentRect").size;
if(_25.width!==_26.width||_25.height!==_26.height){
_DOMWindow.resizeBy(_25.width-_26.width,_25.height-_26.height);
}
}
}),new objj_method(sel_getUid("orderBack:"),function(_27,_28,_29){
with(_27){
if(_DOMWindow){
_DOMWindow.blur();
}
}
}),new objj_method(sel_getUid("registerDOMWindow"),function(_2a,_2b){
with(_2a){
var _2c=_DOMWindow.document;
_DOMBodyElement=_2c.getElementsByTagName("body")[0];
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMBodyElement.style["-khtml-user-select"]="none";
}
_DOMBodyElement.webkitTouchCallout="none";
_DOMFocusElement=_2c.createElement("input");
_DOMFocusElement.style.position="absolute";
_DOMFocusElement.style.zIndex="-1000";
_DOMFocusElement.style.opacity="0";
_DOMFocusElement.style.filter="alpha(opacity=0)";
_DOMBodyElement.appendChild(_DOMFocusElement);
_DOMPasteboardElement=_2c.createElement("input");
_DOMPasteboardElement.style.position="absolute";
_DOMPasteboardElement.style.top="-10000px";
_DOMPasteboardElement.style.zIndex="99";
_DOMBodyElement.appendChild(_DOMPasteboardElement);
_DOMPasteboardElement.blur();
objj_msgSend(_2a,"_addLayers");
var _2d=objj_msgSend(_2a,"class"),_2e=class_getMethodImplementation(_2d,sel_getUid("dragEvent:")),_2f=function(_30){
_2e(_2a,nil,_30);
},_31=sel_getUid("resizeEvent:"),_32=class_getMethodImplementation(_2d,_31),_33=function(_34){
_32(_2a,nil,_34);
},_35=sel_getUid("keyEvent:"),_36=class_getMethodImplementation(_2d,_35),_37=function(_38){
_36(_2a,nil,_38);
},_39=sel_getUid("mouseEvent:"),_3a=class_getMethodImplementation(_2d,_39),_3b=function(_3c){
_3a(_2a,nil,_3c);
},_3d=sel_getUid("scrollEvent:"),_3e=class_getMethodImplementation(_2d,_3d),_3f=function(_40){
_3e(_2a,nil,_40);
},_41=sel_getUid("touchEvent:"),_42=class_getMethodImplementation(_2d,_41),_43=function(_44){
_42(_2a,nil,_44);
};
if(_2c.addEventListener){
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_2c.addEventListener("dragstart",_2f,NO);
_2c.addEventListener("drag",_2f,NO);
_2c.addEventListener("dragend",_2f,NO);
_2c.addEventListener("dragover",_2f,NO);
_2c.addEventListener("dragleave",_2f,NO);
_2c.addEventListener("drop",_2f,NO);
}
_2c.addEventListener("mouseup",_3b,NO);
_2c.addEventListener("mousedown",_3b,NO);
_2c.addEventListener("mousemove",_3b,NO);
_2c.addEventListener("keyup",_37,NO);
_2c.addEventListener("keydown",_37,NO);
_2c.addEventListener("keypress",_37,NO);
_2c.addEventListener("touchstart",_43,NO);
_2c.addEventListener("touchend",_43,NO);
_2c.addEventListener("touchmove",_43,NO);
_2c.addEventListener("touchcancel",_43,NO);
_DOMWindow.addEventListener("DOMMouseScroll",_3f,NO);
_DOMWindow.addEventListener("mousewheel",_3f,NO);
_DOMWindow.addEventListener("resize",_33,NO);
_DOMWindow.addEventListener("unload",function(){
objj_msgSend(_2a,"updateFromNativeContentRect");
objj_msgSend(_2a,"_removeLayers");
_2c.removeEventListener("mouseup",_3b,NO);
_2c.removeEventListener("mousedown",_3b,NO);
_2c.removeEventListener("mousemove",_3b,NO);
_2c.removeEventListener("keyup",_37,NO);
_2c.removeEventListener("keydown",_37,NO);
_2c.removeEventListener("keypress",_37,NO);
_2c.removeEventListener("touchstart",_43,NO);
_2c.removeEventListener("touchend",_43,NO);
_2c.removeEventListener("touchmove",_43,NO);
_DOMWindow.removeEventListener("resize",_33,NO);
_DOMWindow.removeEventListener("DOMMouseScroll",_3f,NO);
_DOMWindow.removeEventListener("mousewheel",_3f,NO);
_2a._DOMWindow=nil;
},NO);
}else{
_2c.attachEvent("onmouseup",_3b);
_2c.attachEvent("onmousedown",_3b);
_2c.attachEvent("onmousemove",_3b);
_2c.attachEvent("ondblclick",_3b);
_2c.attachEvent("onkeyup",_37);
_2c.attachEvent("onkeydown",_37);
_2c.attachEvent("onkeypress",_37);
_DOMWindow.attachEvent("onresize",_33);
_DOMWindow.onmousewheel=_3f;
_2c.onmousewheel=_3f;
_2c.body.ondrag=function(){
return NO;
};
_2c.body.onselectstart=function(){
return _DOMWindow.event.srcElement===_DOMPasteboardElement;
};
_DOMWindow.attachEvent("onbeforeunload",function(){
objj_msgSend(_2a,"updateFromNativeContentRect");
objj_msgSend(_2a,"_removeLayers");
_2c.removeEvent("onmouseup",_3b);
_2c.removeEvent("onmousedown",_3b);
_2c.removeEvent("onmousemove",_3b);
_2c.removeEvent("ondblclick",_3b);
_2c.removeEvent("onkeyup",_37);
_2c.removeEvent("onkeydown",_37);
_2c.removeEvent("onkeypress",_37);
_DOMWindow.removeEvent("onresize",_33);
_DOMWindow.onmousewheel=NULL;
_2c.onmousewheel=NULL;
_2c.body.ondrag=NULL;
_2c.body.onselectstart=NULL;
_2a._DOMWindow=nil;
},NO);
}
}
}),new objj_method(sel_getUid("orderFront:"),function(_45,_46,_47){
with(_45){
if(_DOMWindow){
return _DOMWindow.focus();
}
_DOMWindow=window.open("","_blank","menubar=no,location=no,resizable=yes,scrollbars=no,status=no,left="+(_contentRect.origin.x)+",top="+(_contentRect.origin.y)+",width="+(_contentRect.size.width)+",height="+(_contentRect.size.height));
_DOMWindow.document.write("<html><head></head><body style = 'background-color:transparent;'></body></html>");
_DOMWindow.document.close();
if(!objj_msgSend(CPPlatform,"isBrowser")){
_DOMWindow.cpWindowNumber=objj_msgSend(_45._only,"windowNumber");
_DOMWindow.cpSetFrame(_contentRect);
_DOMWindow.cpSetLevel(_level);
_DOMWindow.cpSetHasShadow(_hasShadow);
_DOMWindow.cpSetShadowStyle(_shadowStyle);
}
objj_msgSend(_45,"registerDOMWindow");
}
}),new objj_method(sel_getUid("orderOut:"),function(_48,_49,_4a){
with(_48){
if(!_DOMWindow){
return;
}
_DOMWindow.close();
}
}),new objj_method(sel_getUid("dragEvent:"),function(_4b,_4c,_4d){
with(_4b){
var _4e=_4d.type,_4f=objj_msgSend(CPDragServer,"sharedDragServer"),_50={x:_4d.clientX,y:_4d.clientY},_51=objj_msgSend(_CPDOMDataTransferPasteboard,"DOMDataTransferPasteboard");
objj_msgSend(_51,"_setDataTransfer:",_4d.dataTransfer);
if(_4d.type==="dragstart"){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
objj_msgSend(_51,"_setPasteboard:",objj_msgSend(_4f,"draggingPasteboard"));
var _52=objj_msgSend(_4f,"draggedWindow"),_53=objj_msgSend(_52,"frame"),_54=_52._DOMElement;
_54.style.left=-(_53.size.width)+"px";
_54.style.top=-(_53.size.height)+"px";
document.getElementsByTagName("body")[0].appendChild(_54);
var _55=objj_msgSend(_4f,"draggingOffset");
_4d.dataTransfer.setDragImage(_54,_55.width,_55.height);
objj_msgSend(_4f,"draggingStartedInPlatformWindow:globalLocation:",_4b,objj_msgSend(CPPlatform,"isBrowser")?_50:{x:_4d.screenX,y:_4d.screenY});
}else{
if(_4e==="drag"){
objj_msgSend(_4f,"draggingSourceUpdatedWithGlobalLocation:",objj_msgSend(CPPlatform,"isBrowser")?_50:{x:_4d.screenX,y:_4d.screenY});
}else{
if(_4e==="dragover"||_4e==="dragleave"){
if(_4d.preventDefault){
_4d.preventDefault();
}
var _56="none",_57=objj_msgSend(_4f,"draggingUpdatedInPlatformWindow:location:",_4b,_50);
if(_57===CPDragOperationMove||_57===CPDragOperationGeneric||_57===CPDragOperationPrivate){
_56="move";
}else{
if(_57===CPDragOperationCopy){
_56="copy";
}else{
if(_57===CPDragOperationLink){
_56="link";
}
}
}
_4d.dataTransfer.dropEffect=_56;
}else{
if(_4e==="dragend"){
objj_msgSend(_4f,"draggingEndedInPlatformWindow:globalLocation:",_4b,objj_msgSend(CPPlatform,"isBrowser")?_50:{x:_4d.screenX,y:_4d.screenY});
}else{
objj_msgSend(_4f,"performDragOperationInPlatformWindow:",_4b);
if(_4d.preventDefault){
_4d.preventDefault();
}
if(_4d.stopPropagation){
_4d.stopPropagation();
}
}
}
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("keyEvent:"),function(_58,_59,_5a){
with(_58){
var _5b,_5c=_5a.timeStamp?_5a.timeStamp:new Date(),_5d=(_5a.target||_5a.srcElement),_5e=objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"windowNumber"),_5f=(_5a.shiftKey?CPShiftKeyMask:0)|(_5a.ctrlKey?CPControlKeyMask:0)|(_5a.altKey?CPAlternateKeyMask:0)|(_5a.metaKey?CPCommandKeyMask:0);
if(_11[_5d.tagName]&&_5d!=_DOMFocusElement&&_5d!=_DOMPasteboardElement){
return;
}
_14=!(_5f&(CPControlKeyMask|CPCommandKeyMask))||_16[String.fromCharCode(_5a.keyCode||_5a.charCode).toLowerCase()]||_15[_5a.keyCode];
var _60=NO,_61=NO,_62=nil;
switch(_5a.type){
case "keydown":
_keyCode=_5a.keyCode;
var _63=String.fromCharCode(_keyCode).toLowerCase();
_62=_5f&CPShiftKeyMask?_63.toUpperCase():_63;
if(_63=="v"&&(_5f&CPPlatformActionKeyMask)){
_DOMPasteboardElement.select();
_DOMPasteboardElement.value="";
_60=YES;
}else{
if((_63=="c"||_63=="x")&&(_5f&CPPlatformActionKeyMask)){
_61=YES;
}else{
if(!CPFeatureIsCompatible(CPJavascriptRemedialKeySupport)){
return;
}else{
if(!_17[_keyCode]&&(_keyCode==_18||!(_5f&CPControlKeyMask))){
return;
}
}
}
}
case "keypress":
if((_5a.target||_5a.srcElement)==_DOMPasteboardElement){
return;
}
var _64=_keyCode,_65=_5a.keyCode||_5a.charCode,_66=(_charCodes[_64]!=nil);
_charCodes[_64]=_65;
var _63=_62||String.fromCharCode(_65),_67=_63.toLowerCase();
if(!_62&&(_5f&CPCommandKeyMask)&&(_5f&CPShiftKeyMask)){
_63=_63.toUpperCase();
}
_5b=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyDown,location,_5f,_5c,_5e,nil,_63,_67,_66,_64);
if(_60){
_pasteboardKeyDownEvent=_5b;
window.setNativeTimeout(function(){
objj_msgSend(_58,"_checkPasteboardElement");
},0);
return;
}
break;
case "keyup":
var _64=_5a.keyCode,_65=_charCodes[_64];
_charCodes[_64]=nil;
var _63=String.fromCharCode(_65),_67=_63.toLowerCase();
if(!(_5f&CPShiftKeyMask)){
_63=_67;
}
_5b=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyUp,location,_5f,_5c,_5e,nil,_63,_67,NO,_64);
break;
}
if(_5b){
_5b._DOMEvent=_5a;
objj_msgSend(CPApp,"sendEvent:",_5b);
if(_61){
var _68=objj_msgSend(CPPasteboard,"generalPasteboard"),_69=objj_msgSend(_68,"types");
if(_69.length){
if(objj_msgSend(_69,"indexOfObjectIdenticalTo:",CPStringPboardType)!=CPNotFound){
_DOMPasteboardElement.value=objj_msgSend(_68,"stringForType:",CPStringPboardType);
}else{
_DOMPasteboardElement.value=objj_msgSend(_68,"_generateStateUID");
}
_DOMPasteboardElement.select();
window.setNativeTimeout(function(){
objj_msgSend(_58,"_clearPasteboardElement");
},0);
}
return;
}
}
if(_14){
_13(_5a,_58);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("scrollEvent:"),function(_6a,_6b,_6c){
with(_6a){
if(!_6c){
_6c=window.event;
}
if(CPFeatureIsCompatible(CPJavaScriptMouseWheelValues_8_15)){
var x=0,y=0,_6f=_6c.target;
while(_6f.nodeType!==1){
_6f=_6f.parentNode;
}
if(_6f.offsetParent){
do{
x+=_6f.offsetLeft;
y+=_6f.offsetTop;
}while(_6f=_6f.offsetParent);
}
var _70={x:(x+((_6c.clientX-8)/15)),y:(y+((_6c.clientY-8)/15))};
}else{
var _70={x:_6c.clientX,y:_6c.clientY};
}
var _71=0,_72=0,_73=0,_74=_6c.timeStamp?_6c.timeStamp:new Date(),_75=(_6c.shiftKey?CPShiftKeyMask:0)|(_6c.ctrlKey?CPControlKeyMask:0)|(_6c.altKey?CPAlternateKeyMask:0)|(_6c.metaKey?CPCommandKeyMask:0);
_14=YES;
var _76=objj_msgSend(_6a,"hitTest:",_70);
if(!_76){
return;
}
var _73=objj_msgSend(_76,"windowNumber");
_70=objj_msgSend(_76,"convertBridgeToBase:",_70);
if(typeof _6c.wheelDeltaX!="undefined"){
_71=_6c.wheelDeltaX/120;
_72=_6c.wheelDeltaY/120;
}else{
if(_6c.wheelDelta){
_72=_6c.wheelDelta/120;
}else{
if(_6c.detail){
_72=-_6c.detail/3;
}else{
return;
}
}
}
if(!CPFeatureIsCompatible(CPJavaScriptNegativeMouseWheelValues)){
_71=-_71;
_72=-_72;
}
var _77=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPScrollWheel,_70,_75,_74,_73,nil,-1,1,0);
_77._DOMEvent=_6c;
_77._deltaX=_71;
_77._deltaY=_72;
objj_msgSend(CPApp,"sendEvent:",_77);
if(_14){
_13(_6c,_6a);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("resizeEvent:"),function(_78,_79,_7a){
with(_78){
var _7b=objj_msgSend(_78,"contentRect").size;
objj_msgSend(_78,"updateFromNativeContentRect");
var _7c=_windowLevels,_7d=_windowLayers,_7e=_7c.length;
while(_7e--){
var _7f=objj_msgSend(_7d,"objectForKey:",_7c[_7e])._windows,_80=_7f.length;
while(_80--){
objj_msgSend(_7f[_80],"resizeWithOldPlatformWindowSize:",_7b);
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("touchEvent:"),function(_81,_82,_83){
with(_81){
if(_83.touches&&(_83.touches.length==1||(_83.touches.length==0&&_83.changedTouches.length==1))){
var _84={};
switch(_83.type){
case CPDOMEventTouchStart:
_84.type=CPDOMEventMouseDown;
break;
case CPDOMEventTouchEnd:
_84.type=CPDOMEventMouseUp;
break;
case CPDOMEventTouchMove:
_84.type=CPDOMEventMouseMoved;
break;
case CPDOMEventTouchCancel:
_84.type=CPDOMEventMouseUp;
break;
}
var _85=_83.touches.length?_83.touches[0]:_83.changedTouches[0];
_84.clientX=_85.clientX;
_84.clientY=_85.clientY;
_84.timestamp=_83.timestamp;
_84.target=_83.target;
_84.shiftKey=_84.ctrlKey=_84.altKey=_84.metaKey=false;
_84.preventDefault=function(){
if(_83.preventDefault){
_83.preventDefault();
}
};
_84.stopPropagation=function(){
if(_83.stopPropagation){
_83.stopPropagation();
}
};
objj_msgSend(_81,"mouseEvent:",_84);
return;
}else{
if(_83.preventDefault){
_83.preventDefault();
}
if(_83.stopPropagation){
_83.stopPropagation();
}
}
}
}),new objj_method(sel_getUid("mouseEvent:"),function(_86,_87,_88){
with(_86){
var _89=_overriddenEventType||_88.type;
if(_89==="dblclick"){
_overriddenEventType=CPDOMEventMouseDown;
objj_msgSend(_86,"mouseEvent:",_88);
_overriddenEventType=CPDOMEventMouseUp;
objj_msgSend(_86,"mouseEvent:",_88);
_overriddenEventType=nil;
return;
}
var _8a,_8b={x:_88.clientX,y:_88.clientY},_8c=_88.timeStamp?_88.timeStamp:new Date(),_8d=(_88.target||_88.srcElement),_8e=0,_8f=(_88.shiftKey?CPShiftKeyMask:0)|(_88.ctrlKey?CPControlKeyMask:0)|(_88.altKey?CPAlternateKeyMask:0)|(_88.metaKey?CPCommandKeyMask:0);
_14=YES;
if(_mouseDownWindow){
_8e=objj_msgSend(_mouseDownWindow,"windowNumber");
}else{
var _90=objj_msgSend(_86,"hitTest:",_8b);
if((_88.type===CPDOMEventMouseDown)&&_90){
_mouseDownWindow=_90;
}
_8e=objj_msgSend(_90,"windowNumber");
}
if(_8e){
_8b=objj_msgSend(CPApp._windows[_8e],"convertPlatformWindowToBase:",_8b);
}
if(_89==="mouseup"){
if(_mouseIsDown){
_8a=_91(_88,CPLeftMouseUp,_8b,_8f,_8c,_8e,nil,-1,_12(_lastMouseUp,_8c,_8b),0);
_mouseIsDown=NO;
_lastMouseUp=_8a;
_mouseDownWindow=nil;
}
if(_DOMEventMode){
_DOMEventMode=NO;
return;
}
}else{
if(_89==="mousedown"){
if(_11[_8d.tagName]&&_8d!=_DOMFocusElement){
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMBodyElement.setAttribute("draggable","false");
_DOMBodyElement.style["-khtml-user-drag"]="none";
}
_DOMEventMode=YES;
_mouseIsDown=YES;
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,_8b,_8f,_8c,_8e,nil,-1,_12(_lastMouseDown,_8c,_8b),0));
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseUp,_8b,_8f,_8c,_8e,nil,-1,_12(_lastMouseDown,_8c,_8b),0));
return;
}else{
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMBodyElement.setAttribute("draggable","true");
_DOMBodyElement.style["-khtml-user-drag"]="element";
}
}
_8a=_91(_88,CPLeftMouseDown,_8b,_8f,_8c,_8e,nil,-1,_12(_lastMouseDown,_8c,_8b),0);
_mouseIsDown=YES;
_lastMouseDown=_8a;
}else{
if(_DOMEventMode){
return;
}
_8a=_91(_88,_mouseIsDown?CPLeftMouseDragged:CPMouseMoved,_8b,_8f,_8c,_8e,nil,-1,1,0);
}
}
var _92=objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"isDragging");
if(_8a&&(!_92||!_19)){
_8a._DOMEvent=_88;
objj_msgSend(CPApp,"sendEvent:",_8a);
}
if(_14&&(!_19||_89!=="mousedown"&&!_92)){
_13(_88,_86);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("layerAtLevel:create:"),function(_93,_94,_95,_96){
with(_93){
var _97=objj_msgSend(_windowLayers,"objectForKey:",_95);
if(!_97&&_96){
_97=objj_msgSend(objj_msgSend(CPDOMWindowLayer,"alloc"),"initWithLevel:",_95);
objj_msgSend(_windowLayers,"setObject:forKey:",_97,_95);
var low=0,_99=_windowLevels.length-1,_9a;
while(low<=_99){
_9a=FLOOR((low+_99)/2);
if(_windowLevels[_9a]>_95){
_99=_9a-1;
}else{
low=_9a+1;
}
}
objj_msgSend(_windowLevels,"insertObject:atIndex:",_95,_windowLevels[_9a]>_95?_9a:_9a+1);
_97._DOMElement.style.zIndex=_95;
_DOMBodyElement.appendChild(_97._DOMElement);
}
return _97;
}
}),new objj_method(sel_getUid("order:window:relativeTo:"),function(_9b,_9c,_9d,_9e,_9f){
with(_9b){
var _a0=objj_msgSend(_9b,"layerAtLevel:create:",objj_msgSend(_9e,"level"),_9d!=CPWindowOut);
if(_9d==CPWindowOut){
return objj_msgSend(_a0,"removeWindow:",_9e);
}
objj_msgSend(_a0,"insertWindow:atIndex:",_9e,(_9f?(_9d==CPWindowAbove?_9f._index+1:_9f._index):CPNotFound));
}
}),new objj_method(sel_getUid("_removeLayers"),function(_a1,_a2){
with(_a1){
var _a3=_windowLevels,_a4=_windowLayers,_a5=_a3.length;
while(_a5--){
var _a6=objj_msgSend(_a4,"objectForKey:",_a3[_a5]);
_DOMBodyElement.removeChild(_a6._DOMElement);
}
}
}),new objj_method(sel_getUid("_addLayers"),function(_a7,_a8){
with(_a7){
var _a9=_windowLevels,_aa=_windowLayers,_ab=_a9.length;
while(_ab--){
var _ac=objj_msgSend(_aa,"objectForKey:",_a9[_ab]);
_DOMBodyElement.appendChild(_ac._DOMElement);
}
}
}),new objj_method(sel_getUid("_dragHitTest:pasteboard:"),function(_ad,_ae,_af,_b0){
with(_ad){
var _b1=_windowLevels,_b2=_windowLayers,_b3=_b1.length;
while(_b3--){
if(_b1[_b3]>=CPDraggingWindowLevel){
continue;
}
var _b4=objj_msgSend(_b2,"objectForKey:",_b1[_b3])._windows,_b5=_b4.length;
while(_b5--){
var _b6=_b4[_b5];
if(objj_msgSend(_b6,"_sharesChromeWithPlatformWindow")){
return objj_msgSend(_b6,"_dragHitTest:pasteboard:",_af,_b0);
}
if(objj_msgSend(_b6,"containsPoint:",_af)){
return objj_msgSend(_b6,"_dragHitTest:pasteboard:",_af,_b0);
}
}
}
return nil;
}
}),new objj_method(sel_getUid("_propagateCurrentDOMEvent:"),function(_b7,_b8,_b9){
with(_b7){
_14=!_b9;
}
}),new objj_method(sel_getUid("hitTest:"),function(_ba,_bb,_bc){
with(_ba){
if(_ba._only){
return _ba._only;
}
var _bd=_windowLevels,_be=_windowLayers,_bf=_bd.length,_c0=nil;
while(_bf--&&!_c0){
var _c1=objj_msgSend(_be,"objectForKey:",_bd[_bf])._windows,_c2=_c1.length;
while(_c2--&&!_c0){
var _c3=_c1[_c2];
if(!_c3._ignoresMouseEvents&&objj_msgSend(_c3,"containsPoint:",_bc)){
_c0=_c3;
}
}
}
return _c0;
}
}),new objj_method(sel_getUid("_checkPasteboardElement"),function(_c4,_c5){
with(_c4){
var _c6=_DOMPasteboardElement.value;
if(objj_msgSend(_c6,"length")){
var _c7=objj_msgSend(CPPasteboard,"generalPasteboard");
if(objj_msgSend(_c7,"_stateUID")!=_c6){
objj_msgSend(_c7,"declareTypes:owner:",[CPStringPboardType],_c4);
objj_msgSend(_c7,"setString:forType:",_c6,CPStringPboardType);
}
}
objj_msgSend(_c4,"_clearPasteboardElement");
objj_msgSend(CPApp,"sendEvent:",_pasteboardKeyDownEvent);
_pasteboardKeyDownEvent=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("_clearPasteboardElement"),function(_c8,_c9){
with(_c8){
_DOMPasteboardElement.value="";
_DOMPasteboardElement.blur();
}
})]);
class_addMethods(_1b,[new objj_method(sel_getUid("preventCharacterKeysFromPropagating:"),function(_ca,_cb,_cc){
with(_ca){
for(var i=_cc.length;i>0;i--){
_16[""+_cc[i-1].toLowerCase()]=YES;
}
}
}),new objj_method(sel_getUid("preventCharacterKeyFromPropagating:"),function(_ce,_cf,_d0){
with(_ce){
_16[_d0.toLowerCase()]=YES;
}
}),new objj_method(sel_getUid("clearCharacterKeysToPreventFromPropagating"),function(_d1,_d2){
with(_d1){
_16={};
}
}),new objj_method(sel_getUid("preventKeyCodesFromPropagating:"),function(_d3,_d4,_d5){
with(_d3){
for(var i=_d5.length;i>0;i--){
_15[_d5[i-1]]=YES;
}
}
}),new objj_method(sel_getUid("preventKeyCodeFromPropagating:"),function(_d7,_d8,_d9){
with(_d7){
_15[_d9]=YES;
}
}),new objj_method(sel_getUid("clearKeyCodesToPreventFromPropagating"),function(_da,_db){
with(_da){
_15={};
}
})]);
var _dc=objj_msgSend(CPEvent,"class");
var _91=function(_dd,_de,_df,_e0,_e1,_e2,_e3,_e4,_e5,_e6){
_dd.isa=_dc;
_dd._type=_de;
_dd._location=_df;
_dd._modifierFlags=_e0;
_dd._timestamp=_e1;
_dd._windowNumber=_e2;
_dd._window=nil;
_dd._context=_e3;
_dd._eventNumber=_e4;
_dd._clickCount=_e5;
_dd._pressure=_e6;
return _dd;
};
var _e7=5,_e8=(typeof document!="undefined"&&document.addEventListener)?350:1000;
var _12=function(_e9,_ea,_eb){
if(!_e9){
return 1;
}
var _ec=objj_msgSend(_e9,"locationInWindow");
return (_ea-objj_msgSend(_e9,"timestamp")<_e8&&ABS(_ec.x-_eb.x)<_e7&&ABS(_ec.y-_eb.y)<_e7)?objj_msgSend(_e9,"clickCount")+1:1;
};
var _13=function(_ed,_ee){
_ed.cancelBubble=true;
_ed.returnValue=false;
if(_ed.preventDefault){
_ed.preventDefault();
}
if(_ed.stopPropagation){
_ed.stopPropagation();
}
if(_ed.type===CPDOMEventMouseDown){
_ee._DOMFocusElement.focus();
_ee._DOMFocusElement.blur();
}
};
CPWindowObjectList=function(){
var _ef=objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),_f0=_ef._windowLevels,_f1=_ef._windowLayers,_f2=_f0.length,_f3=[];
while(_f2--){
var _f4=objj_msgSend(_f1,"objectForKey:",_f0[_f2])._windows,_f5=_f4.length;
while(_f5--){
_f3.push(_f4[_f5]);
}
}
return _f3;
};
CPWindowList=function(){
var _f6=objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),_f7=_f6._windowLevels,_f8=_f6._windowLayers,_f9=_f7.length,_fa=[];
while(_f9--){
var _fb=objj_msgSend(_f8,"objectForKey:",_f7[_f9])._windows,_fc=_fb.length;
while(_fc--){
_fa.push(objj_msgSend(_fb[_fc],"windowNumber"));
}
}
return _fa;
};
