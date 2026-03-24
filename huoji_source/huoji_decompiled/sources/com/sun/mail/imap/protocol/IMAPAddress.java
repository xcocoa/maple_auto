package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.Response;
import java.util.ArrayList;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

/* JADX INFO: loaded from: classes2.dex */
public class IMAPAddress extends InternetAddress {
    private static final long serialVersionUID = -3835822029483122232L;
    private boolean group;
    private InternetAddress[] grouplist;
    private String groupname;

    public IMAPAddress(Response response) throws ParsingException {
        this.group = false;
        response.skipSpaces();
        if (response.readByte() != 40) {
            throw new ParsingException("ADDRESS parse error");
        }
        this.encodedPersonal = response.readString();
        response.readString();
        String string = response.readString();
        String string2 = response.readString();
        response.skipSpaces();
        if (!response.isNextNonSpace(')')) {
            throw new ParsingException("ADDRESS parse error");
        }
        if (string2 != null) {
            if (string == null || string.length() == 0) {
                this.address = string2;
                return;
            }
            if (string2.length() == 0) {
                this.address = string;
                return;
            }
            this.address = string + "@" + string2;
            return;
        }
        this.group = true;
        this.groupname = string;
        if (string == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.groupname);
        sb.append(':');
        ArrayList arrayList = new ArrayList();
        while (response.peekByte() != 41) {
            IMAPAddress iMAPAddress = new IMAPAddress(response);
            if (iMAPAddress.isEndOfGroup()) {
                break;
            }
            if (arrayList.size() != 0) {
                sb.append(',');
            }
            sb.append(iMAPAddress.toString());
            arrayList.add(iMAPAddress);
        }
        sb.append(';');
        this.address = sb.toString();
        this.grouplist = (InternetAddress[]) arrayList.toArray(new IMAPAddress[arrayList.size()]);
    }

    @Override // javax.mail.internet.InternetAddress
    public InternetAddress[] getGroup(boolean z) throws AddressException {
        InternetAddress[] internetAddressArr = this.grouplist;
        if (internetAddressArr == null) {
            return null;
        }
        return (InternetAddress[]) internetAddressArr.clone();
    }

    public boolean isEndOfGroup() {
        return this.group && this.groupname == null;
    }

    @Override // javax.mail.internet.InternetAddress
    public boolean isGroup() {
        return this.group;
    }
}
