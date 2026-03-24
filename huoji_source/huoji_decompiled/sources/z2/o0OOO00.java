package z2;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class o0OOO00 {
    private static final String OooO0o = "ThumbStreamOpener";
    private static final o0OO0o00 OooO0oO = new o0OO0o00();
    private final o0OO0o00 OooO00o;
    private final o0OO OooO0O0;
    private final oO0OOo0o OooO0OO;
    private final ContentResolver OooO0Oo;
    private final List<ImageHeaderParser> OooO0o0;

    public o0OOO00(List<ImageHeaderParser> list, o0OO0o00 o0oo0o00, o0OO o0oo, oO0OOo0o oo0ooo0o, ContentResolver contentResolver) {
        this.OooO00o = o0oo0o00;
        this.OooO0O0 = o0oo;
        this.OooO0OO = oo0ooo0o;
        this.OooO0Oo = contentResolver;
        this.OooO0o0 = list;
    }

    public o0OOO00(List<ImageHeaderParser> list, o0OO o0oo, oO0OOo0o oo0ooo0o, ContentResolver contentResolver) {
        this(list, OooO0oO, o0oo, oo0ooo0o, contentResolver);
    }

    @Nullable
    private String OooO0O0(@NonNull Uri uri) {
        Cursor cursorOooO00o = this.OooO0O0.OooO00o(uri);
        if (cursorOooO00o != null) {
            try {
                if (cursorOooO00o.moveToFirst()) {
                    return cursorOooO00o.getString(0);
                }
            } finally {
                if (cursorOooO00o != null) {
                    cursorOooO00o.close();
                }
            }
        }
        if (cursorOooO00o != null) {
            cursorOooO00o.close();
        }
        return null;
    }

    private boolean OooO0OO(File file) {
        return this.OooO00o.OooO00o(file) && 0 < this.OooO00o.OooO0OO(file);
    }

    public int OooO00o(Uri uri) {
        InputStream inputStreamOpenInputStream = null;
        try {
            try {
                inputStreamOpenInputStream = this.OooO0Oo.openInputStream(uri);
                int iOooO00o = o0O0oo0o.OooO00o(this.OooO0o0, inputStreamOpenInputStream, this.OooO0OO);
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return iOooO00o;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | NullPointerException e) {
            if (Log.isLoggable(OooO0o, 3)) {
                Log.d(OooO0o, "Failed to open uri: " + uri, e);
            }
            if (inputStreamOpenInputStream == null) {
                return -1;
            }
            try {
                inputStreamOpenInputStream.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        }
    }

    public InputStream OooO0Oo(Uri uri) throws FileNotFoundException {
        String strOooO0O0 = OooO0O0(uri);
        if (TextUtils.isEmpty(strOooO0O0)) {
            return null;
        }
        File fileOooO0O0 = this.OooO00o.OooO0O0(strOooO0O0);
        if (!OooO0OO(fileOooO0O0)) {
            return null;
        }
        Uri uriFromFile = Uri.fromFile(fileOooO0O0);
        try {
            return this.OooO0Oo.openInputStream(uriFromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e));
        }
    }
}
