I;16;AppKit/CPPanel.jc;2959;


{var the_class = objj_allocateClassPair(CPPanel, "CPOpenPanel"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_canChooseFiles"), new objj_ivar("_canChooseDirectories"), new objj_ivar("_allowsMultipleSelection"), new objj_ivar("_directoryURL"), new objj_ivar("_URLs")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("canChooseFiles"), function $CPOpenPanel__canChooseFiles(self, _cmd)
{ with(self)
{
return _canChooseFiles;
}
},["id"]),
new objj_method(sel_getUid("setCanChooseFiles:"), function $CPOpenPanel__setCanChooseFiles_(self, _cmd, newValue)
{ with(self)
{
_canChooseFiles = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("canChooseDirectories"), function $CPOpenPanel__canChooseDirectories(self, _cmd)
{ with(self)
{
return _canChooseDirectories;
}
},["id"]),
new objj_method(sel_getUid("setCanChooseDirectories:"), function $CPOpenPanel__setCanChooseDirectories_(self, _cmd, newValue)
{ with(self)
{
_canChooseDirectories = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("allowsMultipleSelection"), function $CPOpenPanel__allowsMultipleSelection(self, _cmd)
{ with(self)
{
return _allowsMultipleSelection;
}
},["id"]),
new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $CPOpenPanel__setAllowsMultipleSelection_(self, _cmd, newValue)
{ with(self)
{
_allowsMultipleSelection = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("directoryURL"), function $CPOpenPanel__directoryURL(self, _cmd)
{ with(self)
{
return _directoryURL;
}
},["id"]),
new objj_method(sel_getUid("setDirectoryURL:"), function $CPOpenPanel__setDirectoryURL_(self, _cmd, newValue)
{ with(self)
{
_directoryURL = newValue;
}
},["void","id"]), new objj_method(sel_getUid("runModal"), function $CPOpenPanel__runModal(self, _cmd)
{ with(self)
{
    if (typeof window["cpOpenPanel"] === "function")
    {

        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);

        var options = { directoryURL: objj_msgSend(self, "directoryURL"),
                        canChooseFiles: objj_msgSend(self, "canChooseFiles"),
                        canChooseDirectories: objj_msgSend(self, "canChooseDirectories"),
                        allowsMultipleSelection: objj_msgSend(self, "allowsMultipleSelection") };

        var result = window.cpOpenPanel(options);

        _URLs = result.URLs;

        return result.button;
    }

    throw "-runModal is unimplemented.";
}
},["CPInteger"]), new objj_method(sel_getUid("URLs"), function $CPOpenPanel__URLs(self, _cmd)
{ with(self)
{
    return _URLs;
}
},["CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("openPanel"), function $CPOpenPanel__openPanel(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPOpenPanel, "alloc"), "init");
}
},["id"])]);
}

