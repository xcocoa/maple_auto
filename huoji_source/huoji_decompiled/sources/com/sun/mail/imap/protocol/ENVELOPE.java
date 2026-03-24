package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.Response;
import com.sun.mail.util.PropUtil;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MailDateFormat;

/* JADX INFO: loaded from: classes2.dex */
public class ENVELOPE implements Item {
    public InternetAddress[] bcc;
    public InternetAddress[] cc;
    public Date date;
    public InternetAddress[] from;
    public String inReplyTo;
    public String messageId;
    public int msgno;
    public InternetAddress[] replyTo;
    public InternetAddress[] sender;
    public String subject;
    public InternetAddress[] to;
    public static final char[] name = {'E', 'N', 'V', 'E', 'L', 'O', 'P', 'E'};
    private static final MailDateFormat mailDateFormat = new MailDateFormat();
    private static final boolean parseDebug = PropUtil.getBooleanSystemProperty("mail.imap.parse.debug", false);

    public ENVELOPE(FetchResponse fetchResponse) throws ParsingException {
        this.date = null;
        if (parseDebug) {
            System.out.println("parse ENVELOPE");
        }
        this.msgno = fetchResponse.getNumber();
        fetchResponse.skipSpaces();
        if (fetchResponse.readByte() != 40) {
            throw new ParsingException("ENVELOPE parse error");
        }
        String string = fetchResponse.readString();
        if (string != null) {
            try {
                MailDateFormat mailDateFormat2 = mailDateFormat;
                synchronized (mailDateFormat2) {
                    this.date = mailDateFormat2.parse(string);
                }
            } catch (ParseException unused) {
            }
        }
        boolean z = parseDebug;
        if (z) {
            System.out.println("  Date: " + this.date);
        }
        this.subject = fetchResponse.readString();
        if (z) {
            System.out.println("  Subject: " + this.subject);
        }
        if (z) {
            System.out.println("  From addresses:");
        }
        this.from = parseAddressList(fetchResponse);
        if (z) {
            System.out.println("  Sender addresses:");
        }
        this.sender = parseAddressList(fetchResponse);
        if (z) {
            System.out.println("  Reply-To addresses:");
        }
        this.replyTo = parseAddressList(fetchResponse);
        if (z) {
            System.out.println("  To addresses:");
        }
        this.to = parseAddressList(fetchResponse);
        if (z) {
            System.out.println("  Cc addresses:");
        }
        this.cc = parseAddressList(fetchResponse);
        if (z) {
            System.out.println("  Bcc addresses:");
        }
        this.bcc = parseAddressList(fetchResponse);
        this.inReplyTo = fetchResponse.readString();
        if (z) {
            System.out.println("  In-Reply-To: " + this.inReplyTo);
        }
        this.messageId = fetchResponse.readString();
        if (z) {
            System.out.println("  Message-ID: " + this.messageId);
        }
        if (!fetchResponse.isNextNonSpace(')')) {
            throw new ParsingException("ENVELOPE parse error");
        }
    }

    private InternetAddress[] parseAddressList(Response response) throws ParsingException {
        response.skipSpaces();
        byte b = response.readByte();
        if (b != 40) {
            if (b != 78 && b != 110) {
                throw new ParsingException("ADDRESS parse error");
            }
            response.skip(2);
            return null;
        }
        if (response.isNextNonSpace(')')) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        do {
            IMAPAddress iMAPAddress = new IMAPAddress(response);
            if (parseDebug) {
                System.out.println("    Address: ".concat(String.valueOf(iMAPAddress)));
            }
            if (!iMAPAddress.isEndOfGroup()) {
                arrayList.add(iMAPAddress);
            }
        } while (!response.isNextNonSpace(')'));
        return (InternetAddress[]) arrayList.toArray(new InternetAddress[arrayList.size()]);
    }
}
