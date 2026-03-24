package z2;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.litepal.exceptions.InvalidAttributesException;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public final class rb0 {
    private static rb0 OooO0oO;
    private int OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private String OooO0Oo;
    private String OooO0o;
    private List<String> OooO0o0;

    private rb0() {
    }

    public static void OooO0OO() {
        OooO0oO = null;
    }

    public static rb0 OooO0oo() {
        if (OooO0oO == null) {
            synchronized (rb0.class) {
                if (OooO0oO == null) {
                    OooO0oO = new rb0();
                    OooOO0O();
                }
            }
        }
        return OooO0oO;
    }

    private static void OooOO0O() {
        if (pc0.OooO()) {
            sb0 sb0VarOooO0O0 = ub0.OooO0O0();
            OooO0oO.OooOOO(sb0VarOooO0O0.OooO0Oo());
            OooO0oO.OooOOo0(sb0VarOooO0O0.OooO0o());
            OooO0oO.OooOOO0(sb0VarOooO0O0.OooO0OO());
            OooO0oO.OooOO0o(sb0VarOooO0O0.OooO0O0());
            OooO0oO.OooOOOo(sb0VarOooO0O0.OooO0o0());
        }
    }

    public String OooO() {
        return this.OooO0Oo;
    }

    public void OooO00o(String str) {
        OooO0o0().add(str);
    }

    public void OooO0O0() {
        if (TextUtils.isEmpty(this.OooO0O0)) {
            OooOO0O();
            if (TextUtils.isEmpty(this.OooO0O0)) {
                throw new InvalidAttributesException(InvalidAttributesException.DBNAME_IS_EMPTY_OR_NOT_DEFINED);
            }
        }
        if (!this.OooO0O0.endsWith(qc0.OooO00o.OooO00o)) {
            this.OooO0O0 += qc0.OooO00o.OooO00o;
        }
        int i = this.OooO00o;
        if (i < 1) {
            throw new InvalidAttributesException(InvalidAttributesException.VERSION_OF_DATABASE_LESS_THAN_ONE);
        }
        if (i < tc0.OooO00o(this.OooO0o)) {
            throw new InvalidAttributesException(InvalidAttributesException.VERSION_IS_EARLIER_THAN_CURRENT);
        }
        if (TextUtils.isEmpty(this.OooO0OO)) {
            this.OooO0OO = qc0.OooO00o.OooO0OO;
            return;
        }
        if (this.OooO0OO.equals(qc0.OooO00o.OooO0O0) || this.OooO0OO.equals(qc0.OooO00o.OooO0OO) || this.OooO0OO.equals(qc0.OooO00o.OooO0Oo)) {
            return;
        }
        throw new InvalidAttributesException(this.OooO0OO + InvalidAttributesException.CASES_VALUE_IS_INVALID);
    }

    public String OooO0Oo() {
        return this.OooO0OO;
    }

    public String OooO0o() {
        return this.OooO0O0;
    }

    public List<String> OooO0o0() {
        List arrayList;
        List<String> list = this.OooO0o0;
        if (list != null) {
            if (list.isEmpty()) {
                arrayList = this.OooO0o0;
            }
            return this.OooO0o0;
        }
        arrayList = new ArrayList();
        this.OooO0o0 = arrayList;
        arrayList.add("org.litepal.model.Table_Schema");
        return this.OooO0o0;
    }

    public String OooO0oO() {
        return this.OooO0o;
    }

    public int OooOO0() {
        return this.OooO00o;
    }

    public void OooOO0o(String str) {
        this.OooO0OO = str;
    }

    public void OooOOO(String str) {
        this.OooO0O0 = str;
    }

    public void OooOOO0(List<String> list) {
        this.OooO0o0 = list;
    }

    public void OooOOOO(String str) {
        this.OooO0o = str;
    }

    public void OooOOOo(String str) {
        this.OooO0Oo = str;
    }

    public void OooOOo0(int i) {
        this.OooO00o = i;
    }
}
