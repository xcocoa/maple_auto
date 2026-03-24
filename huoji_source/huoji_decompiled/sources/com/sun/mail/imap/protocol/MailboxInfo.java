package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.Response;
import java.util.ArrayList;
import java.util.List;
import javax.mail.Flags;

/* JADX INFO: loaded from: classes2.dex */
public class MailboxInfo {
    public Flags availableFlags;
    public int first;
    public long highestmodseq;
    public int mode;
    public Flags permanentFlags;
    public int recent;
    public List<IMAPResponse> responses;
    public int total;
    public boolean uidNotSticky;
    public long uidnext;
    public long uidvalidity;

    /* JADX WARN: Removed duplicated region for block: B:66:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MailboxInfo(Response[] responseArr) throws ParsingException {
        this.availableFlags = null;
        this.permanentFlags = null;
        this.total = -1;
        this.recent = -1;
        this.first = -1;
        this.uidvalidity = -1L;
        this.uidnext = -1L;
        this.uidNotSticky = false;
        this.highestmodseq = -1L;
        for (int i = 0; i < responseArr.length; i++) {
            if (responseArr[i] != null && (responseArr[i] instanceof IMAPResponse)) {
                IMAPResponse iMAPResponse = (IMAPResponse) responseArr[i];
                if (iMAPResponse.keyEquals("EXISTS")) {
                    this.total = iMAPResponse.getNumber();
                    responseArr[i] = null;
                } else if (iMAPResponse.keyEquals("RECENT")) {
                    this.recent = iMAPResponse.getNumber();
                    responseArr[i] = null;
                } else if (iMAPResponse.keyEquals("FLAGS")) {
                    this.availableFlags = new FLAGS(iMAPResponse);
                    responseArr[i] = null;
                } else if (iMAPResponse.keyEquals("VANISHED")) {
                    if (this.responses == null) {
                        this.responses = new ArrayList();
                    }
                    this.responses.add(iMAPResponse);
                    responseArr[i] = null;
                } else if (iMAPResponse.keyEquals("FETCH")) {
                    if (this.responses == null) {
                        this.responses = new ArrayList();
                    }
                    this.responses.add(iMAPResponse);
                    responseArr[i] = null;
                } else {
                    boolean z = true;
                    if (iMAPResponse.isUnTagged() && iMAPResponse.isOK()) {
                        iMAPResponse.skipSpaces();
                        if (iMAPResponse.readByte() == 91) {
                            String atom = iMAPResponse.readAtom();
                            if (atom.equalsIgnoreCase("UNSEEN")) {
                                this.first = iMAPResponse.readNumber();
                            } else if (atom.equalsIgnoreCase("UIDVALIDITY")) {
                                this.uidvalidity = iMAPResponse.readLong();
                            } else if (atom.equalsIgnoreCase("PERMANENTFLAGS")) {
                                this.permanentFlags = new FLAGS(iMAPResponse);
                            } else if (atom.equalsIgnoreCase("UIDNEXT")) {
                                this.uidnext = iMAPResponse.readLong();
                            } else if (atom.equalsIgnoreCase("HIGHESTMODSEQ")) {
                                this.highestmodseq = iMAPResponse.readLong();
                            } else {
                                z = false;
                            }
                            if (z) {
                                responseArr[i] = null;
                            }
                        }
                    } else if (iMAPResponse.isUnTagged() && iMAPResponse.isNO()) {
                        iMAPResponse.skipSpaces();
                        if (iMAPResponse.readByte() != 91) {
                            iMAPResponse.reset();
                        } else {
                            if (iMAPResponse.readAtom().equalsIgnoreCase("UIDNOTSTICKY")) {
                                this.uidNotSticky = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                responseArr[i] = null;
                            }
                        }
                    }
                }
            }
        }
        if (this.permanentFlags == null) {
            Flags flags = this.availableFlags;
            if (flags != null) {
                this.permanentFlags = new Flags(flags);
            } else {
                this.permanentFlags = new Flags();
            }
        }
    }
}
