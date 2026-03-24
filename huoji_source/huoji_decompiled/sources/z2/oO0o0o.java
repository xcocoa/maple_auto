package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.util.List;
import z2.o0O0oo00;
import z2.o0OOo000;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO0o0o implements o0OOo000, o0O0oo00.OooO00o<Object> {
    private final o0OOo000.OooO00o OoooOoO;
    private final o0o0000<?> OoooOoo;
    private int Ooooo00;
    private int Ooooo0o = -1;
    private o0O0O0Oo OooooO0;
    private List<oO0o0000<File, ?>> OooooOO;
    private int OooooOo;
    private File Oooooo;
    private volatile oO0o0000.OooO00o<?> Oooooo0;
    private oO0OoOO0 OoooooO;

    public oO0o0o(o0o0000<?> o0o0000Var, o0OOo000.OooO00o oooO00o) {
        this.OoooOoo = o0o0000Var;
        this.OoooOoO = oooO00o;
    }

    private boolean OooO00o() {
        return this.OooooOo < this.OooooOO.size();
    }

    @Override // z2.o0OOo000
    public boolean OooO0O0() {
        List<o0O0O0Oo> listOooO0OO = this.OoooOoo.OooO0OO();
        boolean z = false;
        if (listOooO0OO.isEmpty()) {
            return false;
        }
        List<Class<?>> listOooOOO0 = this.OoooOoo.OooOOO0();
        if (listOooOOO0.isEmpty()) {
            if (File.class.equals(this.OoooOoo.OooOOo0())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.OoooOoo.OooO() + " to " + this.OoooOoo.OooOOo0());
        }
        while (true) {
            if (this.OooooOO != null && OooO00o()) {
                this.Oooooo0 = null;
                while (!z && OooO00o()) {
                    List<oO0o0000<File, ?>> list = this.OooooOO;
                    int i = this.OooooOo;
                    this.OooooOo = i + 1;
                    this.Oooooo0 = list.get(i).OooO0O0(this.Oooooo, this.OoooOoo.OooOOoo(), this.OoooOoo.OooO0o(), this.OoooOoo.OooOO0O());
                    if (this.Oooooo0 != null && this.OoooOoo.OooOo00(this.Oooooo0.OooO0OO.OooO00o())) {
                        this.Oooooo0.OooO0OO.OooO0o0(this.OoooOoo.OooOO0o(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.Ooooo0o + 1;
            this.Ooooo0o = i2;
            if (i2 >= listOooOOO0.size()) {
                int i3 = this.Ooooo00 + 1;
                this.Ooooo00 = i3;
                if (i3 >= listOooO0OO.size()) {
                    return false;
                }
                this.Ooooo0o = 0;
            }
            o0O0O0Oo o0o0o0oo = listOooO0OO.get(this.Ooooo00);
            Class<?> cls = listOooOOO0.get(this.Ooooo0o);
            this.OoooooO = new oO0OoOO0(this.OoooOoo.OooO0O0(), o0o0o0oo, this.OoooOoo.OooOOOO(), this.OoooOoo.OooOOoo(), this.OoooOoo.OooO0o(), this.OoooOoo.OooOOo(cls), cls, this.OoooOoo.OooOO0O());
            File fileOooO0O0 = this.OoooOoo.OooO0Oo().OooO0O0(this.OoooooO);
            this.Oooooo = fileOooO0O0;
            if (fileOooO0O0 != null) {
                this.OooooO0 = o0o0o0oo;
                this.OooooOO = this.OoooOoo.OooOO0(fileOooO0O0);
                this.OooooOo = 0;
            }
        }
    }

    @Override // z2.o0O0oo00.OooO00o
    public void OooO0OO(@NonNull Exception exc) {
        this.OoooOoO.OooO00o(this.OoooooO, exc, this.Oooooo0.OooO0OO, DataSource.RESOURCE_DISK_CACHE);
    }

    @Override // z2.o0O0oo00.OooO00o
    public void OooO0o(Object obj) {
        this.OoooOoO.OooO0o0(this.OooooO0, obj, this.Oooooo0.OooO0OO, DataSource.RESOURCE_DISK_CACHE, this.OoooooO);
    }

    @Override // z2.o0OOo000
    public void cancel() {
        oO0o0000.OooO00o<?> oooO00o = this.Oooooo0;
        if (oooO00o != null) {
            oooO00o.OooO0OO.cancel();
        }
    }
}
