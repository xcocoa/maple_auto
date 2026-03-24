package com.sun.mail.imap;

import com.sun.mail.util.MailLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import javax.mail.Message;

/* JADX INFO: loaded from: classes2.dex */
public class MessageCache {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int SLOP = 64;
    private IMAPFolder folder;
    private MailLogger logger;
    private IMAPMessage[] messages;
    private int[] seqnums;
    private int size;

    public MessageCache(int i, boolean z) {
        this.folder = null;
        MailLogger mailLogger = new MailLogger(getClass(), "messagecache", "DEBUG IMAP MC", z, System.out);
        this.logger = mailLogger;
        if (mailLogger.isLoggable(Level.CONFIG)) {
            this.logger.config("create DEBUG cache of size ".concat(String.valueOf(i)));
        }
        ensureCapacity(i, 1);
    }

    public MessageCache(IMAPFolder iMAPFolder, IMAPStore iMAPStore, int i) {
        this.folder = iMAPFolder;
        MailLogger subLogger = iMAPFolder.logger.getSubLogger("messagecache", "DEBUG IMAP MC", iMAPStore.getMessageCacheDebug());
        this.logger = subLogger;
        if (subLogger.isLoggable(Level.CONFIG)) {
            this.logger.config("create cache of size ".concat(String.valueOf(i)));
        }
        ensureCapacity(i, 1);
    }

    private void ensureCapacity(int i, int i2) {
        IMAPMessage[] iMAPMessageArr = this.messages;
        if (iMAPMessageArr == null) {
            this.messages = new IMAPMessage[i + 64];
        } else if (iMAPMessageArr.length < i) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("expand capacity to ".concat(String.valueOf(i)));
            }
            int i3 = i + 64;
            IMAPMessage[] iMAPMessageArr2 = new IMAPMessage[i3];
            IMAPMessage[] iMAPMessageArr3 = this.messages;
            System.arraycopy(iMAPMessageArr3, 0, iMAPMessageArr2, 0, iMAPMessageArr3.length);
            this.messages = iMAPMessageArr2;
            int[] iArr = this.seqnums;
            if (iArr != null) {
                int[] iArr2 = new int[i3];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                int i4 = this.size;
                while (i4 < i3) {
                    iArr2[i4] = i2;
                    i4++;
                    i2++;
                }
                this.seqnums = iArr2;
                if (this.logger.isLoggable(Level.FINE)) {
                    this.logger.fine("message " + i + " has sequence number " + this.seqnums[i - 1]);
                }
            }
        } else if (i < this.size) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("shrink capacity to ".concat(String.valueOf(i)));
            }
            for (int i5 = i + 1; i5 <= this.size; i5++) {
                int i6 = i5 - 1;
                this.messages[i6] = null;
                int[] iArr3 = this.seqnums;
                if (iArr3 != null) {
                    iArr3[i6] = -1;
                }
            }
        }
        this.size = i;
    }

    private int msgnumOf(int i) {
        if (this.seqnums == null) {
            return i;
        }
        if (i <= 0) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("bad seqnum ".concat(String.valueOf(i)));
            }
            return -1;
        }
        for (int i2 = i; i2 <= this.size; i2++) {
            int[] iArr = this.seqnums;
            int i3 = i2 - 1;
            if (iArr[i3] == i) {
                return i2;
            }
            if (iArr[i3] > i) {
                break;
            }
        }
        return -1;
    }

    private void shrink(int i, int i2) {
        this.size = i - 1;
        MailLogger mailLogger = this.logger;
        Level level = Level.FINE;
        if (mailLogger.isLoggable(level)) {
            this.logger.fine("size now " + this.size);
        }
        int i3 = this.size;
        if (i3 == 0) {
            this.messages = null;
            this.seqnums = null;
            return;
        }
        if (i3 > 64 && i3 < this.messages.length / 2) {
            this.logger.fine("reallocate array");
            int i4 = this.size;
            IMAPMessage[] iMAPMessageArr = new IMAPMessage[i4 + 64];
            System.arraycopy(this.messages, 0, iMAPMessageArr, 0, i4);
            this.messages = iMAPMessageArr;
            int[] iArr = this.seqnums;
            if (iArr != null) {
                int i5 = this.size;
                int[] iArr2 = new int[i5 + 64];
                System.arraycopy(iArr, 0, iArr2, 0, i5);
                this.seqnums = iArr2;
                return;
            }
            return;
        }
        if (this.logger.isLoggable(level)) {
            this.logger.fine("clean " + i + " to " + i2);
        }
        while (i < i2) {
            int i6 = i - 1;
            this.messages[i6] = null;
            int[] iArr3 = this.seqnums;
            if (iArr3 != null) {
                iArr3[i6] = 0;
            }
            i++;
        }
    }

    public void addMessages(int i, int i2) {
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("add " + i + " messages");
        }
        ensureCapacity(this.size + i, i2);
    }

    public void expungeMessage(int i) {
        int iMsgnumOf = msgnumOf(i);
        if (iMsgnumOf < 0) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("expunge no seqnum ".concat(String.valueOf(i)));
                return;
            }
            return;
        }
        int i2 = iMsgnumOf - 1;
        IMAPMessage iMAPMessage = this.messages[i2];
        if (iMAPMessage != null) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("expunge existing ".concat(String.valueOf(iMsgnumOf)));
            }
            iMAPMessage.setExpunged(true);
        }
        int[] iArr = this.seqnums;
        if (iArr == null) {
            this.logger.fine("create seqnums array");
            this.seqnums = new int[this.messages.length];
            for (int i3 = 1; i3 < iMsgnumOf; i3++) {
                this.seqnums[i3 - 1] = i3;
            }
            this.seqnums[i2] = 0;
            int i4 = iMsgnumOf + 1;
            while (true) {
                int[] iArr2 = this.seqnums;
                if (i4 > iArr2.length) {
                    return;
                }
                int i5 = i4 - 1;
                iArr2[i5] = i5;
                i4++;
            }
        } else {
            iArr[i2] = 0;
            int i6 = iMsgnumOf + 1;
            while (true) {
                int[] iArr3 = this.seqnums;
                if (i6 > iArr3.length) {
                    return;
                }
                int i7 = i6 - 1;
                if (iArr3[i7] > 0) {
                    iArr3[i7] = iArr3[i7] - 1;
                }
                i6++;
            }
        }
    }

    public IMAPMessage getMessage(int i) {
        if (i <= 0 || i > this.size) {
            throw new ArrayIndexOutOfBoundsException("message number (" + i + ") out of bounds (" + this.size + ")");
        }
        int i2 = i - 1;
        IMAPMessage iMAPMessageNewIMAPMessage = this.messages[i2];
        if (iMAPMessageNewIMAPMessage == null) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("create message number ".concat(String.valueOf(i)));
            }
            iMAPMessageNewIMAPMessage = this.folder.newIMAPMessage(i);
            this.messages[i2] = iMAPMessageNewIMAPMessage;
            if (seqnumOf(i) <= 0) {
                this.logger.fine("it's expunged!");
                iMAPMessageNewIMAPMessage.setExpunged(true);
            }
        }
        return iMAPMessageNewIMAPMessage;
    }

    public IMAPMessage getMessageBySeqnum(int i) {
        int iMsgnumOf = msgnumOf(i);
        if (iMsgnumOf >= 0) {
            return getMessage(iMsgnumOf);
        }
        if (!this.logger.isLoggable(Level.FINE)) {
            return null;
        }
        this.logger.fine("no message seqnum ".concat(String.valueOf(i)));
        return null;
    }

    public IMAPMessage[] removeExpungedMessages() {
        this.logger.fine("remove expunged messages");
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (i <= this.size) {
            if (seqnumOf(i) <= 0) {
                arrayList.add(getMessage(i));
            } else {
                if (i2 != i) {
                    IMAPMessage[] iMAPMessageArr = this.messages;
                    int i3 = i2 - 1;
                    iMAPMessageArr[i3] = iMAPMessageArr[i - 1];
                    if (iMAPMessageArr[i3] != null) {
                        iMAPMessageArr[i3].setMessageNumber(i2);
                    }
                }
                i2++;
            }
            i++;
        }
        this.seqnums = null;
        shrink(i2, i);
        int size = arrayList.size();
        IMAPMessage[] iMAPMessageArr2 = new IMAPMessage[size];
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("return " + size);
        }
        arrayList.toArray(iMAPMessageArr2);
        return iMAPMessageArr2;
    }

    public IMAPMessage[] removeExpungedMessages(Message[] messageArr) {
        this.logger.fine("remove expunged messages");
        ArrayList arrayList = new ArrayList();
        int length = messageArr.length;
        int[] iArr = new int[length];
        boolean z = false;
        for (int i = 0; i < messageArr.length; i++) {
            iArr[i] = messageArr[i].getMessageNumber();
        }
        Arrays.sort(iArr);
        int i2 = 0;
        int i3 = 1;
        int i4 = 1;
        while (i3 <= this.size) {
            if (i2 >= length || i3 != iArr[i2] || seqnumOf(i3) > 0) {
                if (i4 != i3) {
                    IMAPMessage[] iMAPMessageArr = this.messages;
                    int i5 = i4 - 1;
                    int i6 = i3 - 1;
                    iMAPMessageArr[i5] = iMAPMessageArr[i6];
                    if (iMAPMessageArr[i5] != null) {
                        iMAPMessageArr[i5].setMessageNumber(i4);
                    }
                    int[] iArr2 = this.seqnums;
                    if (iArr2 != null) {
                        iArr2[i5] = iArr2[i6];
                    }
                }
                int[] iArr3 = this.seqnums;
                if (iArr3 != null && iArr3[i4 - 1] != i4) {
                    z = true;
                }
                i4++;
            } else {
                arrayList.add(getMessage(i3));
                while (i2 < length && iArr[i2] <= i3) {
                    i2++;
                }
            }
            i3++;
        }
        if (!z) {
            this.seqnums = null;
        }
        shrink(i4, i3);
        int size = arrayList.size();
        IMAPMessage[] iMAPMessageArr2 = new IMAPMessage[size];
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("return " + size);
        }
        arrayList.toArray(iMAPMessageArr2);
        return iMAPMessageArr2;
    }

    public int seqnumOf(int i) {
        if (this.seqnums == null) {
            return i;
        }
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("msgnum " + i + " is seqnum " + this.seqnums[i - 1]);
        }
        return this.seqnums[i - 1];
    }

    public int size() {
        return this.size;
    }
}
