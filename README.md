--------------------------------------------------
material\\rich_text_field.dart
--------------------------------------------------
1 RichTextField
	- similar to TextField widget
	- top level widget that wraps everything inside	
2 RichTextFieldState
	- extends State<RichTextField>
---------------------------------------------------
rendering\\rich_editable.dart
---------------------------------------------------
3 RenderRichEditable
	- extends RenderBox
	- renderer for an editable text field
	- It does not directly provide affordances for editing the text, 
	- but it does handle text selection and manipulation of the text cursor.
---------------------------------------------------
services\\rich_text_parser.dart
---------------------------------------------------
4 RichTextEditingValueParser
	- responsible for parsing text and style
---------------------------------------------------
services\\text_input.dart
---------------------------------------------------
5 RichTextEditingValue
	- extends AbstractTextEditingValue<TextSpan>
	- similar to TextEditingValue
	- uses TextSpan instead of String
6 AbstractTextEditingValue
	- abstract class <T> type
7 TextInputClient
	- abstract class
	- T type where <T extends AbstractTextEditingValue>
	- an interface to receive information from TextInput
	- same as Flutter's TextInputClient
	- plus getValue to get value
8 TextInputConnection 
	- a interface for interacting with a text input control.
	- same as Flutter's TextInputConnection 
	- but with setEditingState taking AbstractTextEditingValue as argument
	- requires TextInputClient _client that the connection should be established with (RichEditableTextState)
9 _TextInputClientHandler 
	- same as Flutter's _TextInputClientHandler
10 TextInput 
	- an interface to the system's text input control.
	- same as Flutter's TextInput minus debug info/assertion
---------------------------------------------------
widgets\\rich_editable_text.dart
---------------------------------------------------
11 StyleController
	- extends ValueNotifier of type <TextStyle>
12 RichTextEditingController
	- extends ValueNotifier of type <RichTextEditingValue>
	- similar to TextEditingController but for <RichTextEditingValue>
13 RichEditableText
	- similar to EditableText
14 RichEditableTextState
	- extends State<RichEditableText>
	- implements TextInputClient<RichTextEditingValue>
    - parent for `_RichEditable`
15 _RichEditable
	- extends LeafRenderObjectWidget
    - The createRenderObject & updateRenderObject methods update output TextSpans by calling `RichTextEditingValueParser.updateSpansWithStyle`  
---------------------------------------------------  
\\Extensions.dart
16 Extensions
    - utilities for working with TextSpan
---------------------------------------------------
=======================================================================

