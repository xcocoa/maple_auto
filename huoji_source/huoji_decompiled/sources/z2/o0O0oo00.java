package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* JADX INFO: loaded from: classes.dex */
public interface o0O0oo00<T> {

    public interface OooO00o<T> {
        void OooO0OO(@NonNull Exception exc);

        void OooO0o(@Nullable T t);
    }

    @NonNull
    Class<T> OooO00o();

    void OooO0O0();

    @NonNull
    DataSource OooO0Oo();

    void OooO0o0(@NonNull Priority priority, @NonNull OooO00o<? super T> oooO00o);

    void cancel();
}
