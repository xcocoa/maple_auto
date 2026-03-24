package z2;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public interface o0O0O0Oo {
    public static final String OooO00o = "UTF-8";
    public static final Charset OooO0O0 = Charset.forName("UTF-8");

    void OooO00o(@NonNull MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
