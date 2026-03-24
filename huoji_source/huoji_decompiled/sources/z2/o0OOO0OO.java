package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.util.List;
import z2.o0O0oo00;
import z2.o0OOo000;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class o0OOO0OO implements o0OOo000, o0O0oo00.OooO00o<Object> {
    private final List<o0O0O0Oo> OoooOoO;
    private final o0o0000<?> OoooOoo;
    private final o0OOo000.OooO00o Ooooo00;
    private int Ooooo0o;
    private o0O0O0Oo OooooO0;
    private List<oO0o0000<File, ?>> OooooOO;
    private int OooooOo;
    private File Oooooo;
    private volatile oO0o0000.OooO00o<?> Oooooo0;

    public o0OOO0OO(List<o0O0O0Oo> list, o0o0000<?> o0o0000Var, o0OOo000.OooO00o oooO00o) {
        this.Ooooo0o = -1;
        this.OoooOoO = list;
        this.OoooOoo = o0o0000Var;
        this.Ooooo00 = oooO00o;
    }

    public o0OOO0OO(o0o0000<?> o0o0000Var, o0OOo000.OooO00o oooO00o) {
        this(o0o0000Var.OooO0OO(), o0o0000Var, oooO00o);
    }

    private boolean OooO00o() {
        return this.OooooOo < this.OooooOO.size();
    }

    @Override // z2.o0OOo000
    public boolean OooO0O0() {
        while (true) {
            boolean z = false;
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
            if (i2 >= this.OoooOoO.size()) {
                return false;
            }
            o0O0O0Oo o0o0o0oo = this.OoooOoO.get(this.Ooooo0o);
            File fileOooO0O0 = this.OoooOoo.OooO0Oo().OooO0O0(new o0OOOO00(o0o0o0oo, this.OoooOoo.OooOOOO()));
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
        this.Ooooo00.OooO00o(this.OooooO0, exc, this.Oooooo0.OooO0OO, DataSource.DATA_DISK_CACHE);
    }

    @Override // z2.o0O0oo00.OooO00o
    public void OooO0o(Object obj) {
        this.Ooooo00.OooO0o0(this.OooooO0, obj, this.Oooooo0.OooO0OO, DataSource.DATA_DISK_CACHE, this.OooooO0);
    }

    @Override // z2.o0OOo000
    public void cancel() {
        oO0o0000.OooO00o<?> oooO00o = this.Oooooo0;
        if (oooO00o != null) {
            oooO00o.OooO0OO.cancel();
        }
    }
}
