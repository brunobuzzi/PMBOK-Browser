"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFormatCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFormatCondition guid: (IID fromString: '{00024425-0000-0000-C000-000000000046}')!
ExcelFormatCondition comment: '<ExcelFormatCondition> is a wrapper class generated for the dispatch interface ''Excel.FormatCondition'' from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024425-0000-0000-C000-000000000046), 
	helpcontext(0x000200bb)
]
dispinterface FormatCondition {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000062d), helpcontext(0x0001062d)]
		void Modify(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x0000031d), propget, helpcontext(0x0001031d)]
		long Operator();
[id(0x0000062b), propget, helpcontext(0x0001062b)]
		BSTR Formula1();
[id(0x0000062c), propget, helpcontext(0x0001062c)]
		BSTR Formula2();
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelFormatCondition categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFormatCondition methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver.
		Borders* Borders"

	^ExcelBorders attachInterface: (self getPropertyId: 435)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

formula1
	"Answer the <bstr> value of the 'Formula1' property of the receiver.
		BSTR Formula1"

	^(self getPropertyId: 1579)
!

formula2
	"Answer the <bstr> value of the 'Formula2' property of the receiver.
		BSTR Formula2"

	^(self getPropertyId: 1580)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

modify: type
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 modify: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

modify: type operator: operator formula1: formula1 formula2: formula2
	"Invoke the Modify() method of the COM object."

	(self invokeId: 1581 withArguments:
			((Array new: 4)
				basicAt: 1 put: type;
				basicAt: 2 put: operator;
				basicAt: 3 put: formula1;
				basicAt: 4 put: formula2;
				yourself))
!

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver.
		long Operator"

	^(self getPropertyId: 797)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelFormatCondition categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #font!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #formula1!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #formula2!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #modify:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #modify:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #type!**auto generated**!properties!public! !

!ExcelFormatCondition class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFormatCondition initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFormatCondition class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

