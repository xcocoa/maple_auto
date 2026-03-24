package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO<Model, Data> implements oO0o0000<Model, Data> {
    private final List<oO0o0000<Model, Data>> OooO00o;
    private final Pools.Pool<List<Throwable>> OooO0O0;

    public static class OooO00o<Data> implements o0O0oo00<Data>, o0O0oo00.OooO00o<Data> {
        private final List<o0O0oo00<Data>> OoooOoO;
        private final Pools.Pool<List<Throwable>> OoooOoo;
        private int Ooooo00;
        private Priority Ooooo0o;
        private o0O0oo00.OooO00o<? super Data> OooooO0;

        @Nullable
        private List<Throwable> OooooOO;
        private boolean OooooOo;

        public OooO00o(@NonNull List<o0O0oo00<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.OoooOoo = pool;
            r2.OooO0OO(list);
            this.OoooOoO = list;
            this.Ooooo00 = 0;
        }

        private void OooO0oO() {
            if (this.OooooOo) {
                return;
            }
            if (this.Ooooo00 < this.OoooOoO.size() - 1) {
                this.Ooooo00++;
                OooO0o0(this.Ooooo0o, this.OooooO0);
            } else {
                r2.OooO0Oo(this.OooooOO);
                this.OooooO0.OooO0OO(new GlideException("Fetch failed", new ArrayList(this.OooooOO)));
            }
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<Data> OooO00o() {
            return this.OoooOoO.get(0).OooO00o();
        }

        @Override // z2.o0O0oo00
        public void OooO0O0() {
            List<Throwable> list = this.OooooOO;
            if (list != null) {
                this.OoooOoo.release(list);
            }
            this.OooooOO = null;
            Iterator<o0O0oo00<Data>> it = this.OoooOoO.iterator();
            while (it.hasNext()) {
                it.next().OooO0O0();
            }
        }

        @Override // z2.o0O0oo00.OooO00o
        public void OooO0OO(@NonNull Exception exc) {
            ((List) r2.OooO0Oo(this.OooooOO)).add(exc);
            OooO0oO();
        }

        @Override // z2.o0O0oo00
        @NonNull
        public DataSource OooO0Oo() {
            return this.OoooOoO.get(0).OooO0Oo();
        }

        @Override // z2.o0O0oo00.OooO00o
        public void OooO0o(@Nullable Data data) {
            if (data != null) {
                this.OooooO0.OooO0o(data);
            } else {
                OooO0oO();
            }
        }

        @Override // z2.o0O0oo00
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super Data> oooO00o) {
            this.Ooooo0o = priority;
            this.OooooO0 = oooO00o;
            this.OooooOO = this.OoooOoo.acquire();
            this.OoooOoO.get(this.Ooooo00).OooO0o0(priority, this);
            if (this.OooooOo) {
                cancel();
            }
        }

        @Override // z2.o0O0oo00
        public void cancel() {
            this.OooooOo = true;
            Iterator<o0O0oo00<Data>> it = this.OoooOoO.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    public oO(@NonNull List<oO0o0000<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.OooO00o = list;
        this.OooO0O0 = pool;
    }

    @Override // z2.oO0o0000
    public boolean OooO00o(@NonNull Model model) {
        Iterator<oO0o0000<Model, Data>> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            if (it.next().OooO00o(model)) {
                return true;
            }
        }
        return false;
    }

    @Override // z2.oO0o0000
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull Model model, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        oO0o0000.OooO00o<Data> oooO00oOooO0O0;
        int size = this.OooO00o.size();
        ArrayList arrayList = new ArrayList(size);
        o0O0O0Oo o0o0o0oo = null;
        for (int i3 = 0; i3 < size; i3++) {
            oO0o0000<Model, Data> oo0o0000 = this.OooO00o.get(i3);
            if (oo0o0000.OooO00o(model) && (oooO00oOooO0O0 = oo0o0000.OooO0O0(model, i, i2, o0o0ooo0)) != null) {
                o0o0o0oo = oooO00oOooO0O0.OooO00o;
                arrayList.add(oooO00oOooO0O0.OooO0OO);
            }
        }
        if (arrayList.isEmpty() || o0o0o0oo == null) {
            return null;
        }
        return new oO0o0000.OooO00o<>(o0o0o0oo, new OooO00o(arrayList, this.OooO0O0));
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.OooO00o.toArray()) + MessageFormatter.DELIM_STOP;
    }
}
