package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import javax.mail.Flags;

/* JADX INFO: loaded from: classes2.dex */
public class FLAGS extends Flags implements Item {
    public static final char[] name = {'F', 'L', 'A', 'G', 'S'};
    private static final long serialVersionUID = 439049847053756670L;
    public int msgno;

    /* JADX WARN: Removed duplicated region for block: B:41:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FLAGS(IMAPResponse iMAPResponse) throws ParsingException {
        Flags.Flag flag;
        this.msgno = iMAPResponse.getNumber();
        iMAPResponse.skipSpaces();
        String[] simpleList = iMAPResponse.readSimpleList();
        if (simpleList != null) {
            for (String str : simpleList) {
                if (str.length() < 2 || str.charAt(0) != '\\') {
                    add(str);
                } else {
                    char upperCase = Character.toUpperCase(str.charAt(1));
                    if (upperCase == '*') {
                        flag = Flags.Flag.USER;
                    } else if (upperCase == 'A') {
                        flag = Flags.Flag.ANSWERED;
                    } else if (upperCase != 'D') {
                        if (upperCase == 'F') {
                            flag = Flags.Flag.FLAGGED;
                        } else if (upperCase != 'R') {
                            if (upperCase == 'S') {
                                flag = Flags.Flag.SEEN;
                            }
                            add(str);
                        } else {
                            flag = Flags.Flag.RECENT;
                        }
                    } else if (str.length() >= 3) {
                        char cCharAt = str.charAt(2);
                        if (cCharAt == 'e' || cCharAt == 'E') {
                            flag = Flags.Flag.DELETED;
                        } else if (cCharAt == 'r' || cCharAt == 'R') {
                            flag = Flags.Flag.DRAFT;
                        }
                    }
                    add(flag);
                }
            }
        }
    }
}
