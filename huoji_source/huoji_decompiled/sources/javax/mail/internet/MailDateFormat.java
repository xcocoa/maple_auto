package javax.mail.internet;

import com.sun.mail.util.MailLogger;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class MailDateFormat extends SimpleDateFormat {
    private static final int LEAP_SECOND = 60;
    private static final String PATTERN = "EEE, d MMM yyyy HH:mm:ss Z (z)";
    private static final int UNKNOWN_DAY_NAME = -1;
    private static final long serialVersionUID = -8148227605210628779L;
    private static final MailLogger LOGGER = new MailLogger((Class<?>) MailDateFormat.class, "DEBUG", false, System.out);
    private static final TimeZone UTC = TimeZone.getTimeZone("UTC");

    public static abstract class AbstractDateParser {
        public static final int INVALID_CHAR = -1;
        public static final int MAX_YEAR_DIGITS = 8;
        public final ParsePosition pos;
        public final String text;

        public AbstractDateParser(String str, ParsePosition parsePosition) {
            this.text = str;
            this.pos = parsePosition;
        }

        public final int getAsciiDigit() {
            int i = getChar();
            if (48 <= i && i <= 57) {
                return Character.digit((char) i, 10);
            }
            if (i != -1) {
                this.pos.setIndex(r0.getIndex() - 1);
            }
            return -1;
        }

        public final int getChar() {
            if (this.pos.getIndex() >= this.text.length()) {
                return -1;
            }
            char cCharAt = this.text.charAt(this.pos.getIndex());
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() + 1);
            return cCharAt;
        }

        public boolean isValidZoneOffset(int i) {
            return i % 100 < 60;
        }

        public final Date parse() {
            int index = this.pos.getIndex();
            try {
                return tryParse();
            } catch (Exception e) {
                if (MailDateFormat.LOGGER.isLoggable(Level.FINE)) {
                    MailDateFormat.LOGGER.log(Level.FINE, "Bad date: '" + this.text + "'", (Throwable) e);
                }
                ParsePosition parsePosition = this.pos;
                parsePosition.setErrorIndex(parsePosition.getIndex());
                this.pos.setIndex(index);
                return null;
            }
        }

        public final int parseAsciiDigits(int i) throws java.text.ParseException {
            return parseAsciiDigits(i, i);
        }

        public final int parseAsciiDigits(int i, int i2) throws java.text.ParseException {
            return parseAsciiDigits(i, i2, false);
        }

        public final int parseAsciiDigits(int i, int i2, boolean z) throws java.text.ParseException {
            String string;
            int i3 = 0;
            int asciiDigit = 0;
            while (i3 < i2 && peekAsciiDigit()) {
                asciiDigit = (asciiDigit * 10) + getAsciiDigit();
                i3++;
            }
            if (i3 >= i && (i3 != i2 || z || !peekAsciiDigit())) {
                return asciiDigit;
            }
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() - i3);
            if (i == i2) {
                string = Integer.toString(i);
            } else {
                string = "between " + i + " and " + i2;
            }
            throw new java.text.ParseException("Invalid input: expected " + string + " ASCII digits", this.pos.getIndex());
        }

        public final void parseChar(char c) throws java.text.ParseException {
            if (skipChar(c)) {
                return;
            }
            throw new java.text.ParseException("Invalid input: expected '" + c + "'", this.pos.getIndex());
        }

        public final int parseDayName() throws java.text.ParseException {
            int i = getChar();
            if (i == -1) {
                throw new java.text.ParseException("Invalid day-name", this.pos.getIndex());
            }
            if (i != 70) {
                if (i != 77) {
                    if (i != 87) {
                        if (i != 83) {
                            if (i == 84) {
                                if (skipPair('u', 'e')) {
                                    return 3;
                                }
                                if (skipPair('h', 'u')) {
                                    return 5;
                                }
                            }
                        } else {
                            if (skipPair('u', 'n')) {
                                return 1;
                            }
                            if (skipPair('a', 't')) {
                                return 7;
                            }
                        }
                    } else if (skipPair('e', 'd')) {
                        return 4;
                    }
                } else if (skipPair('o', 'n')) {
                    return 2;
                }
            } else if (skipPair('r', 'i')) {
                return 6;
            }
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() - 1);
            throw new java.text.ParseException("Invalid day-name", this.pos.getIndex());
        }

        public final void parseFoldingWhiteSpace() throws java.text.ParseException {
            if (!skipFoldingWhiteSpace()) {
                throw new java.text.ParseException("Invalid input: expected FWS", this.pos.getIndex());
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:105:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0108  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x011b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int parseMonthName(boolean z) throws java.text.ParseException {
            switch (getChar()) {
                case -1:
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 65:
                    if (skipPair('u', 'g')) {
                        return 7;
                    }
                    if (!z && skipAlternativePair('u', 'U', 'g', 'G')) {
                        return 7;
                    }
                    if (skipPair('p', 'r')) {
                        return 3;
                    }
                    if (!z && skipAlternativePair('p', 'P', 'r', 'R')) {
                        return 3;
                    }
                    ParsePosition parsePosition = this.pos;
                    parsePosition.setIndex(parsePosition.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 68:
                    if (skipPair('e', 'c')) {
                        return 11;
                    }
                    if (!z && skipAlternativePair('e', 'E', 'c', 'C')) {
                        return 11;
                    }
                    ParsePosition parsePosition2 = this.pos;
                    parsePosition2.setIndex(parsePosition2.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 70:
                    if (skipPair('e', 'b') || (!z && skipAlternativePair('e', 'E', 'b', 'B'))) {
                        return 1;
                    }
                    ParsePosition parsePosition22 = this.pos;
                    parsePosition22.setIndex(parsePosition22.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 74:
                    if (!skipChar('u') && (z || !skipChar('U'))) {
                        if (skipPair('a', 'n')) {
                            return 0;
                        }
                        if (!z && skipAlternativePair('a', 'A', 'n', 'N')) {
                            return 0;
                        }
                        ParsePosition parsePosition222 = this.pos;
                        parsePosition222.setIndex(parsePosition222.getIndex() - 1);
                        throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                    }
                    if (skipChar('l')) {
                        return 6;
                    }
                    if (!z && skipChar('L')) {
                        return 6;
                    }
                    if (skipChar('n')) {
                        return 5;
                    }
                    if (!z && skipChar('N')) {
                        return 5;
                    }
                    ParsePosition parsePosition3 = this.pos;
                    parsePosition3.setIndex(parsePosition3.getIndex() - 1);
                    ParsePosition parsePosition2222 = this.pos;
                    parsePosition2222.setIndex(parsePosition2222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 77:
                    if (skipChar('a') || (!z && skipChar('A'))) {
                        if (skipChar('r')) {
                            return 2;
                        }
                        if (!z && skipChar('R')) {
                            return 2;
                        }
                        if (skipChar('y')) {
                            return 4;
                        }
                        if (!z && skipChar('Y')) {
                            return 4;
                        }
                        ParsePosition parsePosition32 = this.pos;
                        parsePosition32.setIndex(parsePosition32.getIndex() - 1);
                    }
                    ParsePosition parsePosition22222 = this.pos;
                    parsePosition22222.setIndex(parsePosition22222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 78:
                    if (skipPair('o', 'v')) {
                        return 10;
                    }
                    if (!z && skipAlternativePair('o', 'O', 'v', 'V')) {
                        return 10;
                    }
                    ParsePosition parsePosition222222 = this.pos;
                    parsePosition222222.setIndex(parsePosition222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 79:
                    if (skipPair('c', 't')) {
                        return 9;
                    }
                    if (!z && skipAlternativePair('c', 'C', 't', 'T')) {
                        return 9;
                    }
                    ParsePosition parsePosition2222222 = this.pos;
                    parsePosition2222222.setIndex(parsePosition2222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 83:
                    if (skipPair('e', 'p')) {
                        return 8;
                    }
                    if (!z && skipAlternativePair('e', 'E', 'p', 'P')) {
                        return 8;
                    }
                    ParsePosition parsePosition22222222 = this.pos;
                    parsePosition22222222.setIndex(parsePosition22222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 97:
                    if (!z) {
                    }
                    ParsePosition parsePosition222222222 = this.pos;
                    parsePosition222222222.setIndex(parsePosition222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 100:
                    if (!z) {
                    }
                    ParsePosition parsePosition2222222222 = this.pos;
                    parsePosition2222222222.setIndex(parsePosition2222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 102:
                    if (!z) {
                    }
                    ParsePosition parsePosition22222222222 = this.pos;
                    parsePosition22222222222.setIndex(parsePosition22222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 106:
                    if (!z) {
                    }
                    ParsePosition parsePosition222222222222 = this.pos;
                    parsePosition222222222222.setIndex(parsePosition222222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 109:
                    if (!z) {
                    }
                    ParsePosition parsePosition2222222222222 = this.pos;
                    parsePosition2222222222222.setIndex(parsePosition2222222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 110:
                    if (!z) {
                    }
                    ParsePosition parsePosition22222222222222 = this.pos;
                    parsePosition22222222222222.setIndex(parsePosition22222222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 111:
                    if (!z) {
                    }
                    ParsePosition parsePosition222222222222222 = this.pos;
                    parsePosition222222222222222.setIndex(parsePosition222222222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                case 115:
                    if (!z) {
                    }
                    ParsePosition parsePosition2222222222222222 = this.pos;
                    parsePosition2222222222222222.setIndex(parsePosition2222222222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
                default:
                    ParsePosition parsePosition22222222222222222 = this.pos;
                    parsePosition22222222222222222.setIndex(parsePosition22222222222222222.getIndex() - 1);
                    throw new java.text.ParseException("Invalid month", this.pos.getIndex());
            }
        }

        public final int parseZoneOffset() throws java.text.ParseException {
            int i = getChar();
            if (i != 43 && i != 45) {
                if (i != -1) {
                    ParsePosition parsePosition = this.pos;
                    parsePosition.setIndex(parsePosition.getIndex() - 1);
                }
                throw new java.text.ParseException("Invalid zone", this.pos.getIndex());
            }
            int asciiDigits = parseAsciiDigits(4, 4, true);
            if (isValidZoneOffset(asciiDigits)) {
                return (i != 43 ? 1 : -1) * (((asciiDigits / 100) * 60) + (asciiDigits % 100));
            }
            this.pos.setIndex(r0.getIndex() - 5);
            throw new java.text.ParseException("Invalid zone", this.pos.getIndex());
        }

        public final boolean peekAsciiDigit() {
            return this.pos.getIndex() < this.text.length() && '0' <= this.text.charAt(this.pos.getIndex()) && this.text.charAt(this.pos.getIndex()) <= '9';
        }

        public final boolean peekChar(char c) {
            return this.pos.getIndex() < this.text.length() && this.text.charAt(this.pos.getIndex()) == c;
        }

        public boolean peekFoldingWhiteSpace() {
            if (this.pos.getIndex() < this.text.length()) {
                return this.text.charAt(this.pos.getIndex()) == ' ' || this.text.charAt(this.pos.getIndex()) == '\t' || this.text.charAt(this.pos.getIndex()) == '\r';
            }
            return false;
        }

        public final boolean skipAlternative(char c, char c2) {
            return skipChar(c) || skipChar(c2);
        }

        public final boolean skipAlternativePair(char c, char c2, char c3, char c4) {
            if (!skipAlternative(c, c2)) {
                return false;
            }
            if (skipAlternative(c3, c4)) {
                return true;
            }
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() - 1);
            return false;
        }

        public final boolean skipAlternativeTriple(char c, char c2, char c3, char c4, char c5, char c6) {
            if (!skipAlternativePair(c, c2, c3, c4)) {
                return false;
            }
            if (skipAlternative(c5, c6)) {
                return true;
            }
            this.pos.setIndex(r1.getIndex() - 2);
            return false;
        }

        public final boolean skipChar(char c) {
            if (this.pos.getIndex() >= this.text.length() || this.text.charAt(this.pos.getIndex()) != c) {
                return false;
            }
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() + 1);
            return true;
        }

        public boolean skipFoldingWhiteSpace() {
            if (skipChar(' ')) {
                if (!peekFoldingWhiteSpace()) {
                    return true;
                }
                ParsePosition parsePosition = this.pos;
                parsePosition.setIndex(parsePosition.getIndex() - 1);
            } else if (!peekFoldingWhiteSpace()) {
                return false;
            }
            int index = this.pos.getIndex();
            if (skipWhiteSpace()) {
                while (skipNewline()) {
                    if (!skipWhiteSpace()) {
                    }
                }
                return true;
            }
            if (skipNewline() && skipWhiteSpace()) {
                return true;
            }
            this.pos.setIndex(index);
            return false;
        }

        public final boolean skipNewline() {
            return skipPair('\r', '\n');
        }

        public final boolean skipPair(char c, char c2) {
            if (!skipChar(c)) {
                return false;
            }
            if (skipChar(c2)) {
                return true;
            }
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() - 1);
            return false;
        }

        public final boolean skipWhiteSpace() {
            int index = this.pos.getIndex();
            while (skipAlternative(' ', '\t')) {
            }
            return this.pos.getIndex() > index;
        }

        public abstract Date tryParse() throws java.text.ParseException;
    }

    public class Rfc2822LenientParser extends Rfc2822StrictParser {
        private Boolean hasDefaultFws;

        public Rfc2822LenientParser(String str, ParsePosition parsePosition) {
            super(str, parsePosition);
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public boolean isMonthNameCaseSensitive() {
            return false;
        }

        @Override // javax.mail.internet.MailDateFormat.AbstractDateParser
        public boolean isValidZoneOffset(int i) {
            return true;
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseDay() throws java.text.ParseException {
            skipFoldingWhiteSpace();
            return parseAsciiDigits(1, 3);
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public void parseFwsBetweenTimeOfDayAndZone() throws java.text.ParseException {
            skipFoldingWhiteSpace();
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public void parseFwsInMonth() throws java.text.ParseException {
            Boolean bool = this.hasDefaultFws;
            if (bool == null) {
                this.hasDefaultFws = Boolean.valueOf(!skipChar('-'));
                skipFoldingWhiteSpace();
            } else if (bool.booleanValue()) {
                skipFoldingWhiteSpace();
            } else {
                parseChar('-');
            }
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseHour() throws java.text.ParseException {
            return parseAsciiDigits(1, 2);
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseMinute() throws java.text.ParseException {
            return parseAsciiDigits(1, 2);
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseOptionalBegin() {
            while (this.pos.getIndex() < this.text.length() && !peekAsciiDigit()) {
                ParsePosition parsePosition = this.pos;
                parsePosition.setIndex(parsePosition.getIndex() + 1);
            }
            return -1;
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseSecond() throws java.text.ParseException {
            return parseAsciiDigits(1, 2);
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseYear() throws java.text.ParseException {
            int asciiDigits = parseAsciiDigits(1, 8);
            return asciiDigits >= 1000 ? asciiDigits : asciiDigits >= 50 ? asciiDigits + 1900 : asciiDigits + 2000;
        }

        @Override // javax.mail.internet.MailDateFormat.Rfc2822StrictParser
        public int parseZone() throws java.text.ParseException {
            int i;
            try {
                if (this.pos.getIndex() >= this.text.length()) {
                    throw new java.text.ParseException("Missing zone", this.pos.getIndex());
                }
                if (!peekChar('+') && !peekChar('-')) {
                    if (skipAlternativePair('U', 'u', 'T', 't') || skipAlternativeTriple('G', 'g', 'M', 'm', 'T', 't')) {
                        return 0;
                    }
                    if (skipAlternative('E', 'e')) {
                        i = 4;
                    } else if (skipAlternative('C', 'c')) {
                        i = 5;
                    } else if (skipAlternative('M', 'm')) {
                        i = 6;
                    } else {
                        if (!skipAlternative('P', 'p')) {
                            throw new java.text.ParseException("Invalid zone", this.pos.getIndex());
                        }
                        i = 7;
                    }
                    if (skipAlternativePair('S', 's', 'T', 't')) {
                        i++;
                    } else if (!skipAlternativePair('D', 'd', 'T', 't')) {
                        this.pos.setIndex(r1.getIndex() - 1);
                        throw new java.text.ParseException("Invalid zone", this.pos.getIndex());
                    }
                    return i * 60;
                }
                return parseZoneOffset();
            } catch (java.text.ParseException e) {
                MailLogger mailLogger = MailDateFormat.LOGGER;
                Level level = Level.FINE;
                if (mailLogger.isLoggable(level)) {
                    MailDateFormat.LOGGER.log(level, "No timezone? : '" + this.text + "'", (Throwable) e);
                }
                return 0;
            }
        }

        @Override // javax.mail.internet.MailDateFormat.AbstractDateParser
        public boolean peekFoldingWhiteSpace() {
            if (super.peekFoldingWhiteSpace()) {
                return true;
            }
            return this.pos.getIndex() < this.text.length() && this.text.charAt(this.pos.getIndex()) == '\n';
        }

        @Override // javax.mail.internet.MailDateFormat.AbstractDateParser
        public boolean skipFoldingWhiteSpace() {
            char cCharAt;
            boolean zPeekFoldingWhiteSpace = peekFoldingWhiteSpace();
            while (this.pos.getIndex() < this.text.length() && ((cCharAt = this.text.charAt(this.pos.getIndex())) == '\t' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ')) {
                ParsePosition parsePosition = this.pos;
                parsePosition.setIndex(parsePosition.getIndex() + 1);
            }
            return zPeekFoldingWhiteSpace;
        }
    }

    public class Rfc2822StrictParser extends AbstractDateParser {
        public Rfc2822StrictParser(String str, ParsePosition parsePosition) {
            super(str, parsePosition);
        }

        public boolean isMonthNameCaseSensitive() {
            return true;
        }

        public int parseDay() throws java.text.ParseException {
            skipFoldingWhiteSpace();
            return parseAsciiDigits(1, 2);
        }

        public void parseFwsBetweenTimeOfDayAndZone() throws java.text.ParseException {
            parseFoldingWhiteSpace();
        }

        public void parseFwsInMonth() throws java.text.ParseException {
            parseFoldingWhiteSpace();
        }

        public int parseHour() throws java.text.ParseException {
            return parseAsciiDigits(2);
        }

        public int parseMinute() throws java.text.ParseException {
            return parseAsciiDigits(2);
        }

        public int parseMonth() throws java.text.ParseException {
            parseFwsInMonth();
            int monthName = parseMonthName(isMonthNameCaseSensitive());
            parseFwsInMonth();
            return monthName;
        }

        public int parseOptionalBegin() throws java.text.ParseException {
            if (peekAsciiDigit()) {
                return -1;
            }
            skipFoldingWhiteSpace();
            int dayName = parseDayName();
            parseChar(',');
            return dayName;
        }

        public int parseSecond() throws java.text.ParseException {
            return parseAsciiDigits(2);
        }

        public int parseYear() throws java.text.ParseException {
            int asciiDigits = parseAsciiDigits(4, 8);
            if (asciiDigits >= 1900) {
                return asciiDigits;
            }
            ParsePosition parsePosition = this.pos;
            parsePosition.setIndex(parsePosition.getIndex() - 4);
            while (this.text.charAt(this.pos.getIndex() - 1) == '0') {
                this.pos.setIndex(r0.getIndex() - 1);
            }
            throw new java.text.ParseException("Invalid year", this.pos.getIndex());
        }

        public int parseZone() throws java.text.ParseException {
            return parseZoneOffset();
        }

        @Override // javax.mail.internet.MailDateFormat.AbstractDateParser
        public Date tryParse() throws java.text.ParseException {
            int optionalBegin = parseOptionalBegin();
            int day = parseDay();
            int month = parseMonth();
            int year = parseYear();
            parseFoldingWhiteSpace();
            int hour = parseHour();
            parseChar(':');
            int minute = parseMinute();
            int second = skipChar(':') ? parseSecond() : 0;
            parseFwsBetweenTimeOfDayAndZone();
            try {
                return MailDateFormat.this.toDate(optionalBegin, day, month, year, hour, minute, second, parseZone());
            } catch (IllegalArgumentException unused) {
                throw new java.text.ParseException("Invalid input: some of the calendar fields have invalid values, or day-name is inconsistent with date", this.pos.getIndex());
            }
        }
    }

    public MailDateFormat() {
        super(PATTERN, Locale.US);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        super.applyPattern(PATTERN);
    }

    private void superApplyPattern(String str) {
        super.applyPattern(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Date toDate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i7 == 60 ? 59 : i7;
        TimeZone timeZone = ((SimpleDateFormat) this).calendar.getTimeZone();
        try {
            ((SimpleDateFormat) this).calendar.setTimeZone(UTC);
            ((SimpleDateFormat) this).calendar.clear();
            ((SimpleDateFormat) this).calendar.set(i4, i3, i2, i5, i6, i9);
            if (i != -1 && i != ((SimpleDateFormat) this).calendar.get(7)) {
                throw new IllegalArgumentException("Inconsistent day-name");
            }
            ((SimpleDateFormat) this).calendar.add(12, i8);
            return ((SimpleDateFormat) this).calendar.getTime();
        } finally {
            ((SimpleDateFormat) this).calendar.setTimeZone(timeZone);
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        MailDateFormat mailDateFormat = new MailDateFormat();
        mailDateFormat.superApplyPattern("EEE, d MMM yyyy HH:mm:ss 'XXXXX' (z)");
        mailDateFormat.setTimeZone(getTimeZone());
        return mailDateFormat;
    }

    @Override // java.text.SimpleDateFormat
    public void applyLocalizedPattern(String str) {
        throw new UnsupportedOperationException("Method applyLocalizedPattern() shouldn't be called");
    }

    @Override // java.text.SimpleDateFormat
    public void applyPattern(String str) {
        throw new UnsupportedOperationException("Method applyPattern() shouldn't be called");
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat, java.text.Format
    public MailDateFormat clone() {
        return (MailDateFormat) super.clone();
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return super.format(date, stringBuffer, fieldPosition);
    }

    @Override // java.text.SimpleDateFormat
    public Date get2DigitYearStart() {
        throw new UnsupportedOperationException("Method get2DigitYearStart() shouldn't be called");
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        if (str == null || parsePosition == null) {
            throw null;
        }
        if (parsePosition.getIndex() < 0 || parsePosition.getIndex() >= str.length()) {
            return null;
        }
        return (isLenient() ? new Rfc2822LenientParser(str, parsePosition) : new Rfc2822StrictParser(str, parsePosition)).parse();
    }

    @Override // java.text.SimpleDateFormat
    public void set2DigitYearStart(Date date) {
        throw new UnsupportedOperationException("Method set2DigitYearStart() shouldn't be called");
    }

    @Override // java.text.DateFormat
    public void setCalendar(Calendar calendar) {
        throw new UnsupportedOperationException("Method setCalendar() shouldn't be called");
    }

    @Override // java.text.SimpleDateFormat
    public void setDateFormatSymbols(DateFormatSymbols dateFormatSymbols) {
        throw new UnsupportedOperationException("Method setDateFormatSymbols() shouldn't be called");
    }

    @Override // java.text.DateFormat
    public void setNumberFormat(NumberFormat numberFormat) {
        throw new UnsupportedOperationException("Method setNumberFormat() shouldn't be called");
    }
}
