package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class jr extends nr {
    public jr(Cdo cdo) {
        super(cdo);
    }

    @Override // z2.qr
    public final int OooO(int i) {
        return i < 10000 ? i : i - 10000;
    }

    @Override // z2.qr
    public final void OooO0oo(StringBuilder sb, int i) {
        sb.append(i < 10000 ? "(3202)" : "(3203)");
    }
}
