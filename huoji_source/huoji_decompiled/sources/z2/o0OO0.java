package z2;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import z2.o0O0oo00;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0OO0<T> implements o0O0oo00<T> {
    private static final String Ooooo0o = "LocalUriFetcher";
    private final Uri OoooOoO;
    private final ContentResolver OoooOoo;
    private T Ooooo00;

    public o0OO0(ContentResolver contentResolver, Uri uri) {
        this.OoooOoo = contentResolver;
        this.OoooOoO = uri;
    }

    @Override // z2.o0O0oo00
    public void OooO0O0() {
        T t = this.Ooooo00;
        if (t != null) {
            try {
                OooO0OO(t);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void OooO0OO(T t) throws IOException;

    @Override // z2.o0O0oo00
    @NonNull
    public DataSource OooO0Oo() {
        return DataSource.LOCAL;
    }

    public abstract T OooO0o(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // z2.o0O0oo00
    public final void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super T> oooO00o) {
        try {
            T tOooO0o = OooO0o(this.OoooOoO, this.OoooOoo);
            this.Ooooo00 = tOooO0o;
            oooO00o.OooO0o(tOooO0o);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable(Ooooo0o, 3)) {
                Log.d(Ooooo0o, "Failed to open Uri", e);
            }
            oooO00o.OooO0OO(e);
        }
    }

    @Override // z2.o0O0oo00
    public void cancel() {
    }
}
