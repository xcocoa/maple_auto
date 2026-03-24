package z2;

import android.content.Context;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public abstract class o000Oo0 {
    private LinkedHashSet<o000OO0O<?, ?>> OoooOoO;

    public String OooO(String str) {
        return str;
    }

    public void OooO00o(o000OO0O<?, ?> o000oo0o, HttpURLConnection httpURLConnection) {
    }

    public void OooO0O0(o000OO0O<?, ?> o000oo0o, HttpRequest httpRequest) {
    }

    public abstract void OooO0OO();

    public synchronized void OooO0Oo(o000OO0O<?, ?> o000oo0o) {
        LinkedHashSet<o000OO0O<?, ?>> linkedHashSet = this.OoooOoO;
        if (linkedHashSet == null) {
            LinkedHashSet<o000OO0O<?, ?>> linkedHashSet2 = new LinkedHashSet<>();
            this.OoooOoO = linkedHashSet2;
            linkedHashSet2.add(o000oo0o);
            OooO0OO();
        } else {
            linkedHashSet.add(o000oo0o);
        }
    }

    public abstract boolean OooO0o(o000OO0O<?, ?> o000oo0o, o000O o000o);

    public abstract boolean OooO0o0();

    public synchronized void OooO0oO(Context context, int i, String str) {
        LinkedHashSet<o000OO0O<?, ?>> linkedHashSet = this.OoooOoO;
        if (linkedHashSet != null) {
            Iterator<o000OO0O<?, ?>> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                it.next().failure(i, str);
            }
            this.OoooOoO = null;
        }
    }

    public String OooO0oo(String str) {
        return str;
    }

    public abstract boolean OooOO0(o000OO0O<?, ?> o000oo0o);

    public synchronized void OooOO0O(Context context) {
        LinkedHashSet<o000OO0O<?, ?>> linkedHashSet = this.OoooOoO;
        if (linkedHashSet != null) {
            Iterator<o000OO0O<?, ?>> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                it.next().async(context);
            }
            this.OoooOoO = null;
        }
    }

    public void OooOO0o() {
    }
}
