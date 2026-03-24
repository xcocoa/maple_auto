package com.sun.mail.util.logging;

import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.github.kevinsawicki.http.HttpRequest;
import com.lidroid.xutils.http.client.multipart.MIME;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.logging.ErrorManager;
import java.util.logging.Filter;
import java.util.logging.Formatter;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.SimpleFormatter;
import javax.activation.DataHandler;
import javax.activation.FileTypeMap;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessageContext;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.PasswordAuthentication;
import javax.mail.SendFailedException;
import javax.mail.Service;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.ContentType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimePart;
import javax.mail.internet.MimeUtility;
import javax.mail.util.ByteArrayDataSource;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public class MailHandler extends Handler {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MIN_HEADER_SIZE = 1024;
    private volatile Filter[] attachmentFilters;
    private Formatter[] attachmentFormatters;
    private Formatter[] attachmentNames;
    private Authenticator auth;
    private int capacity;
    private Comparator<? super LogRecord> comparator;
    private FileTypeMap contentTypes;
    private LogRecord[] data;
    private String encoding;
    private volatile Filter filter;
    private Formatter formatter;
    private boolean isWriting;
    private Properties mailProps;
    private int[] matched;
    private Filter pushFilter;
    private Level pushLevel;
    private volatile boolean sealed;
    private Session session;
    private int size;
    private Formatter subjectFormatter;
    private static final Filter[] EMPTY_FILTERS = new Filter[0];
    private static final Formatter[] EMPTY_FORMATTERS = new Formatter[0];
    private static final int offValue = Level.OFF.intValue();
    private static final PrivilegedAction<Object> MAILHANDLER_LOADER = new GetAndSetContext(MailHandler.class);
    private static final ThreadLocal<Integer> MUTEX = new ThreadLocal<>();
    private static final Integer MUTEX_PUBLISH = -2;
    private static final Integer MUTEX_REPORT = -4;
    private static final Integer MUTEX_LINKAGE = -8;
    private volatile Level logLevel = Level.ALL;
    private volatile ErrorManager errorManager = defaultErrorManager();

    public static final class DefaultAuthenticator extends Authenticator {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        private final String pass;

        private DefaultAuthenticator(String str) {
            this.pass = str;
        }

        public static Authenticator of(String str) {
            return new DefaultAuthenticator(str);
        }

        @Override // javax.mail.Authenticator
        public final PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(getDefaultUserName(), this.pass);
        }
    }

    public static final class GetAndSetContext implements PrivilegedAction<Object> {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public static final Object NOT_MODIFIED = GetAndSetContext.class;
        private final Object source;

        public GetAndSetContext(Object obj) {
            this.source = obj;
        }

        @Override // java.security.PrivilegedAction
        public final Object run() {
            Class<?> cls;
            ClassLoader contextClassLoader;
            Thread threadCurrentThread = Thread.currentThread();
            ClassLoader contextClassLoader2 = threadCurrentThread.getContextClassLoader();
            Object obj = this.source;
            if (obj == null) {
                contextClassLoader = null;
            } else if (obj instanceof ClassLoader) {
                contextClassLoader = (ClassLoader) obj;
            } else {
                if (obj instanceof Class) {
                    cls = (Class) obj;
                } else if (obj instanceof Thread) {
                    contextClassLoader = ((Thread) obj).getContextClassLoader();
                } else {
                    cls = obj.getClass();
                }
                contextClassLoader = cls.getClassLoader();
            }
            if (contextClassLoader2 == contextClassLoader) {
                return NOT_MODIFIED;
            }
            threadCurrentThread.setContextClassLoader(contextClassLoader);
            return contextClassLoader2;
        }
    }

    public static final class TailNameFormatter extends Formatter {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        private final String name;

        private TailNameFormatter(String str) {
            this.name = str;
        }

        public static Formatter of(String str) {
            return new TailNameFormatter(str);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof TailNameFormatter) {
                return this.name.equals(((TailNameFormatter) obj).name);
            }
            return false;
        }

        @Override // java.util.logging.Formatter
        public final String format(LogRecord logRecord) {
            return "";
        }

        @Override // java.util.logging.Formatter
        public final String getTail(Handler handler) {
            return this.name;
        }

        public final int hashCode() {
            return TailNameFormatter.class.hashCode() + this.name.hashCode();
        }

        public final String toString() {
            return this.name;
        }
    }

    public MailHandler() {
        init(null);
        this.sealed = true;
        checkAccess();
    }

    public MailHandler(int i) {
        init(null);
        this.sealed = true;
        setCapacity0(i);
    }

    public MailHandler(Properties properties) throws Throwable {
        Objects.requireNonNull(properties);
        init(properties);
        this.sealed = true;
        setMailProperties0(properties);
    }

    private boolean alignAttachmentFilters() {
        int length = this.attachmentFormatters.length;
        int length2 = this.attachmentFilters.length;
        if (length2 != length) {
            this.attachmentFilters = (Filter[]) Arrays.copyOf(this.attachmentFilters, length, Filter[].class);
            clearMatches(length2);
            z = length2 != 0;
            Filter filter = this.filter;
            if (filter != null) {
                while (length2 < length) {
                    this.attachmentFilters[length2] = filter;
                    length2++;
                }
            }
        }
        if (length == 0) {
            this.attachmentFilters = emptyFilterArray();
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean alignAttachmentNames() {
        boolean z;
        int length = this.attachmentFormatters.length;
        Formatter[] formatterArr = this.attachmentNames;
        int length2 = formatterArr.length;
        if (length2 != length) {
            this.attachmentNames = (Formatter[]) Arrays.copyOf(formatterArr, length, Formatter[].class);
            z = length2 != 0;
        }
        if (length == 0) {
            this.attachmentNames = emptyFormatterArray();
        } else {
            for (int i = 0; i < length; i++) {
                Formatter[] formatterArr2 = this.attachmentNames;
                if (formatterArr2[i] == null) {
                    formatterArr2[i] = TailNameFormatter.of(toString(this.attachmentFormatters[i]));
                }
            }
        }
        return z;
    }

    private boolean allowRestrictedHeaders() {
        return LogManagerProperties.hasLogManager();
    }

    private void appendContentLang(MimePart mimePart, Locale locale) {
        try {
            String languageTag = LogManagerProperties.toLanguageTag(locale);
            if (languageTag.length() != 0) {
                String header = mimePart.getHeader("Content-Language", null);
                if (isEmpty(header)) {
                    mimePart.setHeader("Content-Language", languageTag);
                    return;
                }
                if (header.equalsIgnoreCase(languageTag)) {
                    return;
                }
                String strConcat = ",".concat(languageTag);
                int iIndexOf = 0;
                do {
                    iIndexOf = header.indexOf(strConcat, iIndexOf);
                    if (iIndexOf < 0 || (iIndexOf = iIndexOf + strConcat.length()) == header.length()) {
                        break;
                    }
                } while (header.charAt(iIndexOf) != ',');
                if (iIndexOf < 0) {
                    int iLastIndexOf = header.lastIndexOf("\r\n\t");
                    if ((iLastIndexOf < 0 ? header.length() + 20 : (header.length() - iLastIndexOf) + 8) + strConcat.length() > 76) {
                        strConcat = "\r\n\t".concat(strConcat);
                    }
                    mimePart.setHeader("Content-Language", header.concat(strConcat));
                }
            }
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void appendFileName(Part part, String str) {
        if (str == null) {
            reportNullError(5);
        } else if (str.length() > 0) {
            appendFileName0(part, str);
        }
    }

    private void appendFileName0(Part part, String str) {
        try {
            String strReplaceAll = str.replaceAll("[\\x00-\\x1F\\x7F]+", "");
            String fileName = part.getFileName();
            if (fileName != null) {
                strReplaceAll = fileName.concat(strReplaceAll);
            }
            part.setFileName(strReplaceAll);
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void appendSubject(Message message, String str) {
        if (str == null) {
            reportNullError(5);
        } else if (str.length() > 0) {
            appendSubject0(message, str);
        }
    }

    private void appendSubject0(Message message, String str) {
        try {
            String strReplaceAll = str.replaceAll("[\\x00-\\x1F\\x7F]+", "");
            String encodingName = getEncodingName();
            String subject = message.getSubject();
            MimeMessage mimeMessage = (MimeMessage) message;
            if (subject != null) {
                strReplaceAll = subject.concat(strReplaceAll);
            }
            mimeMessage.setSubject(strReplaceAll, MimeUtility.mimeCharset(encodingName));
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private static String atIndexMsg(int i) {
        return "At index: " + i + FilenameUtils.EXTENSION_SEPARATOR;
    }

    private static MessagingException attach(MessagingException messagingException, Exception exc) {
        if (exc != null && !messagingException.setNextException(exc)) {
            if (exc instanceof MessagingException) {
                MessagingException messagingException2 = (MessagingException) exc;
                if (messagingException2.setNextException(messagingException)) {
                    return messagingException2;
                }
            }
            if (exc != messagingException) {
                messagingException.addSuppressed(exc);
            }
        }
        return messagingException;
    }

    private static RuntimeException attachmentMismatch(int i, int i2) {
        return attachmentMismatch("Attachments mismatched, expected " + i + " but given " + i2 + FilenameUtils.EXTENSION_SEPARATOR);
    }

    private static RuntimeException attachmentMismatch(String str) {
        return new IndexOutOfBoundsException(str);
    }

    private void checkAccess() {
        if (this.sealed) {
            LogManagerProperties.checkLogManagerAccess();
        }
    }

    private void clearMatches(int i) {
        for (int i2 = 0; i2 < this.size; i2++) {
            int[] iArr = this.matched;
            if (iArr[i2] >= i) {
                iArr[i2] = MUTEX_PUBLISH.intValue();
            }
        }
    }

    private String contentWithEncoding(String str, String str2) {
        try {
            ContentType contentType = new ContentType(str);
            contentType.setParameter(HttpRequest.PARAM_CHARSET, MimeUtility.mimeCharset(str2));
            String string = contentType.toString();
            return !isEmpty(string) ? string : str;
        } catch (MessagingException e) {
            reportError(str, e, 5);
            return str;
        }
    }

    private MimeBodyPart createBodyPart() throws MessagingException {
        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setDisposition("inline");
        mimeBodyPart.setDescription(descriptionFrom(getFormatter(), getFilter(), this.subjectFormatter));
        setAcceptLang(mimeBodyPart);
        return mimeBodyPart;
    }

    private MimeBodyPart createBodyPart(int i) throws MessagingException {
        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setDisposition(Part.ATTACHMENT);
        mimeBodyPart.setDescription(descriptionFrom(this.attachmentFormatters[i], this.attachmentFilters[i], this.attachmentNames[i]));
        setAcceptLang(mimeBodyPart);
        return mimeBodyPart;
    }

    private static Formatter createSimpleFormatter() {
        return (Formatter) Formatter.class.cast(new SimpleFormatter());
    }

    private ErrorManager defaultErrorManager() {
        ErrorManager errorManager;
        try {
            errorManager = super.getErrorManager();
        } catch (LinkageError | RuntimeException unused) {
            errorManager = null;
        }
        return errorManager == null ? new ErrorManager() : errorManager;
    }

    private String descriptionFrom(Comparator<?> comparator, Level level, Filter filter) {
        StringBuilder sb = new StringBuilder("Sorted using ");
        sb.append(comparator == null ? "no comparator" : comparator.getClass().getName());
        sb.append(", pushed when ");
        sb.append(level.getName());
        sb.append(", and ");
        sb.append(filter == null ? "no push filter" : filter.getClass().getName());
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        return sb.toString();
    }

    private String descriptionFrom(Formatter formatter, Filter filter, Formatter formatter2) {
        StringBuilder sb = new StringBuilder("Formatted using ");
        sb.append(getClassId(formatter));
        sb.append(", filtered with ");
        sb.append(filter == null ? "no filter" : filter.getClass().getName());
        sb.append(", and named by ");
        sb.append(getClassId(formatter2));
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        return sb.toString();
    }

    private static Filter[] emptyFilterArray() {
        return EMPTY_FILTERS;
    }

    private static Formatter[] emptyFormatterArray() {
        return EMPTY_FORMATTERS;
    }

    private void envelopeFor(Message message, boolean z) {
        setAcceptLang(message);
        setFrom(message);
        Message.RecipientType recipientType = Message.RecipientType.TO;
        if (!setRecipient(message, "mail.to", recipientType)) {
            setDefaultRecipient(message, recipientType);
        }
        setRecipient(message, "mail.cc", Message.RecipientType.CC);
        setRecipient(message, "mail.bcc", Message.RecipientType.BCC);
        setReplyTo(message);
        setSender(message);
        setMailer(message);
        setAutoSubmitted(message);
        if (z) {
            setPriority(message);
        }
        try {
            message.setSentDate(new Date());
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private String format(Formatter formatter, LogRecord logRecord) {
        try {
            return formatter.format(logRecord);
        } catch (RuntimeException e) {
            reportError(e.getMessage(), e, 5);
            return "";
        }
    }

    private Object getAndSetContextClassLoader(Object obj) {
        if (obj != GetAndSetContext.NOT_MODIFIED) {
            try {
                return AccessController.doPrivileged(obj instanceof PrivilegedAction ? (PrivilegedAction) obj : new GetAndSetContext(obj));
            } catch (SecurityException unused) {
            }
        }
        return GetAndSetContext.NOT_MODIFIED;
    }

    private String getClassId(Formatter formatter) {
        return (formatter instanceof TailNameFormatter ? String.class : formatter.getClass()).getName();
    }

    private String getContentType(String str) {
        String contentType = this.contentTypes.getContentType(str);
        if (OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE.equalsIgnoreCase(contentType)) {
            return null;
        }
        return contentType;
    }

    private String getEncodingName() {
        String encoding = getEncoding();
        return encoding == null ? MimeUtility.getDefaultJavaCharset() : encoding;
    }

    private String getLocalHost(Service service) {
        try {
            return LogManagerProperties.getLocalHost(service);
        } catch (Exception e) {
            reportError(service.toString(), e, 4);
            return null;
        } catch (LinkageError | NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    private int getMatchedPart() {
        Integer num = MUTEX.get();
        if (num == null || num.intValue() >= readOnlyAttachmentFilters().length) {
            num = MUTEX_PUBLISH;
        }
        return num.intValue();
    }

    private Session getSession(Message message) {
        Objects.requireNonNull(message);
        return new MessageContext(message).getSession();
    }

    private void grow() {
        LogRecord[] logRecordArr = this.data;
        int length = logRecordArr.length;
        int i = (length >> 1) + length + 1;
        int i2 = this.capacity;
        if (i > i2 || i < length) {
            i = i2;
        }
        this.data = (LogRecord[]) Arrays.copyOf(logRecordArr, i, LogRecord[].class);
        this.matched = Arrays.copyOf(this.matched, i);
    }

    private static boolean hasValue(String str) {
        return (isEmpty(str) || "null".equalsIgnoreCase(str)) ? false : true;
    }

    private String head(Formatter formatter) {
        try {
            return formatter.getHead(this);
        } catch (RuntimeException e) {
            reportError(e.getMessage(), e, 5);
            return "";
        }
    }

    private synchronized void init(Properties properties) {
        String name = getClass().getName();
        this.mailProps = new Properties();
        Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
        try {
            this.contentTypes = FileTypeMap.getDefaultFileTypeMap();
            getAndSetContextClassLoader(andSetContextClassLoader);
            initErrorManager(name);
            initLevel(name);
            initFilter(name);
            initCapacity(name);
            initAuthenticator(name);
            initEncoding(name);
            initFormatter(name);
            initComparator(name);
            initPushLevel(name);
            initPushFilter(name);
            initSubject(name);
            initAttachmentFormaters(name);
            initAttachmentFilters(name);
            initAttachmentNames(name);
            if (properties == null && LogManagerProperties.fromLogManager(name.concat(".verify")) != null) {
                verifySettings(initSession());
            }
            intern();
        } catch (Throwable th) {
            getAndSetContextClassLoader(andSetContextClassLoader);
            throw th;
        }
    }

    private void initAttachmentFilters(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".attachment.filters"));
        if (isEmpty(strFromLogManager)) {
            this.attachmentFilters = emptyFilterArray();
            alignAttachmentFilters();
            return;
        }
        String[] strArrSplit = strFromLogManager.split(",");
        int length = strArrSplit.length;
        Filter[] filterArr = new Filter[length];
        for (int i = 0; i < length; i++) {
            strArrSplit[i] = strArrSplit[i].trim();
            if (!"null".equalsIgnoreCase(strArrSplit[i])) {
                try {
                    filterArr[i] = LogManagerProperties.newFilter(strArrSplit[i]);
                } catch (SecurityException e) {
                    throw e;
                } catch (Exception e2) {
                    reportError(e2.getMessage(), e2, 4);
                }
            }
        }
        this.attachmentFilters = filterArr;
        if (alignAttachmentFilters()) {
            reportError("Attachment filters.", attachmentMismatch("Length mismatch."), 4);
        }
    }

    private void initAttachmentFormaters(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".attachment.formatters"));
        if (isEmpty(strFromLogManager)) {
            this.attachmentFormatters = emptyFormatterArray();
            return;
        }
        String[] strArrSplit = strFromLogManager.split(",");
        Formatter[] formatterArrEmptyFormatterArray = strArrSplit.length == 0 ? emptyFormatterArray() : new Formatter[strArrSplit.length];
        for (int i = 0; i < formatterArrEmptyFormatterArray.length; i++) {
            strArrSplit[i] = strArrSplit[i].trim();
            if ("null".equalsIgnoreCase(strArrSplit[i])) {
                reportError("Attachment formatter.", new NullPointerException(atIndexMsg(i)), 4);
                formatterArrEmptyFormatterArray[i] = createSimpleFormatter();
            } else {
                try {
                    formatterArrEmptyFormatterArray[i] = LogManagerProperties.newFormatter(strArrSplit[i]);
                    if (formatterArrEmptyFormatterArray[i] instanceof TailNameFormatter) {
                        reportError("Attachment formatter.", new ClassNotFoundException(formatterArrEmptyFormatterArray[i].toString()), 4);
                        formatterArrEmptyFormatterArray[i] = createSimpleFormatter();
                    }
                } catch (SecurityException e) {
                    throw e;
                } catch (Exception e2) {
                    reportError(e2.getMessage(), e2, 4);
                    formatterArrEmptyFormatterArray[i] = createSimpleFormatter();
                }
            }
        }
        this.attachmentFormatters = formatterArrEmptyFormatterArray;
    }

    private void initAttachmentNames(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".attachment.names"));
        if (isEmpty(strFromLogManager)) {
            this.attachmentNames = emptyFormatterArray();
            alignAttachmentNames();
            return;
        }
        String[] strArrSplit = strFromLogManager.split(",");
        int length = strArrSplit.length;
        Formatter[] formatterArr = new Formatter[length];
        for (int i = 0; i < length; i++) {
            strArrSplit[i] = strArrSplit[i].trim();
            if ("null".equalsIgnoreCase(strArrSplit[i])) {
                reportError("Attachment names.", new NullPointerException(atIndexMsg(i)), 4);
            } else {
                try {
                    try {
                        formatterArr[i] = LogManagerProperties.newFormatter(strArrSplit[i]);
                    } catch (ClassCastException | ClassNotFoundException unused) {
                        formatterArr[i] = TailNameFormatter.of(strArrSplit[i]);
                    }
                } catch (SecurityException e) {
                    throw e;
                } catch (Exception e2) {
                    reportError(e2.getMessage(), e2, 4);
                }
            }
        }
        this.attachmentNames = formatterArr;
        if (alignAttachmentNames()) {
            reportError("Attachment names.", attachmentMismatch("Length mismatch."), 4);
        }
    }

    private void initAuthenticator(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".authenticator"));
        if (strFromLogManager == null || "null".equalsIgnoreCase(strFromLogManager)) {
            return;
        }
        if (strFromLogManager.length() != 0) {
            try {
                this.auth = (Authenticator) LogManagerProperties.newObjectFrom(strFromLogManager, Authenticator.class);
                return;
            } catch (ClassCastException | ClassNotFoundException unused) {
            } catch (SecurityException e) {
                throw e;
            } catch (Exception e2) {
                reportError(e2.getMessage(), e2, 4);
                return;
            }
        }
        this.auth = DefaultAuthenticator.of(strFromLogManager);
    }

    private void initCapacity(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".capacity"));
            if (strFromLogManager != null) {
                setCapacity0(Integer.parseInt(strFromLogManager));
            } else {
                setCapacity0(1000);
            }
        } catch (SecurityException e) {
            throw e;
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, 4);
        }
        if (this.capacity <= 0) {
            this.capacity = 1000;
        }
        LogRecord[] logRecordArr = new LogRecord[1];
        this.data = logRecordArr;
        this.matched = new int[logRecordArr.length];
    }

    private void initComparator(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".comparator"));
            String strFromLogManager2 = LogManagerProperties.fromLogManager(str.concat(".comparator.reverse"));
            if (!hasValue(strFromLogManager)) {
                if (!isEmpty(strFromLogManager2)) {
                    throw new IllegalArgumentException("No comparator to reverse.");
                }
            } else {
                this.comparator = LogManagerProperties.newComparator(strFromLogManager);
                if (Boolean.parseBoolean(strFromLogManager2)) {
                    this.comparator = LogManagerProperties.reverseOrder(this.comparator);
                }
            }
        } catch (SecurityException e) {
            throw e;
        } catch (Exception e2) {
            reportError(e2.getMessage(), e2, 4);
        }
    }

    private void initEncoding(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".encoding"));
            if (strFromLogManager != null) {
                setEncoding0(strFromLogManager);
            }
        } catch (UnsupportedEncodingException e) {
            e = e;
            reportError(e.getMessage(), e, 4);
        } catch (SecurityException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            e = e3;
            reportError(e.getMessage(), e, 4);
        }
    }

    private void initErrorManager(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".errorManager"));
            if (strFromLogManager != null) {
                setErrorManager0(LogManagerProperties.newErrorManager(strFromLogManager));
            }
        } catch (SecurityException e) {
            throw e;
        } catch (Exception e2) {
            reportError(e2.getMessage(), e2, 4);
        }
    }

    private void initFilter(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".filter"));
            if (hasValue(strFromLogManager)) {
                this.filter = LogManagerProperties.newFilter(strFromLogManager);
            }
        } catch (SecurityException e) {
            throw e;
        } catch (Exception e2) {
            reportError(e2.getMessage(), e2, 4);
        }
    }

    private void initFormatter(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".formatter"));
            if (!hasValue(strFromLogManager)) {
                this.formatter = createSimpleFormatter();
                return;
            }
            Formatter formatterNewFormatter = LogManagerProperties.newFormatter(strFromLogManager);
            if (formatterNewFormatter instanceof TailNameFormatter) {
                this.formatter = createSimpleFormatter();
            } else {
                this.formatter = formatterNewFormatter;
            }
        } catch (SecurityException e) {
            throw e;
        } catch (Exception e2) {
            reportError(e2.getMessage(), e2, 4);
            this.formatter = createSimpleFormatter();
        }
    }

    private void initLevel(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".level"));
            if (strFromLogManager != null) {
                this.logLevel = Level.parse(strFromLogManager);
            } else {
                this.logLevel = Level.WARNING;
            }
        } catch (SecurityException e) {
            throw e;
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, 4);
            this.logLevel = Level.WARNING;
        }
    }

    private void initPushFilter(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".pushFilter"));
            if (hasValue(strFromLogManager)) {
                this.pushFilter = LogManagerProperties.newFilter(strFromLogManager);
            }
        } catch (SecurityException e) {
            throw e;
        } catch (Exception e2) {
            reportError(e2.getMessage(), e2, 4);
        }
    }

    private void initPushLevel(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".pushLevel"));
            if (strFromLogManager != null) {
                this.pushLevel = Level.parse(strFromLogManager);
            }
        } catch (RuntimeException e) {
            reportError(e.getMessage(), e, 4);
        }
        if (this.pushLevel == null) {
            this.pushLevel = Level.OFF;
        }
    }

    private Session initSession() {
        Session session = Session.getInstance(new LogManagerProperties(this.mailProps, getClass().getName()), this.auth);
        this.session = session;
        return session;
    }

    private void initSubject(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".subject"));
        if (strFromLogManager == null) {
            strFromLogManager = "com.sun.mail.util.logging.CollectorFormatter";
        }
        if (hasValue(strFromLogManager)) {
            try {
                this.subjectFormatter = LogManagerProperties.newFormatter(strFromLogManager);
                return;
            } catch (ClassCastException | ClassNotFoundException unused) {
            } catch (SecurityException e) {
                throw e;
            } catch (Exception e2) {
                this.subjectFormatter = TailNameFormatter.of(strFromLogManager);
                reportError(e2.getMessage(), e2, 4);
                return;
            }
        }
        this.subjectFormatter = TailNameFormatter.of(strFromLogManager);
    }

    private Object intern(Map<Object, Object> map, Object obj) throws Exception {
        if (obj == null) {
            return null;
        }
        Object objNewInstance = obj.getClass().getName().equals(TailNameFormatter.class.getName()) ? obj : obj.getClass().getConstructor(new Class[0]).newInstance(new Object[0]);
        if (objNewInstance.getClass() != obj.getClass()) {
            return obj;
        }
        Object obj2 = map.get(objNewInstance);
        if (obj2 != null) {
            if (obj.getClass() == obj2.getClass()) {
                return obj2;
            }
            reportNonDiscriminating(obj, obj2);
            return obj;
        }
        boolean zEquals = objNewInstance.equals(obj);
        boolean zEquals2 = obj.equals(objNewInstance);
        if (!zEquals || !zEquals2) {
            if (zEquals == zEquals2) {
                return obj;
            }
            reportNonSymmetric(obj, objNewInstance);
            return obj;
        }
        Object objPut = map.put(obj, obj);
        if (objPut == null) {
            return obj;
        }
        reportNonDiscriminating(objNewInstance, objPut);
        Object objRemove = map.remove(objNewInstance);
        if (objRemove == obj) {
            return obj;
        }
        reportNonDiscriminating(objNewInstance, objRemove);
        map.clear();
        return obj;
    }

    private void intern() {
        try {
            Map<Object, Object> map = new HashMap<>();
            try {
                intern(map, this.errorManager);
            } catch (SecurityException e) {
                reportError(e.getMessage(), e, 4);
            }
            try {
                Object obj = this.filter;
                Object objIntern = intern(map, obj);
                if (objIntern != obj && (objIntern instanceof Filter)) {
                    this.filter = (Filter) objIntern;
                }
                Object obj2 = this.formatter;
                Object objIntern2 = intern(map, obj2);
                if (objIntern2 != obj2 && (objIntern2 instanceof Formatter)) {
                    this.formatter = (Formatter) objIntern2;
                }
            } catch (SecurityException e2) {
                reportError(e2.getMessage(), e2, 4);
            }
            Object obj3 = this.subjectFormatter;
            Object objIntern3 = intern(map, obj3);
            if (objIntern3 != obj3 && (objIntern3 instanceof Formatter)) {
                this.subjectFormatter = (Formatter) objIntern3;
            }
            Object obj4 = this.pushFilter;
            Object objIntern4 = intern(map, obj4);
            if (objIntern4 != obj4 && (objIntern4 instanceof Filter)) {
                this.pushFilter = (Filter) objIntern4;
            }
            int i = 0;
            while (true) {
                Object[] objArr = this.attachmentFormatters;
                if (i >= objArr.length) {
                    return;
                }
                Object obj5 = objArr[i];
                Object objIntern5 = intern(map, obj5);
                if (objIntern5 != obj5 && (objIntern5 instanceof Formatter)) {
                    this.attachmentFormatters[i] = (Formatter) objIntern5;
                }
                Object obj6 = this.attachmentFilters[i];
                Object objIntern6 = intern(map, obj6);
                if (objIntern6 != obj6 && (objIntern6 instanceof Filter)) {
                    this.attachmentFilters[i] = (Filter) objIntern6;
                }
                Object obj7 = this.attachmentNames[i];
                Object objIntern7 = intern(map, obj7);
                if (objIntern7 != obj7 && (objIntern7 instanceof Formatter)) {
                    this.attachmentNames[i] = (Formatter) objIntern7;
                }
                i++;
            }
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
        } catch (LinkageError e4) {
            reportError(e4.getMessage(), new InvocationTargetException(e4), 4);
        }
    }

    private boolean isAttachmentLoggable(LogRecord logRecord) {
        Filter[] onlyAttachmentFilters = readOnlyAttachmentFilters();
        for (int i = 0; i < onlyAttachmentFilters.length; i++) {
            Filter filter = onlyAttachmentFilters[i];
            if (filter == null || filter.isLoggable(logRecord)) {
                setMatchedPart(i);
                return true;
            }
        }
        return false;
    }

    private static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    private boolean isPushable(LogRecord logRecord) {
        int iIntValue = getPushLevel().intValue();
        if (iIntValue == offValue || logRecord.getLevel().intValue() < iIntValue) {
            return false;
        }
        Filter pushFilter = getPushFilter();
        if (pushFilter == null) {
            return true;
        }
        int matchedPart = getMatchedPart();
        if (!(matchedPart == -1 && getFilter() == pushFilter) && (matchedPart < 0 || this.attachmentFilters[matchedPart] != pushFilter)) {
            return pushFilter.isLoggable(logRecord);
        }
        return true;
    }

    private Locale localeFor(LogRecord logRecord) {
        ResourceBundle resourceBundle = logRecord.getResourceBundle();
        if (resourceBundle == null) {
            return null;
        }
        Locale locale = resourceBundle.getLocale();
        return (locale == null || isEmpty(locale.getLanguage())) ? Locale.getDefault() : locale;
    }

    private void publish0(LogRecord logRecord) {
        Message messageWriteLogRecords;
        boolean zIsPushable;
        synchronized (this) {
            int i = this.size;
            if (i == this.data.length && i < this.capacity) {
                grow();
            }
            int i2 = this.size;
            messageWriteLogRecords = null;
            if (i2 < this.data.length) {
                this.matched[i2] = getMatchedPart();
                LogRecord[] logRecordArr = this.data;
                int i3 = this.size;
                logRecordArr[i3] = logRecord;
                this.size = i3 + 1;
                zIsPushable = isPushable(logRecord);
                if (zIsPushable || this.size >= this.capacity) {
                    messageWriteLogRecords = writeLogRecords(1);
                }
            } else {
                zIsPushable = false;
            }
        }
        if (messageWriteLogRecords != null) {
            send(messageWriteLogRecords, zIsPushable, 1);
        }
    }

    private void push(boolean z, int i) {
        try {
            if (!tryMutex()) {
                reportUnPublishedError(null);
                return;
            }
            Message messageWriteLogRecords = writeLogRecords(i);
            if (messageWriteLogRecords != null) {
                send(messageWriteLogRecords, z, i);
            }
        } catch (LinkageError e) {
            reportLinkageError(e, i);
        } finally {
            releaseMutex();
        }
    }

    private Filter[] readOnlyAttachmentFilters() {
        return this.attachmentFilters;
    }

    private void releaseMutex() {
        MUTEX.remove();
    }

    private void reportError(Message message, Exception exc, int i) {
        try {
            try {
                this.errorManager.error(toRawString(message), exc, i);
            } catch (RuntimeException e) {
                reportError(toMsgString(e), exc, i);
            } catch (Exception e2) {
                reportError(toMsgString(e2), exc, i);
            }
        } catch (LinkageError e3) {
            reportLinkageError(e3, i);
        }
    }

    private void reportFilterError(LogRecord logRecord) {
        Formatter formatterCreateSimpleFormatter = createSimpleFormatter();
        reportError("Log record " + logRecord.getSequenceNumber() + " was filtered from all message parts.  " + head(formatterCreateSimpleFormatter) + format(formatterCreateSimpleFormatter, logRecord) + tail(formatterCreateSimpleFormatter, ""), new IllegalArgumentException(getFilter() + ", " + Arrays.asList(readOnlyAttachmentFilters())), 5);
    }

    private void reportLinkageError(Throwable th, int i) {
        if (th == null) {
            throw new NullPointerException(String.valueOf(i));
        }
        ThreadLocal<Integer> threadLocal = MUTEX;
        Integer num = threadLocal.get();
        if (num == null || num.intValue() > MUTEX_LINKAGE.intValue()) {
            threadLocal.set(MUTEX_LINKAGE);
            try {
                Thread.currentThread().getUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                if (num != null) {
                    threadLocal.set(num);
                } else {
                    threadLocal.remove();
                }
            } catch (LinkageError | RuntimeException unused) {
                ThreadLocal<Integer> threadLocal2 = MUTEX;
                if (num != null) {
                    threadLocal2.set(num);
                } else {
                    threadLocal2.remove();
                }
            } catch (Throwable th2) {
                ThreadLocal<Integer> threadLocal3 = MUTEX;
                if (num != null) {
                    threadLocal3.set(num);
                } else {
                    threadLocal3.remove();
                }
                throw th2;
            }
        }
    }

    private void reportNonDiscriminating(Object obj, Object obj2) {
        reportError("Non discriminating equals implementation.", new IllegalArgumentException(obj.getClass().getName() + " should not be equal to " + obj2.getClass().getName()), 4);
    }

    private void reportNonSymmetric(Object obj, Object obj2) {
        reportError("Non symmetric equals implementation.", new IllegalArgumentException(obj.getClass().getName() + " is not equal to " + obj2.getClass().getName()), 4);
    }

    private void reportNullError(int i) {
        reportError("null", new NullPointerException(), i);
    }

    private void reportUnPublishedError(LogRecord logRecord) {
        String str;
        ThreadLocal<Integer> threadLocal = MUTEX;
        Integer num = threadLocal.get();
        if (num == null || num.intValue() > MUTEX_REPORT.intValue()) {
            threadLocal.set(MUTEX_REPORT);
            if (logRecord != null) {
                try {
                    Formatter formatterCreateSimpleFormatter = createSimpleFormatter();
                    str = "Log record " + logRecord.getSequenceNumber() + " was not published. " + head(formatterCreateSimpleFormatter) + format(formatterCreateSimpleFormatter, logRecord) + tail(formatterCreateSimpleFormatter, "");
                } catch (Throwable th) {
                    ThreadLocal<Integer> threadLocal2 = MUTEX;
                    if (num != null) {
                        threadLocal2.set(num);
                    } else {
                        threadLocal2.remove();
                    }
                    throw th;
                }
            } else {
                str = null;
            }
            reportError(str, new IllegalStateException("Recursive publish detected by thread " + Thread.currentThread()), 1);
            if (num != null) {
                threadLocal.set(num);
            } else {
                threadLocal.remove();
            }
        }
    }

    private void reportUnexpectedSend(MimeMessage mimeMessage, String str, Exception exc) {
        Exception messagingException = new MessagingException("An empty message was sent.", exc);
        setErrorContent(mimeMessage, str, messagingException);
        reportError(mimeMessage, messagingException, 4);
    }

    private void reset() {
        int i = this.size;
        LogRecord[] logRecordArr = this.data;
        if (i < logRecordArr.length) {
            Arrays.fill(logRecordArr, 0, i, (Object) null);
        } else {
            Arrays.fill(logRecordArr, (Object) null);
        }
        this.size = 0;
    }

    private void saveChangesNoContent(Message message, String str) {
        if (message != null) {
            try {
                try {
                    message.saveChanges();
                } catch (NullPointerException e) {
                    try {
                        if (message.getHeader(MIME.CONTENT_TRANSFER_ENC) != null) {
                            throw e;
                        }
                        message.setHeader(MIME.CONTENT_TRANSFER_ENC, "base64");
                        message.saveChanges();
                    } catch (RuntimeException | MessagingException e2) {
                        if (e2 != e) {
                            e2.addSuppressed(e);
                        }
                        throw e2;
                    }
                }
            } catch (RuntimeException | MessagingException e3) {
                reportError(str, e3, 5);
            }
        }
    }

    private void send(Message message, boolean z, int i) {
        try {
            envelopeFor(message, z);
            Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
            try {
                Transport.send(message);
            } finally {
                getAndSetContextClassLoader(andSetContextClassLoader);
            }
        } catch (RuntimeException e) {
            reportError(message, e, i);
        } catch (Exception e2) {
            reportError(message, e2, i);
        }
    }

    private void setAcceptLang(Part part) {
        try {
            String languageTag = LogManagerProperties.toLanguageTag(Locale.getDefault());
            if (languageTag.length() != 0) {
                part.setHeader("Accept-Language", languageTag);
            }
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void setAuthenticator0(Authenticator authenticator) throws Throwable {
        Session sessionUpdateSession;
        checkAccess();
        synchronized (this) {
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.auth = authenticator;
            sessionUpdateSession = updateSession();
        }
        verifySettings(sessionUpdateSession);
    }

    private void setAutoSubmitted(Message message) {
        if (allowRestrictedHeaders()) {
            try {
                message.setHeader("auto-submitted", "auto-generated");
            } catch (MessagingException e) {
                reportError(e.getMessage(), e, 5);
            }
        }
    }

    private synchronized void setCapacity0(int i) {
        checkAccess();
        if (i <= 0) {
            throw new IllegalArgumentException("Capacity must be greater than zero.");
        }
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        if (this.capacity < 0) {
            this.capacity = -i;
        } else {
            this.capacity = i;
        }
    }

    private void setContent(MimePart mimePart, CharSequence charSequence, String str) throws MessagingException {
        String encodingName = getEncodingName();
        if (str == null || "text/plain".equalsIgnoreCase(str)) {
            mimePart.setText(charSequence.toString(), MimeUtility.mimeCharset(encodingName));
            return;
        }
        try {
            mimePart.setDataHandler(new DataHandler(new ByteArrayDataSource(charSequence.toString(), contentWithEncoding(str, encodingName))));
        } catch (IOException e) {
            reportError(e.getMessage(), e, 5);
            mimePart.setText(charSequence.toString(), encodingName);
        }
    }

    private void setDefaultFrom(Message message) {
        try {
            message.setFrom();
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void setDefaultRecipient(Message message, Message.RecipientType recipientType) {
        try {
            InternetAddress localAddress = InternetAddress.getLocalAddress(getSession(message));
            if (localAddress != null) {
                message.setRecipient(recipientType, localAddress);
                return;
            }
            MimeMessage mimeMessage = new MimeMessage(getSession(message));
            mimeMessage.setFrom();
            Address[] from = mimeMessage.getFrom();
            if (from.length <= 0) {
                throw new MessagingException("No local address.");
            }
            message.setRecipients(recipientType, from);
        } catch (RuntimeException | MessagingException e) {
            reportError("Unable to compute a default recipient.", e, 5);
        }
    }

    private void setEncoding0(String str) throws UnsupportedEncodingException {
        if (str != null) {
            try {
                if (!Charset.isSupported(str)) {
                    throw new UnsupportedEncodingException(str);
                }
            } catch (IllegalCharsetNameException unused) {
                throw new UnsupportedEncodingException(str);
            }
        }
        synchronized (this) {
            this.encoding = str;
        }
    }

    private void setErrorContent(MimeMessage mimeMessage, String str, Throwable th) {
        MimeBodyPart mimeBodyPartCreateBodyPart;
        String strDescriptionFrom;
        String classId;
        try {
            synchronized (this) {
                mimeBodyPartCreateBodyPart = createBodyPart();
                strDescriptionFrom = descriptionFrom(this.comparator, this.pushLevel, this.pushFilter);
                classId = getClassId(this.subjectFormatter);
            }
            StringBuilder sb = new StringBuilder("Formatted using ");
            sb.append((th == null ? Throwable.class : th.getClass()).getName());
            sb.append(", filtered with ");
            sb.append(str);
            sb.append(", and named by ");
            sb.append(classId);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            mimeBodyPartCreateBodyPart.setDescription(sb.toString());
            setContent(mimeBodyPartCreateBodyPart, toMsgString(th), "text/plain");
            MimeMultipart mimeMultipart = new MimeMultipart();
            mimeMultipart.addBodyPart(mimeBodyPartCreateBodyPart);
            mimeMessage.setContent(mimeMultipart);
            mimeMessage.setDescription(strDescriptionFrom);
            setAcceptLang(mimeMessage);
            mimeMessage.saveChanges();
        } catch (RuntimeException | MessagingException e) {
            reportError("Unable to create body.", e, 4);
        }
    }

    private void setErrorManager0(ErrorManager errorManager) {
        Objects.requireNonNull(errorManager);
        try {
            synchronized (this) {
                this.errorManager = errorManager;
                super.setErrorManager(errorManager);
            }
        } catch (LinkageError | RuntimeException unused) {
        }
    }

    private void setFrom(Message message) {
        String property = getSession(message).getProperty("mail.from");
        if (property != null) {
            try {
                InternetAddress[] internetAddressArr = InternetAddress.parse(property, false);
                if (internetAddressArr.length > 0) {
                    if (internetAddressArr.length == 1) {
                        message.setFrom(internetAddressArr[0]);
                        return;
                    } else {
                        message.addFrom(internetAddressArr);
                        return;
                    }
                }
                return;
            } catch (MessagingException e) {
                reportError(e.getMessage(), e, 5);
            }
        }
        setDefaultFrom(message);
    }

    private void setIncompleteCopy(Message message) {
        try {
            message.setHeader("Incomplete-Copy", "");
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void setMailProperties0(Properties properties) throws Throwable {
        Session sessionUpdateSession;
        checkAccess();
        Properties properties2 = (Properties) properties.clone();
        synchronized (this) {
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.mailProps = properties2;
            sessionUpdateSession = updateSession();
        }
        verifySettings(sessionUpdateSession);
    }

    private void setMailer(Message message) {
        String strReplaceAll;
        String strFold;
        try {
            Class<?> cls = getClass();
            if (cls == MailHandler.class) {
                strFold = MailHandler.class.getName();
            } else {
                try {
                    strReplaceAll = MimeUtility.encodeText(cls.getName());
                } catch (UnsupportedEncodingException e) {
                    reportError(e.getMessage(), e, 5);
                    strReplaceAll = cls.getName().replaceAll("[^\\x00-\\x7F]", "\u001a");
                }
                strFold = MimeUtility.fold(10, MailHandler.class.getName() + " using the " + strReplaceAll + " extension.");
            }
            message.setHeader("X-Mailer", strFold);
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void setMatchedPart(int i) {
        Integer num = MUTEX_PUBLISH;
        ThreadLocal<Integer> threadLocal = MUTEX;
        if (num.equals(threadLocal.get())) {
            threadLocal.set(Integer.valueOf(i));
        }
    }

    private void setPriority(Message message) {
        try {
            message.setHeader("Importance", "High");
            message.setHeader("Priority", "urgent");
            message.setHeader("X-Priority", "2");
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private boolean setRecipient(Message message, String str, Message.RecipientType recipientType) {
        String property = getSession(message).getProperty(str);
        boolean z = property != null;
        if (!isEmpty(property)) {
            try {
                InternetAddress[] internetAddressArr = InternetAddress.parse(property, false);
                if (internetAddressArr.length > 0) {
                    message.setRecipients(recipientType, internetAddressArr);
                }
            } catch (MessagingException e) {
                reportError(e.getMessage(), e, 5);
            }
        }
        return z;
    }

    private void setReplyTo(Message message) {
        String property = getSession(message).getProperty("mail.reply.to");
        if (isEmpty(property)) {
            return;
        }
        try {
            InternetAddress[] internetAddressArr = InternetAddress.parse(property, false);
            if (internetAddressArr.length > 0) {
                message.setReplyTo(internetAddressArr);
            }
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void setSender(Message message) {
        String property = getSession(message).getProperty("mail.sender");
        if (isEmpty(property)) {
            return;
        }
        try {
            InternetAddress[] internetAddressArr = InternetAddress.parse(property, false);
            if (internetAddressArr.length > 0) {
                ((MimeMessage) message).setSender(internetAddressArr[0]);
                if (internetAddressArr.length > 1) {
                    reportError("Ignoring other senders.", tooManyAddresses(internetAddressArr, 1), 5);
                }
            }
        } catch (MessagingException e) {
            reportError(e.getMessage(), e, 5);
        }
    }

    private void sort() {
        Comparator<? super LogRecord> comparator = this.comparator;
        if (comparator != null) {
            try {
                int i = this.size;
                if (i != 1) {
                    Arrays.sort(this.data, 0, i, comparator);
                    return;
                }
                LogRecord[] logRecordArr = this.data;
                if (comparator.compare(logRecordArr[0], logRecordArr[0]) != 0) {
                    throw new IllegalArgumentException(this.comparator.getClass().getName());
                }
            } catch (RuntimeException e) {
                reportError(e.getMessage(), e, 5);
            }
        }
    }

    private String tail(Formatter formatter, String str) {
        try {
            return formatter.getTail(this);
        } catch (RuntimeException e) {
            reportError(e.getMessage(), e, 5);
            return str;
        }
    }

    private String toMsgString(Throwable th) {
        StringBuilder sb;
        String string;
        if (th == null) {
            return "null";
        }
        String encodingName = getEncodingName();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, encodingName);
            try {
                PrintWriter printWriter = new PrintWriter(outputStreamWriter);
                try {
                    printWriter.println(th.getMessage());
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    printWriter.close();
                    outputStreamWriter.close();
                    return byteArrayOutputStream.toString(encodingName);
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (RuntimeException e) {
            sb = new StringBuilder();
            sb.append(th.toString());
            sb.append(' ');
            string = e.toString();
            sb.append(string);
            return sb.toString();
        } catch (Exception e2) {
            sb = new StringBuilder();
            sb.append(th.toString());
            sb.append(' ');
            string = e2.toString();
            sb.append(string);
            return sb.toString();
        }
    }

    private String toRawString(Message message) throws MessagingException, IOException {
        if (message == null) {
            return null;
        }
        Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(message.getSize() + 1024, 1024));
            message.writeTo(byteArrayOutputStream);
            return byteArrayOutputStream.toString("UTF-8");
        } finally {
            getAndSetContextClassLoader(andSetContextClassLoader);
        }
    }

    private String toString(Formatter formatter) {
        String string = formatter.toString();
        return !isEmpty(string) ? string : getClassId(formatter);
    }

    private AddressException tooManyAddresses(Address[] addressArr, int i) {
        return new AddressException(Arrays.asList(addressArr).subList(i, addressArr.length).toString());
    }

    private boolean tryMutex() {
        ThreadLocal<Integer> threadLocal = MUTEX;
        if (threadLocal.get() != null) {
            return false;
        }
        threadLocal.set(MUTEX_PUBLISH);
        return true;
    }

    private Session updateSession() {
        if (this.mailProps.getProperty("verify") != null) {
            return initSession();
        }
        this.session = null;
        return null;
    }

    private static void verifyAddresses(Address[] addressArr) throws AddressException {
        if (addressArr != null) {
            for (Address address : addressArr) {
                if (address instanceof InternetAddress) {
                    ((InternetAddress) address).validate();
                }
            }
        }
    }

    private static InetAddress verifyHost(String str) throws IOException {
        InetAddress localHost = isEmpty(str) ? InetAddress.getLocalHost() : InetAddress.getByName(str);
        if (localHost.getCanonicalHostName().length() != 0) {
            return localHost;
        }
        throw new UnknownHostException();
    }

    private static void verifyProperties(Session session, String str) {
        session.getProperty("mail.from");
        session.getProperty("mail." + str + ".from");
        session.getProperty("mail.dsn.ret");
        session.getProperty("mail." + str + ".dsn.ret");
        session.getProperty("mail.dsn.notify");
        session.getProperty("mail." + str + ".dsn.notify");
        session.getProperty("mail." + str + ".port");
        session.getProperty("mail.user");
        session.getProperty("mail." + str + ".user");
        session.getProperty("mail." + str + ".localport");
    }

    private void verifySettings(Session session) throws Throwable {
        if (session != null) {
            try {
                Object objPut = session.getProperties().put("verify", "");
                if (!(objPut instanceof String)) {
                    if (objPut != null) {
                        verifySettings0(session, objPut.getClass().toString());
                    }
                } else {
                    String str = (String) objPut;
                    if (hasValue(str)) {
                        verifySettings0(session, str);
                    }
                }
            } catch (LinkageError e) {
                reportLinkageError(e, 4);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0225 A[Catch: Exception -> 0x0380, RuntimeException -> 0x0389, TryCatch #7 {RuntimeException -> 0x0389, blocks: (B:32:0x00d7, B:34:0x00dd, B:36:0x00e0, B:41:0x00eb, B:43:0x00ee, B:51:0x0114, B:53:0x011d, B:56:0x0127, B:58:0x014f, B:60:0x015b, B:62:0x0178, B:64:0x01a6, B:124:0x0253, B:137:0x0281, B:148:0x02e7, B:157:0x02f4, B:154:0x02ef, B:155:0x02f2, B:158:0x02ff, B:160:0x0302, B:162:0x0311, B:163:0x0317, B:165:0x0321, B:167:0x0324, B:168:0x0328, B:170:0x032b, B:172:0x0333, B:173:0x0336, B:174:0x0353, B:176:0x0356, B:178:0x035e, B:179:0x036a, B:180:0x036b, B:181:0x0372, B:136:0x0276, B:75:0x01cd, B:63:0x0190, B:59:0x0156, B:76:0x01da, B:82:0x01ed, B:86:0x01f4, B:88:0x01fc, B:122:0x024b, B:89:0x0200, B:106:0x021f, B:108:0x0225, B:111:0x022e, B:113:0x0234, B:115:0x0237, B:116:0x023d, B:118:0x0243, B:120:0x0246, B:99:0x0216, B:103:0x021c, B:44:0x00fa, B:45:0x0104, B:39:0x00e5, B:48:0x0107, B:50:0x0111, B:188:0x037c, B:189:0x037f), top: B:206:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x024b A[Catch: Exception -> 0x0380, RuntimeException -> 0x0389, TryCatch #7 {RuntimeException -> 0x0389, blocks: (B:32:0x00d7, B:34:0x00dd, B:36:0x00e0, B:41:0x00eb, B:43:0x00ee, B:51:0x0114, B:53:0x011d, B:56:0x0127, B:58:0x014f, B:60:0x015b, B:62:0x0178, B:64:0x01a6, B:124:0x0253, B:137:0x0281, B:148:0x02e7, B:157:0x02f4, B:154:0x02ef, B:155:0x02f2, B:158:0x02ff, B:160:0x0302, B:162:0x0311, B:163:0x0317, B:165:0x0321, B:167:0x0324, B:168:0x0328, B:170:0x032b, B:172:0x0333, B:173:0x0336, B:174:0x0353, B:176:0x0356, B:178:0x035e, B:179:0x036a, B:180:0x036b, B:181:0x0372, B:136:0x0276, B:75:0x01cd, B:63:0x0190, B:59:0x0156, B:76:0x01da, B:82:0x01ed, B:86:0x01f4, B:88:0x01fc, B:122:0x024b, B:89:0x0200, B:106:0x021f, B:108:0x0225, B:111:0x022e, B:113:0x0234, B:115:0x0237, B:116:0x023d, B:118:0x0243, B:120:0x0246, B:99:0x0216, B:103:0x021c, B:44:0x00fa, B:45:0x0104, B:39:0x00e5, B:48:0x0107, B:50:0x0111, B:188:0x037c, B:189:0x037f), top: B:206:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0302 A[Catch: Exception -> 0x0380, RuntimeException -> 0x0389, TryCatch #7 {RuntimeException -> 0x0389, blocks: (B:32:0x00d7, B:34:0x00dd, B:36:0x00e0, B:41:0x00eb, B:43:0x00ee, B:51:0x0114, B:53:0x011d, B:56:0x0127, B:58:0x014f, B:60:0x015b, B:62:0x0178, B:64:0x01a6, B:124:0x0253, B:137:0x0281, B:148:0x02e7, B:157:0x02f4, B:154:0x02ef, B:155:0x02f2, B:158:0x02ff, B:160:0x0302, B:162:0x0311, B:163:0x0317, B:165:0x0321, B:167:0x0324, B:168:0x0328, B:170:0x032b, B:172:0x0333, B:173:0x0336, B:174:0x0353, B:176:0x0356, B:178:0x035e, B:179:0x036a, B:180:0x036b, B:181:0x0372, B:136:0x0276, B:75:0x01cd, B:63:0x0190, B:59:0x0156, B:76:0x01da, B:82:0x01ed, B:86:0x01f4, B:88:0x01fc, B:122:0x024b, B:89:0x0200, B:106:0x021f, B:108:0x0225, B:111:0x022e, B:113:0x0234, B:115:0x0237, B:116:0x023d, B:118:0x0243, B:120:0x0246, B:99:0x0216, B:103:0x021c, B:44:0x00fa, B:45:0x0104, B:39:0x00e5, B:48:0x0107, B:50:0x0111, B:188:0x037c, B:189:0x037f), top: B:206:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x036b A[Catch: Exception -> 0x0380, RuntimeException -> 0x0389, TryCatch #7 {RuntimeException -> 0x0389, blocks: (B:32:0x00d7, B:34:0x00dd, B:36:0x00e0, B:41:0x00eb, B:43:0x00ee, B:51:0x0114, B:53:0x011d, B:56:0x0127, B:58:0x014f, B:60:0x015b, B:62:0x0178, B:64:0x01a6, B:124:0x0253, B:137:0x0281, B:148:0x02e7, B:157:0x02f4, B:154:0x02ef, B:155:0x02f2, B:158:0x02ff, B:160:0x0302, B:162:0x0311, B:163:0x0317, B:165:0x0321, B:167:0x0324, B:168:0x0328, B:170:0x032b, B:172:0x0333, B:173:0x0336, B:174:0x0353, B:176:0x0356, B:178:0x035e, B:179:0x036a, B:180:0x036b, B:181:0x0372, B:136:0x0276, B:75:0x01cd, B:63:0x0190, B:59:0x0156, B:76:0x01da, B:82:0x01ed, B:86:0x01f4, B:88:0x01fc, B:122:0x024b, B:89:0x0200, B:106:0x021f, B:108:0x0225, B:111:0x022e, B:113:0x0234, B:115:0x0237, B:116:0x023d, B:118:0x0243, B:120:0x0246, B:99:0x0216, B:103:0x021c, B:44:0x00fa, B:45:0x0104, B:39:0x00e5, B:48:0x0107, B:50:0x0111, B:188:0x037c, B:189:0x037f), top: B:206:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x025b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c5 A[Catch: IOException -> 0x01ca, IOException | RuntimeException -> 0x01cc, Exception -> 0x0380, TRY_LEAVE, TryCatch #11 {Exception -> 0x0380, blocks: (B:32:0x00d7, B:34:0x00dd, B:36:0x00e0, B:41:0x00eb, B:43:0x00ee, B:51:0x0114, B:53:0x011d, B:56:0x0127, B:58:0x014f, B:60:0x015b, B:62:0x0178, B:64:0x01a6, B:66:0x01ae, B:68:0x01bc, B:70:0x01c5, B:124:0x0253, B:126:0x025b, B:128:0x0263, B:130:0x026b, B:131:0x026f, B:137:0x0281, B:148:0x02e7, B:157:0x02f4, B:154:0x02ef, B:155:0x02f2, B:158:0x02ff, B:160:0x0302, B:162:0x0311, B:163:0x0317, B:165:0x0321, B:167:0x0324, B:168:0x0328, B:170:0x032b, B:172:0x0333, B:173:0x0336, B:174:0x0353, B:176:0x0356, B:178:0x035e, B:179:0x036a, B:180:0x036b, B:181:0x0372, B:136:0x0276, B:75:0x01cd, B:63:0x0190, B:59:0x0156, B:76:0x01da, B:82:0x01ed, B:86:0x01f4, B:88:0x01fc, B:122:0x024b, B:89:0x0200, B:106:0x021f, B:108:0x0225, B:111:0x022e, B:113:0x0234, B:115:0x0237, B:116:0x023d, B:118:0x0243, B:120:0x0246, B:99:0x0216, B:103:0x021c, B:44:0x00fa, B:45:0x0104, B:39:0x00e5, B:48:0x0107, B:50:0x0111, B:188:0x037c, B:189:0x037f), top: B:206:0x00d7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void verifySettings0(Session session, String str) throws Throwable {
        String str2;
        int length;
        String[] strArr;
        Object andSetContextClassLoader;
        Transport transport;
        Throwable th;
        String localHost;
        Exception exc;
        Address[] invalidAddresses;
        Address[] validSentAddresses;
        String localHost2;
        String strContentTypeOf;
        MimeBodyPart mimeBodyPartCreateBodyPart;
        Address[] from;
        if (!"local".equals(str) && !"remote".equals(str) && !"limited".equals(str) && !"resolve".equals(str) && !"login".equals(str)) {
            reportError("Verify must be 'limited', local', 'resolve', 'login', or 'remote'.", new IllegalArgumentException(str), 4);
            return;
        }
        MimeMessage mimeMessage = new MimeMessage(session);
        if ("limited".equals(str)) {
            str2 = "Skipping local address check.";
        } else {
            str2 = "Local address is " + InternetAddress.getLocalAddress(session) + FilenameUtils.EXTENSION_SEPARATOR;
            try {
                Charset.forName(getEncodingName());
            } catch (RuntimeException e) {
                UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(e.toString());
                unsupportedEncodingException.initCause(e);
                reportError(str2, unsupportedEncodingException, 5);
            }
        }
        synchronized (this) {
            appendSubject(mimeMessage, head(this.subjectFormatter));
            appendSubject(mimeMessage, tail(this.subjectFormatter, ""));
            length = this.attachmentNames.length;
            strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = head(this.attachmentNames[i]);
                if (strArr[i].length() == 0) {
                    strArr[i] = tail(this.attachmentNames[i], "");
                } else {
                    strArr[i] = strArr[i].concat(tail(this.attachmentNames[i], ""));
                }
            }
        }
        setIncompleteCopy(mimeMessage);
        envelopeFor(mimeMessage, true);
        saveChangesNoContent(mimeMessage, str2);
        try {
            try {
                Address[] allRecipients = mimeMessage.getAllRecipients();
                if (allRecipients == null) {
                    allRecipients = new InternetAddress[0];
                }
                Address[] addressArr = allRecipients;
                try {
                    from = addressArr.length != 0 ? addressArr : mimeMessage.getFrom();
                } catch (MessagingException e2) {
                    andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
                    try {
                        try {
                            transport = session.getTransport();
                        } catch (MessagingException e3) {
                            throw attach(e2, e3);
                        }
                    } finally {
                    }
                }
                if (from == null || from.length == 0) {
                    Exception messagingException = new MessagingException("No recipient or from address.");
                    reportError(str2, messagingException, 4);
                    throw messagingException;
                }
                transport = session.getTransport(from[0]);
                session.getProperty("mail.transport.protocol");
                Transport transport2 = transport;
                if ("remote".equals(str) || "login".equals(str)) {
                    transport2.connect();
                    Exception exc2 = null;
                    try {
                        localHost = getLocalHost(transport2);
                        try {
                            if ("remote".equals(str)) {
                                transport2.sendMessage(mimeMessage, addressArr);
                            }
                            try {
                                transport2.close();
                                exc = null;
                            } catch (MessagingException e4) {
                                exc = e4;
                            }
                            try {
                                if ("remote".equals(str)) {
                                    reportUnexpectedSend(mimeMessage, str, null);
                                } else {
                                    verifyProperties(session, transport2.getURLName().getProtocol());
                                }
                            } catch (SendFailedException e5) {
                                e = e5;
                                invalidAddresses = e.getInvalidAddresses();
                                if (invalidAddresses != null && invalidAddresses.length != 0) {
                                    setErrorContent(mimeMessage, str, e);
                                    reportError(mimeMessage, e, 4);
                                }
                                validSentAddresses = e.getValidSentAddresses();
                                if (validSentAddresses != null && validSentAddresses.length != 0) {
                                    reportUnexpectedSend(mimeMessage, str, e);
                                }
                            } catch (MessagingException e6) {
                                e = e6;
                                if (!isMissingContent(mimeMessage, e)) {
                                    setErrorContent(mimeMessage, str, e);
                                    reportError(mimeMessage, e, 4);
                                }
                            }
                            if (exc != null) {
                                setErrorContent(mimeMessage, str, exc);
                                reportError(mimeMessage, exc, 3);
                            }
                            localHost2 = localHost;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                transport2.close();
                            } catch (MessagingException e7) {
                                exc2 = e7;
                            }
                            try {
                                throw th;
                            } catch (SendFailedException e8) {
                                e = e8;
                                exc = exc2;
                                invalidAddresses = e.getInvalidAddresses();
                                if (invalidAddresses != null) {
                                    setErrorContent(mimeMessage, str, e);
                                    reportError(mimeMessage, e, 4);
                                }
                                validSentAddresses = e.getValidSentAddresses();
                                if (validSentAddresses != null) {
                                    reportUnexpectedSend(mimeMessage, str, e);
                                }
                                if (exc != null) {
                                }
                                localHost2 = localHost;
                                if (!"limited".equals(str)) {
                                }
                                if (addressArr.length == 0) {
                                }
                            } catch (MessagingException e9) {
                                e = e9;
                                exc = exc2;
                                if (!isMissingContent(mimeMessage, e)) {
                                }
                                if (exc != null) {
                                }
                                localHost2 = localHost;
                                if (!"limited".equals(str)) {
                                }
                                if (addressArr.length == 0) {
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        localHost = null;
                    }
                } else {
                    String protocol = transport2.getURLName().getProtocol();
                    verifyProperties(session, protocol);
                    String property = session.getProperty("mail." + protocol + ".host");
                    if (isEmpty(property)) {
                        property = session.getProperty("mail.host");
                    } else {
                        session.getProperty("mail.host");
                    }
                    localHost2 = session.getProperty("mail." + protocol + ".localhost");
                    if (isEmpty(localHost2)) {
                        localHost2 = session.getProperty("mail." + protocol + ".localaddress");
                    } else {
                        session.getProperty("mail." + protocol + ".localaddress");
                    }
                    if ("resolve".equals(str)) {
                        try {
                            String host = transport2.getURLName().getHost();
                            if (!isEmpty(host)) {
                                verifyHost(host);
                                if (!host.equalsIgnoreCase(property)) {
                                    verifyHost(property);
                                }
                            }
                        } catch (IOException | RuntimeException e10) {
                            Exception messagingException2 = new MessagingException(str2, e10);
                            setErrorContent(mimeMessage, str, messagingException2);
                            reportError(mimeMessage, messagingException2, 4);
                        }
                    }
                }
                if (!"limited".equals(str)) {
                    try {
                        if (!"remote".equals(str) && !"login".equals(str)) {
                            localHost2 = getLocalHost(transport2);
                        }
                        verifyHost(localHost2);
                    } catch (IOException | RuntimeException e11) {
                        Exception messagingException3 = new MessagingException(str2, e11);
                        setErrorContent(mimeMessage, str, messagingException3);
                        reportError(mimeMessage, messagingException3, 4);
                    }
                    try {
                        andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
                        try {
                            Multipart mimeMultipart = new MimeMultipart();
                            MimePart[] mimePartArr = new MimeBodyPart[length];
                            synchronized (this) {
                                strContentTypeOf = contentTypeOf(getFormatter());
                                mimeBodyPartCreateBodyPart = createBodyPart();
                                for (int i2 = 0; i2 < length; i2++) {
                                    mimePartArr[i2] = createBodyPart(i2);
                                    mimePartArr[i2].setFileName(strArr[i2]);
                                    strArr[i2] = getContentType(strArr[i2]);
                                }
                            }
                            mimeBodyPartCreateBodyPart.setDescription(str);
                            setContent(mimeBodyPartCreateBodyPart, "", strContentTypeOf);
                            mimeMultipart.addBodyPart(mimeBodyPartCreateBodyPart);
                            for (int i3 = 0; i3 < length; i3++) {
                                mimePartArr[i3].setDescription(str);
                                setContent(mimePartArr[i3], "", strArr[i3]);
                            }
                            mimeMessage.setContent(mimeMultipart);
                            mimeMessage.saveChanges();
                            mimeMessage.writeTo(new ByteArrayOutputStream(1024));
                        } finally {
                        }
                    } catch (IOException e12) {
                        Exception messagingException4 = new MessagingException(str2, e12);
                        setErrorContent(mimeMessage, str, messagingException4);
                        reportError(mimeMessage, messagingException4, 5);
                    }
                }
                if (addressArr.length == 0) {
                    throw new MessagingException("No recipient addresses.");
                }
                verifyAddresses(addressArr);
                Address[] from2 = mimeMessage.getFrom();
                Object sender = mimeMessage.getSender();
                if (sender instanceof InternetAddress) {
                    ((InternetAddress) sender).validate();
                }
                if (mimeMessage.getHeader("From", ",") != null && from2.length != 0) {
                    verifyAddresses(from2);
                    for (Address address : from2) {
                        if (address.equals(sender)) {
                            throw new MessagingException(str2, new MessagingException("Sender address '" + sender + "' equals from address."));
                        }
                    }
                } else if (sender == null) {
                    throw new MessagingException(str2, new MessagingException("No from or sender address."));
                }
                verifyAddresses(mimeMessage.getReplyTo());
            } catch (RuntimeException e13) {
                setErrorContent(mimeMessage, str, e13);
                reportError(mimeMessage, e13, 4);
            }
        } catch (Exception e14) {
            setErrorContent(mimeMessage, str, e14);
            reportError(mimeMessage, e14, 4);
        }
    }

    private Message writeLogRecords(int i) {
        String message;
        Exception exc;
        try {
        } catch (RuntimeException e) {
            message = e.getMessage();
            exc = e;
        } catch (Exception e2) {
            message = e2.getMessage();
            exc = e2;
        }
        synchronized (this) {
            if (this.size <= 0 || this.isWriting) {
                return null;
            }
            this.isWriting = true;
            try {
                return writeLogRecords0();
            } finally {
                this.isWriting = false;
                if (this.size > 0) {
                    reset();
                }
            }
            message = e.getMessage();
            exc = e;
            reportError(message, exc, i);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Message writeLogRecords0() throws Exception {
        MimePart mimePartCreateBodyPart;
        StringBuilder sb;
        Filter filter;
        boolean z;
        StringBuilder sb2;
        sort();
        if (this.session == null) {
            initSession();
        }
        MimeMessage mimeMessage = new MimeMessage(this.session);
        int length = this.attachmentFormatters.length;
        MimeBodyPart[] mimeBodyPartArr = new MimeBodyPart[length];
        StringBuilder[] sbArr = new StringBuilder[length];
        if (length == 0) {
            mimeMessage.setDescription(descriptionFrom(getFormatter(), getFilter(), this.subjectFormatter));
            mimePartCreateBodyPart = mimeMessage;
        } else {
            mimeMessage.setDescription(descriptionFrom(this.comparator, this.pushLevel, this.pushFilter));
            mimePartCreateBodyPart = createBodyPart();
        }
        appendSubject(mimeMessage, head(this.subjectFormatter));
        Formatter formatter = getFormatter();
        Filter filter2 = getFilter();
        LogRecord logRecord = null;
        StringBuilder sb3 = null;
        Object obj = null;
        int i = 0;
        while (i < this.size) {
            int i2 = this.matched[i];
            LogRecord[] logRecordArr = this.data;
            LogRecord logRecord2 = logRecordArr[i];
            logRecordArr[i] = logRecord;
            Locale localeLocaleFor = localeFor(logRecord2);
            appendSubject(mimeMessage, format(this.subjectFormatter, logRecord2));
            if (filter2 == null || i2 == -1 || length == 0 || (i2 < -1 && filter2.isLoggable(logRecord2))) {
                if (sb3 == null) {
                    sb3 = new StringBuilder();
                    sb3.append(head(formatter));
                }
                sb3.append(format(formatter, logRecord2));
                if (localeLocaleFor != null && !localeLocaleFor.equals(obj)) {
                    appendContentLang(mimePartCreateBodyPart, localeLocaleFor);
                }
                filter = filter2;
                z = true;
            } else {
                z = false;
                filter = null;
            }
            Filter filter3 = filter2;
            Filter filter4 = filter;
            int i3 = 0;
            while (true) {
                sb2 = sb3;
                if (i3 >= length) {
                    break;
                }
                Filter filter5 = this.attachmentFilters[i3];
                if (filter5 == null || filter4 == filter5 || i2 == i3 || (i2 < i3 && filter5.isLoggable(logRecord2))) {
                    if (filter4 == null && filter5 != null) {
                        filter4 = filter5;
                    }
                    if (mimeBodyPartArr[i3] == null) {
                        mimeBodyPartArr[i3] = createBodyPart(i3);
                        sbArr[i3] = new StringBuilder();
                        sbArr[i3].append(head(this.attachmentFormatters[i3]));
                        appendFileName(mimeBodyPartArr[i3], head(this.attachmentNames[i3]));
                    }
                    appendFileName(mimeBodyPartArr[i3], format(this.attachmentNames[i3], logRecord2));
                    sbArr[i3].append(format(this.attachmentFormatters[i3], logRecord2));
                    if (localeLocaleFor != null && !localeLocaleFor.equals(obj)) {
                        appendContentLang(mimeBodyPartArr[i3], localeLocaleFor);
                    }
                    z = true;
                }
                i3++;
                sb3 = sb2;
            }
            if (!z) {
                reportFilterError(logRecord2);
            } else if (mimePartCreateBodyPart != mimeMessage && localeLocaleFor != null && !localeLocaleFor.equals(obj)) {
                appendContentLang(mimeMessage, localeLocaleFor);
            }
            i++;
            obj = localeLocaleFor;
            filter2 = filter3;
            sb3 = sb2;
            logRecord = null;
        }
        this.size = 0;
        for (int i4 = length - 1; i4 >= 0; i4--) {
            if (mimeBodyPartArr[i4] != null) {
                appendFileName(mimeBodyPartArr[i4], tail(this.attachmentNames[i4], NotificationCompat.CATEGORY_ERROR));
                sbArr[i4].append(tail(this.attachmentFormatters[i4], ""));
                if (sbArr[i4].length() > 0) {
                    String fileName = mimeBodyPartArr[i4].getFileName();
                    if (isEmpty(fileName)) {
                        fileName = toString(this.attachmentFormatters[i4]);
                        mimeBodyPartArr[i4].setFileName(fileName);
                    }
                    setContent(mimeBodyPartArr[i4], sbArr[i4], getContentType(fileName));
                    sb = null;
                } else {
                    setIncompleteCopy(mimeMessage);
                    sb = null;
                    mimeBodyPartArr[i4] = null;
                }
                sbArr[i4] = sb;
            }
        }
        if (sb3 != null) {
            sb3.append(tail(formatter, ""));
        } else {
            sb3 = new StringBuilder(0);
        }
        appendSubject(mimeMessage, tail(this.subjectFormatter, ""));
        String strContentTypeOf = contentTypeOf(sb3);
        String strContentTypeOf2 = contentTypeOf(formatter);
        if (strContentTypeOf2 != null) {
            strContentTypeOf = strContentTypeOf2;
        }
        setContent(mimePartCreateBodyPart, sb3, strContentTypeOf);
        if (mimePartCreateBodyPart != mimeMessage) {
            MimeMultipart mimeMultipart = new MimeMultipart();
            mimeMultipart.addBodyPart((BodyPart) mimePartCreateBodyPart);
            for (int i5 = 0; i5 < length; i5++) {
                if (mimeBodyPartArr[i5] != null) {
                    mimeMultipart.addBodyPart(mimeBodyPartArr[i5]);
                }
            }
            mimeMessage.setContent(mimeMultipart);
        }
        return mimeMessage;
    }

    @Override // java.util.logging.Handler
    public void close() {
        Message messageWriteLogRecords;
        try {
            checkAccess();
            synchronized (this) {
                try {
                    messageWriteLogRecords = writeLogRecords(3);
                    this.logLevel = Level.OFF;
                    int i = this.capacity;
                    if (i > 0) {
                        this.capacity = -i;
                    }
                    if (this.size == 0 && this.data.length != 1) {
                        LogRecord[] logRecordArr = new LogRecord[1];
                        this.data = logRecordArr;
                        this.matched = new int[logRecordArr.length];
                    }
                } catch (Throwable th) {
                    this.logLevel = Level.OFF;
                    if (this.capacity > 0) {
                        this.capacity = -this.capacity;
                    }
                    if (this.size == 0 && this.data.length != 1) {
                        LogRecord[] logRecordArr2 = new LogRecord[1];
                        this.data = logRecordArr2;
                        this.matched = new int[logRecordArr2.length];
                    }
                    throw th;
                }
            }
            if (messageWriteLogRecords != null) {
                send(messageWriteLogRecords, false, 3);
            }
        } catch (LinkageError e) {
            reportLinkageError(e, 3);
        }
    }

    public final String contentTypeOf(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return null;
        }
        if (charSequence.length() > 25) {
            charSequence = charSequence.subSequence(0, 25);
        }
        try {
            return URLConnection.guessContentTypeFromStream(new ByteArrayInputStream(charSequence.toString().getBytes(getEncodingName())));
        } catch (IOException e) {
            reportError(e.getMessage(), e, 5);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        r7 = r7.getSuperclass();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String contentTypeOf(Formatter formatter) {
        String name;
        if (formatter == null) {
            return null;
        }
        String contentType = getContentType(formatter.getClass().getName());
        if (contentType != null) {
            return contentType;
        }
        Class<?> superclass = formatter.getClass();
        while (superclass != Formatter.class) {
            try {
                name = superclass.getSimpleName();
            } catch (InternalError unused) {
                name = superclass.getName();
            }
            String lowerCase = name.toLowerCase(Locale.ENGLISH);
            int iIndexOf = lowerCase.indexOf(36) + 1;
            while (true) {
                int iIndexOf2 = lowerCase.indexOf("ml", iIndexOf);
                if (iIndexOf2 >= 0) {
                    if (iIndexOf2 > 0) {
                        int i = iIndexOf2 - 1;
                        if (lowerCase.charAt(i) == 'x') {
                            return "application/xml";
                        }
                        if (iIndexOf2 > 1 && lowerCase.charAt(iIndexOf2 - 2) == 'h' && lowerCase.charAt(i) == 't') {
                            return "text/html";
                        }
                    }
                    iIndexOf = iIndexOf2 + 2;
                }
            }
        }
        return null;
    }

    @Override // java.util.logging.Handler
    public void flush() {
        push(false, 2);
    }

    public final Filter[] getAttachmentFilters() {
        return (Filter[]) readOnlyAttachmentFilters().clone();
    }

    public final Formatter[] getAttachmentFormatters() {
        Formatter[] formatterArr;
        synchronized (this) {
            formatterArr = this.attachmentFormatters;
        }
        return (Formatter[]) formatterArr.clone();
    }

    public final Formatter[] getAttachmentNames() {
        Formatter[] formatterArr;
        synchronized (this) {
            formatterArr = this.attachmentNames;
        }
        return (Formatter[]) formatterArr.clone();
    }

    public final synchronized Authenticator getAuthenticator() {
        checkAccess();
        return this.auth;
    }

    public final synchronized int getCapacity() {
        return Math.abs(this.capacity);
    }

    public final synchronized Comparator<? super LogRecord> getComparator() {
        return this.comparator;
    }

    @Override // java.util.logging.Handler
    public synchronized String getEncoding() {
        return this.encoding;
    }

    @Override // java.util.logging.Handler
    public ErrorManager getErrorManager() {
        checkAccess();
        return this.errorManager;
    }

    @Override // java.util.logging.Handler
    public Filter getFilter() {
        return this.filter;
    }

    @Override // java.util.logging.Handler
    public synchronized Formatter getFormatter() {
        return this.formatter;
    }

    @Override // java.util.logging.Handler
    public Level getLevel() {
        return this.logLevel;
    }

    public final Properties getMailProperties() {
        Properties properties;
        checkAccess();
        synchronized (this) {
            properties = this.mailProps;
        }
        return (Properties) properties.clone();
    }

    public final synchronized Filter getPushFilter() {
        return this.pushFilter;
    }

    public final synchronized Level getPushLevel() {
        return this.pushLevel;
    }

    public final synchronized Formatter getSubject() {
        return this.subjectFormatter;
    }

    @Override // java.util.logging.Handler
    public boolean isLoggable(LogRecord logRecord) {
        int iIntValue;
        if (logRecord == null || logRecord.getLevel().intValue() < (iIntValue = getLevel().intValue()) || iIntValue == offValue) {
            return false;
        }
        Filter filter = getFilter();
        if (filter != null && !filter.isLoggable(logRecord)) {
            return isAttachmentLoggable(logRecord);
        }
        setMatchedPart(-1);
        return true;
    }

    public final boolean isMissingContent(Message message, Throwable th) {
        Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
        try {
            try {
                message.writeTo(new ByteArrayOutputStream(1024));
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                String message2 = e2.getMessage();
                if (!isEmpty(message2)) {
                    int i = 0;
                    while (th != null) {
                        if (e2.getClass() == th.getClass() && message2.equals(th.getMessage())) {
                            getAndSetContextClassLoader(andSetContextClassLoader);
                            return true;
                        }
                        Throwable cause = th.getCause();
                        th = (cause == null && (th instanceof MessagingException)) ? ((MessagingException) th).getNextException() : cause;
                        i++;
                        if (i == 65536) {
                            break;
                        }
                    }
                }
            }
            getAndSetContextClassLoader(andSetContextClassLoader);
            return false;
        } catch (Throwable th2) {
            getAndSetContextClassLoader(andSetContextClassLoader);
            throw th2;
        }
    }

    public void postConstruct() {
    }

    public void preDestroy() {
        push(false, 3);
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        if (!tryMutex()) {
            reportUnPublishedError(logRecord);
            return;
        }
        try {
            if (isLoggable(logRecord)) {
                if (logRecord != null) {
                    logRecord.getSourceMethodName();
                    publish0(logRecord);
                } else {
                    reportNullError(1);
                }
            }
        } catch (LinkageError e) {
            reportLinkageError(e, 1);
        } finally {
            releaseMutex();
        }
    }

    public void push() {
        push(true, 2);
    }

    @Override // java.util.logging.Handler
    public void reportError(String str, Exception exc, int i) {
        try {
            if (str != null) {
                this.errorManager.error(Level.SEVERE.getName().concat(": ").concat(str), exc, i);
            } else {
                this.errorManager.error(null, exc, i);
            }
        } catch (LinkageError | RuntimeException e) {
            reportLinkageError(e, i);
        }
    }

    public final void setAttachmentFilters(Filter... filterArr) {
        checkAccess();
        Filter[] filterArrEmptyFilterArray = filterArr.length == 0 ? emptyFilterArray() : (Filter[]) Arrays.copyOf(filterArr, filterArr.length, Filter[].class);
        synchronized (this) {
            Formatter[] formatterArr = this.attachmentFormatters;
            if (formatterArr.length != filterArrEmptyFilterArray.length) {
                throw attachmentMismatch(formatterArr.length, filterArrEmptyFilterArray.length);
            }
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            if (this.size != 0) {
                int i = 0;
                while (true) {
                    if (i >= filterArrEmptyFilterArray.length) {
                        break;
                    }
                    if (filterArrEmptyFilterArray[i] != this.attachmentFilters[i]) {
                        clearMatches(i);
                        break;
                    }
                    i++;
                }
            }
            this.attachmentFilters = filterArrEmptyFilterArray;
        }
    }

    public final void setAttachmentFormatters(Formatter... formatterArr) {
        Formatter[] formatterArrEmptyFormatterArray;
        checkAccess();
        if (formatterArr.length == 0) {
            formatterArrEmptyFormatterArray = emptyFormatterArray();
        } else {
            formatterArrEmptyFormatterArray = (Formatter[]) Arrays.copyOf(formatterArr, formatterArr.length, Formatter[].class);
            for (int i = 0; i < formatterArrEmptyFormatterArray.length; i++) {
                if (formatterArrEmptyFormatterArray[i] == null) {
                    throw new NullPointerException(atIndexMsg(i));
                }
            }
        }
        synchronized (this) {
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.attachmentFormatters = formatterArrEmptyFormatterArray;
            alignAttachmentFilters();
            alignAttachmentNames();
        }
    }

    public final void setAttachmentNames(String... strArr) {
        checkAccess();
        Formatter[] formatterArrEmptyFormatterArray = strArr.length == 0 ? emptyFormatterArray() : new Formatter[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (str == null) {
                throw new NullPointerException(atIndexMsg(i));
            }
            if (str.length() <= 0) {
                throw new IllegalArgumentException(atIndexMsg(i));
            }
            formatterArrEmptyFormatterArray[i] = TailNameFormatter.of(str);
        }
        synchronized (this) {
            Formatter[] formatterArr = this.attachmentFormatters;
            if (formatterArr.length != strArr.length) {
                throw attachmentMismatch(formatterArr.length, strArr.length);
            }
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.attachmentNames = formatterArrEmptyFormatterArray;
        }
    }

    public final void setAttachmentNames(Formatter... formatterArr) {
        checkAccess();
        Formatter[] formatterArrEmptyFormatterArray = formatterArr.length == 0 ? emptyFormatterArray() : (Formatter[]) Arrays.copyOf(formatterArr, formatterArr.length, Formatter[].class);
        for (int i = 0; i < formatterArrEmptyFormatterArray.length; i++) {
            if (formatterArrEmptyFormatterArray[i] == null) {
                throw new NullPointerException(atIndexMsg(i));
            }
        }
        synchronized (this) {
            Formatter[] formatterArr2 = this.attachmentFormatters;
            if (formatterArr2.length != formatterArrEmptyFormatterArray.length) {
                throw attachmentMismatch(formatterArr2.length, formatterArrEmptyFormatterArray.length);
            }
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.attachmentNames = formatterArrEmptyFormatterArray;
        }
    }

    public final void setAuthenticator(Authenticator authenticator) throws Throwable {
        setAuthenticator0(authenticator);
    }

    public final void setAuthenticator(char... cArr) throws Throwable {
        setAuthenticator0(cArr == null ? null : DefaultAuthenticator.of(new String(cArr)));
    }

    public final synchronized void setComparator(Comparator<? super LogRecord> comparator) {
        checkAccess();
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        this.comparator = comparator;
    }

    @Override // java.util.logging.Handler
    public void setEncoding(String str) throws UnsupportedEncodingException {
        checkAccess();
        setEncoding0(str);
    }

    @Override // java.util.logging.Handler
    public void setErrorManager(ErrorManager errorManager) {
        checkAccess();
        setErrorManager0(errorManager);
    }

    @Override // java.util.logging.Handler
    public void setFilter(Filter filter) {
        checkAccess();
        synchronized (this) {
            if (filter != this.filter) {
                clearMatches(-1);
            }
            this.filter = filter;
        }
    }

    @Override // java.util.logging.Handler
    public synchronized void setFormatter(Formatter formatter) throws SecurityException {
        checkAccess();
        if (formatter == null) {
            throw new NullPointerException();
        }
        this.formatter = formatter;
    }

    @Override // java.util.logging.Handler
    public void setLevel(Level level) {
        Objects.requireNonNull(level);
        checkAccess();
        synchronized (this) {
            if (this.capacity > 0) {
                this.logLevel = level;
            }
        }
    }

    public final void setMailProperties(Properties properties) throws Throwable {
        setMailProperties0(properties);
    }

    public final synchronized void setPushFilter(Filter filter) {
        checkAccess();
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        this.pushFilter = filter;
    }

    public final synchronized void setPushLevel(Level level) {
        checkAccess();
        if (level == null) {
            throw new NullPointerException();
        }
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        this.pushLevel = level;
    }

    public final void setSubject(String str) {
        if (str != null) {
            setSubject(TailNameFormatter.of(str));
        } else {
            checkAccess();
            throw null;
        }
    }

    public final void setSubject(Formatter formatter) {
        checkAccess();
        Objects.requireNonNull(formatter);
        synchronized (this) {
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.subjectFormatter = formatter;
        }
    }
}
