package z2;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class tp implements dm {
    private final dm OooO00o;

    public tp(dm dmVar) {
        this.OooO00o = dmVar;
    }

    private static void OooO0OO(fm[] fmVarArr, int i, int i2) {
        if (fmVarArr != null) {
            for (int i3 = 0; i3 < fmVarArr.length; i3++) {
                fm fmVar = fmVarArr[i3];
                fmVarArr[i3] = new fm(fmVar.OooO0OO() + i, fmVar.OooO0Oo() + i2);
            }
        }
    }

    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int iOooO0o0 = vlVar.OooO0o0() / 2;
        int iOooO0Oo = vlVar.OooO0Oo() / 2;
        try {
            try {
                try {
                    try {
                        return this.OooO00o.OooO00o(vlVar.OooO00o(0, 0, iOooO0o0, iOooO0Oo), map);
                    } catch (NotFoundException unused) {
                        int i = iOooO0o0 / 2;
                        int i2 = iOooO0Oo / 2;
                        em emVarOooO00o = this.OooO00o.OooO00o(vlVar.OooO00o(i, i2, iOooO0o0, iOooO0Oo), map);
                        OooO0OO(emVarOooO00o.OooO0o(), i, i2);
                        return emVarOooO00o;
                    }
                } catch (NotFoundException unused2) {
                    em emVarOooO00o2 = this.OooO00o.OooO00o(vlVar.OooO00o(iOooO0o0, iOooO0Oo, iOooO0o0, iOooO0Oo), map);
                    OooO0OO(emVarOooO00o2.OooO0o(), iOooO0o0, iOooO0Oo);
                    return emVarOooO00o2;
                }
            } catch (NotFoundException unused3) {
                em emVarOooO00o3 = this.OooO00o.OooO00o(vlVar.OooO00o(0, iOooO0Oo, iOooO0o0, iOooO0Oo), map);
                OooO0OO(emVarOooO00o3.OooO0o(), 0, iOooO0Oo);
                return emVarOooO00o3;
            }
        } catch (NotFoundException unused4) {
            em emVarOooO00o4 = this.OooO00o.OooO00o(vlVar.OooO00o(iOooO0o0, 0, iOooO0o0, iOooO0Oo), map);
            OooO0OO(emVarOooO00o4.OooO0o(), iOooO0o0, 0);
            return emVarOooO00o4;
        }
    }

    @Override // z2.dm
    public final em OooO0O0(vl vlVar) throws NotFoundException, ChecksumException, FormatException {
        return OooO00o(vlVar, null);
    }

    @Override // z2.dm
    public final void reset() {
        this.OooO00o.reset();
    }
}
