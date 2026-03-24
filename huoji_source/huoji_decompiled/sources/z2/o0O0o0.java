package z2;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import z2.o0O0oo00;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0O0o0<T> implements o0O0oo00<T> {
    private static final String Ooooo0o = "AssetPathFetcher";
    private final String OoooOoO;
    private final AssetManager OoooOoo;
    private T Ooooo00;

    public o0O0o0(AssetManager assetManager, String str) {
        this.OoooOoo = assetManager;
        this.OoooOoO = str;
    }

    @Override // z2.o0O0oo00
    public void OooO0O0() {
        T t = this.Ooooo00;
        if (t == null) {
            return;
        }
        try {
            OooO0OO(t);
        } catch (IOException unused) {
        }
    }

    public abstract void OooO0OO(T t) throws IOException;

    @Override // z2.o0O0oo00
    @NonNull
    public DataSource OooO0Oo() {
        return DataSource.LOCAL;
    }

    public abstract T OooO0o(AssetManager assetManager, String str) throws IOException;

    @Override // z2.o0O0oo00
    public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super T> oooO00o) {
        try {
            T tOooO0o = OooO0o(this.OoooOoo, this.OoooOoO);
            this.Ooooo00 = tOooO0o;
            oooO00o.OooO0o(tOooO0o);
        } catch (IOException e) {
            if (Log.isLoggable(Ooooo0o, 3)) {
                Log.d(Ooooo0o, "Failed to load data from asset manager", e);
            }
            oooO00o.OooO0OO(e);
        }
    }

    @Override // z2.o0O0oo00
    public void cancel() {
    }
}
