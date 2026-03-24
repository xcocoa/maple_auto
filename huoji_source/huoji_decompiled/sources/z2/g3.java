package z2;

import java.util.Date;
import java.util.Properties;
import javax.activation.CommandMap;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.activation.MailcapCommandMap;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/* JADX INFO: loaded from: classes.dex */
public final class g3 extends Authenticator {
    public String OooO;
    private String OooO00o;
    private String OooO0O0;
    public String[] OooO0OO;
    public String OooO0Oo;
    private String OooO0o;
    private String OooO0o0;
    public String OooO0oO;
    public String OooO0oo;
    private boolean OooOO0;
    private boolean OooOO0O;
    public Multipart OooOO0o;

    public g3() {
        this.OooO0oO = "smtp.qq.com";
        this.OooO0o0 = "465";
        this.OooO0o = "465";
        this.OooO00o = "";
        this.OooO0O0 = "";
        this.OooO0Oo = "";
        this.OooO0oo = "";
        this.OooO = "";
        this.OooOO0O = false;
        this.OooOO0 = true;
        this.OooOO0o = new MimeMultipart();
        MailcapCommandMap mailcapCommandMap = (MailcapCommandMap) CommandMap.getDefaultCommandMap();
        mailcapCommandMap.addMailcap("text/html;; x-java-content-handler=com.sun.mail.handlers.text_html");
        mailcapCommandMap.addMailcap("text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml");
        mailcapCommandMap.addMailcap("text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain");
        mailcapCommandMap.addMailcap("multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed");
        mailcapCommandMap.addMailcap("message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822");
        CommandMap.setDefaultCommandMap(mailcapCommandMap);
    }

    public g3(String str, String str2) {
        this();
        this.OooO00o = str;
        this.OooO0O0 = str2;
    }

    private String OooO() {
        return this.OooO;
    }

    private void OooO00o(String str) throws Exception {
        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setDataHandler(new DataHandler(new FileDataSource(str)));
        mimeBodyPart.setFileName(str);
        this.OooOO0o.addBodyPart(mimeBodyPart);
    }

    private void OooO0O0(Multipart multipart) {
        this.OooOO0o = multipart;
    }

    private void OooO0OO(boolean z) {
        this.OooOO0 = z;
    }

    private void OooO0Oo(String[] strArr) {
        this.OooO0OO = strArr;
    }

    private Properties OooO0o() {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", this.OooO0oO);
        if (this.OooOO0O) {
            properties.put("mail.debug", "true");
        }
        if (this.OooOO0) {
            properties.put("mail.smtp.auth", "true");
        }
        properties.put("mail.smtp.port", this.OooO0o0);
        properties.put("mail.smtp.socketFactory.port", this.OooO0o);
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.socketFactory.fallback", "false");
        return properties;
    }

    private void OooO0oO(String str) {
        this.OooO = str;
    }

    private void OooO0oo(boolean z) {
        this.OooOO0O = z;
    }

    private void OooOO0(String str) {
        this.OooO00o = str;
    }

    private String OooOO0O() {
        return this.OooO00o;
    }

    private void OooOO0o(String str) {
        this.OooO0O0 = str;
    }

    private void OooOOO(String str) {
        this.OooO0Oo = str;
    }

    private String OooOOO0() {
        return this.OooO0O0;
    }

    private void OooOOOO(String str) {
        this.OooO0o0 = str;
    }

    private String[] OooOOOo() {
        return this.OooO0OO;
    }

    private void OooOOo(String str) {
        this.OooO0o = str;
    }

    private String OooOOo0() {
        return this.OooO0Oo;
    }

    private String OooOOoo() {
        return this.OooO0o0;
    }

    private String OooOo() {
        return this.OooO0oo;
    }

    private String OooOo0() {
        return this.OooO0o;
    }

    private void OooOo00(String str) {
        this.OooO0oO = str;
    }

    private void OooOo0O(String str) {
        this.OooO0oo = str;
    }

    private String OooOo0o() {
        return this.OooO0oO;
    }

    private boolean OooOoO() {
        return this.OooOO0O;
    }

    private boolean OooOoO0() {
        return this.OooOO0;
    }

    private Multipart OooOoOO() {
        return this.OooOO0o;
    }

    public final boolean OooO0o0() throws Exception {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", this.OooO0oO);
        if (this.OooOO0O) {
            properties.put("mail.debug", "true");
        }
        if (this.OooOO0) {
            properties.put("mail.smtp.auth", "true");
        }
        properties.put("mail.smtp.port", this.OooO0o0);
        properties.put("mail.smtp.socketFactory.port", this.OooO0o);
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.socketFactory.fallback", "false");
        if (this.OooO00o.equals("") || this.OooO0O0.equals("") || this.OooO0OO.length <= 0 || this.OooO0Oo.equals("") || this.OooO0oo.equals("") || this.OooO.equals("")) {
            return false;
        }
        MimeMessage mimeMessage = new MimeMessage(Session.getInstance(properties, this));
        mimeMessage.setFrom(new InternetAddress(this.OooO0Oo));
        InternetAddress[] internetAddressArr = new InternetAddress[this.OooO0OO.length];
        for (int i = 0; i < this.OooO0OO.length; i++) {
            internetAddressArr[i] = new InternetAddress(this.OooO0OO[i]);
        }
        mimeMessage.setRecipients(Message.RecipientType.TO, internetAddressArr);
        mimeMessage.setSubject(this.OooO0oo);
        mimeMessage.setSentDate(new Date());
        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setText(this.OooO);
        this.OooOO0o.addBodyPart(mimeBodyPart);
        mimeMessage.setHeader("X-Priority", "1");
        mimeMessage.setContent(this.OooOO0o);
        Transport.send(mimeMessage);
        return true;
    }

    @Override // javax.mail.Authenticator
    public final PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(this.OooO00o, this.OooO0O0);
    }
}
