"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelFillFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFillFormat guid: (IID fromString: '{000C0314-0000-0000-C000-000000000046}')!
ExcelFillFormat comment: '<ExcelFillFormat> is a wrapper class for the COM interface ''Excel.FillFormat'' generated from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0314-0000-0000-C000-000000000046), 
	helpcontext(0x0001c138), 
	nonextensible, 
	dual
]
interface FillFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001c139)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), hidden, helpcontext(0x0001c13a)]
	HRESULT __stdcall Background();
	[id(0x0000000b), helpcontext(0x0001c13b)]
	HRESULT __stdcall OneColorGradient(
		[in]MsoGradientStyle Style,
		[in]int Variant,
		[in]float Degree);
	[id(0x0000000c), helpcontext(0x0001c13c)]
	HRESULT __stdcall Patterned(
		[in]MsoPatternType Pattern);
	[id(0x0000000d), helpcontext(0x0001c13d)]
	HRESULT __stdcall PresetGradient(
		[in]MsoGradientStyle Style,
		[in]int Variant,
		[in]MsoPresetGradientType PresetGradientType);
	[id(0x0000000e), helpcontext(0x0001c13e)]
	HRESULT __stdcall PresetTextured(
		[in]MsoPresetTexture PresetTexture);
	[id(0x0000000f), helpcontext(0x0001c13f)]
	HRESULT __stdcall Solid();
	[id(0x00000010), helpcontext(0x0001c140)]
	HRESULT __stdcall TwoColorGradient(
		[in]MsoGradientStyle Style,
		[in]int Variant);
	[id(0x00000011), helpcontext(0x0001c141)]
	HRESULT __stdcall UserPicture(
		[in]BSTR PictureFile);
	[id(0x00000012), helpcontext(0x0001c142)]
	HRESULT __stdcall UserTextured(
		[in]BSTR TextureFile);
	[id(0x00000064), propget, helpcontext(0x0001c143)]
	HRESULT __stdcall BackColor(
		[out, retval]ColorFormat** BackColor);
	[id(0x00000064), propput, helpcontext(0x0001c143)]
	HRESULT __stdcall BackColor(
		[in]ColorFormat* BackColor);
	[id(0x00000065), propget, helpcontext(0x0001c144)]
	HRESULT __stdcall ForeColor(
		[out, retval]ColorFormat** ForeColor);
	[id(0x00000065), propput, helpcontext(0x0001c144)]
	HRESULT __stdcall ForeColor(
		[in]ColorFormat* ForeColor);
	[id(0x00000066), propget, helpcontext(0x0001c145)]
	HRESULT __stdcall GradientColorType(
		[out, retval]MsoGradientColorType* GradientColorType);
	[id(0x00000067), propget, helpcontext(0x0001c146)]
	HRESULT __stdcall GradientDegree(
		[out, retval]float* GradientDegree);
	[id(0x00000068), propget, helpcontext(0x0001c147)]
	HRESULT __stdcall GradientStyle(
		[out, retval]MsoGradientStyle* GradientStyle);
	[id(0x00000069), propget, helpcontext(0x0001c148)]
	HRESULT __stdcall GradientVariant(
		[out, retval]int* GradientVariant);
	[id(0x0000006a), propget, helpcontext(0x0001c149)]
	HRESULT __stdcall Pattern(
		[out, retval]MsoPatternType* Pattern);
	[id(0x0000006b), propget, helpcontext(0x0001c14a)]
	HRESULT __stdcall PresetGradientType(
		[out, retval]MsoPresetGradientType* PresetGradientType);
	[id(0x0000006c), propget, helpcontext(0x0001c14b)]
	HRESULT __stdcall PresetTexture(
		[out, retval]MsoPresetTexture* PresetTexture);
	[id(0x0000006d), propget, helpcontext(0x0001c14c)]
	HRESULT __stdcall TextureName(
		[out, retval]BSTR* TextureName);
	[id(0x0000006e), propget, helpcontext(0x0001c14d)]
	HRESULT __stdcall TextureType(
		[out, retval]MsoTextureType* TextureType);
	[id(0x0000006f), propget, helpcontext(0x0001c14e)]
	HRESULT __stdcall Transparency(
		[out, retval]float* Transparency);
	[id(0x0000006f), propput, helpcontext(0x0001c14e)]
	HRESULT __stdcall Transparency(
		[in]float Transparency);
	[id(0x00000070), propget, helpcontext(0x0001c14f)]
	HRESULT __stdcall Type(
		[out, retval]MsoFillType* Type);
	[id(0x00000071), propget, helpcontext(0x0001c150)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* Visible);
	[id(0x00000071), propput, helpcontext(0x0001c150)]
	HRESULT __stdcall Visible(
		[in]MsoTriState Visible);
};
'!
!ExcelFillFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelFillFormat methodsFor!

backColor
	"Answer the <ExcelColorFormat> value of the 'BackColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_BackColor: answer.
	^answer asObject
!

backColor: backColor
	"Set the 'BackColor' property of the receiver to the <ExcelColorFormat*> value of the argument."

	self put_BackColor: backColor
!

background
	"Invoke the Background() method of the COM object."

	^self Background
!

Background
	"Private - Invoke the Background() method of the COM object.

		HRESULT __stdcall Background();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

foreColor
	"Answer the <ExcelColorFormat> value of the 'ForeColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_ForeColor: answer.
	^answer asObject
!

foreColor: foreColor
	"Set the 'ForeColor' property of the receiver to the <ExcelColorFormat*> value of the argument."

	self put_ForeColor: foreColor
!

get_BackColor: backColor
	"Private - Get the value of the 'BackColor' property of the receiver.

		HRESULT __stdcall BackColor(
			[out, retval]ColorFormat** BackColor);"

	<virtual stdcall: hresult 20 ExcelColorFormat**>
	^self invalidCall!

get_ForeColor: foreColor
	"Private - Get the value of the 'ForeColor' property of the receiver.

		HRESULT __stdcall ForeColor(
			[out, retval]ColorFormat** ForeColor);"

	<virtual stdcall: hresult 22 ExcelColorFormat**>
	^self invalidCall!

get_GradientColorType: gradientColorType
	"Private - Get the value of the 'GradientColorType' property of the receiver.

		HRESULT __stdcall GradientColorType(
			[out, retval]MsoGradientColorType* GradientColorType);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_GradientDegree: gradientDegree
	"Private - Get the value of the 'GradientDegree' property of the receiver.

		HRESULT __stdcall GradientDegree(
			[out, retval]float* GradientDegree);"

	<virtual stdcall: hresult 25 float*>
	^self invalidCall!

get_GradientStyle: gradientStyle
	"Private - Get the value of the 'GradientStyle' property of the receiver.

		HRESULT __stdcall GradientStyle(
			[out, retval]MsoGradientStyle* GradientStyle);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_GradientVariant: gradientVariant
	"Private - Get the value of the 'GradientVariant' property of the receiver.

		HRESULT __stdcall GradientVariant(
			[out, retval]int* GradientVariant);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Pattern: pattern
	"Private - Get the value of the 'Pattern' property of the receiver.

		HRESULT __stdcall Pattern(
			[out, retval]MsoPatternType* Pattern);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_PresetGradientType: presetGradientType
	"Private - Get the value of the 'PresetGradientType' property of the receiver.

		HRESULT __stdcall PresetGradientType(
			[out, retval]MsoPresetGradientType* PresetGradientType);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_PresetTexture: presetTexture
	"Private - Get the value of the 'PresetTexture' property of the receiver.

		HRESULT __stdcall PresetTexture(
			[out, retval]MsoPresetTexture* PresetTexture);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_TextureName: textureName
	"Private - Get the value of the 'TextureName' property of the receiver.

		HRESULT __stdcall TextureName(
			[out, retval]BSTR* TextureName);"

	<virtual stdcall: hresult 31 bstr*>
	^self invalidCall!

get_TextureType: textureType
	"Private - Get the value of the 'TextureType' property of the receiver.

		HRESULT __stdcall TextureType(
			[out, retval]MsoTextureType* TextureType);"

	<virtual stdcall: hresult 32 sdword*>
	^self invalidCall!

get_Transparency: transparency
	"Private - Get the value of the 'Transparency' property of the receiver.

		HRESULT __stdcall Transparency(
			[out, retval]float* Transparency);"

	<virtual stdcall: hresult 33 float*>
	^self invalidCall!

get_Type: type
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoFillType* Type);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Visible: visible
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* Visible);"

	<virtual stdcall: hresult 36 sdword*>
	^self invalidCall!

gradientColorType
	"Answer the <sdword> value of the 'GradientColorType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GradientColorType: answer.
	^answer asObject
!

gradientDegree
	"Answer the <float> value of the 'GradientDegree' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_GradientDegree: answer.
	^answer asObject
!

gradientStyle
	"Answer the <sdword> value of the 'GradientStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GradientStyle: answer.
	^answer asObject
!

gradientVariant
	"Answer the <sdword> value of the 'GradientVariant' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GradientVariant: answer.
	^answer asObject
!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

oneColorGradient: style variant: variant degree: degree
	"Invoke the OneColorGradient() method of the COM object."

	^self
		OneColorGradient: style
		variant: variant
		degree: degree
!

OneColorGradient: style variant: variant degree: degree
	"Private - Invoke the OneColorGradient() method of the COM object.

		HRESULT __stdcall OneColorGradient(
			[in]MsoGradientStyle Style,
			[in]int Variant,
			[in]float Degree);"

	<virtual stdcall: hresult 12 sdword sdword float>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pattern
	"Answer the <sdword> value of the 'Pattern' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Pattern: answer.
	^answer asObject
!

patterned: pattern
	"Invoke the Patterned() method of the COM object."

	^self Patterned: pattern
!

Patterned: pattern
	"Private - Invoke the Patterned() method of the COM object.

		HRESULT __stdcall Patterned(
			[in]MsoPatternType Pattern);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

presetGradient: style variant: variant presetGradientType: presetGradientType
	"Invoke the PresetGradient() method of the COM object."

	^self
		PresetGradient: style
		variant: variant
		presetGradientType: presetGradientType
!

PresetGradient: style variant: variant presetGradientType: presetGradientType
	"Private - Invoke the PresetGradient() method of the COM object.

		HRESULT __stdcall PresetGradient(
			[in]MsoGradientStyle Style,
			[in]int Variant,
			[in]MsoPresetGradientType PresetGradientType);"

	<virtual stdcall: hresult 14 sdword sdword sdword>
	^self invalidCall!

presetGradientType
	"Answer the <sdword> value of the 'PresetGradientType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetGradientType: answer.
	^answer asObject
!

presetTexture
	"Answer the <sdword> value of the 'PresetTexture' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetTexture: answer.
	^answer asObject
!

presetTextured: presetTexture
	"Invoke the PresetTextured() method of the COM object."

	^self PresetTextured: presetTexture
!

PresetTextured: presetTexture
	"Private - Invoke the PresetTextured() method of the COM object.

		HRESULT __stdcall PresetTextured(
			[in]MsoPresetTexture PresetTexture);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

put_BackColor: backColor
	"Private - Set the value of the 'BackColor' property of the object wrapped by the 
	 receiver to the <ExcelColorFormat*> argument, backColor.

		HRESULT __stdcall BackColor(
			[in]ColorFormat* BackColor);"

	<virtual stdcall: hresult 21 ExcelColorFormat*>
	^self invalidCall!

put_ForeColor: foreColor
	"Private - Set the value of the 'ForeColor' property of the object wrapped by the 
	 receiver to the <ExcelColorFormat*> argument, foreColor.

		HRESULT __stdcall ForeColor(
			[in]ColorFormat* ForeColor);"

	<virtual stdcall: hresult 23 ExcelColorFormat*>
	^self invalidCall!

put_Transparency: transparency
	"Private - Set the value of the 'Transparency' property of the object wrapped by the 
	 receiver to the <float> argument, transparency.

		HRESULT __stdcall Transparency(
			[in]float Transparency);"

	<virtual stdcall: hresult 34 float>
	^self invalidCall!

put_Visible: visible
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, visible.

		HRESULT __stdcall Visible(
			[in]MsoTriState Visible);"

	<virtual stdcall: hresult 37 sdword>
	^self invalidCall!

solid
	"Invoke the Solid() method of the COM object."

	^self Solid
!

Solid
	"Private - Invoke the Solid() method of the COM object.

		HRESULT __stdcall Solid();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

textureName
	"Answer the <bstr> value of the 'TextureName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextureName: answer.
	^answer asObject
!

textureType
	"Answer the <sdword> value of the 'TextureType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextureType: answer.
	^answer asObject
!

transparency
	"Answer the <float> value of the 'Transparency' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Transparency: answer.
	^answer asObject
!

transparency: transparency
	"Set the 'Transparency' property of the receiver to the <float> value of the argument."

	self put_Transparency: transparency
!

twoColorGradient: style variant: variant
	"Invoke the TwoColorGradient() method of the COM object."

	^self
		TwoColorGradient: style
		variant: variant
!

TwoColorGradient: style variant: variant
	"Private - Invoke the TwoColorGradient() method of the COM object.

		HRESULT __stdcall TwoColorGradient(
			[in]MsoGradientStyle Style,
			[in]int Variant);"

	<virtual stdcall: hresult 17 sdword sdword>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

userPicture: pictureFile
	"Invoke the UserPicture() method of the COM object."

	^self UserPicture: pictureFile
!

UserPicture: pictureFile
	"Private - Invoke the UserPicture() method of the COM object.

		HRESULT __stdcall UserPicture(
			[in]BSTR PictureFile);"

	<virtual stdcall: hresult 18 bstr>
	^self invalidCall!

userTextured: textureFile
	"Invoke the UserTextured() method of the COM object."

	^self UserTextured: textureFile
!

UserTextured: textureFile
	"Private - Invoke the UserTextured() method of the COM object.

		HRESULT __stdcall UserTextured(
			[in]BSTR TextureFile);"

	<virtual stdcall: hresult 19 bstr>
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
!ExcelFillFormat categoriesFor: #backColor!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #backColor:!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #background!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #Background!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #foreColor!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #foreColor:!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #get_BackColor:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_ForeColor:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_GradientColorType:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_GradientDegree:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_GradientStyle:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_GradientVariant:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_Pattern:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_PresetGradientType:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_PresetTexture:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_TextureName:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_TextureType:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_Transparency:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #gradientColorType!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #gradientDegree!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #gradientStyle!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #gradientVariant!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelFillFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelFillFormat categoriesFor: #oneColorGradient:variant:degree:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #OneColorGradient:variant:degree:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #pattern!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #patterned:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #Patterned:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #presetGradient:variant:presetGradientType:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #PresetGradient:variant:presetGradientType:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #presetGradientType!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #presetTexture!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #presetTextured:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #PresetTextured:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #put_BackColor:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #put_ForeColor:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #put_Transparency:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #solid!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #Solid!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #textureName!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #textureType!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #transparency!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #transparency:!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #twoColorGradient:variant:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #TwoColorGradient:variant:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #userPicture:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #UserPicture:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #userTextured:!**auto generated**!methods!public! !
!ExcelFillFormat categoriesFor: #UserTextured:!**auto generated**!COM Interfaces-FillFormat!private! !
!ExcelFillFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelFillFormat categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelFillFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.FillFormat'
		ExcelFillFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Background;
		defineFunction: #OneColorGradient:variant:degree:
			argumentTypes: 'sdword sdword float';
		defineFunction: #Patterned:
			argumentTypes: 'sdword';
		defineFunction: #PresetGradient:variant:presetGradientType:
			argumentTypes: 'sdword sdword sdword';
		defineFunction: #PresetTextured:
			argumentTypes: 'sdword';
		defineFunction: #Solid;
		defineFunction: #TwoColorGradient:variant:
			argumentTypes: 'sdword sdword';
		defineFunction: #UserPicture:
			argumentTypes: 'bstr';
		defineFunction: #UserTextured:
			argumentTypes: 'bstr';
		defineFunction: #get_BackColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #put_BackColor:
			argumentTypes: 'ExcelColorFormat*';
		defineFunction: #get_ForeColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #put_ForeColor:
			argumentTypes: 'ExcelColorFormat*';
		defineFunction: #get_GradientColorType:
			argumentTypes: 'sdword*';
		defineFunction: #get_GradientDegree:
			argumentTypes: 'float*';
		defineFunction: #get_GradientStyle:
			argumentTypes: 'sdword*';
		defineFunction: #get_GradientVariant:
			argumentTypes: 'sdword*';
		defineFunction: #get_Pattern:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresetGradientType:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresetTexture:
			argumentTypes: 'sdword*';
		defineFunction: #get_TextureName:
			argumentTypes: 'bstr*';
		defineFunction: #get_TextureType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Transparency:
			argumentTypes: 'float*';
		defineFunction: #put_Transparency:
			argumentTypes: 'float';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFillFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFillFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelFillFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

