"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelThreeDFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelThreeDFormat guid: (IID fromString: '{000C0321-0000-0000-C000-000000000046}')!
ExcelThreeDFormat comment: '<ExcelThreeDFormat> is a wrapper class for the COM interface ''Excel.ThreeDFormat'' generated from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0321-0000-0000-C000-000000000046), 
	helpcontext(0x0001d4c0), 
	nonextensible, 
	dual
]
interface ThreeDFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001d0d9)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), helpcontext(0x0001d0ec)]
	HRESULT __stdcall IncrementRotationX(
		[in]float Increment);
	[id(0x0000000b), helpcontext(0x0001d0ed)]
	HRESULT __stdcall IncrementRotationY(
		[in]float Increment);
	[id(0x0000000c), helpcontext(0x0001d0da)]
	HRESULT __stdcall ResetRotation();
	[id(0x0000000d), helpcontext(0x0001d0db)]
	HRESULT __stdcall SetThreeDFormat(
		[in]MsoPresetThreeDFormat PresetThreeDFormat);
	[id(0x0000000e), helpcontext(0x0001d0dc)]
	HRESULT __stdcall SetExtrusionDirection(
		[in]MsoPresetExtrusionDirection PresetExtrusionDirection);
	[id(0x00000064), propget, helpcontext(0x0001d0dd)]
	HRESULT __stdcall Depth(
		[out, retval]float* Depth);
	[id(0x00000064), propput, helpcontext(0x0001d0dd)]
	HRESULT __stdcall Depth(
		[in]float Depth);
	[id(0x00000065), propget, helpcontext(0x0001d0de)]
	HRESULT __stdcall ExtrusionColor(
		[out, retval]ColorFormat** ExtrusionColor);
	[id(0x00000066), propget, helpcontext(0x0001d0df)]
	HRESULT __stdcall ExtrusionColorType(
		[out, retval]MsoExtrusionColorType* ExtrusionColorType);
	[id(0x00000066), propput, helpcontext(0x0001d0df)]
	HRESULT __stdcall ExtrusionColorType(
		[in]MsoExtrusionColorType ExtrusionColorType);
	[id(0x00000067), propget, helpcontext(0x0001d0e0)]
	HRESULT __stdcall Perspective(
		[out, retval]MsoTriState* Perspective);
	[id(0x00000067), propput, helpcontext(0x0001d0e0)]
	HRESULT __stdcall Perspective(
		[in]MsoTriState Perspective);
	[id(0x00000068), propget, helpcontext(0x0001d0e1)]
	HRESULT __stdcall PresetExtrusionDirection(
		[out, retval]MsoPresetExtrusionDirection* PresetExtrusionDirection);
	[id(0x00000069), propget, helpcontext(0x0001d0e2)]
	HRESULT __stdcall PresetLightingDirection(
		[out, retval]MsoPresetLightingDirection* PresetLightingDirection);
	[id(0x00000069), propput, helpcontext(0x0001d0e2)]
	HRESULT __stdcall PresetLightingDirection(
		[in]MsoPresetLightingDirection PresetLightingDirection);
	[id(0x0000006a), propget, helpcontext(0x0001d0e3)]
	HRESULT __stdcall PresetLightingSoftness(
		[out, retval]MsoPresetLightingSoftness* PresetLightingSoftness);
	[id(0x0000006a), propput, helpcontext(0x0001d0e3)]
	HRESULT __stdcall PresetLightingSoftness(
		[in]MsoPresetLightingSoftness PresetLightingSoftness);
	[id(0x0000006b), propget, helpcontext(0x0001d0e4)]
	HRESULT __stdcall PresetMaterial(
		[out, retval]MsoPresetMaterial* PresetMaterial);
	[id(0x0000006b), propput, helpcontext(0x0001d0e4)]
	HRESULT __stdcall PresetMaterial(
		[in]MsoPresetMaterial PresetMaterial);
	[id(0x0000006c), propget, helpcontext(0x0001d0e5)]
	HRESULT __stdcall PresetThreeDFormat(
		[out, retval]MsoPresetThreeDFormat* PresetThreeDFormat);
	[id(0x0000006d), propget, helpcontext(0x0001d0e6)]
	HRESULT __stdcall RotationX(
		[out, retval]float* RotationX);
	[id(0x0000006d), propput, helpcontext(0x0001d0e6)]
	HRESULT __stdcall RotationX(
		[in]float RotationX);
	[id(0x0000006e), propget, helpcontext(0x0001d0e7)]
	HRESULT __stdcall RotationY(
		[out, retval]float* RotationY);
	[id(0x0000006e), propput, helpcontext(0x0001d0e7)]
	HRESULT __stdcall RotationY(
		[in]float RotationY);
	[id(0x0000006f), propget, helpcontext(0x0001d0e8)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* Visible);
	[id(0x0000006f), propput, helpcontext(0x0001d0e8)]
	HRESULT __stdcall Visible(
		[in]MsoTriState Visible);
};
'!
!ExcelThreeDFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelThreeDFormat methodsFor!

depth
	"Answer the <float> value of the 'Depth' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Depth: answer.
	^answer asObject
!

depth: depth
	"Set the 'Depth' property of the receiver to the <float> value of the argument."

	self put_Depth: depth
!

extrusionColor
	"Answer the <ExcelColorFormat> value of the 'ExtrusionColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_ExtrusionColor: answer.
	^answer asObject
!

extrusionColorType
	"Answer the <sdword> value of the 'ExtrusionColorType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ExtrusionColorType: answer.
	^answer asObject
!

extrusionColorType: extrusionColorType
	"Set the 'ExtrusionColorType' property of the receiver to the <sdword> value of the argument."

	self put_ExtrusionColorType: extrusionColorType
!

get_Depth: depth
	"Private - Get the value of the 'Depth' property of the receiver.

		HRESULT __stdcall Depth(
			[out, retval]float* Depth);"

	<virtual stdcall: hresult 16 float*>
	^self invalidCall!

get_ExtrusionColor: extrusionColor
	"Private - Get the value of the 'ExtrusionColor' property of the receiver.

		HRESULT __stdcall ExtrusionColor(
			[out, retval]ColorFormat** ExtrusionColor);"

	<virtual stdcall: hresult 18 ExcelColorFormat**>
	^self invalidCall!

get_ExtrusionColorType: extrusionColorType
	"Private - Get the value of the 'ExtrusionColorType' property of the receiver.

		HRESULT __stdcall ExtrusionColorType(
			[out, retval]MsoExtrusionColorType* ExtrusionColorType);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Perspective: perspective
	"Private - Get the value of the 'Perspective' property of the receiver.

		HRESULT __stdcall Perspective(
			[out, retval]MsoTriState* Perspective);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_PresetExtrusionDirection: presetExtrusionDirection
	"Private - Get the value of the 'PresetExtrusionDirection' property of the receiver.

		HRESULT __stdcall PresetExtrusionDirection(
			[out, retval]MsoPresetExtrusionDirection* PresetExtrusionDirection);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_PresetLightingDirection: presetLightingDirection
	"Private - Get the value of the 'PresetLightingDirection' property of the receiver.

		HRESULT __stdcall PresetLightingDirection(
			[out, retval]MsoPresetLightingDirection* PresetLightingDirection);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_PresetLightingSoftness: presetLightingSoftness
	"Private - Get the value of the 'PresetLightingSoftness' property of the receiver.

		HRESULT __stdcall PresetLightingSoftness(
			[out, retval]MsoPresetLightingSoftness* PresetLightingSoftness);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_PresetMaterial: presetMaterial
	"Private - Get the value of the 'PresetMaterial' property of the receiver.

		HRESULT __stdcall PresetMaterial(
			[out, retval]MsoPresetMaterial* PresetMaterial);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_PresetThreeDFormat: presetThreeDFormat
	"Private - Get the value of the 'PresetThreeDFormat' property of the receiver.

		HRESULT __stdcall PresetThreeDFormat(
			[out, retval]MsoPresetThreeDFormat* PresetThreeDFormat);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_RotationX: rotationX
	"Private - Get the value of the 'RotationX' property of the receiver.

		HRESULT __stdcall RotationX(
			[out, retval]float* RotationX);"

	<virtual stdcall: hresult 31 float*>
	^self invalidCall!

get_RotationY: rotationY
	"Private - Get the value of the 'RotationY' property of the receiver.

		HRESULT __stdcall RotationY(
			[out, retval]float* RotationY);"

	<virtual stdcall: hresult 33 float*>
	^self invalidCall!

get_Visible: visible
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* Visible);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

incrementRotationX: increment
	"Invoke the IncrementRotationX() method of the COM object."

	^self IncrementRotationX: increment
!

IncrementRotationX: increment
	"Private - Invoke the IncrementRotationX() method of the COM object.

		HRESULT __stdcall IncrementRotationX(
			[in]float Increment);"

	<virtual stdcall: hresult 11 float>
	^self invalidCall!

incrementRotationY: increment
	"Invoke the IncrementRotationY() method of the COM object."

	^self IncrementRotationY: increment
!

IncrementRotationY: increment
	"Private - Invoke the IncrementRotationY() method of the COM object.

		HRESULT __stdcall IncrementRotationY(
			[in]float Increment);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

perspective
	"Answer the <sdword> value of the 'Perspective' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Perspective: answer.
	^answer asObject
!

perspective: perspective
	"Set the 'Perspective' property of the receiver to the <sdword> value of the argument."

	self put_Perspective: perspective
!

presetExtrusionDirection
	"Answer the <sdword> value of the 'PresetExtrusionDirection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetExtrusionDirection: answer.
	^answer asObject
!

presetLightingDirection
	"Answer the <sdword> value of the 'PresetLightingDirection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetLightingDirection: answer.
	^answer asObject
!

presetLightingDirection: presetLightingDirection
	"Set the 'PresetLightingDirection' property of the receiver to the <sdword> value of the argument."

	self put_PresetLightingDirection: presetLightingDirection
!

presetLightingSoftness
	"Answer the <sdword> value of the 'PresetLightingSoftness' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetLightingSoftness: answer.
	^answer asObject
!

presetLightingSoftness: presetLightingSoftness
	"Set the 'PresetLightingSoftness' property of the receiver to the <sdword> value of the argument."

	self put_PresetLightingSoftness: presetLightingSoftness
!

presetMaterial
	"Answer the <sdword> value of the 'PresetMaterial' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetMaterial: answer.
	^answer asObject
!

presetMaterial: presetMaterial
	"Set the 'PresetMaterial' property of the receiver to the <sdword> value of the argument."

	self put_PresetMaterial: presetMaterial
!

presetThreeDFormat
	"Answer the <sdword> value of the 'PresetThreeDFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetThreeDFormat: answer.
	^answer asObject
!

put_Depth: depth
	"Private - Set the value of the 'Depth' property of the object wrapped by the 
	 receiver to the <float> argument, depth.

		HRESULT __stdcall Depth(
			[in]float Depth);"

	<virtual stdcall: hresult 17 float>
	^self invalidCall!

put_ExtrusionColorType: extrusionColorType
	"Private - Set the value of the 'ExtrusionColorType' property of the object wrapped by the 
	 receiver to the <sdword> argument, extrusionColorType.

		HRESULT __stdcall ExtrusionColorType(
			[in]MsoExtrusionColorType ExtrusionColorType);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_Perspective: perspective
	"Private - Set the value of the 'Perspective' property of the object wrapped by the 
	 receiver to the <sdword> argument, perspective.

		HRESULT __stdcall Perspective(
			[in]MsoTriState Perspective);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_PresetLightingDirection: presetLightingDirection
	"Private - Set the value of the 'PresetLightingDirection' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetLightingDirection.

		HRESULT __stdcall PresetLightingDirection(
			[in]MsoPresetLightingDirection PresetLightingDirection);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_PresetLightingSoftness: presetLightingSoftness
	"Private - Set the value of the 'PresetLightingSoftness' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetLightingSoftness.

		HRESULT __stdcall PresetLightingSoftness(
			[in]MsoPresetLightingSoftness PresetLightingSoftness);"

	<virtual stdcall: hresult 27 sdword>
	^self invalidCall!

put_PresetMaterial: presetMaterial
	"Private - Set the value of the 'PresetMaterial' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetMaterial.

		HRESULT __stdcall PresetMaterial(
			[in]MsoPresetMaterial PresetMaterial);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_RotationX: rotationX
	"Private - Set the value of the 'RotationX' property of the object wrapped by the 
	 receiver to the <float> argument, rotationX.

		HRESULT __stdcall RotationX(
			[in]float RotationX);"

	<virtual stdcall: hresult 32 float>
	^self invalidCall!

put_RotationY: rotationY
	"Private - Set the value of the 'RotationY' property of the object wrapped by the 
	 receiver to the <float> argument, rotationY.

		HRESULT __stdcall RotationY(
			[in]float RotationY);"

	<virtual stdcall: hresult 34 float>
	^self invalidCall!

put_Visible: visible
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, visible.

		HRESULT __stdcall Visible(
			[in]MsoTriState Visible);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

resetRotation
	"Invoke the ResetRotation() method of the COM object."

	^self ResetRotation
!

ResetRotation
	"Private - Invoke the ResetRotation() method of the COM object.

		HRESULT __stdcall ResetRotation();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

rotationX
	"Answer the <float> value of the 'RotationX' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_RotationX: answer.
	^answer asObject
!

rotationX: rotationX
	"Set the 'RotationX' property of the receiver to the <float> value of the argument."

	self put_RotationX: rotationX
!

rotationY
	"Answer the <float> value of the 'RotationY' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_RotationY: answer.
	^answer asObject
!

rotationY: rotationY
	"Set the 'RotationY' property of the receiver to the <float> value of the argument."

	self put_RotationY: rotationY
!

setExtrusionDirection: presetExtrusionDirection
	"Invoke the SetExtrusionDirection() method of the COM object."

	^self SetExtrusionDirection: presetExtrusionDirection
!

SetExtrusionDirection: presetExtrusionDirection
	"Private - Invoke the SetExtrusionDirection() method of the COM object.

		HRESULT __stdcall SetExtrusionDirection(
			[in]MsoPresetExtrusionDirection PresetExtrusionDirection);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

setThreeDFormat: presetThreeDFormat
	"Invoke the SetThreeDFormat() method of the COM object."

	^self SetThreeDFormat: presetThreeDFormat
!

SetThreeDFormat: presetThreeDFormat
	"Private - Invoke the SetThreeDFormat() method of the COM object.

		HRESULT __stdcall SetThreeDFormat(
			[in]MsoPresetThreeDFormat PresetThreeDFormat);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Visible: answer.
	^answer asObject
!

visible: visible
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument."

	self put_Visible: visible
! !
!ExcelThreeDFormat categoriesFor: #depth!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #depth:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #extrusionColor!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #extrusionColorType!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #extrusionColorType:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #get_Depth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ExtrusionColor:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ExtrusionColorType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Perspective:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetExtrusionDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetLightingDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetLightingSoftness:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetMaterial:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetThreeDFormat:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_RotationX:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_RotationY:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationX:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationX:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationY:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationY:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelThreeDFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelThreeDFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #perspective!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #perspective:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetExtrusionDirection!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingDirection!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingDirection:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingSoftness!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingSoftness:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetMaterial!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetMaterial:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetThreeDFormat!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #put_Depth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_ExtrusionColorType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_Perspective:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetLightingDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetLightingSoftness:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetMaterial:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_RotationX:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_RotationY:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #resetRotation!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #ResetRotation!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #rotationX!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationX:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationY!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationY:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #setExtrusionDirection:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #SetExtrusionDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #setThreeDFormat:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #SetThreeDFormat:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelThreeDFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ThreeDFormat'
		ExcelThreeDFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #IncrementRotationX:
			argumentTypes: 'float';
		defineFunction: #IncrementRotationY:
			argumentTypes: 'float';
		defineFunction: #ResetRotation;
		defineFunction: #SetThreeDFormat:
			argumentTypes: 'sdword';
		defineFunction: #SetExtrusionDirection:
			argumentTypes: 'sdword';
		defineFunction: #get_Depth:
			argumentTypes: 'float*';
		defineFunction: #put_Depth:
			argumentTypes: 'float';
		defineFunction: #get_ExtrusionColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #get_ExtrusionColorType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ExtrusionColorType:
			argumentTypes: 'sdword';
		defineFunction: #get_Perspective:
			argumentTypes: 'sdword*';
		defineFunction: #put_Perspective:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetExtrusionDirection:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresetLightingDirection:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetLightingDirection:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetLightingSoftness:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetLightingSoftness:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetMaterial:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetMaterial:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetThreeDFormat:
			argumentTypes: 'sdword*';
		defineFunction: #get_RotationX:
			argumentTypes: 'float*';
		defineFunction: #put_RotationX:
			argumentTypes: 'float';
		defineFunction: #get_RotationY:
			argumentTypes: 'float*';
		defineFunction: #put_RotationY:
			argumentTypes: 'float';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelThreeDFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelThreeDFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelThreeDFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

