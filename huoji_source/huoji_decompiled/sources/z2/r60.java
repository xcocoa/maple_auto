package z2;

/* JADX INFO: loaded from: classes2.dex */
public class r60 extends p60 {
    public Object OooO00o;

    public r60(double d) {
        this.OooO00o = Double.valueOf(d);
    }

    public r60(float f) {
        this.OooO00o = Float.valueOf(f);
    }

    @Override // z2.p60
    public void OooO0OO(Object obj, Object obj2) {
        if (obj instanceof Double) {
            f50.OooOo00(((Double) obj).doubleValue(), ((Double) obj2).doubleValue(), ((Double) this.OooO00o).doubleValue());
        } else {
            f50.OooOo0(((Float) obj).floatValue(), ((Float) obj2).floatValue(), ((Float) this.OooO00o).floatValue());
        }
    }
}
