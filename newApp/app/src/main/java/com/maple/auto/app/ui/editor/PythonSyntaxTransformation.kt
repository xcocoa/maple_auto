package com.maple.auto.app.ui.editor

import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.input.OffsetMapping
import androidx.compose.ui.text.input.TransformedText
import androidx.compose.ui.text.input.VisualTransformation

class PythonSyntaxTransformation : VisualTransformation {
    override fun filter(text: AnnotatedString): TransformedText {
        val highlighted = highlightPython(text.text)
        return TransformedText(highlighted, OffsetMapping.Identity)
    }
}
