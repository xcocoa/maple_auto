package com.sun.mail.imap;

import com.sun.mail.iap.ByteArray;
import com.sun.mail.iap.ConnectionException;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.imap.protocol.BODY;
import com.sun.mail.imap.protocol.IMAPProtocol;
import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.MessageRemovedIOException;
import java.io.IOException;
import java.io.InputStream;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.FolderClosedException;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes2.dex */
public class IMAPInputStream extends InputStream {
    private static final int slop = 64;
    private int blksize;
    private byte[] buf;
    private int bufcount;
    private int bufpos;
    private boolean lastBuffer;
    private int max;
    private IMAPMessage msg;
    private boolean peek;
    private int pos = 0;
    private ByteArray readbuf;
    private String section;

    public IMAPInputStream(IMAPMessage iMAPMessage, String str, int i, boolean z) {
        this.msg = iMAPMessage;
        this.section = str;
        this.max = i;
        this.peek = z;
        this.blksize = iMAPMessage.getFetchBlockSize();
    }

    private void checkSeen() {
        if (this.peek) {
            return;
        }
        try {
            Folder folder = this.msg.getFolder();
            if (folder == null || folder.getMode() == 1) {
                return;
            }
            IMAPMessage iMAPMessage = this.msg;
            Flags.Flag flag = Flags.Flag.SEEN;
            if (iMAPMessage.isSet(flag)) {
                return;
            }
            this.msg.setFlag(flag, true);
        } catch (MessagingException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void fill() throws IOException {
        int i;
        int i2;
        BODY bodyPeekBody;
        boolean z;
        ByteArray byteArray;
        int i3;
        if (this.lastBuffer || ((i = this.max) != -1 && this.pos >= i)) {
            if (this.pos == 0) {
                checkSeen();
            }
            this.readbuf = null;
            return;
        }
        if (this.readbuf == null) {
            this.readbuf = new ByteArray(this.blksize + 64);
        }
        synchronized (this.msg.getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = this.msg.getProtocol();
                if (this.msg.isExpunged()) {
                    throw new MessageRemovedIOException("No content for expunged message");
                }
                int sequenceNumber = this.msg.getSequenceNumber();
                i2 = this.blksize;
                int i4 = this.max;
                if (i4 != -1) {
                    int i5 = this.pos;
                    if (i5 + i2 > i4) {
                        i2 = i4 - i5;
                    }
                }
                bodyPeekBody = this.peek ? protocol.peekBody(sequenceNumber, this.section, this.pos, i2, this.readbuf) : protocol.fetchBody(sequenceNumber, this.section, this.pos, i2, this.readbuf);
                z = false;
                z = false;
                i3 = 0;
                if (bodyPeekBody == null || (byteArray = bodyPeekBody.getByteArray()) == null) {
                    forceCheckExpunged();
                    byteArray = new ByteArray(0);
                }
            } catch (ProtocolException e) {
                forceCheckExpunged();
                throw new IOException(e.getMessage());
            } catch (FolderClosedException e2) {
                throw new FolderClosedIOException(e2.getFolder(), e2.getMessage());
            }
        }
        if (this.pos == 0) {
            checkSeen();
        }
        this.buf = byteArray.getBytes();
        this.bufpos = byteArray.getStart();
        int count = byteArray.getCount();
        int origin = bodyPeekBody != null ? bodyPeekBody.getOrigin() : this.pos;
        if (origin < 0) {
            if (this.pos == 0) {
                if (count != i2) {
                    z = true;
                }
                this.lastBuffer = z;
                i3 = count;
            }
            this.lastBuffer = true;
        } else {
            if (origin == this.pos) {
                if (count < i2) {
                }
                this.lastBuffer = z;
                i3 = count;
            }
            this.lastBuffer = true;
        }
        this.bufcount = this.bufpos + i3;
        this.pos += i3;
    }

    private void forceCheckExpunged() throws MessageRemovedIOException, FolderClosedIOException {
        synchronized (this.msg.getMessageCacheLock()) {
            try {
                try {
                    this.msg.getProtocol().noop();
                } catch (ConnectionException e) {
                    throw new FolderClosedIOException(this.msg.getFolder(), e.getMessage());
                }
            } catch (ProtocolException unused) {
            } catch (FolderClosedException e2) {
                throw new FolderClosedIOException(e2.getFolder(), e2.getMessage());
            }
        }
        if (this.msg.isExpunged()) {
            throw new MessageRemovedIOException();
        }
    }

    @Override // java.io.InputStream
    public synchronized int available() throws IOException {
        return this.bufcount - this.bufpos;
    }

    @Override // java.io.InputStream
    public synchronized int read() throws IOException {
        int i;
        if (this.bufpos >= this.bufcount) {
            fill();
            if (this.bufpos >= this.bufcount) {
                i = -1;
            }
        }
        byte[] bArr = this.buf;
        int i2 = this.bufpos;
        this.bufpos = i2 + 1;
        i = bArr[i2] & 255;
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.bufcount - this.bufpos;
        if (i3 <= 0) {
            fill();
            i3 = this.bufcount - this.bufpos;
            if (i3 <= 0) {
                return -1;
            }
        }
        if (i3 < i2) {
            i2 = i3;
        }
        System.arraycopy(this.buf, this.bufpos, bArr, i, i2);
        this.bufpos += i2;
        return i2;
    }
}
