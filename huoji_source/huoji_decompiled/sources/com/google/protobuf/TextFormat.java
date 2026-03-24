package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.UnknownFieldSet;
import com.umeng.commonsdk.proguard.bg;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.UIDFolder;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFormat {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type = null;
    private static final int BUFFER_SIZE = 4096;
    private static final Printer DEFAULT_PRINTER;
    private static final Printer SINGLE_LINE_PRINTER;
    private static final Printer UNICODE_PRINTER;

    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        public InvalidEscapeSequenceException(String str) {
            super(str);
        }
    }

    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(int i, int i2, String str) {
            super(String.valueOf(Integer.toString(i)) + ":" + i2 + ": " + str);
            this.line = i;
            this.column = i2;
        }

        public ParseException(String str) {
            this(-1, -1, str);
        }

        public int getColumn() {
            return this.column;
        }

        public int getLine() {
            return this.line;
        }
    }

    public static final class Printer {
        private static /* synthetic */ int[] $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type;
        public boolean escapeNonAscii;
        public boolean singleLineMode;

        public static /* synthetic */ int[] $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type() {
            int[] iArr = $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[Descriptors.FieldDescriptor.Type.values().length];
            try {
                iArr2[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 10;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 15;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 16;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type = iArr2;
            return iArr2;
        }

        private Printer() {
            this.singleLineMode = false;
            this.escapeNonAscii = true;
        }

        public /* synthetic */ Printer(Printer printer) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void print(MessageOrBuilder messageOrBuilder, TextGenerator textGenerator) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
                printField(entry.getKey(), entry.getValue(), textGenerator);
            }
            printUnknownFields(messageOrBuilder.getUnknownFields(), textGenerator);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            if (!fieldDescriptor.isRepeated()) {
                printSingleField(fieldDescriptor, obj, textGenerator);
                return;
            }
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                printSingleField(fieldDescriptor, it.next(), textGenerator);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printFieldValue(Descriptors.FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            switch ($SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type()[fieldDescriptor.getType().ordinal()]) {
                case 1:
                    textGenerator.print(((Double) obj).toString());
                    break;
                case 2:
                    textGenerator.print(((Float) obj).toString());
                    break;
                case 3:
                case 16:
                case 18:
                    textGenerator.print(((Long) obj).toString());
                    break;
                case 4:
                case 6:
                    textGenerator.print(TextFormat.unsignedToString(((Long) obj).longValue()));
                    break;
                case 5:
                case 15:
                case 17:
                    textGenerator.print(((Integer) obj).toString());
                    break;
                case 7:
                case 13:
                    textGenerator.print(TextFormat.unsignedToString(((Integer) obj).intValue()));
                    break;
                case 8:
                    textGenerator.print(((Boolean) obj).toString());
                    break;
                case 9:
                    textGenerator.print("\"");
                    textGenerator.print(this.escapeNonAscii ? TextFormat.escapeText((String) obj) : (String) obj);
                    textGenerator.print("\"");
                    break;
                case 10:
                case 11:
                    print((Message) obj, textGenerator);
                    break;
                case 12:
                    textGenerator.print("\"");
                    textGenerator.print(TextFormat.escapeBytes((ByteString) obj));
                    textGenerator.print("\"");
                    break;
                case 14:
                    textGenerator.print(((Descriptors.EnumValueDescriptor) obj).getName());
                    break;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0092  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void printSingleField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            String name;
            String str;
            String str2;
            if (fieldDescriptor.isExtension()) {
                textGenerator.print("[");
                textGenerator.print((fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() && fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && fieldDescriptor.isOptional() && fieldDescriptor.getExtensionScope() == fieldDescriptor.getMessageType()) ? fieldDescriptor.getMessageType().getFullName() : fieldDescriptor.getFullName());
                name = "]";
            } else {
                name = fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fieldDescriptor.getMessageType().getName() : fieldDescriptor.getName();
            }
            textGenerator.print(name);
            Descriptors.FieldDescriptor.JavaType javaType = fieldDescriptor.getJavaType();
            Descriptors.FieldDescriptor.JavaType javaType2 = Descriptors.FieldDescriptor.JavaType.MESSAGE;
            if (javaType != javaType2) {
                str = ": ";
            } else {
                if (!this.singleLineMode) {
                    textGenerator.print(" {\n");
                    textGenerator.indent();
                    printFieldValue(fieldDescriptor, obj, textGenerator);
                    if (fieldDescriptor.getJavaType() == javaType2) {
                        str2 = this.singleLineMode ? o4.OooO00o.OooO0Oo : "\n";
                    } else if (this.singleLineMode) {
                        str2 = "} ";
                    } else {
                        textGenerator.outdent();
                        str2 = "}\n";
                    }
                    textGenerator.print(str2);
                }
                str = " { ";
            }
            textGenerator.print(str);
            printFieldValue(fieldDescriptor, obj, textGenerator);
            if (fieldDescriptor.getJavaType() == javaType2) {
            }
            textGenerator.print(str2);
        }

        private void printUnknownField(int i, int i2, List<?> list, TextGenerator textGenerator) throws IOException {
            for (Object obj : list) {
                textGenerator.print(String.valueOf(i));
                textGenerator.print(": ");
                TextFormat.printUnknownFieldValue(i2, obj, textGenerator);
                textGenerator.print(this.singleLineMode ? o4.OooO00o.OooO0Oo : "\n");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printUnknownFields(UnknownFieldSet unknownFieldSet, TextGenerator textGenerator) throws IOException {
            String str;
            for (Map.Entry<Integer, UnknownFieldSet.Field> entry : unknownFieldSet.asMap().entrySet()) {
                int iIntValue = entry.getKey().intValue();
                UnknownFieldSet.Field value = entry.getValue();
                printUnknownField(iIntValue, 0, value.getVarintList(), textGenerator);
                printUnknownField(iIntValue, 5, value.getFixed32List(), textGenerator);
                printUnknownField(iIntValue, 1, value.getFixed64List(), textGenerator);
                printUnknownField(iIntValue, 2, value.getLengthDelimitedList(), textGenerator);
                for (UnknownFieldSet unknownFieldSet2 : value.getGroupList()) {
                    textGenerator.print(entry.getKey().toString());
                    if (this.singleLineMode) {
                        textGenerator.print(" { ");
                    } else {
                        textGenerator.print(" {\n");
                        textGenerator.indent();
                    }
                    printUnknownFields(unknownFieldSet2, textGenerator);
                    if (this.singleLineMode) {
                        str = "} ";
                    } else {
                        textGenerator.outdent();
                        str = "}\n";
                    }
                    textGenerator.print(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Printer setEscapeNonAscii(boolean z) {
            this.escapeNonAscii = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Printer setSingleLineMode(boolean z) {
            this.singleLineMode = z;
            return this;
        }
    }

    public static final class TextGenerator {
        private boolean atStartOfLine;
        private final StringBuilder indent;
        private final Appendable output;

        private TextGenerator(Appendable appendable) {
            this.indent = new StringBuilder();
            this.atStartOfLine = true;
            this.output = appendable;
        }

        public /* synthetic */ TextGenerator(Appendable appendable, TextGenerator textGenerator) {
            this(appendable);
        }

        private void write(CharSequence charSequence, int i) throws IOException {
            if (i == 0) {
                return;
            }
            if (this.atStartOfLine) {
                this.atStartOfLine = false;
                this.output.append(this.indent);
            }
            this.output.append(charSequence);
        }

        public final void indent() {
            this.indent.append("  ");
        }

        public final void outdent() {
            int length = this.indent.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.indent.delete(length - 2, length);
        }

        public final void print(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (charSequence.charAt(i2) == '\n') {
                    write(charSequence.subSequence(i, length), (i2 - i) + 1);
                    i = i2 + 1;
                    this.atStartOfLine = true;
                }
            }
            write(charSequence.subSequence(i, length), length - i);
        }
    }

    public static final class Tokenizer {
        private int column;
        private String currentToken;
        private int line;
        private final Matcher matcher;
        private int pos;
        private int previousColumn;
        private int previousLine;
        private final CharSequence text;
        private static final Pattern WHITESPACE = Pattern.compile("(\\s|(#.*$))++", 8);
        private static final Pattern TOKEN = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
        private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
        private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
        private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);

        private Tokenizer(CharSequence charSequence) {
            this.pos = 0;
            this.line = 0;
            this.column = 0;
            this.previousLine = 0;
            this.previousColumn = 0;
            this.text = charSequence;
            this.matcher = WHITESPACE.matcher(charSequence);
            skipWhitespace();
            nextToken();
        }

        public /* synthetic */ Tokenizer(CharSequence charSequence, Tokenizer tokenizer) {
            this(charSequence);
        }

        private void consumeByteString(List<ByteString> list) throws ParseException {
            char cCharAt = this.currentToken.length() > 0 ? this.currentToken.charAt(0) : (char) 0;
            if (cCharAt != '\"' && cCharAt != '\'') {
                throw parseException("Expected string.");
            }
            if (this.currentToken.length() >= 2) {
                String str = this.currentToken;
                if (str.charAt(str.length() - 1) == cCharAt) {
                    try {
                        String str2 = this.currentToken;
                        ByteString byteStringUnescapeBytes = TextFormat.unescapeBytes(str2.substring(1, str2.length() - 1));
                        nextToken();
                        list.add(byteStringUnescapeBytes);
                        return;
                    } catch (InvalidEscapeSequenceException e) {
                        throw parseException(e.getMessage());
                    }
                }
            }
            throw parseException("String missing ending quote.");
        }

        private ParseException floatParseException(NumberFormatException numberFormatException) {
            return parseException("Couldn't parse number: " + numberFormatException.getMessage());
        }

        private ParseException integerParseException(NumberFormatException numberFormatException) {
            return parseException("Couldn't parse integer: " + numberFormatException.getMessage());
        }

        private void skipWhitespace() {
            this.matcher.usePattern(WHITESPACE);
            if (this.matcher.lookingAt()) {
                Matcher matcher = this.matcher;
                matcher.region(matcher.end(), this.matcher.regionEnd());
            }
        }

        public final boolean atEnd() {
            return this.currentToken.length() == 0;
        }

        public final void consume(String str) throws ParseException {
            if (tryConsume(str)) {
                return;
            }
            throw parseException("Expected \"" + str + "\".");
        }

        public final boolean consumeBoolean() throws ParseException {
            if (this.currentToken.equals("true") || this.currentToken.equals("t") || this.currentToken.equals("1")) {
                nextToken();
                return true;
            }
            if (!this.currentToken.equals("false") && !this.currentToken.equals("f") && !this.currentToken.equals("0")) {
                throw parseException("Expected \"true\" or \"false\".");
            }
            nextToken();
            return false;
        }

        public final ByteString consumeByteString() throws ParseException {
            ArrayList arrayList = new ArrayList();
            while (true) {
                consumeByteString(arrayList);
                if (!this.currentToken.startsWith("'") && !this.currentToken.startsWith("\"")) {
                    return ByteString.copyFrom(arrayList);
                }
            }
        }

        public final double consumeDouble() throws ParseException {
            if (DOUBLE_INFINITY.matcher(this.currentToken).matches()) {
                boolean zStartsWith = this.currentToken.startsWith("-");
                nextToken();
                return zStartsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.currentToken.equalsIgnoreCase("nan")) {
                nextToken();
                return Double.NaN;
            }
            try {
                double d = Double.parseDouble(this.currentToken);
                nextToken();
                return d;
            } catch (NumberFormatException e) {
                throw floatParseException(e);
            }
        }

        public final float consumeFloat() throws ParseException {
            if (FLOAT_INFINITY.matcher(this.currentToken).matches()) {
                boolean zStartsWith = this.currentToken.startsWith("-");
                nextToken();
                return zStartsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (FLOAT_NAN.matcher(this.currentToken).matches()) {
                nextToken();
                return Float.NaN;
            }
            try {
                float f = Float.parseFloat(this.currentToken);
                nextToken();
                return f;
            } catch (NumberFormatException e) {
                throw floatParseException(e);
            }
        }

        public final String consumeIdentifier() throws ParseException {
            for (int i = 0; i < this.currentToken.length(); i++) {
                char cCharAt = this.currentToken.charAt(i);
                if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && !(('0' <= cCharAt && cCharAt <= '9') || cCharAt == '_' || cCharAt == '.'))) {
                    throw parseException("Expected identifier.");
                }
            }
            String str = this.currentToken;
            nextToken();
            return str;
        }

        public final int consumeInt32() throws ParseException {
            try {
                int int32 = TextFormat.parseInt32(this.currentToken);
                nextToken();
                return int32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final long consumeInt64() throws ParseException {
            try {
                long int64 = TextFormat.parseInt64(this.currentToken);
                nextToken();
                return int64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final String consumeString() throws ParseException {
            return consumeByteString().toStringUtf8();
        }

        public final int consumeUInt32() throws ParseException {
            try {
                int uInt32 = TextFormat.parseUInt32(this.currentToken);
                nextToken();
                return uInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final long consumeUInt64() throws ParseException {
            try {
                long uInt64 = TextFormat.parseUInt64(this.currentToken);
                nextToken();
                return uInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final boolean lookingAtInteger() {
            if (this.currentToken.length() == 0) {
                return false;
            }
            char cCharAt = this.currentToken.charAt(0);
            return ('0' <= cCharAt && cCharAt <= '9') || cCharAt == '-' || cCharAt == '+';
        }

        public final void nextToken() {
            Matcher matcher;
            int iEnd;
            int iRegionEnd;
            int i;
            this.previousLine = this.line;
            this.previousColumn = this.column;
            while (this.pos < this.matcher.regionStart()) {
                if (this.text.charAt(this.pos) == '\n') {
                    this.line++;
                    i = 0;
                } else {
                    i = this.column + 1;
                }
                this.column = i;
                this.pos++;
            }
            if (this.matcher.regionStart() == this.matcher.regionEnd()) {
                this.currentToken = "";
                return;
            }
            this.matcher.usePattern(TOKEN);
            if (this.matcher.lookingAt()) {
                this.currentToken = this.matcher.group();
                matcher = this.matcher;
                iEnd = matcher.end();
                iRegionEnd = this.matcher.regionEnd();
            } else {
                this.currentToken = String.valueOf(this.text.charAt(this.pos));
                matcher = this.matcher;
                iEnd = this.pos + 1;
                iRegionEnd = matcher.regionEnd();
            }
            matcher.region(iEnd, iRegionEnd);
            skipWhitespace();
        }

        public final ParseException parseException(String str) {
            return new ParseException(this.line + 1, this.column + 1, str);
        }

        public final ParseException parseExceptionPreviousToken(String str) {
            return new ParseException(this.previousLine + 1, this.previousColumn + 1, str);
        }

        public final boolean tryConsume(String str) {
            if (!this.currentToken.equals(str)) {
                return false;
            }
            nextToken();
            return true;
        }
    }

    public static /* synthetic */ int[] $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type() {
        int[] iArr = $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[Descriptors.FieldDescriptor.Type.values().length];
        try {
            iArr2[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 8;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 12;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 14;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 7;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 10;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 5;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 3;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 15;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 16;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 17;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 18;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 9;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 13;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 4;
        } catch (NoSuchFieldError unused18) {
        }
        $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type = iArr2;
        return iArr2;
    }

    static {
        Printer printer = null;
        DEFAULT_PRINTER = new Printer(printer);
        SINGLE_LINE_PRINTER = new Printer(printer).setSingleLineMode(true);
        UNICODE_PRINTER = new Printer(printer).setEscapeNonAscii(false);
    }

    private TextFormat() {
    }

    private static int digitValue(byte b) {
        if (48 > b || b > 57) {
            return ((97 > b || b > 122) ? b - 65 : b - 97) + 10;
        }
        return b - 48;
    }

    public static String escapeBytes(ByteString byteString) {
        String str;
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i = 0; i < byteString.size(); i++) {
            int iByteAt = byteString.byteAt(i);
            if (iByteAt == 34) {
                str = "\\\"";
            } else if (iByteAt == 39) {
                str = "\\'";
            } else if (iByteAt != 92) {
                switch (iByteAt) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (iByteAt < 32) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((iByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((iByteAt >>> 3) & 7) + 48));
                            iByteAt = (iByteAt & 7) + 48;
                        }
                        sb.append((char) iByteAt);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }

    private static boolean isHex(byte b) {
        if (48 <= b && b <= 57) {
            return true;
        }
        if (97 > b || b > 102) {
            return 65 <= b && b <= 70;
        }
        return true;
    }

    private static boolean isOctal(byte b) {
        return 48 <= b && b <= 55;
    }

    public static void merge(CharSequence charSequence, ExtensionRegistry extensionRegistry, Message.Builder builder) throws ParseException {
        Tokenizer tokenizer = new Tokenizer(charSequence, null);
        while (!tokenizer.atEnd()) {
            mergeField(tokenizer, extensionRegistry, builder);
        }
    }

    public static void merge(CharSequence charSequence, Message.Builder builder) throws ParseException {
        merge(charSequence, ExtensionRegistry.getEmptyRegistry(), builder);
    }

    public static void merge(Readable readable, ExtensionRegistry extensionRegistry, Message.Builder builder) throws IOException {
        merge(toStringBuilder(readable), extensionRegistry, builder);
    }

    public static void merge(Readable readable, Message.Builder builder) throws IOException {
        merge(readable, ExtensionRegistry.getEmptyRegistry(), builder);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void mergeField(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, Message.Builder builder) throws ParseException {
        Descriptors.FieldDescriptor fieldDescriptor;
        ExtensionRegistry.ExtensionInfo extensionInfoFindExtensionByName;
        long jConsumeInt64;
        int iConsumeInt32;
        String str;
        Descriptors.Descriptor descriptorForType = builder.getDescriptorForType();
        Object objValueOf = null;
        if (tokenizer.tryConsume("[")) {
            StringBuilder sb = new StringBuilder(tokenizer.consumeIdentifier());
            while (tokenizer.tryConsume(".")) {
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                sb.append(tokenizer.consumeIdentifier());
            }
            extensionInfoFindExtensionByName = extensionRegistry.findExtensionByName(sb.toString());
            if (extensionInfoFindExtensionByName == null) {
                throw tokenizer.parseExceptionPreviousToken("Extension \"" + ((Object) sb) + "\" not found in the ExtensionRegistry.");
            }
            if (extensionInfoFindExtensionByName.descriptor.getContainingType() != descriptorForType) {
                throw tokenizer.parseExceptionPreviousToken("Extension \"" + ((Object) sb) + "\" does not extend message type \"" + descriptorForType.getFullName() + "\".");
            }
            tokenizer.consume("]");
            fieldDescriptor = extensionInfoFindExtensionByName.descriptor;
        } else {
            String strConsumeIdentifier = tokenizer.consumeIdentifier();
            Descriptors.FieldDescriptor fieldDescriptorFindFieldByName = descriptorForType.findFieldByName(strConsumeIdentifier);
            if (fieldDescriptorFindFieldByName == null && (fieldDescriptorFindFieldByName = descriptorForType.findFieldByName(strConsumeIdentifier.toLowerCase(Locale.US))) != null && fieldDescriptorFindFieldByName.getType() != Descriptors.FieldDescriptor.Type.GROUP) {
                fieldDescriptorFindFieldByName = null;
            }
            if (fieldDescriptorFindFieldByName != null && fieldDescriptorFindFieldByName.getType() == Descriptors.FieldDescriptor.Type.GROUP && !fieldDescriptorFindFieldByName.getMessageType().getName().equals(strConsumeIdentifier)) {
                fieldDescriptorFindFieldByName = null;
            }
            if (fieldDescriptorFindFieldByName == null) {
                throw tokenizer.parseExceptionPreviousToken("Message type \"" + descriptorForType.getFullName() + "\" has no field named \"" + strConsumeIdentifier + "\".");
            }
            fieldDescriptor = fieldDescriptorFindFieldByName;
            extensionInfoFindExtensionByName = null;
        }
        if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            tokenizer.consume(":");
            switch ($SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type()[fieldDescriptor.getType().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(tokenizer.consumeDouble());
                    break;
                case 2:
                    objValueOf = Float.valueOf(tokenizer.consumeFloat());
                    break;
                case 3:
                case 16:
                case 18:
                    jConsumeInt64 = tokenizer.consumeInt64();
                    objValueOf = Long.valueOf(jConsumeInt64);
                    break;
                case 4:
                case 6:
                    jConsumeInt64 = tokenizer.consumeUInt64();
                    objValueOf = Long.valueOf(jConsumeInt64);
                    break;
                case 5:
                case 15:
                case 17:
                    iConsumeInt32 = tokenizer.consumeInt32();
                    objValueOf = Integer.valueOf(iConsumeInt32);
                    break;
                case 7:
                case 13:
                    iConsumeInt32 = tokenizer.consumeUInt32();
                    objValueOf = Integer.valueOf(iConsumeInt32);
                    break;
                case 8:
                    objValueOf = Boolean.valueOf(tokenizer.consumeBoolean());
                    break;
                case 9:
                    objValueOf = tokenizer.consumeString();
                    break;
                case 10:
                case 11:
                    throw new RuntimeException("Can't get here.");
                case 12:
                    objValueOf = tokenizer.consumeByteString();
                    break;
                case 14:
                    Descriptors.EnumDescriptor enumType = fieldDescriptor.getEnumType();
                    if (tokenizer.lookingAtInteger()) {
                        int iConsumeInt322 = tokenizer.consumeInt32();
                        Descriptors.EnumValueDescriptor enumValueDescriptorFindValueByNumber = enumType.findValueByNumber(iConsumeInt322);
                        if (enumValueDescriptorFindValueByNumber == null) {
                            throw tokenizer.parseExceptionPreviousToken("Enum type \"" + enumType.getFullName() + "\" has no value with number " + iConsumeInt322 + FilenameUtils.EXTENSION_SEPARATOR);
                        }
                        objValueOf = enumValueDescriptorFindValueByNumber;
                    } else {
                        String strConsumeIdentifier2 = tokenizer.consumeIdentifier();
                        Descriptors.EnumValueDescriptor enumValueDescriptorFindValueByName = enumType.findValueByName(strConsumeIdentifier2);
                        if (enumValueDescriptorFindValueByName == null) {
                            throw tokenizer.parseExceptionPreviousToken("Enum type \"" + enumType.getFullName() + "\" has no value named \"" + strConsumeIdentifier2 + "\".");
                        }
                        objValueOf = enumValueDescriptorFindValueByName;
                    }
                    break;
            }
        } else {
            tokenizer.tryConsume(":");
            if (tokenizer.tryConsume("<")) {
                str = ">";
            } else {
                tokenizer.consume("{");
                str = "}";
            }
            Message.Builder builderNewBuilderForField = extensionInfoFindExtensionByName == null ? builder.newBuilderForField(fieldDescriptor) : extensionInfoFindExtensionByName.defaultInstance.newBuilderForType();
            while (!tokenizer.tryConsume(str)) {
                if (tokenizer.atEnd()) {
                    throw tokenizer.parseException("Expected \"" + str + "\".");
                }
                mergeField(tokenizer, extensionRegistry, builderNewBuilderForField);
            }
            objValueOf = builderNewBuilderForField.buildPartial();
        }
        if (fieldDescriptor.isRepeated()) {
            builder.addRepeatedField(fieldDescriptor, objValueOf);
        } else {
            builder.setField(fieldDescriptor, objValueOf);
        }
    }

    public static int parseInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, true, false);
    }

    public static long parseInt64(String str) throws NumberFormatException {
        return parseInteger(str, true, true);
    }

    private static long parseInteger(String str, boolean z, boolean z3) throws NumberFormatException {
        int i = 0;
        boolean z4 = true;
        if (!str.startsWith("-", 0)) {
            z4 = false;
        } else {
            if (!z) {
                throw new NumberFormatException("Number must be positive: ".concat(String.valueOf(str)));
            }
            i = 1;
        }
        int i2 = 10;
        if (str.startsWith("0x", i)) {
            i += 2;
            i2 = 16;
        } else if (str.startsWith("0", i)) {
            i2 = 8;
        }
        String strSubstring = str.substring(i);
        if (strSubstring.length() < 16) {
            long j = Long.parseLong(strSubstring, i2);
            if (z4) {
                j = -j;
            }
            if (z3) {
                return j;
            }
            if (z) {
                if (j > 2147483647L || j < -2147483648L) {
                    throw new NumberFormatException("Number out of range for 32-bit signed integer: ".concat(String.valueOf(str)));
                }
                return j;
            }
            if (j >= 4294967296L || j < 0) {
                throw new NumberFormatException("Number out of range for 32-bit unsigned integer: ".concat(String.valueOf(str)));
            }
            return j;
        }
        BigInteger bigInteger = new BigInteger(strSubstring, i2);
        if (z4) {
            bigInteger = bigInteger.negate();
        }
        if (z3) {
            if (z) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: ".concat(String.valueOf(str)));
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: ".concat(String.valueOf(str)));
            }
        } else if (z) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: ".concat(String.valueOf(str)));
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: ".concat(String.valueOf(str)));
        }
        return bigInteger.longValue();
    }

    public static int parseUInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, false, false);
    }

    public static long parseUInt64(String str) throws NumberFormatException {
        return parseInteger(str, false, true);
    }

    public static void print(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.print(messageOrBuilder, new TextGenerator(appendable, null));
    }

    public static void print(UnknownFieldSet unknownFieldSet, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(appendable, null));
    }

    public static void printField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printField(fieldDescriptor, obj, new TextGenerator(appendable, null));
    }

    public static String printFieldToString(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
        try {
            StringBuilder sb = new StringBuilder();
            printField(fieldDescriptor, obj, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printFieldValue(Descriptors.FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printFieldValue(fieldDescriptor, obj, new TextGenerator(appendable, null));
    }

    public static String printToString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            print(messageOrBuilder, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            print(unknownFieldSet, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            UNICODE_PRINTER.print(messageOrBuilder, new TextGenerator(sb, null));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            UNICODE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(sb, null));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printUnknownFieldValue(int i, Object obj, TextGenerator textGenerator) throws IOException {
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 0) {
            textGenerator.print(unsignedToString(((Long) obj).longValue()));
            return;
        }
        if (tagWireType == 1) {
            textGenerator.print(String.format(null, "0x%016x", (Long) obj));
            return;
        }
        if (tagWireType == 2) {
            textGenerator.print("\"");
            textGenerator.print(escapeBytes((ByteString) obj));
            textGenerator.print("\"");
        } else if (tagWireType == 3) {
            DEFAULT_PRINTER.printUnknownFields((UnknownFieldSet) obj, textGenerator);
        } else {
            if (tagWireType != 5) {
                throw new IllegalArgumentException("Bad tag: ".concat(String.valueOf(i)));
            }
            textGenerator.print(String.format(null, "0x%08x", (Integer) obj));
        }
    }

    public static void printUnknownFieldValue(int i, Object obj, Appendable appendable) throws IOException {
        printUnknownFieldValue(i, obj, new TextGenerator(appendable, null));
    }

    public static String shortDebugString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            SINGLE_LINE_PRINTER.print(messageOrBuilder, new TextGenerator(sb, null));
            return sb.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String shortDebugString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            SINGLE_LINE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(sb, null));
            return sb.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private static StringBuilder toStringBuilder(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        CharBuffer charBufferAllocate = CharBuffer.allocate(4096);
        while (true) {
            int i = readable.read(charBufferAllocate);
            if (i == -1) {
                return sb;
            }
            charBufferAllocate.flip();
            sb.append((CharSequence) charBufferAllocate, 0, i);
        }
    }

    public static ByteString unescapeBytes(CharSequence charSequence) throws InvalidEscapeSequenceException {
        int i;
        int i2;
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        byte[] bArr = new byte[byteStringCopyFromUtf8.size()];
        int i3 = 0;
        int i4 = 0;
        while (i3 < byteStringCopyFromUtf8.size()) {
            byte bByteAt = byteStringCopyFromUtf8.byteAt(i3);
            if (bByteAt == 92) {
                i3++;
                if (i3 >= byteStringCopyFromUtf8.size()) {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
                byte bByteAt2 = byteStringCopyFromUtf8.byteAt(i3);
                if (isOctal(bByteAt2)) {
                    int iDigitValue = digitValue(bByteAt2);
                    int i5 = i3 + 1;
                    if (i5 < byteStringCopyFromUtf8.size() && isOctal(byteStringCopyFromUtf8.byteAt(i5))) {
                        iDigitValue = (iDigitValue * 8) + digitValue(byteStringCopyFromUtf8.byteAt(i5));
                        i3 = i5;
                    }
                    int i6 = i3 + 1;
                    if (i6 < byteStringCopyFromUtf8.size() && isOctal(byteStringCopyFromUtf8.byteAt(i6))) {
                        iDigitValue = (iDigitValue * 8) + digitValue(byteStringCopyFromUtf8.byteAt(i6));
                        i3 = i6;
                    }
                    i = i4 + 1;
                    bArr[i4] = (byte) iDigitValue;
                } else {
                    if (bByteAt2 == 34) {
                        i2 = i4 + 1;
                        bArr[i4] = 34;
                    } else if (bByteAt2 == 39) {
                        i2 = i4 + 1;
                        bArr[i4] = 39;
                    } else if (bByteAt2 == 92) {
                        i2 = i4 + 1;
                        bArr[i4] = 92;
                    } else if (bByteAt2 == 102) {
                        i2 = i4 + 1;
                        bArr[i4] = 12;
                    } else if (bByteAt2 == 110) {
                        i2 = i4 + 1;
                        bArr[i4] = 10;
                    } else if (bByteAt2 == 114) {
                        i2 = i4 + 1;
                        bArr[i4] = bg.k;
                    } else if (bByteAt2 == 116) {
                        i2 = i4 + 1;
                        bArr[i4] = 9;
                    } else if (bByteAt2 == 118) {
                        i2 = i4 + 1;
                        bArr[i4] = 11;
                    } else if (bByteAt2 == 120) {
                        i3++;
                        if (i3 >= byteStringCopyFromUtf8.size() || !isHex(byteStringCopyFromUtf8.byteAt(i3))) {
                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                        }
                        int iDigitValue2 = digitValue(byteStringCopyFromUtf8.byteAt(i3));
                        int i7 = i3 + 1;
                        if (i7 < byteStringCopyFromUtf8.size() && isHex(byteStringCopyFromUtf8.byteAt(i7))) {
                            iDigitValue2 = (iDigitValue2 * 16) + digitValue(byteStringCopyFromUtf8.byteAt(i7));
                            i3 = i7;
                        }
                        i = i4 + 1;
                        bArr[i4] = (byte) iDigitValue2;
                    } else if (bByteAt2 == 97) {
                        i2 = i4 + 1;
                        bArr[i4] = 7;
                    } else {
                        if (bByteAt2 != 98) {
                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) bByteAt2) + '\'');
                        }
                        i2 = i4 + 1;
                        bArr[i4] = 8;
                    }
                    i4 = i2;
                    i3++;
                }
            } else {
                i = i4 + 1;
                bArr[i4] = bByteAt;
            }
            i4 = i;
            i3++;
        }
        return ByteString.copyFrom(bArr, 0, i4);
    }

    public static String unescapeText(String str) throws InvalidEscapeSequenceException {
        return unescapeBytes(str).toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String unsignedToString(int i) {
        return i >= 0 ? Integer.toString(i) : Long.toString(((long) i) & UIDFolder.MAXUID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String unsignedToString(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }
}
