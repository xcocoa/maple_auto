package z2;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g1 {
    private final List<String> OooO00o = new ArrayList();
    private final Map<String, List<OooO00o<?, ?>>> OooO0O0 = new HashMap();

    public static class OooO00o<T, R> {
        private final Class<T> OooO00o;
        public final Class<R> OooO0O0;
        public final o0O0OOOo<T, R> OooO0OO;

        public OooO00o(@NonNull Class<T> cls, @NonNull Class<R> cls2, o0O0OOOo<T, R> o0o0oooo) {
            this.OooO00o = cls;
            this.OooO0O0 = cls2;
            this.OooO0OO = o0o0oooo;
        }

        public boolean OooO00o(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.OooO00o.isAssignableFrom(cls) && cls2.isAssignableFrom(this.OooO0O0);
        }
    }

    @NonNull
    private synchronized List<OooO00o<?, ?>> OooO0OO(@NonNull String str) {
        List<OooO00o<?, ?>> arrayList;
        if (!this.OooO00o.contains(str)) {
            this.OooO00o.add(str);
        }
        arrayList = this.OooO0O0.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.OooO0O0.put(str, arrayList);
        }
        return arrayList;
    }

    public synchronized <T, R> void OooO00o(@NonNull String str, @NonNull o0O0OOOo<T, R> o0o0oooo, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        OooO0OO(str).add(new OooO00o<>(cls, cls2, o0o0oooo));
    }

    @NonNull
    public synchronized <T, R> List<o0O0OOOo<T, R>> OooO0O0(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            List<OooO00o<?, ?>> list = this.OooO0O0.get(it.next());
            if (list != null) {
                for (OooO00o<?, ?> oooO00o : list) {
                    if (oooO00o.OooO00o(cls, cls2)) {
                        arrayList.add(oooO00o.OooO0OO);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> OooO0Oo(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            List<OooO00o<?, ?>> list = this.OooO0O0.get(it.next());
            if (list != null) {
                for (OooO00o<?, ?> oooO00o : list) {
                    if (oooO00o.OooO00o(cls, cls2) && !arrayList.contains(oooO00o.OooO0O0)) {
                        arrayList.add(oooO00o.OooO0O0);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void OooO0o(@NonNull List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.OooO00o);
        this.OooO00o.clear();
        this.OooO00o.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.OooO00o.add(str);
            }
        }
    }

    public synchronized <T, R> void OooO0o0(@NonNull String str, @NonNull o0O0OOOo<T, R> o0o0oooo, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        OooO0OO(str).add(0, new OooO00o<>(cls, cls2, o0o0oooo));
    }
}
