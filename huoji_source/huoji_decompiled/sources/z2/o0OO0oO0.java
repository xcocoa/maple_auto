package z2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import z2.o0O0oo00;

/* JADX INFO: loaded from: classes.dex */
public class o0OO0oO0 implements o0O0oo00<InputStream> {
    private static final String Ooooo0o = "MediaStoreThumbFetcher";
    private final Uri OoooOoO;
    private final o0OOO00 OoooOoo;
    private InputStream Ooooo00;

    public static class OooO00o implements o0OO {
        private static final String[] OooO0O0 = {"_data"};
        private static final String OooO0OO = "kind = 1 AND image_id = ?";
        private final ContentResolver OooO00o;

        public OooO00o(ContentResolver contentResolver) {
            this.OooO00o = contentResolver;
        }

        @Override // z2.o0OO
        public Cursor OooO00o(Uri uri) {
            return this.OooO00o.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, OooO0O0, OooO0OO, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public static class OooO0O0 implements o0OO {
        private static final String[] OooO0O0 = {"_data"};
        private static final String OooO0OO = "kind = 1 AND video_id = ?";
        private final ContentResolver OooO00o;

        public OooO0O0(ContentResolver contentResolver) {
            this.OooO00o = contentResolver;
        }

        @Override // z2.o0OO
        public Cursor OooO00o(Uri uri) {
            return this.OooO00o.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, OooO0O0, OooO0OO, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public o0OO0oO0(Uri uri, o0OOO00 o0ooo00) {
        this.OoooOoO = uri;
        this.OoooOoo = o0ooo00;
    }

    private static o0OO0oO0 OooO0OO(Context context, Uri uri, o0OO o0oo) {
        return new o0OO0oO0(uri, new o0OOO00(o00Oo00.OooO0Oo(context).OooOOO0().OooO0oO(), o0oo, o00Oo00.OooO0Oo(context).OooO0o(), context.getContentResolver()));
    }

    public static o0OO0oO0 OooO0o(Context context, Uri uri) {
        return OooO0OO(context, uri, new OooO00o(context.getContentResolver()));
    }

    public static o0OO0oO0 OooO0oO(Context context, Uri uri) {
        return OooO0OO(context, uri, new OooO0O0(context.getContentResolver()));
    }

    private InputStream OooO0oo() throws FileNotFoundException {
        InputStream inputStreamOooO0Oo = this.OoooOoo.OooO0Oo(this.OoooOoO);
        int iOooO00o = inputStreamOooO0Oo != null ? this.OoooOoo.OooO00o(this.OoooOoO) : -1;
        return iOooO00o != -1 ? new o0OO000o(inputStreamOooO0Oo, iOooO00o) : inputStreamOooO0Oo;
    }

    @Override // z2.o0O0oo00
    @NonNull
    public Class<InputStream> OooO00o() {
        return InputStream.class;
    }

    @Override // z2.o0O0oo00
    public void OooO0O0() {
        InputStream inputStream = this.Ooooo00;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // z2.o0O0oo00
    @NonNull
    public DataSource OooO0Oo() {
        return DataSource.LOCAL;
    }

    @Override // z2.o0O0oo00
    public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super InputStream> oooO00o) {
        try {
            InputStream inputStreamOooO0oo = OooO0oo();
            this.Ooooo00 = inputStreamOooO0oo;
            oooO00o.OooO0o(inputStreamOooO0oo);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable(Ooooo0o, 3)) {
                Log.d(Ooooo0o, "Failed to find thumbnail file", e);
            }
            oooO00o.OooO0OO(e);
        }
    }

    @Override // z2.o0O0oo00
    public void cancel() {
    }
}
