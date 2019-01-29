﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSeriesLines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSeriesLines guid: (IID fromString: '{000208C1-0000-0000-C000-000000000046}')!
ExcelSeriesLines comment: '<ExcelSeriesLines> is a wrapper class generated for the dispatch interface ''Excel.SeriesLines'' from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208C1-0000-0000-C000-000000000046), 
	helpcontext(0x00020081)
]
dispinterface SeriesLines {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
};
'!
!ExcelSeriesLines categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSeriesLines methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
! !
!ExcelSeriesLines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSeriesLines categoriesFor: #border!**auto generated**!properties!public! !
!ExcelSeriesLines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSeriesLines categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelSeriesLines categoriesFor: #name!**auto generated**!properties!public! !
!ExcelSeriesLines categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSeriesLines categoriesFor: #select!**auto generated**!methods!public! !

!ExcelSeriesLines class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSeriesLines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSeriesLines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !
