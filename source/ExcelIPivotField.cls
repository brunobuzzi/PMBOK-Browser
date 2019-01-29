"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotField guid: (IID fromString: '{00020874-0001-0000-C000-000000000046}')!
ExcelIPivotField comment: '<ExcelIPivotField> is a wrapper class for the COM interface ''Excel.IPivotField'' generated from type information in the ''Microsoft Excel 11.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020874-0001-0000-C000-000000000046), 
	helpcontext(0x00020034), 
	hidden
]
interface IPivotField : IDispatch
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
	[id(0x0000013c), propget, helpcontext(0x0001013c)]
	HRESULT __stdcall Calculation(
		[out, retval]XlPivotFieldCalculation* RHS);
	[id(0x0000013c), propput, helpcontext(0x0001013c)]
	HRESULT __stdcall Calculation(
		[in]XlPivotFieldCalculation RHS);
	[id(0x000002e0), propget, helpcontext(0x000102e0)]
	HRESULT __stdcall ChildField(
		[out, retval]PivotField** RHS);
	[id(0x000002da), propget, helpcontext(0x000102da)]
	HRESULT __stdcall ChildItems(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000002e2), propget, helpcontext(0x000102e2)]
	HRESULT __stdcall CurrentPage(
		[out, retval]VARIANT* RHS);
	[id(0x000002e2), propput, helpcontext(0x000102e2)]
	HRESULT __stdcall CurrentPage(
		[in]VARIANT RHS);
	[id(0x000002d0), propget, helpcontext(0x000102d0)]
	HRESULT __stdcall DataRange(
		[out, retval]Range** RHS);
	[id(0x000002d2), propget, helpcontext(0x000102d2)]
	HRESULT __stdcall DataType(
		[out, retval]XlPivotFieldDataType* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]BSTR RHS);
	[id(0x00000383), propget, helpcontext(0x00010383)]
	HRESULT __stdcall Function(
		[out, retval]XlConsolidationFunction* RHS);
	[id(0x00000383), propput, helpcontext(0x00010383)]
	HRESULT __stdcall Function(
		[in]XlConsolidationFunction RHS);
	[id(0x000002d3), propget, helpcontext(0x000102d3)]
	HRESULT __stdcall GroupLevel(
		[out, retval]VARIANT* RHS);
	[id(0x000002d8), propget, helpcontext(0x000102d8)]
	HRESULT __stdcall HiddenItems(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000002cf), propget, helpcontext(0x000102cf)]
	HRESULT __stdcall LabelRange(
		[out, retval]Range** RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]BSTR RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]XlPivotFieldOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]XlPivotFieldOrientation RHS);
	[id(0x000001c4), propget, helpcontext(0x000101c4)]
	HRESULT __stdcall ShowAllItems(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001c4), propput, helpcontext(0x000101c4)]
	HRESULT __stdcall ShowAllItems(
		[in]VARIANT_BOOL RHS);
	[id(0x000002dc), propget, helpcontext(0x000102dc)]
	HRESULT __stdcall ParentField(
		[out, retval]PivotField** RHS);
	[id(0x000002d9), propget, helpcontext(0x000102d9)]
	HRESULT __stdcall ParentItems(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000002e1), helpcontext(0x000102e1)]
	HRESULT __stdcall PivotItems(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]VARIANT* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]VARIANT RHS);
	[id(0x000002d1), propget, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[out, retval]BSTR* RHS);
	[id(0x000002dd), propget, helpcontext(0x000102dd)]
	HRESULT __stdcall Subtotals(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000002dd), propput, helpcontext(0x000102dd)]
	HRESULT __stdcall Subtotals(
		[in, optional]VARIANT Index,
		[in]VARIANT RHS);
	[id(0x000002de), propget, helpcontext(0x000102de)]
	HRESULT __stdcall BaseField(
		[out, retval]VARIANT* RHS);
	[id(0x000002de), propput, helpcontext(0x000102de)]
	HRESULT __stdcall BaseField(
		[in]VARIANT RHS);
	[id(0x000002df), propget, helpcontext(0x000102df)]
	HRESULT __stdcall BaseItem(
		[out, retval]VARIANT* RHS);
	[id(0x000002df), propput, helpcontext(0x000102df)]
	HRESULT __stdcall BaseItem(
		[in]VARIANT RHS);
	[id(0x000002d4), propget, helpcontext(0x000102d4)]
	HRESULT __stdcall TotalLevels(
		[out, retval]VARIANT* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]BSTR RHS);
	[id(0x000002d7), propget, helpcontext(0x000102d7)]
	HRESULT __stdcall VisibleItems(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000005e3), helpcontext(0x000105e3)]
	HRESULT __stdcall CalculatedItems(
		[out, retval]CalculatedItems** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000005e4), propget, helpcontext(0x000105e4)]
	HRESULT __stdcall DragToColumn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e4), propput, helpcontext(0x000105e4)]
	HRESULT __stdcall DragToColumn(
		[in]VARIANT_BOOL RHS);
	[id(0x000005e5), propget, helpcontext(0x000105e5)]
	HRESULT __stdcall DragToHide(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e5), propput, helpcontext(0x000105e5)]
	HRESULT __stdcall DragToHide(
		[in]VARIANT_BOOL RHS);
	[id(0x000005e6), propget, helpcontext(0x000105e6)]
	HRESULT __stdcall DragToPage(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e6), propput, helpcontext(0x000105e6)]
	HRESULT __stdcall DragToPage(
		[in]VARIANT_BOOL RHS);
	[id(0x000005e7), propget, helpcontext(0x000105e7)]
	HRESULT __stdcall DragToRow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e7), propput, helpcontext(0x000105e7)]
	HRESULT __stdcall DragToRow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000734), propget, helpcontext(0x00010734)]
	HRESULT __stdcall DragToData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000734), propput, helpcontext(0x00010734)]
	HRESULT __stdcall DragToData(
		[in]VARIANT_BOOL RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]BSTR RHS);
	[id(0x000005e8), propget, helpcontext(0x000105e8)]
	HRESULT __stdcall IsCalculated(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000174), propget, helpcontext(0x00010174)]
	HRESULT __stdcall MemoryUsed(
		[out, retval]long* RHS);
	[id(0x000005e9), propget, helpcontext(0x000105e9)]
	HRESULT __stdcall ServerBased(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e9), propput, helpcontext(0x000105e9)]
	HRESULT __stdcall ServerBased(
		[in]VARIANT_BOOL RHS);
	[id(0x000005ea), helpcontext(0x000105ea)]
	HRESULT __stdcall AutoSort(
		[in]long Order,
		[in]BSTR Field);
	[id(0x000005eb), helpcontext(0x000105eb)]
	HRESULT __stdcall AutoShow(
		[in]long Type,
		[in]long Range,
		[in]long Count,
		[in]BSTR Field);
	[id(0x000005ec), propget, helpcontext(0x000105ec)]
	HRESULT __stdcall AutoSortOrder(
		[out, retval]long* RHS);
	[id(0x000005ed), propget, helpcontext(0x000105ed)]
	HRESULT __stdcall AutoSortField(
		[out, retval]BSTR* RHS);
	[id(0x000005ee), propget, helpcontext(0x000105ee)]
	HRESULT __stdcall AutoShowType(
		[out, retval]long* RHS);
	[id(0x000005ef), propget, helpcontext(0x000105ef)]
	HRESULT __stdcall AutoShowRange(
		[out, retval]long* RHS);
	[id(0x000005f0), propget, helpcontext(0x000105f0)]
	HRESULT __stdcall AutoShowCount(
		[out, retval]long* RHS);
	[id(0x000005f1), propget, helpcontext(0x000105f1)]
	HRESULT __stdcall AutoShowField(
		[out, retval]BSTR* RHS);
	[id(0x00000735), propget, helpcontext(0x00010735)]
	HRESULT __stdcall LayoutBlankLine(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000735), propput, helpcontext(0x00010735)]
	HRESULT __stdcall LayoutBlankLine(
		[in]VARIANT_BOOL RHS);
	[id(0x00000736), propget, helpcontext(0x00010736)]
	HRESULT __stdcall LayoutSubtotalLocation(
		[out, retval]XlSubtototalLocationType* RHS);
	[id(0x00000736), propput, helpcontext(0x00010736)]
	HRESULT __stdcall LayoutSubtotalLocation(
		[in]XlSubtototalLocationType RHS);
	[id(0x00000737), propget, helpcontext(0x00010737)]
	HRESULT __stdcall LayoutPageBreak(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000737), propput, helpcontext(0x00010737)]
	HRESULT __stdcall LayoutPageBreak(
		[in]VARIANT_BOOL RHS);
	[id(0x00000738), propget, helpcontext(0x00010738)]
	HRESULT __stdcall LayoutForm(
		[out, retval]XlLayoutFormType* RHS);
	[id(0x00000738), propput, helpcontext(0x00010738)]
	HRESULT __stdcall LayoutForm(
		[in]XlLayoutFormType RHS);
	[id(0x00000739), propget, helpcontext(0x00010739)]
	HRESULT __stdcall SubtotalName(
		[out, retval]BSTR* RHS);
	[id(0x00000739), propput, helpcontext(0x00010739)]
	HRESULT __stdcall SubtotalName(
		[in]BSTR RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x0000073a), propget, helpcontext(0x0001073a)]
	HRESULT __stdcall DrilledDown(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000073a), propput, helpcontext(0x0001073a)]
	HRESULT __stdcall DrilledDown(
		[in]VARIANT_BOOL RHS);
	[id(0x0000073b), propget, helpcontext(0x0001073b)]
	HRESULT __stdcall CubeField(
		[out, retval]CubeField** RHS);
	[id(0x0000073c), propget, helpcontext(0x0001073c)]
	HRESULT __stdcall CurrentPageName(
		[out, retval]BSTR* RHS);
	[id(0x0000073c), propput, helpcontext(0x0001073c)]
	HRESULT __stdcall CurrentPageName(
		[in]BSTR RHS);
	[id(0x00000824), propget, helpcontext(0x00010824)]
	HRESULT __stdcall StandardFormula(
		[out, retval]BSTR* RHS);
	[id(0x00000824), propput, helpcontext(0x00010824)]
	HRESULT __stdcall StandardFormula(
		[in]BSTR RHS);
	[id(0x0000085b), propget, helpcontext(0x0001085b)]
	HRESULT __stdcall HiddenItemsList(
		[out, retval]VARIANT* RHS);
	[id(0x0000085b), propput, helpcontext(0x0001085b)]
	HRESULT __stdcall HiddenItemsList(
		[in]VARIANT RHS);
	[id(0x0000085c), propget, helpcontext(0x0001085c)]
	HRESULT __stdcall DatabaseSort(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000085c), propput, helpcontext(0x0001085c)]
	HRESULT __stdcall DatabaseSort(
		[in]VARIANT_BOOL RHS);
	[id(0x0000085d), propget, helpcontext(0x0001085d)]
	HRESULT __stdcall IsMemberProperty(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000085e), propget, helpcontext(0x0001085e)]
	HRESULT __stdcall PropertyParentField(
		[out, retval]PivotField** RHS);
	[id(0x0000085f), propget, helpcontext(0x0001085f)]
	HRESULT __stdcall PropertyOrder(
		[out, retval]long* RHS);
	[id(0x0000085f), propput, helpcontext(0x0001085f)]
	HRESULT __stdcall PropertyOrder(
		[in]long RHS);
	[id(0x00000860), propget, helpcontext(0x00010860)]
	HRESULT __stdcall EnableItemSelection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000860), propput, helpcontext(0x00010860)]
	HRESULT __stdcall EnableItemSelection(
		[in]VARIANT_BOOL RHS);
	[id(0x00000861), propget, helpcontext(0x00010861)]
	HRESULT __stdcall CurrentPageList(
		[out, retval]VARIANT* RHS);
	[id(0x00000861), propput, helpcontext(0x00010861)]
	HRESULT __stdcall CurrentPageList(
		[in]VARIANT RHS);
	[id(0x00000862), helpcontext(0x00010862)]
	HRESULT __stdcall AddPageItem(
		[in]BSTR Item,
		[in, optional]VARIANT ClearList);
};
'!
!ExcelIPivotField categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotField methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <bstr> value of the argument."

	self put__Default: rhs
!

addPageItem: item
	"Invoke the AddPageItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addPageItem: item
		 clearList: VARIANT unspecified!

addPageItem: item clearList: clearList
	"Invoke the AddPageItem() method of the COM object."

	^self
		AddPageItem: item
		clearList: clearList asVariant
!

AddPageItem: item clearList: clearList
	"Private - Invoke the AddPageItem() method of the COM object.

		HRESULT __stdcall AddPageItem(
			[in]BSTR Item,
			[in, optional]VARIANT ClearList);"

	<virtual stdcall: hresult 107 bstr variant>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoShow: type range: range count: count field: field
	"Invoke the AutoShow() method of the COM object."

	^self
		AutoShow: type
		range: range
		count: count
		field: field
!

AutoShow: type range: range count: count field: field
	"Private - Invoke the AutoShow() method of the COM object.

		HRESULT __stdcall AutoShow(
			[in]long Type,
			[in]long Range,
			[in]long Count,
			[in]BSTR Field);"

	<virtual stdcall: hresult 69 sdword sdword sdword bstr>
	^self invalidCall!

autoShowCount
	"Answer the <sdword> value of the 'AutoShowCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoShowCount: answer.
	^answer asObject
!

autoShowField
	"Answer the <bstr> value of the 'AutoShowField' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_AutoShowField: answer.
	^answer asObject
!

autoShowRange
	"Answer the <sdword> value of the 'AutoShowRange' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoShowRange: answer.
	^answer asObject
!

autoShowType
	"Answer the <sdword> value of the 'AutoShowType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoShowType: answer.
	^answer asObject
!

autoSort: order field: field
	"Invoke the AutoSort() method of the COM object."

	^self
		AutoSort: order
		field: field
!

AutoSort: order field: field
	"Private - Invoke the AutoSort() method of the COM object.

		HRESULT __stdcall AutoSort(
			[in]long Order,
			[in]BSTR Field);"

	<virtual stdcall: hresult 68 sdword bstr>
	^self invalidCall!

autoSortField
	"Answer the <bstr> value of the 'AutoSortField' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_AutoSortField: answer.
	^answer asObject
!

autoSortOrder
	"Answer the <sdword> value of the 'AutoSortOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoSortOrder: answer.
	^answer asObject
!

baseField
	"Answer the <variant> value of the 'BaseField' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_BaseField: answer.
	^answer asObject
!

baseField: rhs
	"Set the 'BaseField' property of the receiver to the <variant> value of the argument."

	self put_BaseField: rhs asVariant
!

baseItem
	"Answer the <variant> value of the 'BaseItem' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_BaseItem: answer.
	^answer asObject
!

baseItem: rhs
	"Set the 'BaseItem' property of the receiver to the <variant> value of the argument."

	self put_BaseItem: rhs asVariant
!

calculatedItems
	"Answer the <ExcelCalculatedItems> result of invoking the CalculatedItems() method of the COM object."

	| answer |
	answer := ExcelCalculatedItems newPointer.
	self CalculatedItems: answer.
	^answer asObject
!

CalculatedItems: rhs
	"Private - Invoke the CalculatedItems() method of the COM object.

		HRESULT __stdcall CalculatedItems(
			[out, retval]CalculatedItems** RHS);"

	<virtual stdcall: hresult 50 ExcelCalculatedItems**>
	^self invalidCall!

calculation
	"Answer the <sdword> value of the 'Calculation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Calculation: answer.
	^answer asObject
!

calculation: rhs
	"Set the 'Calculation' property of the receiver to the <sdword> value of the argument."

	self put_Calculation: rhs
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

childField
	"Answer the <ExcelPivotField> value of the 'ChildField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_ChildField: answer.
	^answer asObject
!

childItems
	"Answer the <variant> value of the 'ChildItems' property of the receiver."

	^self childItems: VARIANT unspecified!

childItems: index
	"Answer the <variant> value of the 'ChildItems' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ChildItems: index asVariant
		rhs: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cubeField
	"Answer the <ExcelCubeField> value of the 'CubeField' property of the receiver."

	| answer |
	answer := ExcelCubeField newPointer.
	self get_CubeField: answer.
	^answer asObject
!

currentPage
	"Answer the <variant> value of the 'CurrentPage' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CurrentPage: answer.
	^answer asObject
!

currentPage: rhs
	"Set the 'CurrentPage' property of the receiver to the <variant> value of the argument."

	self put_CurrentPage: rhs asVariant
!

currentPageList
	"Answer the <variant> value of the 'CurrentPageList' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CurrentPageList: answer.
	^answer asObject
!

currentPageList: rhs
	"Set the 'CurrentPageList' property of the receiver to the <variant> value of the argument."

	self put_CurrentPageList: rhs asVariant
!

currentPageName
	"Answer the <bstr> value of the 'CurrentPageName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CurrentPageName: answer.
	^answer asObject
!

currentPageName: rhs
	"Set the 'CurrentPageName' property of the receiver to the <bstr> value of the argument."

	self put_CurrentPageName: rhs
!

databaseSort
	"Answer the <varbool> value of the 'DatabaseSort' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DatabaseSort: answer.
	^answer asObject
!

databaseSort: rhs
	"Set the 'DatabaseSort' property of the receiver to the <varbool> value of the argument."

	self put_DatabaseSort: rhs
!

dataRange
	"Answer the <ExcelRange> value of the 'DataRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DataRange: answer.
	^answer asObject
!

dataType
	"Answer the <sdword> value of the 'DataType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DataType: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 51>
	^self invalidCall!

dragToColumn
	"Answer the <varbool> value of the 'DragToColumn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToColumn: answer.
	^answer asObject
!

dragToColumn: rhs
	"Set the 'DragToColumn' property of the receiver to the <varbool> value of the argument."

	self put_DragToColumn: rhs
!

dragToData
	"Answer the <varbool> value of the 'DragToData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToData: answer.
	^answer asObject
!

dragToData: rhs
	"Set the 'DragToData' property of the receiver to the <varbool> value of the argument."

	self put_DragToData: rhs
!

dragToHide
	"Answer the <varbool> value of the 'DragToHide' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToHide: answer.
	^answer asObject
!

dragToHide: rhs
	"Set the 'DragToHide' property of the receiver to the <varbool> value of the argument."

	self put_DragToHide: rhs
!

dragToPage
	"Answer the <varbool> value of the 'DragToPage' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToPage: answer.
	^answer asObject
!

dragToPage: rhs
	"Set the 'DragToPage' property of the receiver to the <varbool> value of the argument."

	self put_DragToPage: rhs
!

dragToRow
	"Answer the <varbool> value of the 'DragToRow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToRow: answer.
	^answer asObject
!

dragToRow: rhs
	"Set the 'DragToRow' property of the receiver to the <varbool> value of the argument."

	self put_DragToRow: rhs
!

drilledDown
	"Answer the <varbool> value of the 'DrilledDown' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DrilledDown: answer.
	^answer asObject
!

drilledDown: rhs
	"Set the 'DrilledDown' property of the receiver to the <varbool> value of the argument."

	self put_DrilledDown: rhs
!

enableItemSelection
	"Answer the <varbool> value of the 'EnableItemSelection' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableItemSelection: answer.
	^answer asObject
!

enableItemSelection: rhs
	"Set the 'EnableItemSelection' property of the receiver to the <varbool> value of the argument."

	self put_EnableItemSelection: rhs
!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula: answer.
	^answer asObject
!

formula: rhs
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument."

	self put_Formula: rhs
!

function
	"Answer the <sdword> value of the 'Function' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Function: answer.
	^answer asObject
!

function: rhs
	"Set the 'Function' property of the receiver to the <sdword> value of the argument."

	self put_Function: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoShowCount: rhs
	"Private - Get the value of the 'AutoShowCount' property of the receiver.

		HRESULT __stdcall AutoShowCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 74 sdword*>
	^self invalidCall!

get_AutoShowField: rhs
	"Private - Get the value of the 'AutoShowField' property of the receiver.

		HRESULT __stdcall AutoShowField(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 75 bstr*>
	^self invalidCall!

get_AutoShowRange: rhs
	"Private - Get the value of the 'AutoShowRange' property of the receiver.

		HRESULT __stdcall AutoShowRange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 73 sdword*>
	^self invalidCall!

get_AutoShowType: rhs
	"Private - Get the value of the 'AutoShowType' property of the receiver.

		HRESULT __stdcall AutoShowType(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 72 sdword*>
	^self invalidCall!

get_AutoSortField: rhs
	"Private - Get the value of the 'AutoSortField' property of the receiver.

		HRESULT __stdcall AutoSortField(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 71 bstr*>
	^self invalidCall!

get_AutoSortOrder: rhs
	"Private - Get the value of the 'AutoSortOrder' property of the receiver.

		HRESULT __stdcall AutoSortOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 70 sdword*>
	^self invalidCall!

get_BaseField: rhs
	"Private - Get the value of the 'BaseField' property of the receiver.

		HRESULT __stdcall BaseField(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 42 variant*>
	^self invalidCall!

get_BaseItem: rhs
	"Private - Get the value of the 'BaseItem' property of the receiver.

		HRESULT __stdcall BaseItem(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 44 variant*>
	^self invalidCall!

get_Calculation: rhs
	"Private - Get the value of the 'Calculation' property of the receiver.

		HRESULT __stdcall Calculation(
			[out, retval]XlPivotFieldCalculation* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 86 bstr*>
	^self invalidCall!

get_ChildField: rhs
	"Private - Get the value of the 'ChildField' property of the receiver.

		HRESULT __stdcall ChildField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 13 ExcelPivotField**>
	^self invalidCall!

get_ChildItems: index rhs: rhs
	"Private - Get the value of the 'ChildItems' property of the receiver.

		HRESULT __stdcall ChildItems(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CubeField: rhs
	"Private - Get the value of the 'CubeField' property of the receiver.

		HRESULT __stdcall CubeField(
			[out, retval]CubeField** RHS);"

	<virtual stdcall: hresult 90 ExcelCubeField**>
	^self invalidCall!

get_CurrentPage: rhs
	"Private - Get the value of the 'CurrentPage' property of the receiver.

		HRESULT __stdcall CurrentPage(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

get_CurrentPageList: rhs
	"Private - Get the value of the 'CurrentPageList' property of the receiver.

		HRESULT __stdcall CurrentPageList(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 105 variant*>
	^self invalidCall!

get_CurrentPageName: rhs
	"Private - Get the value of the 'CurrentPageName' property of the receiver.

		HRESULT __stdcall CurrentPageName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 91 bstr*>
	^self invalidCall!

get_DatabaseSort: rhs
	"Private - Get the value of the 'DatabaseSort' property of the receiver.

		HRESULT __stdcall DatabaseSort(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 97 varbool*>
	^self invalidCall!

get_DataRange: rhs
	"Private - Get the value of the 'DataRange' property of the receiver.

		HRESULT __stdcall DataRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 17 ExcelRange**>
	^self invalidCall!

get_DataType: rhs
	"Private - Get the value of the 'DataType' property of the receiver.

		HRESULT __stdcall DataType(
			[out, retval]XlPivotFieldDataType* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_DragToColumn: rhs
	"Private - Get the value of the 'DragToColumn' property of the receiver.

		HRESULT __stdcall DragToColumn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 52 varbool*>
	^self invalidCall!

get_DragToData: rhs
	"Private - Get the value of the 'DragToData' property of the receiver.

		HRESULT __stdcall DragToData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 60 varbool*>
	^self invalidCall!

get_DragToHide: rhs
	"Private - Get the value of the 'DragToHide' property of the receiver.

		HRESULT __stdcall DragToHide(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 54 varbool*>
	^self invalidCall!

get_DragToPage: rhs
	"Private - Get the value of the 'DragToPage' property of the receiver.

		HRESULT __stdcall DragToPage(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 56 varbool*>
	^self invalidCall!

get_DragToRow: rhs
	"Private - Get the value of the 'DragToRow' property of the receiver.

		HRESULT __stdcall DragToRow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 58 varbool*>
	^self invalidCall!

get_DrilledDown: rhs
	"Private - Get the value of the 'DrilledDown' property of the receiver.

		HRESULT __stdcall DrilledDown(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 88 varbool*>
	^self invalidCall!

get_EnableItemSelection: rhs
	"Private - Get the value of the 'EnableItemSelection' property of the receiver.

		HRESULT __stdcall EnableItemSelection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 103 varbool*>
	^self invalidCall!

get_Formula: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 62 bstr*>
	^self invalidCall!

get_Function: rhs
	"Private - Get the value of the 'Function' property of the receiver.

		HRESULT __stdcall Function(
			[out, retval]XlConsolidationFunction* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_GroupLevel: rhs
	"Private - Get the value of the 'GroupLevel' property of the receiver.

		HRESULT __stdcall GroupLevel(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

get_HiddenItems: index rhs: rhs
	"Private - Get the value of the 'HiddenItems' property of the receiver.

		HRESULT __stdcall HiddenItems(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 24 variant variant*>
	^self invalidCall!

get_HiddenItemsList: rhs
	"Private - Get the value of the 'HiddenItemsList' property of the receiver.

		HRESULT __stdcall HiddenItemsList(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 95 variant*>
	^self invalidCall!

get_IsCalculated: rhs
	"Private - Get the value of the 'IsCalculated' property of the receiver.

		HRESULT __stdcall IsCalculated(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 64 varbool*>
	^self invalidCall!

get_IsMemberProperty: rhs
	"Private - Get the value of the 'IsMemberProperty' property of the receiver.

		HRESULT __stdcall IsMemberProperty(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 99 varbool*>
	^self invalidCall!

get_LabelRange: rhs
	"Private - Get the value of the 'LabelRange' property of the receiver.

		HRESULT __stdcall LabelRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 25 ExcelRange**>
	^self invalidCall!

get_LayoutBlankLine: rhs
	"Private - Get the value of the 'LayoutBlankLine' property of the receiver.

		HRESULT __stdcall LayoutBlankLine(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 76 varbool*>
	^self invalidCall!

get_LayoutForm: rhs
	"Private - Get the value of the 'LayoutForm' property of the receiver.

		HRESULT __stdcall LayoutForm(
			[out, retval]XlLayoutFormType* RHS);"

	<virtual stdcall: hresult 82 sdword*>
	^self invalidCall!

get_LayoutPageBreak: rhs
	"Private - Get the value of the 'LayoutPageBreak' property of the receiver.

		HRESULT __stdcall LayoutPageBreak(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 80 varbool*>
	^self invalidCall!

get_LayoutSubtotalLocation: rhs
	"Private - Get the value of the 'LayoutSubtotalLocation' property of the receiver.

		HRESULT __stdcall LayoutSubtotalLocation(
			[out, retval]XlSubtototalLocationType* RHS);"

	<virtual stdcall: hresult 78 sdword*>
	^self invalidCall!

get_MemoryUsed: rhs
	"Private - Get the value of the 'MemoryUsed' property of the receiver.

		HRESULT __stdcall MemoryUsed(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 65 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 bstr*>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 28 bstr*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]XlPivotFieldOrientation* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ParentField: rhs
	"Private - Get the value of the 'ParentField' property of the receiver.

		HRESULT __stdcall ParentField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 34 ExcelPivotField**>
	^self invalidCall!

get_ParentItems: index rhs: rhs
	"Private - Get the value of the 'ParentItems' property of the receiver.

		HRESULT __stdcall ParentItems(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant variant*>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 37 variant*>
	^self invalidCall!

get_PropertyOrder: rhs
	"Private - Get the value of the 'PropertyOrder' property of the receiver.

		HRESULT __stdcall PropertyOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 101 sdword*>
	^self invalidCall!

get_PropertyParentField: rhs
	"Private - Get the value of the 'PropertyParentField' property of the receiver.

		HRESULT __stdcall PropertyParentField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 100 ExcelPivotField**>
	^self invalidCall!

get_ServerBased: rhs
	"Private - Get the value of the 'ServerBased' property of the receiver.

		HRESULT __stdcall ServerBased(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 66 varbool*>
	^self invalidCall!

get_ShowAllItems: rhs
	"Private - Get the value of the 'ShowAllItems' property of the receiver.

		HRESULT __stdcall ShowAllItems(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_SourceName: rhs
	"Private - Get the value of the 'SourceName' property of the receiver.

		HRESULT __stdcall SourceName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 39 bstr*>
	^self invalidCall!

get_StandardFormula: rhs
	"Private - Get the value of the 'StandardFormula' property of the receiver.

		HRESULT __stdcall StandardFormula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 93 bstr*>
	^self invalidCall!

get_SubtotalName: rhs
	"Private - Get the value of the 'SubtotalName' property of the receiver.

		HRESULT __stdcall SubtotalName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 84 bstr*>
	^self invalidCall!

get_Subtotals: index rhs: rhs
	"Private - Get the value of the 'Subtotals' property of the receiver.

		HRESULT __stdcall Subtotals(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 40 variant variant*>
	^self invalidCall!

get_TotalLevels: rhs
	"Private - Get the value of the 'TotalLevels' property of the receiver.

		HRESULT __stdcall TotalLevels(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 46 variant*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 47 bstr*>
	^self invalidCall!

get_VisibleItems: index rhs: rhs
	"Private - Get the value of the 'VisibleItems' property of the receiver.

		HRESULT __stdcall VisibleItems(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 49 variant variant*>
	^self invalidCall!

groupLevel
	"Answer the <variant> value of the 'GroupLevel' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_GroupLevel: answer.
	^answer asObject
!

hiddenItems
	"Answer the <variant> value of the 'HiddenItems' property of the receiver."

	^self hiddenItems: VARIANT unspecified!

hiddenItems: index
	"Answer the <variant> value of the 'HiddenItems' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_HiddenItems: index asVariant
		rhs: answer.
	^answer asObject
!

hiddenItemsList
	"Answer the <variant> value of the 'HiddenItemsList' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_HiddenItemsList: answer.
	^answer asObject
!

hiddenItemsList: rhs
	"Set the 'HiddenItemsList' property of the receiver to the <variant> value of the argument."

	self put_HiddenItemsList: rhs asVariant
!

isCalculated
	"Answer the <varbool> value of the 'IsCalculated' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsCalculated: answer.
	^answer asObject
!

isMemberProperty
	"Answer the <varbool> value of the 'IsMemberProperty' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsMemberProperty: answer.
	^answer asObject
!

labelRange
	"Answer the <ExcelRange> value of the 'LabelRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_LabelRange: answer.
	^answer asObject
!

layoutBlankLine
	"Answer the <varbool> value of the 'LayoutBlankLine' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_LayoutBlankLine: answer.
	^answer asObject
!

layoutBlankLine: rhs
	"Set the 'LayoutBlankLine' property of the receiver to the <varbool> value of the argument."

	self put_LayoutBlankLine: rhs
!

layoutForm
	"Answer the <sdword> value of the 'LayoutForm' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LayoutForm: answer.
	^answer asObject
!

layoutForm: rhs
	"Set the 'LayoutForm' property of the receiver to the <sdword> value of the argument."

	self put_LayoutForm: rhs
!

layoutPageBreak
	"Answer the <varbool> value of the 'LayoutPageBreak' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_LayoutPageBreak: answer.
	^answer asObject
!

layoutPageBreak: rhs
	"Set the 'LayoutPageBreak' property of the receiver to the <varbool> value of the argument."

	self put_LayoutPageBreak: rhs
!

layoutSubtotalLocation
	"Answer the <sdword> value of the 'LayoutSubtotalLocation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LayoutSubtotalLocation: answer.
	^answer asObject
!

layoutSubtotalLocation: rhs
	"Set the 'LayoutSubtotalLocation' property of the receiver to the <sdword> value of the argument."

	self put_LayoutSubtotalLocation: rhs
!

memoryUsed
	"Answer the <sdword> value of the 'MemoryUsed' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MemoryUsed: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

numberFormat
	"Answer the <bstr> value of the 'NumberFormat' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NumberFormat: answer.
	^answer asObject
!

numberFormat: rhs
	"Set the 'NumberFormat' property of the receiver to the <bstr> value of the argument."

	self put_NumberFormat: rhs
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

parentField
	"Answer the <ExcelPivotField> value of the 'ParentField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_ParentField: answer.
	^answer asObject
!

parentItems
	"Answer the <variant> value of the 'ParentItems' property of the receiver."

	^self parentItems: VARIANT unspecified!

parentItems: index
	"Answer the <variant> value of the 'ParentItems' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ParentItems: index asVariant
		rhs: answer.
	^answer asObject
!

pivotItems
	"Answer the <VARIANT> result of invoking the PivotItems() method of the COM object.
	Default values are passed for all optional parameters."

	^self pivotItems: VARIANT unspecified!

pivotItems: index
	"Answer the <VARIANT> result of invoking the PivotItems() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		PivotItems: index asVariant
		rhs: answer.
	^answer asObject
!

PivotItems: index rhs: rhs
	"Private - Invoke the PivotItems() method of the COM object.

		HRESULT __stdcall PivotItems(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 36 variant variant*>
	^self invalidCall!

position
	"Answer the <variant> value of the 'Position' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Position: answer.
	^answer asObject
!

position: rhs
	"Set the 'Position' property of the receiver to the <variant> value of the argument."

	self put_Position: rhs asVariant
!

propertyOrder
	"Answer the <sdword> value of the 'PropertyOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PropertyOrder: answer.
	^answer asObject
!

propertyOrder: rhs
	"Set the 'PropertyOrder' property of the receiver to the <sdword> value of the argument."

	self put_PropertyOrder: rhs
!

propertyParentField
	"Answer the <ExcelPivotField> value of the 'PropertyParentField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_PropertyParentField: answer.
	^answer asObject
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _Default(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 20 bstr>
	^self invalidCall!

put_BaseField: rhs
	"Private - Set the value of the 'BaseField' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall BaseField(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 43 variant>
	^self invalidCall!

put_BaseItem: rhs
	"Private - Set the value of the 'BaseItem' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall BaseItem(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 45 variant>
	^self invalidCall!

put_Calculation: rhs
	"Private - Set the value of the 'Calculation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Calculation(
			[in]XlPivotFieldCalculation RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 87 bstr>
	^self invalidCall!

put_CurrentPage: rhs
	"Private - Set the value of the 'CurrentPage' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CurrentPage(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant>
	^self invalidCall!

put_CurrentPageList: rhs
	"Private - Set the value of the 'CurrentPageList' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CurrentPageList(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 106 variant>
	^self invalidCall!

put_CurrentPageName: rhs
	"Private - Set the value of the 'CurrentPageName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CurrentPageName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 92 bstr>
	^self invalidCall!

put_DatabaseSort: rhs
	"Private - Set the value of the 'DatabaseSort' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DatabaseSort(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 98 varbool>
	^self invalidCall!

put_DragToColumn: rhs
	"Private - Set the value of the 'DragToColumn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToColumn(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 53 varbool>
	^self invalidCall!

put_DragToData: rhs
	"Private - Set the value of the 'DragToData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 61 varbool>
	^self invalidCall!

put_DragToHide: rhs
	"Private - Set the value of the 'DragToHide' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToHide(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 55 varbool>
	^self invalidCall!

put_DragToPage: rhs
	"Private - Set the value of the 'DragToPage' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToPage(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 57 varbool>
	^self invalidCall!

put_DragToRow: rhs
	"Private - Set the value of the 'DragToRow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToRow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 59 varbool>
	^self invalidCall!

put_DrilledDown: rhs
	"Private - Set the value of the 'DrilledDown' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DrilledDown(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 89 varbool>
	^self invalidCall!

put_EnableItemSelection: rhs
	"Private - Set the value of the 'EnableItemSelection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableItemSelection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 104 varbool>
	^self invalidCall!

put_Formula: rhs
	"Private - Set the value of the 'Formula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Formula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 63 bstr>
	^self invalidCall!

put_Function: rhs
	"Private - Set the value of the 'Function' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Function(
			[in]XlConsolidationFunction RHS);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_HiddenItemsList: rhs
	"Private - Set the value of the 'HiddenItemsList' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HiddenItemsList(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 96 variant>
	^self invalidCall!

put_LayoutBlankLine: rhs
	"Private - Set the value of the 'LayoutBlankLine' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LayoutBlankLine(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 77 varbool>
	^self invalidCall!

put_LayoutForm: rhs
	"Private - Set the value of the 'LayoutForm' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LayoutForm(
			[in]XlLayoutFormType RHS);"

	<virtual stdcall: hresult 83 sdword>
	^self invalidCall!

put_LayoutPageBreak: rhs
	"Private - Set the value of the 'LayoutPageBreak' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LayoutPageBreak(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 81 varbool>
	^self invalidCall!

put_LayoutSubtotalLocation: rhs
	"Private - Set the value of the 'LayoutSubtotalLocation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LayoutSubtotalLocation(
			[in]XlSubtototalLocationType RHS);"

	<virtual stdcall: hresult 79 sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 bstr>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 29 bstr>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]XlPivotFieldOrientation RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Position(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 38 variant>
	^self invalidCall!

put_PropertyOrder: rhs
	"Private - Set the value of the 'PropertyOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PropertyOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 102 sdword>
	^self invalidCall!

put_ServerBased: rhs
	"Private - Set the value of the 'ServerBased' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ServerBased(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 67 varbool>
	^self invalidCall!

put_ShowAllItems: rhs
	"Private - Set the value of the 'ShowAllItems' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowAllItems(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_StandardFormula: rhs
	"Private - Set the value of the 'StandardFormula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall StandardFormula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 94 bstr>
	^self invalidCall!

put_SubtotalName: rhs
	"Private - Set the value of the 'SubtotalName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SubtotalName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 85 bstr>
	^self invalidCall!

put_Subtotals: index rhs: rhs
	"Private - Set the value of the 'Subtotals' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Subtotals(
			[in, optional]VARIANT Index,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 41 variant variant>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Value(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 48 bstr>
	^self invalidCall!

serverBased
	"Answer the <varbool> value of the 'ServerBased' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ServerBased: answer.
	^answer asObject
!

serverBased: rhs
	"Set the 'ServerBased' property of the receiver to the <varbool> value of the argument."

	self put_ServerBased: rhs
!

showAllItems
	"Answer the <varbool> value of the 'ShowAllItems' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowAllItems: answer.
	^answer asObject
!

showAllItems: rhs
	"Set the 'ShowAllItems' property of the receiver to the <varbool> value of the argument."

	self put_ShowAllItems: rhs
!

sourceName
	"Answer the <bstr> value of the 'SourceName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceName: answer.
	^answer asObject
!

standardFormula
	"Answer the <bstr> value of the 'StandardFormula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_StandardFormula: answer.
	^answer asObject
!

standardFormula: rhs
	"Set the 'StandardFormula' property of the receiver to the <bstr> value of the argument."

	self put_StandardFormula: rhs
!

subtotalName
	"Answer the <bstr> value of the 'SubtotalName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SubtotalName: answer.
	^answer asObject
!

subtotalName: rhs
	"Set the 'SubtotalName' property of the receiver to the <bstr> value of the argument."

	self put_SubtotalName: rhs
!

subtotals
	"Answer the <variant> value of the 'Subtotals' property of the receiver."

	^self subtotals: VARIANT unspecified!

subtotals: index
	"Answer the <variant> value of the 'Subtotals' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Subtotals: index asVariant
		rhs: answer.
	^answer asObject
!

subtotals: index rhs: rhs
	"Set the 'Subtotals' property of the receiver to the <variant> value of the argument."

	self
		put_Subtotals: index asVariant
		rhs: rhs asVariant
!

totalLevels
	"Answer the <variant> value of the 'TotalLevels' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_TotalLevels: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <bstr> value of the argument."

	self put_Value: rhs
!

visibleItems
	"Answer the <variant> value of the 'VisibleItems' property of the receiver."

	^self visibleItems: VARIANT unspecified!

visibleItems: index
	"Answer the <variant> value of the 'VisibleItems' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_VisibleItems: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIPivotField categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #addPageItem:!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #addPageItem:clearList:!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #AddPageItem:clearList:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #autoShow:range:count:field:!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #AutoShow:range:count:field:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #autoShowCount!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #autoShowField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #autoShowRange!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #autoShowType!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #autoSort:field:!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #AutoSort:field:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #autoSortField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #autoSortOrder!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #baseField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #baseField:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #baseItem!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #baseItem:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #calculatedItems!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #CalculatedItems:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #calculation!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #calculation:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #childField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #childItems!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #childItems:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #cubeField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #currentPage!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #currentPage:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #currentPageList!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #currentPageList:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #currentPageName!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #currentPageName:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #databaseSort!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #databaseSort:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dataRange!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dataType!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #Delete!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #dragToColumn!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToColumn:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToData!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToData:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToHide!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToHide:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToPage!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToPage:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToRow!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #dragToRow:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #drilledDown!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #drilledDown:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #enableItemSelection!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #enableItemSelection:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #function!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #function:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_AutoShowCount:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_AutoShowField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_AutoShowRange:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_AutoShowType:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_AutoSortField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_AutoSortOrder:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_BaseField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_BaseItem:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Calculation:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_ChildField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_ChildItems:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_CubeField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_CurrentPage:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_CurrentPageList:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_CurrentPageName:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DatabaseSort:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DataRange:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DataType:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DragToColumn:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DragToData:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DragToHide:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DragToPage:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DragToRow:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_DrilledDown:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_EnableItemSelection:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Function:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_GroupLevel:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_HiddenItems:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_HiddenItemsList:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_IsCalculated:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_IsMemberProperty:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_LabelRange:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_LayoutBlankLine:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_LayoutForm:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_LayoutPageBreak:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_LayoutSubtotalLocation:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_MemoryUsed:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_ParentField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_ParentItems:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_PropertyOrder:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_PropertyParentField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_ServerBased:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_ShowAllItems:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_SourceName:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_StandardFormula:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_SubtotalName:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Subtotals:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_TotalLevels:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #get_VisibleItems:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #groupLevel!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #hiddenItems!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #hiddenItems:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #hiddenItemsList!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #hiddenItemsList:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #isCalculated!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #isMemberProperty!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #labelRange!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutBlankLine!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutBlankLine:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutForm!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutForm:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutPageBreak!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutPageBreak:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutSubtotalLocation!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #layoutSubtotalLocation:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #memoryUsed!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #parentField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #parentItems!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #parentItems:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #pivotItems!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #pivotItems:!**auto generated**!methods!public! !
!ExcelIPivotField categoriesFor: #PivotItems:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #position!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #propertyOrder!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #propertyOrder:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #propertyParentField!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_BaseField:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_BaseItem:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Calculation:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_CurrentPage:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_CurrentPageList:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_CurrentPageName:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DatabaseSort:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DragToColumn:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DragToData:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DragToHide:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DragToPage:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DragToRow:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_DrilledDown:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_EnableItemSelection:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Formula:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Function:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_HiddenItemsList:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_LayoutBlankLine:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_LayoutForm:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_LayoutPageBreak:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_LayoutSubtotalLocation:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Position:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_PropertyOrder:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_ServerBased:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_ShowAllItems:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_StandardFormula:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_SubtotalName:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Subtotals:rhs:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IPivotField!private! !
!ExcelIPivotField categoriesFor: #serverBased!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #serverBased:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #showAllItems!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #showAllItems:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #standardFormula!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #standardFormula:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #subtotalName!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #subtotalName:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #subtotals!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #subtotals:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #subtotals:rhs:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #totalLevels!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #visibleItems!**auto generated**!properties!public! !
!ExcelIPivotField categoriesFor: #visibleItems:!**auto generated**!properties!public! !

!ExcelIPivotField class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotField'
		ExcelIPivotField defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Calculation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Calculation:
			argumentTypes: 'sdword';
		defineFunction: #get_ChildField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_ChildItems:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_CurrentPage:
			argumentTypes: 'variant*';
		defineFunction: #put_CurrentPage:
			argumentTypes: 'variant';
		defineFunction: #get_DataRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_DataType:
			argumentTypes: 'sdword*';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #put__Default:
			argumentTypes: 'bstr';
		defineFunction: #get_Function:
			argumentTypes: 'sdword*';
		defineFunction: #put_Function:
			argumentTypes: 'sdword';
		defineFunction: #get_GroupLevel:
			argumentTypes: 'variant*';
		defineFunction: #get_HiddenItems:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_LabelRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'bstr*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'bstr';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowAllItems:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowAllItems:
			argumentTypes: 'varbool';
		defineFunction: #get_ParentField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_ParentItems:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #PivotItems:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_Position:
			argumentTypes: 'variant*';
		defineFunction: #put_Position:
			argumentTypes: 'variant';
		defineFunction: #get_SourceName:
			argumentTypes: 'bstr*';
		defineFunction: #get_Subtotals:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #put_Subtotals:rhs:
			argumentTypes: 'variant variant';
		defineFunction: #get_BaseField:
			argumentTypes: 'variant*';
		defineFunction: #put_BaseField:
			argumentTypes: 'variant';
		defineFunction: #get_BaseItem:
			argumentTypes: 'variant*';
		defineFunction: #put_BaseItem:
			argumentTypes: 'variant';
		defineFunction: #get_TotalLevels:
			argumentTypes: 'variant*';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #put_Value:
			argumentTypes: 'bstr';
		defineFunction: #get_VisibleItems:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #CalculatedItems:
			argumentTypes: 'ExcelCalculatedItems**';
		defineFunction: #Delete;
		defineFunction: #get_DragToColumn:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToColumn:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToHide:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToHide:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToPage:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToPage:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToRow:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToRow:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToData:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToData:
			argumentTypes: 'varbool';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #put_Formula:
			argumentTypes: 'bstr';
		defineFunction: #get_IsCalculated:
			argumentTypes: 'varbool*';
		defineFunction: #get_MemoryUsed:
			argumentTypes: 'sdword*';
		defineFunction: #get_ServerBased:
			argumentTypes: 'varbool*';
		defineFunction: #put_ServerBased:
			argumentTypes: 'varbool';
		defineFunction: #AutoSort:field:
			argumentTypes: 'sdword bstr';
		defineFunction: #AutoShow:range:count:field:
			argumentTypes: 'sdword sdword sdword bstr';
		defineFunction: #get_AutoSortOrder:
			argumentTypes: 'sdword*';
		defineFunction: #get_AutoSortField:
			argumentTypes: 'bstr*';
		defineFunction: #get_AutoShowType:
			argumentTypes: 'sdword*';
		defineFunction: #get_AutoShowRange:
			argumentTypes: 'sdword*';
		defineFunction: #get_AutoShowCount:
			argumentTypes: 'sdword*';
		defineFunction: #get_AutoShowField:
			argumentTypes: 'bstr*';
		defineFunction: #get_LayoutBlankLine:
			argumentTypes: 'varbool*';
		defineFunction: #put_LayoutBlankLine:
			argumentTypes: 'varbool';
		defineFunction: #get_LayoutSubtotalLocation:
			argumentTypes: 'sdword*';
		defineFunction: #put_LayoutSubtotalLocation:
			argumentTypes: 'sdword';
		defineFunction: #get_LayoutPageBreak:
			argumentTypes: 'varbool*';
		defineFunction: #put_LayoutPageBreak:
			argumentTypes: 'varbool';
		defineFunction: #get_LayoutForm:
			argumentTypes: 'sdword*';
		defineFunction: #put_LayoutForm:
			argumentTypes: 'sdword';
		defineFunction: #get_SubtotalName:
			argumentTypes: 'bstr*';
		defineFunction: #put_SubtotalName:
			argumentTypes: 'bstr';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_DrilledDown:
			argumentTypes: 'varbool*';
		defineFunction: #put_DrilledDown:
			argumentTypes: 'varbool';
		defineFunction: #get_CubeField:
			argumentTypes: 'ExcelCubeField**';
		defineFunction: #get_CurrentPageName:
			argumentTypes: 'bstr*';
		defineFunction: #put_CurrentPageName:
			argumentTypes: 'bstr';
		defineFunction: #get_StandardFormula:
			argumentTypes: 'bstr*';
		defineFunction: #put_StandardFormula:
			argumentTypes: 'bstr';
		defineFunction: #get_HiddenItemsList:
			argumentTypes: 'variant*';
		defineFunction: #put_HiddenItemsList:
			argumentTypes: 'variant';
		defineFunction: #get_DatabaseSort:
			argumentTypes: 'varbool*';
		defineFunction: #put_DatabaseSort:
			argumentTypes: 'varbool';
		defineFunction: #get_IsMemberProperty:
			argumentTypes: 'varbool*';
		defineFunction: #get_PropertyParentField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_PropertyOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_PropertyOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_EnableItemSelection:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableItemSelection:
			argumentTypes: 'varbool';
		defineFunction: #get_CurrentPageList:
			argumentTypes: 'variant*';
		defineFunction: #put_CurrentPageList:
			argumentTypes: 'variant';
		defineFunction: #AddPageItem:clearList:
			argumentTypes: 'bstr variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotField initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotField class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotField class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

