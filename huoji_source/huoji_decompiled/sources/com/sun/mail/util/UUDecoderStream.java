package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class UUDecoderStream extends FilterInputStream {
    private byte[] buffer;
    private int bufsize;
    private boolean gotEnd;
    private boolean gotPrefix;
    private boolean ignoreErrors;
    private boolean ignoreMissingBeginEnd;
    private int index;
    private LineInputStream lin;
    private int mode;
    private String name;
    private String readAhead;

    public UUDecoderStream(InputStream inputStream) {
        super(inputStream);
        this.buffer = new byte[45];
        this.bufsize = 0;
        this.index = 0;
        this.gotPrefix = false;
        this.gotEnd = false;
        this.lin = new LineInputStream(inputStream);
        this.ignoreErrors = PropUtil.getBooleanSystemProperty("mail.mime.uudecode.ignoreerrors", false);
        this.ignoreMissingBeginEnd = PropUtil.getBooleanSystemProperty("mail.mime.uudecode.ignoremissingbeginend", false);
    }

    public UUDecoderStream(InputStream inputStream, boolean z, boolean z3) {
        super(inputStream);
        this.buffer = new byte[45];
        this.bufsize = 0;
        this.index = 0;
        this.gotPrefix = false;
        this.gotEnd = false;
        this.lin = new LineInputStream(inputStream);
        this.ignoreErrors = z;
        this.ignoreMissingBeginEnd = z3;
    }

    private boolean decode() throws IOException {
        if (this.gotEnd) {
            return false;
        }
        this.bufsize = 0;
        while (true) {
            String line = this.readAhead;
            if (line != null) {
                this.readAhead = null;
            } else {
                line = this.lin.readLine();
            }
            if (line == null) {
                if (!this.ignoreMissingBeginEnd) {
                    throw new DecodingException("UUDecoder: Missing end at EOF");
                }
                this.gotEnd = true;
                return false;
            }
            if (line.equals("end")) {
                this.gotEnd = true;
                return false;
            }
            if (line.length() != 0) {
                char cCharAt = line.charAt(0);
                if (cCharAt >= ' ') {
                    int i = (cCharAt - ' ') & 63;
                    if (i == 0) {
                        String line2 = this.lin.readLine();
                        if ((line2 == null || !line2.equals("end")) && !this.ignoreMissingBeginEnd) {
                            throw new DecodingException("UUDecoder: Missing End after count 0 line");
                        }
                        this.gotEnd = true;
                        return false;
                    }
                    if (line.length() >= (((i * 8) + 5) / 6) + 1) {
                        int i2 = 1;
                        while (this.bufsize < i) {
                            int i3 = i2 + 1;
                            byte bCharAt = (byte) ((line.charAt(i2) - ' ') & 63);
                            int i4 = i3 + 1;
                            byte bCharAt2 = (byte) ((line.charAt(i3) - ' ') & 63);
                            byte[] bArr = this.buffer;
                            int i5 = this.bufsize;
                            int i6 = i5 + 1;
                            this.bufsize = i6;
                            bArr[i5] = (byte) (((bCharAt << 2) & 252) | ((bCharAt2 >>> 4) & 3));
                            if (i6 < i) {
                                i2 = i4 + 1;
                                byte bCharAt3 = (byte) ((line.charAt(i4) - ' ') & 63);
                                byte[] bArr2 = this.buffer;
                                int i7 = this.bufsize;
                                this.bufsize = i7 + 1;
                                bArr2[i7] = (byte) (((bCharAt2 << 4) & 240) | ((bCharAt3 >>> 2) & 15));
                                bCharAt2 = bCharAt3;
                            } else {
                                i2 = i4;
                            }
                            if (this.bufsize < i) {
                                int i8 = i2 + 1;
                                byte bCharAt4 = (byte) ((line.charAt(i2) - ' ') & 63);
                                byte[] bArr3 = this.buffer;
                                int i9 = this.bufsize;
                                this.bufsize = i9 + 1;
                                bArr3[i9] = (byte) ((bCharAt4 & 63) | ((bCharAt2 << 6) & 192));
                                i2 = i8;
                            }
                        }
                        return true;
                    }
                    if (!this.ignoreErrors) {
                        throw new DecodingException("UUDecoder: Short buffer error");
                    }
                } else if (!this.ignoreErrors) {
                    throw new DecodingException("UUDecoder: Buffer format error");
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a7, code lost:
    
        r8.readAhead = r0;
        r8.gotPrefix = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ab, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void readPrefix() throws IOException {
        int iCharAt;
        if (!this.gotPrefix) {
            this.mode = 438;
            this.name = "encoder.buf";
            while (true) {
                String line = this.lin.readLine();
                if (line != null) {
                    if (!line.regionMatches(false, 0, "begin", 0, 5)) {
                        if (this.ignoreMissingBeginEnd && line.length() != 0 && ((iCharAt = ((((line.charAt(0) - ' ') & 63) * 8) + 5) / 6) == 0 || line.length() >= iCharAt + 1)) {
                            break;
                        }
                    } else {
                        try {
                            this.mode = Integer.parseInt(line.substring(6, 9));
                        } catch (NumberFormatException e) {
                            if (!this.ignoreErrors) {
                                throw new DecodingException("UUDecoder: Error in mode: " + e.toString());
                            }
                        }
                        if (line.length() > 10) {
                            this.name = line.substring(10);
                        } else if (!this.ignoreErrors) {
                            throw new DecodingException("UUDecoder: Missing name: ".concat(String.valueOf(line)));
                        }
                        this.gotPrefix = true;
                        return;
                    }
                } else {
                    if (!this.ignoreMissingBeginEnd) {
                        throw new DecodingException("UUDecoder: Missing begin");
                    }
                    this.gotPrefix = true;
                    this.gotEnd = true;
                    return;
                }
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return ((((FilterInputStream) this).in.available() * 3) / 4) + (this.bufsize - this.index);
    }

    public int getMode() throws IOException {
        readPrefix();
        return this.mode;
    }

    public String getName() throws IOException {
        readPrefix();
        return this.name;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.index >= this.bufsize) {
            readPrefix();
            if (!decode()) {
                return -1;
            }
            this.index = 0;
        }
        byte[] bArr = this.buffer;
        int i = this.index;
        this.index = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = read();
            if (i4 == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            bArr[i + i3] = (byte) i4;
            i3++;
        }
        return i3;
    }
}
