I;16;AppKit/CPPanel.jc;1377;


{var the_class = objj_allocateClassPair(CPPanel, "CPSavePanel"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_URL")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("runModal"), function $CPSavePanel__runModal(self, _cmd)
{ with(self)
{

    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);

    if (typeof window["cpSavePanel"] === "function")
    {
        var resultObject = window.cpSavePanel(),
            result = resultObject.button;

        _URL = result ? objj_msgSend(CPURL, "URLWithString:", resultObject.URL) : nil;
    }
    else
    {

        var documentName = window.prompt("Document Name:"),
            result = documentName !== null;

        _URL = result ? objj_msgSend(objj_msgSend(self, "class"), "proposedFileURLWithDocumentName:", documentName) : nil;
    }

    return result;
}
},["CPInteger"]), new objj_method(sel_getUid("URL"), function $CPSavePanel__URL(self, _cmd)
{ with(self)
{
    return _URL;
}
},["CPURL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("savePanel"), function $CPSavePanel__savePanel(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPSavePanel, "alloc"), "init");
}
},["id"])]);
}

