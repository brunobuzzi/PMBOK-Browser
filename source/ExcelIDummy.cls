"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDummy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDummy guid: (IID fromString: '{0002442E-0001-0000-C000-000000000046}')!
ExcelIDummy comment: '<ExcelIDummy> is a wrapper class for the COM interface ''Excel.IDummy'' generated from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002442E-0001-0000-C000-000000000046), 
	helpcontext(0x000200c4), 
	hidden
]
interface IDummy : IDispatch
 {
	[id(0x00000644), helpcontext(0x00010644)]
	HRESULT __stdcall _ActiveSheetOrChart();
	[id(0x0000041f), helpcontext(0x0001041f)]
	HRESULT __stdcall RGB();
	[id(0x00000420), helpcontext(0x00010420)]
	HRESULT __stdcall ChDir();
	[id(0x00000475), helpcontext(0x00010475)]
	HRESULT __stdcall DoScript();
	[id(0x00000473), helpcontext(0x00010473)]
	HRESULT __stdcall DirectObject();
	[id(0x00000758), helpcontext(0x00010758)]
	HRESULT __stdcall RefreshDocument();
};
'!
!ExcelIDummy categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDummy methodsFor!

_activeSheetOrChart
	"Invoke the _ActiveSheetOrChart() method of the COM object."

	^self _ActiveSheetOrChart
!

_ActiveSheetOrChart
	"Private - Invoke the _ActiveSheetOrChart() method of the COM object.

		HRESULT __stdcall _ActiveSheetOrChart();"

	<virtual stdcall: hresult 8>
	^self invalidCall!

chDir
	"Invoke the ChDir() method of the COM object."

	^self ChDir
!

ChDir
	"Private - Invoke the ChDir() method of the COM object.

		HRESULT __stdcall ChDir();"

	<virtual stdcall: hresult 10>
	^self invalidCall!

directObject
	"Invoke the DirectObject() method of the COM object."

	^self DirectObject
!

DirectObject
	"Private - Invoke the DirectObject() method of the COM object.

		HRESULT __stdcall DirectObject();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

doScript
	"Invoke the DoScript() method of the COM object."

	^self DoScript
!

DoScript
	"Private - Invoke the DoScript() method of the COM object.

		HRESULT __stdcall DoScript();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

refreshDocument
	"Invoke the RefreshDocument() method of the COM object."

	^self RefreshDocument
!

RefreshDocument
	"Private - Invoke the RefreshDocument() method of the COM object.

		HRESULT __stdcall RefreshDocument();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

rgb
	"Invoke the RGB() method of the COM object."

	^self RGB
!

RGB
	"Private - Invoke the RGB() method of the COM object.

		HRESULT __stdcall RGB();"

	<virtual stdcall: hresult 9>
	^self invalidCall! !
!ExcelIDummy categoriesFor: #_activeSheetOrChart!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #_ActiveSheetOrChart!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #chDir!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #ChDir!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #directObject!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #DirectObject!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #doScript!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #DoScript!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #refreshDocument!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #RefreshDocument!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #rgb!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #RGB!**auto generated**!COM Interfaces-IDummy!private! !

!ExcelIDummy class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDummy'
		ExcelIDummy defineTemplate"

	self
		defineFunction: #_ActiveSheetOrChart;
		defineFunction: #RGB;
		defineFunction: #ChDir;
		defineFunction: #DoScript;
		defineFunction: #DirectObject;
		defineFunction: #RefreshDocument
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDummy initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDummy class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDummy class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

