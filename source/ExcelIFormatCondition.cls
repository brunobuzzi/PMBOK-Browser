"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFormatCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFormatCondition guid: (IID fromString: '{00024425-0001-0000-C000-000000000046}')!
ExcelIFormatCondition comment: '<ExcelIFormatCondition> is a wrapper class for the COM interface ''Excel.IFormatCondition'' generated from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024425-0001-0000-C000-000000000046), 
	helpcontext(0x000200bb), 
	hidden
]
interface IFormatCondition : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x0000062d), helpcontext(0x0001062d)]
	HRESULT __stdcall Modify(
		[in]XlFormatConditionType Type,
		[in, optional]VARIANT Operator,
		[in, optional]VARIANT Formula1,
		[in, optional]VARIANT Formula2);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x0000031d), propget, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[out, retval]long* RHS);
	[id(0x0000062b), propget, helpcontext(0x0001062b)]
	HRESULT __stdcall Formula1(
		[out, retval]BSTR* RHS);
	[id(0x0000062c), propget, helpcontext(0x0001062c)]
	HRESULT __stdcall Formula2(
		[out, retval]BSTR* RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
};
'!
!ExcelIFormatCondition categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFormatCondition methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver."

	| answer |
	answer := ExcelBorders newPointer.
	self get_Borders: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 19>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

formula1
	"Answer the <bstr> value of the 'Formula1' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula1: answer.
	^answer asObject
!

formula2
	"Answer the <bstr> value of the 'Formula2' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula2: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Borders: rhs
	"Private - Get the value of the 'Borders' property of the receiver.

		HRESULT __stdcall Borders(
			[out, retval]Borders** RHS);"

	<virtual stdcall: hresult 17 ExcelBorders**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 18 ExcelFont**>
	^self invalidCall!

get_Formula1: rhs
	"Private - Get the value of the 'Formula1' property of the receiver.

		HRESULT __stdcall Formula1(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Formula2: rhs
	"Private - Get the value of the 'Formula2' property of the receiver.

		HRESULT __stdcall Formula2(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 16 ExcelInterior**>
	^self invalidCall!

get_Operator: rhs
	"Private - Get the value of the 'Operator' property of the receiver.

		HRESULT __stdcall Operator(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

modify: type
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 modify: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

modify: type operator: operator formula1: formula1 formula2: formula2
	"Invoke the Modify() method of the COM object."

	^self
		Modify: type
		operator: operator asVariant
		formula1: formula1 asVariant
		formula2: formula2 asVariant
!

Modify: type operator: operator formula1: formula1 formula2: formula2
	"Private - Invoke the Modify() method of the COM object.

		HRESULT __stdcall Modify(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);"

	<virtual stdcall: hresult 11 sdword variant variant variant>
	^self invalidCall!

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Operator: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelIFormatCondition categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #Delete!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #formula1!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #formula2!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Formula1:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Formula2:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Operator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #modify:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #modify:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #Modify:operator:formula1:formula2:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIFormatCondition class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFormatCondition'
		ExcelIFormatCondition defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Modify:operator:formula1:formula2:
			argumentTypes: 'sdword variant variant variant';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Operator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Formula1:
			argumentTypes: 'bstr*';
		defineFunction: #get_Formula2:
			argumentTypes: 'bstr*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #Delete
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFormatCondition initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFormatCondition class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFormatCondition class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

