"Filed out from Dolphin Smalltalk 7"!

RuntimeSessionManager subclass: #PMIBrowserSessionManager
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIBrowserSessionManager guid: (GUID fromString: '{85aae187-1091-4294-bf06-9dfcbf2af218}')!
PMIBrowserSessionManager comment: ''!
!PMIBrowserSessionManager categoriesForClass!System-Support! !
!PMIBrowserSessionManager methodsFor!

allowDuplicate
	"It would appear that the image associated with this session is already open. Since we
	don't want more than one setup menu open, answer false to abort the load."

	^false


!

main

	^PMIBrowserShell show! !
!PMIBrowserSessionManager categoriesFor: #allowDuplicate!operations-startup!public! !
!PMIBrowserSessionManager categoriesFor: #main!public! !

!PMIBrowserSessionManager class methodsFor!

icon

	^PMIBrowserShell icon! !
!PMIBrowserSessionManager class categoriesFor: #icon!public! !

