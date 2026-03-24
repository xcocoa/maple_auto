package z2;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.anythink.core.api.ATCustomRuleKeys;
import com.sun.mail.imap.IMAPStore;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class ez {
    private static final int OooO00o = 15;
    private static final int OooO0O0 = 31;
    private static final int OooO0OO = 63;
    private static final int OooO0Oo = 127;
    public static final Map<ByteString, Integer> OooO0o;
    public static final dz[] OooO0o0;

    public static final class OooO00o {
        private final List<dz> OooO00o;
        private final l00 OooO0O0;
        private final int OooO0OO;
        private int OooO0Oo;
        public int OooO0o;
        public dz[] OooO0o0;
        public int OooO0oO;
        public int OooO0oo;

        public OooO00o(int i, int i2, e10 e10Var) {
            this.OooO00o = new ArrayList();
            this.OooO0o0 = new dz[8];
            this.OooO0o = r0.length - 1;
            this.OooO0oO = 0;
            this.OooO0oo = 0;
            this.OooO0OO = i;
            this.OooO0Oo = i2;
            this.OooO0O0 = w00.OooO0Oo(e10Var);
        }

        public OooO00o(int i, e10 e10Var) {
            this(i, i, e10Var);
        }

        private void OooO00o() {
            int i = this.OooO0Oo;
            int i2 = this.OooO0oo;
            if (i < i2) {
                if (i == 0) {
                    OooO0O0();
                } else {
                    OooO0Oo(i2 - i);
                }
            }
        }

        private void OooO0O0() {
            Arrays.fill(this.OooO0o0, (Object) null);
            this.OooO0o = this.OooO0o0.length - 1;
            this.OooO0oO = 0;
            this.OooO0oo = 0;
        }

        private int OooO0OO(int i) {
            return this.OooO0o + 1 + i;
        }

        private int OooO0Oo(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.OooO0o0.length;
                while (true) {
                    length--;
                    i2 = this.OooO0o;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    dz[] dzVarArr = this.OooO0o0;
                    i -= dzVarArr[length].OooO0OO;
                    this.OooO0oo -= dzVarArr[length].OooO0OO;
                    this.OooO0oO--;
                    i3++;
                }
                dz[] dzVarArr2 = this.OooO0o0;
                System.arraycopy(dzVarArr2, i2 + 1, dzVarArr2, i2 + 1 + i3, this.OooO0oO);
                this.OooO0o += i3;
            }
            return i3;
        }

        private ByteString OooO0o(int i) throws IOException {
            dz dzVar;
            if (!OooO0oo(i)) {
                int iOooO0OO = OooO0OO(i - ez.OooO0o0.length);
                if (iOooO0OO >= 0) {
                    dz[] dzVarArr = this.OooO0o0;
                    if (iOooO0OO < dzVarArr.length) {
                        dzVar = dzVarArr[iOooO0OO];
                    }
                }
                throw new IOException("Header index too large " + (i + 1));
            }
            dzVar = ez.OooO0o0[i];
            return dzVar.OooO00o;
        }

        private void OooO0oO(int i, dz dzVar) {
            this.OooO00o.add(dzVar);
            int i2 = dzVar.OooO0OO;
            if (i != -1) {
                i2 -= this.OooO0o0[OooO0OO(i)].OooO0OO;
            }
            int i3 = this.OooO0Oo;
            if (i2 > i3) {
                OooO0O0();
                return;
            }
            int iOooO0Oo = OooO0Oo((this.OooO0oo + i2) - i3);
            if (i == -1) {
                int i4 = this.OooO0oO + 1;
                dz[] dzVarArr = this.OooO0o0;
                if (i4 > dzVarArr.length) {
                    dz[] dzVarArr2 = new dz[dzVarArr.length * 2];
                    System.arraycopy(dzVarArr, 0, dzVarArr2, dzVarArr.length, dzVarArr.length);
                    this.OooO0o = this.OooO0o0.length - 1;
                    this.OooO0o0 = dzVarArr2;
                }
                int i5 = this.OooO0o;
                this.OooO0o = i5 - 1;
                this.OooO0o0[i5] = dzVar;
                this.OooO0oO++;
            } else {
                this.OooO0o0[i + OooO0OO(i) + iOooO0Oo] = dzVar;
            }
            this.OooO0oo += i2;
        }

        private boolean OooO0oo(int i) {
            return i >= 0 && i <= ez.OooO0o0.length - 1;
        }

        private int OooOO0() throws IOException {
            return this.OooO0O0.readByte() & 255;
        }

        private void OooOOO0(int i) throws IOException {
            if (OooO0oo(i)) {
                this.OooO00o.add(ez.OooO0o0[i]);
                return;
            }
            int iOooO0OO = OooO0OO(i - ez.OooO0o0.length);
            if (iOooO0OO >= 0) {
                dz[] dzVarArr = this.OooO0o0;
                if (iOooO0OO < dzVarArr.length) {
                    this.OooO00o.add(dzVarArr[iOooO0OO]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private void OooOOOO(int i) throws IOException {
            OooO0oO(-1, new dz(OooO0o(i), OooOO0O()));
        }

        private void OooOOOo() throws IOException {
            OooO0oO(-1, new dz(ez.OooO00o(OooOO0O()), OooOO0O()));
        }

        private void OooOOo() throws IOException {
            this.OooO00o.add(new dz(ez.OooO00o(OooOO0O()), OooOO0O()));
        }

        private void OooOOo0(int i) throws IOException {
            this.OooO00o.add(new dz(OooO0o(i), OooOO0O()));
        }

        public int OooO() {
            return this.OooO0Oo;
        }

        public List<dz> OooO0o0() {
            ArrayList arrayList = new ArrayList(this.OooO00o);
            this.OooO00o.clear();
            return arrayList;
        }

        public ByteString OooOO0O() throws IOException {
            int iOooOO0 = OooOO0();
            boolean z = (iOooOO0 & 128) == 128;
            int iOooOOO = OooOOO(iOooOO0, 127);
            return z ? ByteString.of(lz.OooO0o().OooO0OO(this.OooO0O0.Oooo0oO(iOooOOO))) : this.OooO0O0.OooO0Oo(iOooOOO);
        }

        public void OooOO0o() throws IOException {
            while (!this.OooO0O0.OooOOO()) {
                int i = this.OooO0O0.readByte() & 255;
                if (i == 128) {
                    throw new IOException("index == 0");
                }
                if ((i & 128) == 128) {
                    OooOOO0(OooOOO(i, 127) - 1);
                } else if (i == 64) {
                    OooOOOo();
                } else if ((i & 64) == 64) {
                    OooOOOO(OooOOO(i, 63) - 1);
                } else if ((i & 32) == 32) {
                    int iOooOOO = OooOOO(i, 31);
                    this.OooO0Oo = iOooOOO;
                    if (iOooOOO < 0 || iOooOOO > this.OooO0OO) {
                        throw new IOException("Invalid dynamic table size update " + this.OooO0Oo);
                    }
                    OooO00o();
                } else if (i == 16 || i == 0) {
                    OooOOo();
                } else {
                    OooOOo0(OooOOO(i, 15) - 1);
                }
            }
        }

        public int OooOOO(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int iOooOO0 = OooOO0();
                if ((iOooOO0 & 128) == 0) {
                    return i2 + (iOooOO0 << i4);
                }
                i2 += (iOooOO0 & 127) << i4;
                i4 += 7;
            }
        }
    }

    public static final class OooO0O0 {
        private static final int OooOO0O = 4096;
        private static final int OooOO0o = 16384;
        public int OooO;
        private final j00 OooO00o;
        private final boolean OooO0O0;
        private int OooO0OO;
        private boolean OooO0Oo;
        public int OooO0o;
        public int OooO0o0;
        public dz[] OooO0oO;
        public int OooO0oo;
        public int OooOO0;

        public OooO0O0(int i, boolean z, j00 j00Var) {
            this.OooO0OO = Integer.MAX_VALUE;
            this.OooO0oO = new dz[8];
            this.OooO0oo = r0.length - 1;
            this.OooO = 0;
            this.OooOO0 = 0;
            this.OooO0o0 = i;
            this.OooO0o = i;
            this.OooO0O0 = z;
            this.OooO00o = j00Var;
        }

        public OooO0O0(j00 j00Var) {
            this(4096, true, j00Var);
        }

        private void OooO00o() {
            int i = this.OooO0o;
            int i2 = this.OooOO0;
            if (i < i2) {
                if (i == 0) {
                    OooO0O0();
                } else {
                    OooO0OO(i2 - i);
                }
            }
        }

        private void OooO0O0() {
            Arrays.fill(this.OooO0oO, (Object) null);
            this.OooO0oo = this.OooO0oO.length - 1;
            this.OooO = 0;
            this.OooOO0 = 0;
        }

        private int OooO0OO(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.OooO0oO.length;
                while (true) {
                    length--;
                    i2 = this.OooO0oo;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    dz[] dzVarArr = this.OooO0oO;
                    i -= dzVarArr[length].OooO0OO;
                    this.OooOO0 -= dzVarArr[length].OooO0OO;
                    this.OooO--;
                    i3++;
                }
                dz[] dzVarArr2 = this.OooO0oO;
                System.arraycopy(dzVarArr2, i2 + 1, dzVarArr2, i2 + 1 + i3, this.OooO);
                dz[] dzVarArr3 = this.OooO0oO;
                int i4 = this.OooO0oo;
                Arrays.fill(dzVarArr3, i4 + 1, i4 + 1 + i3, (Object) null);
                this.OooO0oo += i3;
            }
            return i3;
        }

        private void OooO0Oo(dz dzVar) {
            int i = dzVar.OooO0OO;
            int i2 = this.OooO0o;
            if (i > i2) {
                OooO0O0();
                return;
            }
            OooO0OO((this.OooOO0 + i) - i2);
            int i3 = this.OooO + 1;
            dz[] dzVarArr = this.OooO0oO;
            if (i3 > dzVarArr.length) {
                dz[] dzVarArr2 = new dz[dzVarArr.length * 2];
                System.arraycopy(dzVarArr, 0, dzVarArr2, dzVarArr.length, dzVarArr.length);
                this.OooO0oo = this.OooO0oO.length - 1;
                this.OooO0oO = dzVarArr2;
            }
            int i4 = this.OooO0oo;
            this.OooO0oo = i4 - 1;
            this.OooO0oO[i4] = dzVar;
            this.OooO++;
            this.OooOO0 += i;
        }

        public void OooO0o(ByteString byteString) throws IOException {
            int size;
            int i;
            if (!this.OooO0O0 || lz.OooO0o().OooO0o0(byteString) >= byteString.size()) {
                size = byteString.size();
                i = 0;
            } else {
                j00 j00Var = new j00();
                lz.OooO0o().OooO0Oo(byteString, j00Var);
                byteString = j00Var.Oooo00o();
                size = byteString.size();
                i = 128;
            }
            OooO0oo(size, 127, i);
            this.OooO00o.OoooO0(byteString);
        }

        public void OooO0o0(int i) {
            this.OooO0o0 = i;
            int iMin = Math.min(i, 16384);
            int i2 = this.OooO0o;
            if (i2 == iMin) {
                return;
            }
            if (iMin < i2) {
                this.OooO0OO = Math.min(this.OooO0OO, iMin);
            }
            this.OooO0Oo = true;
            this.OooO0o = iMin;
            OooO00o();
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void OooO0oO(List<dz> list) throws IOException {
            int length;
            int length2;
            if (this.OooO0Oo) {
                int i = this.OooO0OO;
                if (i < this.OooO0o) {
                    OooO0oo(i, 31, 32);
                }
                this.OooO0Oo = false;
                this.OooO0OO = Integer.MAX_VALUE;
                OooO0oo(this.OooO0o, 31, 32);
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                dz dzVar = list.get(i2);
                ByteString asciiLowercase = dzVar.OooO00o.toAsciiLowercase();
                ByteString byteString = dzVar.OooO0O0;
                Integer num = ez.OooO0o.get(asciiLowercase);
                if (num != null) {
                    length = num.intValue() + 1;
                    if (length <= 1 || length >= 8) {
                        length2 = length;
                        length = -1;
                    } else {
                        dz[] dzVarArr = ez.OooO0o0;
                        if (zx.OooOOo(dzVarArr[length - 1].OooO0O0, byteString)) {
                            length2 = length;
                        } else if (zx.OooOOo(dzVarArr[length].OooO0O0, byteString)) {
                            length2 = length;
                            length++;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length == -1) {
                    int i3 = this.OooO0oo + 1;
                    int length3 = this.OooO0oO.length;
                    while (true) {
                        if (i3 >= length3) {
                            break;
                        }
                        if (zx.OooOOo(this.OooO0oO[i3].OooO00o, asciiLowercase)) {
                            if (zx.OooOOo(this.OooO0oO[i3].OooO0O0, byteString)) {
                                length = ez.OooO0o0.length + (i3 - this.OooO0oo);
                                break;
                            } else if (length2 == -1) {
                                length2 = (i3 - this.OooO0oo) + ez.OooO0o0.length;
                            }
                        }
                        i3++;
                    }
                }
                if (length != -1) {
                    OooO0oo(length, 127, 128);
                } else {
                    if (length2 == -1) {
                        this.OooO00o.OooOOOO(64);
                        OooO0o(asciiLowercase);
                    } else if (!asciiLowercase.startsWith(dz.OooO0Oo) || dz.OooOOO.equals(asciiLowercase)) {
                        OooO0oo(length2, 63, 64);
                    } else {
                        OooO0oo(length2, 15, 0);
                        OooO0o(byteString);
                    }
                    OooO0o(byteString);
                    OooO0Oo(dzVar);
                }
            }
        }

        public void OooO0oo(int i, int i2, int i3) {
            int i4;
            j00 j00Var;
            if (i < i2) {
                j00Var = this.OooO00o;
                i4 = i | i3;
            } else {
                this.OooO00o.OooOOOO(i3 | i2);
                i4 = i - i2;
                while (i4 >= 128) {
                    this.OooO00o.OooOOOO(128 | (i4 & 127));
                    i4 >>>= 7;
                }
                j00Var = this.OooO00o;
            }
            j00Var.OooOOOO(i4);
        }
    }

    static {
        ByteString byteString = dz.OooOO0O;
        ByteString byteString2 = dz.OooOO0o;
        ByteString byteString3 = dz.OooOOO0;
        ByteString byteString4 = dz.OooOO0;
        OooO0o0 = new dz[]{new dz(dz.OooOOO, ""), new dz(byteString, "GET"), new dz(byteString, "POST"), new dz(byteString2, "/"), new dz(byteString2, "/index.html"), new dz(byteString3, "http"), new dz(byteString3, "https"), new dz(byteString4, "200"), new dz(byteString4, "204"), new dz(byteString4, "206"), new dz(byteString4, "304"), new dz(byteString4, "400"), new dz(byteString4, "404"), new dz(byteString4, "500"), new dz("accept-charset", ""), new dz("accept-encoding", "gzip, deflate"), new dz("accept-language", ""), new dz("accept-ranges", ""), new dz("accept", ""), new dz("access-control-allow-origin", ""), new dz(ATCustomRuleKeys.AGE, ""), new dz("allow", ""), new dz("authorization", ""), new dz("cache-control", ""), new dz("content-disposition", ""), new dz("content-encoding", ""), new dz("content-language", ""), new dz("content-length", ""), new dz("content-location", ""), new dz("content-range", ""), new dz("content-type", ""), new dz("cookie", ""), new dz(IMAPStore.ID_DATE, ""), new dz("etag", ""), new dz("expect", ""), new dz("expires", ""), new dz("from", ""), new dz("host", ""), new dz("if-match", ""), new dz("if-modified-since", ""), new dz("if-none-match", ""), new dz("if-range", ""), new dz("if-unmodified-since", ""), new dz("last-modified", ""), new dz("link", ""), new dz(RequestParameters.SUBRESOURCE_LOCATION, ""), new dz("max-forwards", ""), new dz("proxy-authenticate", ""), new dz("proxy-authorization", ""), new dz("range", ""), new dz(RequestParameters.SUBRESOURCE_REFERER, ""), new dz("refresh", ""), new dz("retry-after", ""), new dz("server", ""), new dz("set-cookie", ""), new dz("strict-transport-security", ""), new dz("transfer-encoding", ""), new dz("user-agent", ""), new dz("vary", ""), new dz("via", ""), new dz("www-authenticate", "")};
        OooO0o = OooO0O0();
    }

    private ez() {
    }

    public static ByteString OooO00o(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map<ByteString, Integer> OooO0O0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(OooO0o0.length);
        int i = 0;
        while (true) {
            dz[] dzVarArr = OooO0o0;
            if (i >= dzVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(dzVarArr[i].OooO00o)) {
                linkedHashMap.put(dzVarArr[i].OooO00o, Integer.valueOf(i));
            }
            i++;
        }
    }
}
