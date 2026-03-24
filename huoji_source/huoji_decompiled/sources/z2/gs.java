package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class gs {
    private final int OooO;
    private final eo OooO00o;
    private final fm OooO0O0;
    private final fm OooO0OO;
    private final fm OooO0Oo;
    private final int OooO0o;
    private final fm OooO0o0;
    private final int OooO0oO;
    private final int OooO0oo;

    public gs(eo eoVar, fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4) throws NotFoundException {
        boolean z = fmVar == null || fmVar2 == null;
        boolean z3 = fmVar3 == null || fmVar4 == null;
        if (z && z3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (z) {
            fmVar = new fm(0.0f, fmVar3.OooO0Oo());
            fmVar2 = new fm(0.0f, fmVar4.OooO0Oo());
        } else if (z3) {
            fmVar3 = new fm(eoVar.OooOOO0() - 1, fmVar.OooO0Oo());
            fmVar4 = new fm(eoVar.OooOOO0() - 1, fmVar2.OooO0Oo());
        }
        this.OooO00o = eoVar;
        this.OooO0O0 = fmVar;
        this.OooO0OO = fmVar2;
        this.OooO0Oo = fmVar3;
        this.OooO0o0 = fmVar4;
        this.OooO0o = (int) Math.min(fmVar.OooO0OO(), fmVar2.OooO0OO());
        this.OooO0oO = (int) Math.max(fmVar3.OooO0OO(), fmVar4.OooO0OO());
        this.OooO0oo = (int) Math.min(fmVar.OooO0Oo(), fmVar3.OooO0Oo());
        this.OooO = (int) Math.max(fmVar2.OooO0Oo(), fmVar4.OooO0Oo());
    }

    public gs(gs gsVar) {
        this.OooO00o = gsVar.OooO00o;
        this.OooO0O0 = gsVar.OooO0oo();
        this.OooO0OO = gsVar.OooO0O0();
        this.OooO0Oo = gsVar.OooO();
        this.OooO0o0 = gsVar.OooO0OO();
        this.OooO0o = gsVar.OooO0o();
        this.OooO0oO = gsVar.OooO0Oo();
        this.OooO0oo = gsVar.OooO0oO();
        this.OooO = gsVar.OooO0o0();
    }

    public static gs OooOO0(gs gsVar, gs gsVar2) throws NotFoundException {
        return gsVar == null ? gsVar2 : gsVar2 == null ? gsVar : new gs(gsVar.OooO00o, gsVar.OooO0O0, gsVar.OooO0OO, gsVar2.OooO0Oo, gsVar2.OooO0o0);
    }

    public final fm OooO() {
        return this.OooO0Oo;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gs OooO00o(int i, int i2, boolean z) throws NotFoundException {
        fm fmVar;
        fm fmVar2;
        fm fmVar3;
        fm fmVar4;
        fm fmVar5 = this.OooO0O0;
        fm fmVar6 = this.OooO0OO;
        fm fmVar7 = this.OooO0Oo;
        fm fmVar8 = this.OooO0o0;
        if (i > 0) {
            fm fmVar9 = z ? fmVar5 : fmVar7;
            int iOooO0Oo = ((int) fmVar9.OooO0Oo()) - i;
            if (iOooO0Oo < 0) {
                iOooO0Oo = 0;
            }
            fm fmVar10 = new fm(fmVar9.OooO0OO(), iOooO0Oo);
            if (!z) {
                fmVar2 = fmVar10;
                fmVar = fmVar5;
                if (i2 <= 0) {
                    fm fmVar11 = z ? this.OooO0OO : this.OooO0o0;
                    int iOooO0Oo2 = ((int) fmVar11.OooO0Oo()) + i2;
                    if (iOooO0Oo2 >= this.OooO00o.OooO0oo()) {
                        iOooO0Oo2 = this.OooO00o.OooO0oo() - 1;
                    }
                    fm fmVar12 = new fm(fmVar11.OooO0OO(), iOooO0Oo2);
                    if (!z) {
                        fmVar4 = fmVar12;
                        fmVar3 = fmVar6;
                        return new gs(this.OooO00o, fmVar, fmVar3, fmVar2, fmVar4);
                    }
                    fmVar3 = fmVar12;
                } else {
                    fmVar3 = fmVar6;
                }
                fmVar4 = fmVar8;
                return new gs(this.OooO00o, fmVar, fmVar3, fmVar2, fmVar4);
            }
            fmVar = fmVar10;
        } else {
            fmVar = fmVar5;
        }
        fmVar2 = fmVar7;
        if (i2 <= 0) {
        }
        fmVar4 = fmVar8;
        return new gs(this.OooO00o, fmVar, fmVar3, fmVar2, fmVar4);
    }

    public final fm OooO0O0() {
        return this.OooO0OO;
    }

    public final fm OooO0OO() {
        return this.OooO0o0;
    }

    public final int OooO0Oo() {
        return this.OooO0oO;
    }

    public final int OooO0o() {
        return this.OooO0o;
    }

    public final int OooO0o0() {
        return this.OooO;
    }

    public final int OooO0oO() {
        return this.OooO0oo;
    }

    public final fm OooO0oo() {
        return this.OooO0O0;
    }
}
