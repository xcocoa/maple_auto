package z2;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public final class oO0OO00 implements oO0o0000<Uri, File> {
    private final Context OooO00o;

    public static final class OooO00o implements oO0oO000<Uri, File> {
        private final Context OooO00o;

        public OooO00o(Context context) {
            this.OooO00o = context;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, File> OooO0OO(oOO00000 ooo00000) {
            return new oO0OO00(this.OooO00o);
        }
    }

    public static class OooO0O0 implements o0O0oo00<File> {
        private static final String[] Ooooo00 = {"_data"};
        private final Context OoooOoO;
        private final Uri OoooOoo;

        public OooO0O0(Context context, Uri uri) {
            this.OoooOoO = context;
            this.OoooOoo = uri;
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<File> OooO00o() {
            return File.class;
        }

        @Override // z2.o0O0oo00
        public void OooO0O0() {
        }

        @Override // z2.o0O0oo00
        @NonNull
        public DataSource OooO0Oo() {
            return DataSource.LOCAL;
        }

        @Override // z2.o0O0oo00
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super File> oooO00o) {
            Cursor cursorQuery = this.OoooOoO.getContentResolver().query(this.OoooOoo, Ooooo00, null, null, null);
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    cursorQuery.close();
                }
            }
            if (!TextUtils.isEmpty(string)) {
                oooO00o.OooO0o(new File(string));
                return;
            }
            oooO00o.OooO0OO(new FileNotFoundException("Failed to find file path for: " + this.OoooOoo));
        }

        @Override // z2.o0O0oo00
        public void cancel() {
        }
    }

    public oO0OO00(Context context) {
        this.OooO00o = context;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<File> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(uri), new OooO0O0(this.OooO00o, uri));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri) {
        return o0OO0o.OooO0O0(uri);
    }
}
