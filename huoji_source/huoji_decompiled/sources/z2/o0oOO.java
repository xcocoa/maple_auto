package z2;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import z2.oO00Oo0;
import z2.oOo0000O;
import z2.r0;

/* JADX INFO: loaded from: classes.dex */
public final class o0oOO {
    private oOo0000O OooO;
    private ooo0Oo0 OooO0O0;
    private oO000o00 OooO0OO;
    private oO0OOo0o OooO0Oo;
    private oO0 OooO0o;
    private oO0OO00o OooO0o0;
    private oO0 OooO0oO;
    private oO00Oo0.OooO00o OooO0oo;
    private j0 OooOO0;
    private oO0 OooOOO;

    @Nullable
    private r0.OooO0O0 OooOOO0;
    private boolean OooOOOO;

    @Nullable
    private List<o1<Object>> OooOOOo;
    private boolean OooOOo0;
    private final Map<Class<?>, o0O00000<?, ?>> OooO00o = new ArrayMap();
    private int OooOO0O = 4;
    private p1 OooOO0o = new p1();

    @NonNull
    public o0oOO OooO(@Nullable oO00Oo0.OooO00o oooO00o) {
        this.OooO0oo = oooO00o;
        return this;
    }

    @NonNull
    public o0oOO OooO00o(@NonNull o1<Object> o1Var) {
        if (this.OooOOOo == null) {
            this.OooOOOo = new ArrayList();
        }
        this.OooOOOo.add(o1Var);
        return this;
    }

    @NonNull
    public o00Oo00 OooO0O0(@NonNull Context context) {
        if (this.OooO0o == null) {
            this.OooO0o = oO0.OooO0oO();
        }
        if (this.OooO0oO == null) {
            this.OooO0oO = oO0.OooO0Oo();
        }
        if (this.OooOOO == null) {
            this.OooOOO = oO0.OooO0O0();
        }
        if (this.OooO == null) {
            this.OooO = new oOo0000O.OooO00o(context).OooO00o();
        }
        if (this.OooOO0 == null) {
            this.OooOO0 = new l0();
        }
        if (this.OooO0OO == null) {
            int iOooO0O0 = this.OooO.OooO0O0();
            if (iOooO0O0 > 0) {
                this.OooO0OO = new oO00OO0O(iOooO0O0);
            } else {
                this.OooO0OO = new oO0O0OoO();
            }
        }
        if (this.OooO0Oo == null) {
            this.OooO0Oo = new oO00O0oO(this.OooO.OooO00o());
        }
        if (this.OooO0o0 == null) {
            this.OooO0o0 = new oOo00ooO(this.OooO.OooO0Oo());
        }
        if (this.OooO0oo == null) {
            this.OooO0oo = new oOo00o0o(context);
        }
        if (this.OooO0O0 == null) {
            this.OooO0O0 = new ooo0Oo0(this.OooO0o0, this.OooO0oo, this.OooO0oO, this.OooO0o, oO0.OooOO0(), oO0.OooO0O0(), this.OooOOOO);
        }
        List<o1<Object>> list = this.OooOOOo;
        this.OooOOOo = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        return new o00Oo00(context, this.OooO0O0, this.OooO0o0, this.OooO0OO, this.OooO0Oo, new r0(this.OooOOO0), this.OooOO0, this.OooOO0O, this.OooOO0o.ooOO(), this.OooO00o, this.OooOOOo, this.OooOOo0);
    }

    @NonNull
    public o0oOO OooO0OO(@Nullable oO0 oo0) {
        this.OooOOO = oo0;
        return this;
    }

    @NonNull
    public o0oOO OooO0Oo(@Nullable oO0OOo0o oo0ooo0o) {
        this.OooO0Oo = oo0ooo0o;
        return this;
    }

    @NonNull
    public o0oOO OooO0o(@Nullable j0 j0Var) {
        this.OooOO0 = j0Var;
        return this;
    }

    @NonNull
    public o0oOO OooO0o0(@Nullable oO000o00 oo000o00) {
        this.OooO0OO = oo000o00;
        return this;
    }

    @NonNull
    public o0oOO OooO0oO(@Nullable p1 p1Var) {
        this.OooOO0o = p1Var;
        return this;
    }

    @NonNull
    public <T> o0oOO OooO0oo(@NonNull Class<T> cls, @Nullable o0O00000<?, T> o0o00000) {
        this.OooO00o.put(cls, o0o00000);
        return this;
    }

    @NonNull
    public o0oOO OooOO0(@Nullable oO0 oo0) {
        this.OooO0oO = oo0;
        return this;
    }

    public o0oOO OooOO0O(ooo0Oo0 ooo0oo0) {
        this.OooO0O0 = ooo0oo0;
        return this;
    }

    @NonNull
    public o0oOO OooOO0o(boolean z) {
        this.OooOOOO = z;
        return this;
    }

    public o0oOO OooOOO(boolean z) {
        this.OooOOo0 = z;
        return this;
    }

    @NonNull
    public o0oOO OooOOO0(int i) {
        if (i < 2 || i > 6) {
            throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
        }
        this.OooOO0O = i;
        return this;
    }

    @NonNull
    public o0oOO OooOOOO(@Nullable oO0OO00o oo0oo00o) {
        this.OooO0o0 = oo0oo00o;
        return this;
    }

    @NonNull
    public o0oOO OooOOOo(@NonNull oOo0000O.OooO00o oooO00o) {
        return OooOOo0(oooO00o.OooO00o());
    }

    public void OooOOo(@Nullable r0.OooO0O0 oooO0O0) {
        this.OooOOO0 = oooO0O0;
    }

    @NonNull
    public o0oOO OooOOo0(@Nullable oOo0000O ooo0000o) {
        this.OooO = ooo0000o;
        return this;
    }

    @Deprecated
    public o0oOO OooOOoo(@Nullable oO0 oo0) {
        return OooOo00(oo0);
    }

    @NonNull
    public o0oOO OooOo00(@Nullable oO0 oo0) {
        this.OooO0o = oo0;
        return this;
    }
}
