﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICustomProperties
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICustomProperties guid: (IID fromString: '{00024452-0001-0000-C000-000000000046}')!
ExcelICustomProperties comment: '<ExcelICustomProperties> is a wrapper class for the COM interface ''Excel.ICustomProperties'' generated from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024452-0001-0000-C000-000000000046), 
	helpcontext(0x000200e8), 
	hidden
]
interface ICustomProperties : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in]VARIANT Value,
		[out, retval]CustomProperty** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]CustomProperty** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]CustomProperty** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelICustomProperties categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICustomProperties methodsFor!

_default: index
	"Answer the <ExcelCustomProperty> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelCustomProperty newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add: name value: value
	"Answer the <ExcelCustomProperty> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelCustomProperty newPointer.
	self
		Add: name
		value: value asVariant
		rhs: answer.
	^answer asObject
!

Add: name value: value rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in]VARIANT Value,
			[out, retval]CustomProperty** RHS);"

	<virtual stdcall: hresult 11 bstr variant ExcelCustomProperty**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]CustomProperty** RHS);"

	<virtual stdcall: hresult 13 variant ExcelCustomProperty**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 15 IUnknown**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]CustomProperty** RHS);"

	<virtual stdcall: hresult 14 variant ExcelCustomProperty**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelCustomProperty> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelCustomProperty newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelICustomProperties categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelICustomProperties categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelICustomProperties categoriesFor: #add:value:!**auto generated**!methods!public! !
!ExcelICustomProperties categoriesFor: #Add:value:rhs:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICustomProperties categoriesFor: #count!**auto generated**!properties!public! !
!ExcelICustomProperties categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICustomProperties categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICustomProperties!private! !
!ExcelICustomProperties categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelICustomProperties categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelICustomProperties categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelICustomProperties class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICustomProperties'
		ExcelICustomProperties defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:value:rhs:
			argumentTypes: 'bstr variant ExcelCustomProperty**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelCustomProperty**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelCustomProperty**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICustomProperties initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICustomProperties class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICustomProperties class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !
