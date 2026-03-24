package com.sun.mail.imap.protocol;

import com.sun.mail.iap.Protocol;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.Response;
import com.sun.mail.util.ASCIIUtility;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class IMAPResponse extends Response {
    private String key;
    private int number;

    public IMAPResponse(Protocol protocol) throws ProtocolException, IOException {
        super(protocol);
        init();
    }

    public IMAPResponse(IMAPResponse iMAPResponse) {
        super(iMAPResponse);
        this.key = iMAPResponse.key;
        this.number = iMAPResponse.number;
    }

    public IMAPResponse(String str) throws ProtocolException, IOException {
        this(str, true);
    }

    public IMAPResponse(String str, boolean z) throws ProtocolException, IOException {
        super(str, z);
        init();
    }

    private void init() throws ProtocolException, IOException {
        if (!isUnTagged() || isOK() || isNO() || isBAD() || isBYE()) {
            return;
        }
        String atom = readAtom();
        this.key = atom;
        try {
            this.number = Integer.parseInt(atom);
            this.key = readAtom();
        } catch (NumberFormatException unused) {
        }
    }

    public String getKey() {
        return this.key;
    }

    public int getNumber() {
        return this.number;
    }

    public boolean keyEquals(String str) {
        String str2 = this.key;
        return str2 != null && str2.equalsIgnoreCase(str);
    }

    public String[] readSimpleList() {
        byte[] bArr;
        int i;
        skipSpaces();
        byte[] bArr2 = this.buffer;
        int i2 = this.index;
        if (bArr2[i2] != 40) {
            return null;
        }
        this.index = i2 + 1;
        ArrayList arrayList = new ArrayList();
        int i3 = this.index;
        while (true) {
            bArr = this.buffer;
            i = this.index;
            if (bArr[i] == 41) {
                break;
            }
            if (bArr[i] == 32) {
                arrayList.add(ASCIIUtility.toString(bArr, i3, i));
                i3 = this.index + 1;
            }
            this.index++;
        }
        if (i > i3) {
            arrayList.add(ASCIIUtility.toString(bArr, i3, i));
        }
        this.index++;
        int size = arrayList.size();
        if (size > 0) {
            return (String[]) arrayList.toArray(new String[size]);
        }
        return null;
    }
}
