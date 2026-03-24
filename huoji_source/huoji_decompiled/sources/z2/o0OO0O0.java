package z2;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class o0OO0O0 extends o0O0o0<InputStream> {
    public o0OO0O0(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // z2.o0O0oo00
    @NonNull
    public Class<InputStream> OooO00o() {
        return InputStream.class;
    }

    @Override // z2.o0O0o0
    /* JADX INFO: renamed from: OooO0oO, reason: merged with bridge method [inline-methods] */
    public void OooO0OO(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // z2.o0O0o0
    /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
    public InputStream OooO0o(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
