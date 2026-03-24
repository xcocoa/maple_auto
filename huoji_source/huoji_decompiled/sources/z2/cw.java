package z2;

/* JADX INFO: loaded from: classes2.dex */
public class cw {
    private static final String OooO0o = "...";
    private static final String OooO0oO = "]";
    private static final String OooO0oo = "[";
    private int OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private int OooO0Oo;
    private int OooO0o0;

    public cw(int i, String str, String str2) {
        this.OooO00o = i;
        this.OooO0O0 = str;
        this.OooO0OO = str2;
    }

    private boolean OooO00o() {
        return this.OooO0O0.equals(this.OooO0OO);
    }

    private String OooO0OO(String str) {
        String str2 = OooO0oo + str.substring(this.OooO0Oo, (str.length() - this.OooO0o0) + 1) + OooO0oO;
        if (this.OooO0Oo > 0) {
            str2 = OooO0Oo() + str2;
        }
        if (this.OooO0o0 <= 0) {
            return str2;
        }
        return str2 + OooO0o0();
    }

    private String OooO0Oo() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.OooO0Oo > this.OooO00o ? OooO0o : "");
        sb.append(this.OooO0O0.substring(Math.max(0, this.OooO0Oo - this.OooO00o), this.OooO0Oo));
        return sb.toString();
    }

    private void OooO0o() {
        this.OooO0Oo = 0;
        int iMin = Math.min(this.OooO0O0.length(), this.OooO0OO.length());
        while (true) {
            int i = this.OooO0Oo;
            if (i >= iMin || this.OooO0O0.charAt(i) != this.OooO0OO.charAt(this.OooO0Oo)) {
                return;
            } else {
                this.OooO0Oo++;
            }
        }
    }

    private String OooO0o0() {
        int iMin = Math.min((this.OooO0O0.length() - this.OooO0o0) + 1 + this.OooO00o, this.OooO0O0.length());
        StringBuilder sb = new StringBuilder();
        String str = this.OooO0O0;
        sb.append(str.substring((str.length() - this.OooO0o0) + 1, iMin));
        sb.append((this.OooO0O0.length() - this.OooO0o0) + 1 < this.OooO0O0.length() - this.OooO00o ? OooO0o : "");
        return sb.toString();
    }

    private void OooO0oO() {
        int length = this.OooO0O0.length() - 1;
        int length2 = this.OooO0OO.length() - 1;
        while (true) {
            int i = this.OooO0Oo;
            if (length2 < i || length < i || this.OooO0O0.charAt(length) != this.OooO0OO.charAt(length2)) {
                break;
            }
            length2--;
            length--;
        }
        this.OooO0o0 = this.OooO0O0.length() - length;
    }

    public String OooO0O0(String str) {
        String strOooO0OO;
        String strOooO0OO2;
        if (this.OooO0O0 == null || this.OooO0OO == null || OooO00o()) {
            strOooO0OO = this.OooO0O0;
            strOooO0OO2 = this.OooO0OO;
        } else {
            OooO0o();
            OooO0oO();
            strOooO0OO = OooO0OO(this.OooO0O0);
            strOooO0OO2 = OooO0OO(this.OooO0OO);
        }
        return bw.Oooo0oO(str, strOooO0OO, strOooO0OO2);
    }
}
