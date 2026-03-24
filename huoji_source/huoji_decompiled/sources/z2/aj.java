package z2;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import z2.cj;

/* JADX INFO: loaded from: classes2.dex */
public class aj {
    private static final String OooO = "z2.aj";
    private static aj OooOO0;
    private Context OooO0OO;
    private KeyPair OooO0Oo;
    private OooO0O0 OooO0o;
    private OooO0OO OooO0o0;
    private String OooO0oO;
    private final String OooO00o = "publicKey";
    private final String OooO0O0 = "privateKey";
    private String OooO0oo = "logcat -v time";

    public interface OooO0O0 {
        void OooO00o(List<String> list);
    }

    public class OooO0OO extends AsyncTask<String, OooO0o, String> {

        public class OooO00o implements cj.OooO00o {
            public OooO00o() {
            }

            @Override // z2.cj.OooO00o
            public void OooO00o(int i, List<String> list) {
                OooO0OO.this.publishProgress(aj.this.new OooO0o(i, list));
            }

            @Override // z2.cj.OooO00o
            public boolean isCancelled() {
                return aj.this.OooO0o0.isCancelled();
            }
        }

        private OooO0OO() {
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String... strArr) {
            new dj(aj.this.OooO0Oo).OooO00o(aj.this.OooO0oo, new OooO00o());
            return "";
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public void onProgressUpdate(OooO0o... oooO0oArr) {
            for (OooO0o oooO0o : oooO0oArr) {
                if (oooO0o.OooO0O0 != null) {
                    if (aj.this.OooO0o != null) {
                        aj.this.OooO0o.OooO00o(oooO0o.OooO0O0);
                    } else {
                        bj.OooOO0(Environment.getExternalStorageDirectory() + "/Logcat/", aj.this.OooO0oO, oooO0o.OooO0O0, true);
                    }
                }
            }
        }
    }

    public class OooO0o {
        public int OooO00o;
        public List<String> OooO0O0;

        public OooO0o(int i, List<String> list) {
            this.OooO00o = i;
            this.OooO0O0 = list;
        }
    }

    public static aj OooO0oO() {
        if (OooOO0 == null) {
            synchronized (aj.class) {
                if (OooOO0 == null) {
                    OooOO0 = new aj();
                }
            }
        }
        return OooOO0;
    }

    private KeyPair OooO0oo() throws InvalidKeySpecException, NoSuchAlgorithmException {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.OooO0OO);
        if (defaultSharedPreferences.contains("publicKey") && defaultSharedPreferences.contains("privateKey")) {
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            this.OooO0Oo = new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(Base64.decode(defaultSharedPreferences.getString("publicKey", null), 0))), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(defaultSharedPreferences.getString("privateKey", null), 0))));
        } else {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            this.OooO0Oo = keyPairGenerator.generateKeyPair();
            defaultSharedPreferences.edit().putString("publicKey", Base64.encodeToString(this.OooO0Oo.getPublic().getEncoded(), 0)).putString("privateKey", Base64.encodeToString(this.OooO0Oo.getPrivate().getEncoded(), 0)).apply();
        }
        return this.OooO0Oo;
    }

    public void OooO(Context context) {
        this.OooO0OO = context;
        try {
            this.OooO0Oo = OooO0oo();
        } catch (GeneralSecurityException e) {
            Log.w(OooO, e);
        }
    }

    public void OooO0o() {
        try {
            Runtime.getRuntime().exec(new String[]{"logcat", "-c"});
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooOO0(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.OooO0oo = str;
        }
        OooOO0o();
        OooO0OO oooO0OO = new OooO0OO();
        this.OooO0o0 = oooO0OO;
        oooO0OO.execute(new String[0]);
        this.OooO0oO = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()) + ".txt";
    }

    public void OooOO0O(OooO0O0 oooO0O0) {
        this.OooO0o = oooO0O0;
    }

    public void OooOO0o() {
        OooO0OO oooO0OO = this.OooO0o0;
        if (oooO0OO != null) {
            oooO0OO.cancel(true);
            this.OooO0o0 = null;
            OooO0o();
            this.OooO0o = null;
        }
    }
}
