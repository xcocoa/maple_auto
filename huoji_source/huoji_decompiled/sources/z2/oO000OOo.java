package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import java.util.Collections;
import java.util.List;
import z2.o0O0oo00;
import z2.o0OOo000;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO000OOo implements o0OOo000, o0O0oo00.OooO00o<Object>, o0OOo000.OooO00o {
    private static final String Oooooo0 = "SourceGenerator";
    private final o0o0000<?> OoooOoO;
    private final o0OOo000.OooO00o OoooOoo;
    private int Ooooo00;
    private o0OOO0OO Ooooo0o;
    private Object OooooO0;
    private volatile oO0o0000.OooO00o<?> OooooOO;
    private o0OOOO00 OooooOo;

    public oO000OOo(o0o0000<?> o0o0000Var, o0OOo000.OooO00o oooO00o) {
        this.OoooOoO = o0o0000Var;
        this.OoooOoo = oooO00o;
    }

    private void OooO0oO(Object obj) {
        long jOooO0O0 = n2.OooO0O0();
        try {
            o0oO0O0o<X> o0oo0o0oOooOOOo = this.OoooOoO.OooOOOo(obj);
            o0OOOO0o o0oooo0o = new o0OOOO0o(o0oo0o0oOooOOOo, obj, this.OoooOoO.OooOO0O());
            this.OooooOo = new o0OOOO00(this.OooooOO.OooO00o, this.OoooOoO.OooOOOO());
            this.OoooOoO.OooO0Oo().OooO00o(this.OooooOo, o0oooo0o);
            if (Log.isLoggable(Oooooo0, 2)) {
                Log.v(Oooooo0, "Finished encoding source to cache, key: " + this.OooooOo + ", data: " + obj + ", encoder: " + o0oo0o0oOooOOOo + ", duration: " + n2.OooO00o(jOooO0O0));
            }
            this.OooooOO.OooO0OO.OooO0O0();
            this.Ooooo0o = new o0OOO0OO(Collections.singletonList(this.OooooOO.OooO00o), this.OoooOoO, this);
        } catch (Throwable th) {
            this.OooooOO.OooO0OO.OooO0O0();
            throw th;
        }
    }

    private boolean OooO0oo() {
        return this.Ooooo00 < this.OoooOoO.OooO0oO().size();
    }

    @Override // z2.o0OOo000.OooO00o
    public void OooO00o(o0O0O0Oo o0o0o0oo, Exception exc, o0O0oo00<?> o0o0oo00, DataSource dataSource) {
        this.OoooOoo.OooO00o(o0o0o0oo, exc, o0o0oo00, this.OooooOO.OooO0OO.OooO0Oo());
    }

    @Override // z2.o0OOo000
    public boolean OooO0O0() {
        Object obj = this.OooooO0;
        if (obj != null) {
            this.OooooO0 = null;
            OooO0oO(obj);
        }
        o0OOO0OO o0ooo0oo = this.Ooooo0o;
        if (o0ooo0oo != null && o0ooo0oo.OooO0O0()) {
            return true;
        }
        this.Ooooo0o = null;
        this.OooooOO = null;
        boolean z = false;
        while (!z && OooO0oo()) {
            List<oO0o0000.OooO00o<?>> listOooO0oO = this.OoooOoO.OooO0oO();
            int i = this.Ooooo00;
            this.Ooooo00 = i + 1;
            this.OooooOO = listOooO0oO.get(i);
            if (this.OooooOO != null && (this.OoooOoO.OooO0o0().OooO0OO(this.OooooOO.OooO0OO.OooO0Oo()) || this.OoooOoO.OooOo00(this.OooooOO.OooO0OO.OooO00o()))) {
                this.OooooOO.OooO0OO.OooO0o0(this.OoooOoO.OooOO0o(), this);
                z = true;
            }
        }
        return z;
    }

    @Override // z2.o0O0oo00.OooO00o
    public void OooO0OO(@NonNull Exception exc) {
        this.OoooOoo.OooO00o(this.OooooOo, exc, this.OooooOO.OooO0OO, this.OooooOO.OooO0OO.OooO0Oo());
    }

    @Override // z2.o0OOo000.OooO00o
    public void OooO0Oo() {
        throw new UnsupportedOperationException();
    }

    @Override // z2.o0O0oo00.OooO00o
    public void OooO0o(Object obj) {
        o0oo0000 o0oo0000VarOooO0o0 = this.OoooOoO.OooO0o0();
        if (obj == null || !o0oo0000VarOooO0o0.OooO0OO(this.OooooOO.OooO0OO.OooO0Oo())) {
            this.OoooOoo.OooO0o0(this.OooooOO.OooO00o, obj, this.OooooOO.OooO0OO, this.OooooOO.OooO0OO.OooO0Oo(), this.OooooOo);
        } else {
            this.OooooO0 = obj;
            this.OoooOoo.OooO0Oo();
        }
    }

    @Override // z2.o0OOo000.OooO00o
    public void OooO0o0(o0O0O0Oo o0o0o0oo, Object obj, o0O0oo00<?> o0o0oo00, DataSource dataSource, o0O0O0Oo o0o0o0oo2) {
        this.OoooOoo.OooO0o0(o0o0o0oo, obj, o0o0oo00, this.OooooOO.OooO0OO.OooO0Oo(), o0o0o0oo);
    }

    @Override // z2.o0OOo000
    public void cancel() {
        oO0o0000.OooO00o<?> oooO00o = this.OooooOO;
        if (oooO00o != null) {
            oooO00o.OooO0OO.cancel();
        }
    }
}
