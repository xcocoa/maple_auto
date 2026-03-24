package z2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class o0O0O00 {
    public static final Comparator<byte[]> OooO0o0 = new OooO00o();
    private List<byte[]> OooO00o = new LinkedList();
    private List<byte[]> OooO0O0 = new ArrayList(64);
    private int OooO0OO = 0;
    private final int OooO0Oo;

    public static class OooO00o implements Comparator<byte[]> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public o0O0O00(int i) {
        this.OooO0Oo = i;
    }

    private synchronized void OooO0OO() {
        while (this.OooO0OO > this.OooO0Oo) {
            byte[] bArrRemove = this.OooO00o.remove(0);
            this.OooO0O0.remove(bArrRemove);
            this.OooO0OO -= bArrRemove.length;
        }
    }

    public synchronized byte[] OooO00o(int i) {
        for (int i2 = 0; i2 < this.OooO0O0.size(); i2++) {
            byte[] bArr = this.OooO0O0.get(i2);
            if (bArr.length >= i) {
                this.OooO0OO -= bArr.length;
                this.OooO0O0.remove(i2);
                this.OooO00o.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }

    public synchronized void OooO0O0(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.OooO0Oo) {
                this.OooO00o.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.OooO0O0, bArr, OooO0o0);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.OooO0O0.add(iBinarySearch, bArr);
                this.OooO0OO += bArr.length;
                OooO0OO();
            }
        }
    }
}
