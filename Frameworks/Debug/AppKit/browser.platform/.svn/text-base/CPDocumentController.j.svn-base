I;21;Foundation/CPObject.jI;21;Foundation/CPBundle.ji;12;CPDocument.ji;13;CPOpenPanel.jc;14518;;
var CPSharedDocumentController = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPDocumentController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_documents"), new objj_ivar("_documentTypes")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPDocumentController__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _documents = objj_msgSend(objj_msgSend(CPArray, "alloc"), "init");
        if (!CPSharedDocumentController)
            CPSharedDocumentController = self;
        _documentTypes = objj_msgSend(objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "infoDictionary"), "objectForKey:", "CPBundleDocumentTypes");
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("documentForURL:"), function $CPDocumentController__documentForURL_(self, _cmd, aURL)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(_documents, "count");
 for (; index < count; ++index)
    {
        var theDocument = _documents[index];
  if (objj_msgSend(objj_msgSend(theDocument, "fileURL"), "isEqual:", aURL))
   return theDocument;
    }
 return nil;
}
},["CPDocument","CPURL"]), new objj_method(sel_getUid("openUntitledDocumentOfType:display:"), function $CPDocumentController__openUntitledDocumentOfType_display_(self, _cmd, aType, shouldDisplay)
{ with(self)
{
    var theDocument = objj_msgSend(self, "makeUntitledDocumentOfType:error:", aType, nil);
    if (theDocument)
        objj_msgSend(self, "addDocument:", theDocument);
    if (shouldDisplay)
    {
        objj_msgSend(theDocument, "makeWindowControllers");
        objj_msgSend(theDocument, "showWindows");
    }
    return theDocument;
}
},["void","CPString","BOOL"]), new objj_method(sel_getUid("makeUntitledDocumentOfType:error:"), function $CPDocumentController__makeUntitledDocumentOfType_error_(self, _cmd, aType, anError)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "documentClassForType:", aType), "alloc"), "initWithType:error:", aType, anError);
}
},["CPDocument","CPString","{CPError}"]), new objj_method(sel_getUid("openDocumentWithContentsOfURL:display:error:"), function $CPDocumentController__openDocumentWithContentsOfURL_display_error_(self, _cmd, anAbsoluteURL, shouldDisplay, anError)
{ with(self)
{
    var result = objj_msgSend(self, "documentForURL:", anAbsoluteURL);
    if (!result)
    {
        var type = objj_msgSend(self, "typeForContentsOfURL:error:", anAbsoluteURL, anError);
        result = objj_msgSend(self, "makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:", anAbsoluteURL, type, self, sel_getUid("document:didRead:contextInfo:"), objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", shouldDisplay, "shouldDisplay"));
        if (result)
            objj_msgSend(self, "noteNewRecentDocument:", result);
    }
    else if (shouldDisplay)
        objj_msgSend(result, "showWindows");
    return result;
}
},["CPDocument","CPURL","BOOL","CPError"]), new objj_method(sel_getUid("reopenDocumentForURL:withContentsOfURL:error:"), function $CPDocumentController__reopenDocumentForURL_withContentsOfURL_error_(self, _cmd, anAbsoluteURL, absoluteContentsURL, anError)
{ with(self)
{
    return objj_msgSend(self, "makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:", anAbsoluteURL, absoluteContentsURL, objj_msgSend(objj_msgSend(_documentTypes, "objectAtIndex:", 0), "objectForKey:", "CPBundleTypeName"), self, sel_getUid("document:didRead:contextInfo:"), nil);
}
},["CPDocument","CPURL","CPURL","CPError"]), new objj_method(sel_getUid("makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"), function $CPDocumentController__makeDocumentWithContentsOfURL_ofType_delegate_didReadSelector_contextInfo_(self, _cmd, anAbsoluteURL, aType, aDelegate, aSelector, aContextInfo)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "documentClassForType:", aType), "alloc"), "initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:", anAbsoluteURL, aType, aDelegate, aSelector, aContextInfo);
}
},["CPDocument","CPURL","CPString","id","SEL","id"]), new objj_method(sel_getUid("makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"), function $CPDocumentController__makeDocumentForURL_withContentsOfURL_ofType_delegate_didReadSelector_contextInfo_(self, _cmd, anAbsoluteURL, absoluteContentsURL, aType, aDelegate, aSelector, aContextInfo)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "documentClassForType:", aType), "alloc"), "initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:", anAbsoluteURL, absoluteContentsURL, aType, aDelegate, aSelector, aContextInfo);
}
},["CPDocument","CPURL","CPURL","CPString","id","SEL","id"]), new objj_method(sel_getUid("document:didRead:contextInfo:"), function $CPDocumentController__document_didRead_contextInfo_(self, _cmd, aDocument, didRead, aContextInfo)
{ with(self)
{
    if (!didRead)
        return;
    objj_msgSend(self, "addDocument:", aDocument);
    objj_msgSend(aDocument, "makeWindowControllers");
    if (objj_msgSend(aContextInfo, "objectForKey:", "shouldDisplay"))
        objj_msgSend(aDocument, "showWindows");
}
},["void","CPDocument","BOOL","id"]), new objj_method(sel_getUid("newDocument:"), function $CPDocumentController__newDocument_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(self, "openUntitledDocumentOfType:display:", objj_msgSend(objj_msgSend(_documentTypes, "objectAtIndex:", 0), "objectForKey:", "CPBundleTypeName"), YES);
}
},["CFAction","id"]), new objj_method(sel_getUid("openDocument:"), function $CPDocumentController__openDocument_(self, _cmd, aSender)
{ with(self)
{
    var openPanel = objj_msgSend(CPOpenPanel, "openPanel");
    objj_msgSend(openPanel, "runModal");
    var URLs = objj_msgSend(openPanel, "URLs"),
        index = 0,
        count = objj_msgSend(URLs, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "openDocumentWithContentsOfURL:display:error:", objj_msgSend(CPURL, "URLWithString:", URLs[index]), YES, nil);
}
},["void","id"]), new objj_method(sel_getUid("documents"), function $CPDocumentController__documents(self, _cmd)
{ with(self)
{
    return _documents;
}
},["CPArray"]), new objj_method(sel_getUid("addDocument:"), function $CPDocumentController__addDocument_(self, _cmd, aDocument)
{ with(self)
{
    objj_msgSend(_documents, "addObject:", aDocument);
}
},["void","CPDocument"]), new objj_method(sel_getUid("removeDocument:"), function $CPDocumentController__removeDocument_(self, _cmd, aDocument)
{ with(self)
{
    objj_msgSend(_documents, "removeObjectIdenticalTo:", aDocument);
}
},["void","CPDocument"]), new objj_method(sel_getUid("defaultType"), function $CPDocumentController__defaultType(self, _cmd)
{ with(self)
{
    return objj_msgSend(_documentTypes[0], "objectForKey:", "CPBundleTypeName");
}
},["CPString"]), new objj_method(sel_getUid("typeForContentsOfURL:error:"), function $CPDocumentController__typeForContentsOfURL_error_(self, _cmd, anAbsoluteURL, outError)
{ with(self)
{
    var index = 0,
        count = _documentTypes.length,
        extension = objj_msgSend(objj_msgSend(anAbsoluteURL, "pathExtension"), "lowercaseString");
    for (; index < count; ++index)
    {
        var documentType = _documentTypes[index],
            extensions = objj_msgSend(documentType, "objectForKey:", "CFBundleTypeExtensions"),
            extensionIndex = 0,
            extensionCount = extensions.length;
        for (; extensionIndex < extensionCount; ++extensionIndex)
            if (objj_msgSend(extensions[extensionIndex], "lowercaseString") == extension)
                return objj_msgSend(documentType, "objectForKey:", "CPBundleTypeName");
    }
    return objj_msgSend(self, "defaultType");
}
},["CPString","CPURL","CPError"]), new objj_method(sel_getUid("_infoForType:"), function $CPDocumentController___infoForType_(self, _cmd, aType)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(_documentTypes, "count");
    for (;i < count; ++i)
    {
        var documentType = _documentTypes[i];
        if (objj_msgSend(documentType, "objectForKey:", "CPBundleTypeName") == aType)
            return documentType;
    }
    return nil;
}
},["CPDictionary","CPString"]), new objj_method(sel_getUid("documentClassForType:"), function $CPDocumentController__documentClassForType_(self, _cmd, aType)
{ with(self)
{
    var className = objj_msgSend(objj_msgSend(self, "_infoForType:", aType), "objectForKey:", "CPDocumentClass");
    return className ? CPClassFromString(className) : nil;
}
},["Class","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sharedDocumentController"), function $CPDocumentController__sharedDocumentController(self, _cmd)
{ with(self)
{
    if (!CPSharedDocumentController)
        objj_msgSend(objj_msgSend(self, "alloc"), "init");
    return CPSharedDocumentController;
}
},["id"])]);
}
{
var the_class = objj_getClass("CPDocumentController")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPDocumentController\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:"), function $CPDocumentController__closeAllDocumentsWithDelegate_didCloseAllSelector_contextInfo_(self, _cmd, aDelegate, didCloseSelector, info)
{ with(self)
{
    var context = {
        delegate: aDelegate,
        selector: didCloseSelector,
        context: info
    };
    objj_msgSend(self, "_closeDocumentsStartingWith:shouldClose:context:", nil, YES, context);
}
},["void","id","SEL","Object"]), new objj_method(sel_getUid("_closeDocumentsStartingWith:shouldClose:context:"), function $CPDocumentController___closeDocumentsStartingWith_shouldClose_context_(self, _cmd, aDocument, shouldClose, context)
{ with(self)
{
    if (shouldClose)
    {
        objj_msgSend(aDocument, "close");
        if (objj_msgSend(objj_msgSend(self, "documents"), "count") > 0)
        {
            objj_msgSend(objj_msgSend(objj_msgSend(self, "documents"), "lastObject"), "canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:", self, sel_getUid("_closeDocumentsStartingWith:shouldClose:context:"), context);
            return;
        }
    }
    if (objj_msgSend(context.delegate, "respondsToSelector:", context.selector))
        objj_msgSend(context.delegate, context.selector, self, objj_msgSend(objj_msgSend(self, "documents"), "count") === 0, context.context);
}
},["void","CPDocument","BOOL","Object"])]);
}
{
var the_class = objj_getClass("CPDocumentController")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPDocumentController\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("recentDocumentURLs"), function $CPDocumentController__recentDocumentURLs(self, _cmd)
{ with(self)
{
    if (typeof window["cpRecentDocumentURLs"] === 'function')
        return window.cpRecentDocumentURLs();
    return [];
}
},["CPArray"]), new objj_method(sel_getUid("clearRecentDocuments:"), function $CPDocumentController__clearRecentDocuments_(self, _cmd, sender)
{ with(self)
{
    if (typeof window["cpClearRecentDocuments"] === 'function')
        window.cpClearRecentDocuments();
   objj_msgSend(self, "_updateRecentDocumentsMenu");
}
},["void","id"]), new objj_method(sel_getUid("noteNewRecentDocument:"), function $CPDocumentController__noteNewRecentDocument_(self, _cmd, aDocument)
{ with(self)
{
    objj_msgSend(self, "noteNewRecentDocumentURL:", objj_msgSend(objj_msgSend(aDocument, "fileURL"), "absoluteString"));
}
},["void","CPDocument"]), new objj_method(sel_getUid("noteNewRecentDocumentURL:"), function $CPDocumentController__noteNewRecentDocumentURL_(self, _cmd, aURL)
{ with(self)
{
    if (typeof window["cpNoteNewRecentDocumentPath"] === 'function')
        window.cpNoteNewRecentDocumentPath(aURL);
   objj_msgSend(self, "_updateRecentDocumentsMenu");
}
},["void","CPString"]), new objj_method(sel_getUid("_removeAllRecentDocumentsFromMenu:"), function $CPDocumentController___removeAllRecentDocumentsFromMenu_(self, _cmd, aMenu)
{ with(self)
{
    var items = objj_msgSend(aMenu, "itemArray"),
        count = objj_msgSend(items, "count");
    while (count--)
    {
        var item = items[count];
        if (objj_msgSend(item, "action") === sel_getUid("_openRecentDocument:"))
            objj_msgSend(aMenu, "removeItemAtIndex:", count);
    }
}
},["void","CPMenu"]), new objj_method(sel_getUid("_updateRecentDocumentsMenu"), function $CPDocumentController___updateRecentDocumentsMenu(self, _cmd)
{ with(self)
{
    var menu = objj_msgSend(objj_msgSend(CPApp, "mainMenu"), "_menuWithName:", "_CPRecentDocumentsMenu"),
        recentDocuments = objj_msgSend(self, "recentDocumentURLs"),
        menuItems = objj_msgSend(menu, "itemArray"),
        documentCount = objj_msgSend(recentDocuments, "count"),
        menuItemCount = objj_msgSend(menuItems, "count");
    objj_msgSend(self, "_removeAllRecentDocumentsFromMenu:", menu);
    if (menuItemCount)
    {
        if (!documentCount)
        {
            if (objj_msgSend(menuItems[0], "isSeparatorItem"))
                objj_msgSend(menu, "removeItemAtIndex:", 0);
        }
        else
        {
            if (!objj_msgSend(menuItems[0], "isSeparatorItem"))
                objj_msgSend(menu, "insertItem:atIndex:", objj_msgSend(CPMenuItem, "separatorItem"), 0);
        }
    }
    while (documentCount--)
    {
        var path = recentDocuments[documentCount],
            item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", objj_msgSend(path, "lastPathComponent"), sel_getUid("_openRecentDocument:"), nil);
        objj_msgSend(item, "setTag:", path);
        objj_msgSend(menu, "insertItem:atIndex:", item, 0);
    }
}
},["void"]), new objj_method(sel_getUid("_openRecentDocument:"), function $CPDocumentController___openRecentDocument_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "openDocumentWithContentsOfURL:display:error:", objj_msgSend(sender, "tag"), YES, nil);
}
},["void","id"])]);
}

