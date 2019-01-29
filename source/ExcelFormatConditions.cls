"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFormatConditions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFormatConditions guid: (IID fromString: '{00024424-0000-0000-C000-000000000046}')!
ExcelFormatConditions comment: '<ExcelFormatConditions> is a wrapper class generated for the dispatch interface ''Excel.FormatConditions'' from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024424-0000-0000-C000-000000000046), 
	helpcontext(0x000200ba)
]
dispinterface FormatConditions {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		FormatCondition* Item(
			[in]VARIANT Index);
[id(0x000000b5), helpcontext(0x000100b5)]
		FormatCondition* Add(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);
[id(0000000000), propget, helpcontext(0x00010000)]
		FormatCondition* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelFormatConditions categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFormatConditions methodsFor!

_default: index
	"Answer the <ExcelFormatCondition> value of the '_Default' property of the receiver.
		FormatCondition* _Default"

	^ExcelFormatCondition attachInterface: (self getPropertyId: 0 item: index)
!

add: type
	"Answer the <ExcelFormatCondition> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

add: type operator: operator formula1: formula1 formula2: formula2
	"Answer the <ExcelFormatCondition> result of invoking the Add() method of the COM object."

	^ExcelFormatCondition attachInterface: (self invokeId: 181 withArguments:
			((Array new: 4)
				basicAt: 1 put: type;
				basicAt: 2 put: operator;
				basicAt: 3 put: formula1;
				basicAt: 4 put: formula2;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
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

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelFormatCondition> result of invoking the Item() method of the COM object."

	^ExcelFormatCondition attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelFormatConditions categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelFormatConditions categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelFormatConditions categoriesFor: #add:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelFormatConditions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFormatConditions categoriesFor: #count!**auto generated**!properties!public! !
!ExcelFormatConditions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFormatConditions categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelFormatConditions categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelFormatConditions categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelFormatConditions categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelFormatConditions class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFormatConditions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFormatConditions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

