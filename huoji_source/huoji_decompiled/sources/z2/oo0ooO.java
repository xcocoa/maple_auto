package z2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class oo0ooO extends o0OO0<ParcelFileDescriptor> {
    public oo0ooO(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // z2.o0O0oo00
    @NonNull
    public Class<ParcelFileDescriptor> OooO00o() {
        return ParcelFileDescriptor.class;
    }

    @Override // z2.o0OO0
    /* JADX INFO: renamed from: OooO0oO, reason: merged with bridge method [inline-methods] */
    public void OooO0OO(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // z2.o0OO0
    /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
    public ParcelFileDescriptor OooO0o(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, com.anythink.expressad.foundation.d.c.bk);
        if (assetFileDescriptorOpenAssetFileDescriptor != null) {
            return assetFileDescriptorOpenAssetFileDescriptor.getParcelFileDescriptor();
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }
}
