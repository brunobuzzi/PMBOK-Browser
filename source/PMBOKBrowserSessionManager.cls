"Filed out from Dolphin Smalltalk 7"!

RuntimeSessionManager subclass: #PMBOKBrowserSessionManager
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKBrowserSessionManager guid: (GUID fromString: '{85aae187-1091-4294-bf06-9dfcbf2af218}')!
PMBOKBrowserSessionManager comment: ''!
!PMBOKBrowserSessionManager categoriesForClass!System-Support! !
!PMBOKBrowserSessionManager methodsFor!

allowDuplicate
	"It would appear that the image associated with this session is already open. Since we
	don't want more than one setup menu open, answer false to abort the load."

	^false


!

main
	^PMBOKBrowserShell show! !
!PMBOKBrowserSessionManager categoriesFor: #allowDuplicate!operations-startup!public! !
!PMBOKBrowserSessionManager categoriesFor: #main!public! !

!PMBOKBrowserSessionManager class methodsFor!

icon
	^PMBOKBrowserShell icon! !
!PMBOKBrowserSessionManager class categoriesFor: #icon!public! !

