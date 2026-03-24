package z2;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.example.logcat.R;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyPair;
import java.util.ArrayList;
import z2.cj;

/* JADX INFO: loaded from: classes2.dex */
public class dj implements cj {
    private KeyPair OooO00o;

    public class OooO00o implements tu {
        public OooO00o() {
        }

        @Override // z2.tu
        @SuppressLint({"NewApi"})
        public String OooO00o(byte[] bArr) {
            return Base64.encodeToString(bArr, 2);
        }
    }

    public dj(KeyPair keyPair) {
        this.OooO00o = keyPair;
    }

    @Override // z2.cj
    public void OooO00o(String str, cj.OooO00o oooO00o) {
        uu uuVar = null;
        try {
            try {
                oooO00o.OooO00o(R.string.status_connecting, null);
                uu uuVarOo000o = uu.oo000o(new Socket("localhost", 5555), vu.OooO0o0(new OooO00o(), this.OooO00o));
                try {
                    uuVarOo000o.o00ooo();
                    oooO00o.OooO00o(R.string.status_opening, null);
                    xu xuVarO0ooOO0 = uuVarOo000o.o0ooOO0("shell:" + str);
                    oooO00o.OooO00o(R.string.status_active, null);
                    while (!oooO00o.isCancelled()) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : new String(xuVarO0ooOO0.Oooooo()).split("\\r?\\n")) {
                            if (!TextUtils.isEmpty(str2)) {
                                arrayList.add(str2);
                            }
                        }
                        oooO00o.OooO00o(0, arrayList);
                    }
                } catch (InterruptedException unused) {
                    uuVar = uuVarOo000o;
                    uuVar.close();
                }
            } catch (IOException e) {
                Log.w("TAG", e);
            }
        } catch (InterruptedException unused2) {
        }
    }
}
