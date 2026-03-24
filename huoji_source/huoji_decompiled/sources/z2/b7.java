package z2;

import android.text.TextUtils;
import com.ac.R;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.Script;
import com.cyjh.http.bean.request.EngineParams;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes.dex */
public class b7 {
    public static boolean OooO0o = false;
    private static final String OooO0o0 = "z2.b7";
    private static final b7 OooO0oO = new b7();
    private Script OooO00o;
    public boolean OooO0O0;
    public int OooO0OO = 0;
    public long OooO0Oo;

    public static b7 OooO0Oo() {
        return OooO0oO;
    }

    public void OooO() {
        File file;
        String str = AppContext.OooO00o().getFilesDir() + File.separator + g6.o0Oo0oo;
        File file2 = new File(str, f6.OooO00o);
        File file3 = new File(str, f6.OooO0O0);
        File file4 = new File(str, f6.OooO0OO);
        File file5 = new File(str, f6.OooO0Oo);
        File file6 = new File(str, f6.OooO0o0);
        File file7 = new File(str, f6.OooO0o);
        File file8 = new File(str, f6.OooO0oo);
        String absolutePath = AppContext.OooO00o().getFilesDir().getAbsolutePath();
        String str2 = "initMQScript --> PATH_APPFILE =" + absolutePath;
        File file9 = new File(k4.OooO(absolutePath, f6.OooO00o));
        File file10 = new File(k4.OooO(absolutePath, f6.OooO0O0));
        File file11 = new File(k4.OooO(absolutePath, f6.OooO0OO));
        File file12 = new File(k4.OooO(absolutePath, f6.OooO0Oo));
        File file13 = new File(k4.OooO(absolutePath, f6.OooO0o0));
        File file14 = new File(k4.OooO(absolutePath, f6.OooO0o));
        File file15 = new File(k4.OooO(absolutePath, f6.OooO0oO));
        File file16 = new File(k4.OooO(absolutePath, f6.OooO0oo));
        boolean z = file2.exists() || file3.exists() || file4.exists() || file5.exists() || file6.exists() || file7.exists();
        this.OooO0O0 = z;
        if (z) {
            file = file16;
            if (1 == c9.OooO00o(AppContext.OooO00o())) {
                this.OooO0O0 = true;
            } else {
                this.OooO0O0 = false;
            }
        } else {
            file = file16;
        }
        try {
            Script scriptOooO0OO = z8.OooO0OO(this.OooO0O0 ? new FileInputStream(file3) : AppContext.OooO00o().getAssets().open(f6.OooO0O0));
            this.OooO00o = scriptOooO0OO;
            if (!this.OooO0O0) {
                file2 = file9;
            }
            scriptOooO0OO.setLcFile(file2);
            Script script = this.OooO00o;
            if (!this.OooO0O0) {
                file3 = file10;
            }
            script.setPropFile(file3);
            Script script2 = this.OooO00o;
            if (!this.OooO0O0) {
                file4 = file11;
            }
            script2.setAtcFile(file4);
            Script script3 = this.OooO00o;
            if (!this.OooO0O0) {
                file5 = file12;
            }
            script3.setUiFile(file5);
            Script script4 = this.OooO00o;
            if (!this.OooO0O0) {
                file6 = file13;
            }
            script4.setUipFile(file6);
            Script script5 = this.OooO00o;
            if (!this.OooO0O0) {
                file7 = file14;
            }
            script5.setRtdFile(file7);
            this.OooO00o.setInfoFile(this.OooO0O0 ? file8 : file);
            this.OooO00o.setCfgFile(file15);
            b5.OooO0OO().OooO0oO(this.OooO00o.getVersion());
            if (this.OooO0O0) {
                i7.OooO().OooOOO0(OooO0Oo().OooO0OO(), OooO0Oo().OooO0o0(), OooO0Oo().OooO0o());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO00o() {
        if (this.OooO00o != null) {
            this.OooO00o = null;
        }
    }

    public String OooO0O0() {
        if (j3.OooO0O0().endsWith("/")) {
            return j3.OooO0O0();
        }
        return j3.OooO0O0() + "/";
    }

    public String OooO0OO() {
        String strOooO0O0;
        Script script;
        EngineParams engineParams = new EngineParams(gc.OooO0OO().OooO00o(AppContext.OooO00o()));
        engineParams.PackageName = AppContext.OooO00o().getPackageName();
        if (j3.OooO0O0().endsWith("/")) {
            strOooO0O0 = j3.OooO0O0();
        } else {
            strOooO0O0 = j3.OooO0O0() + "/";
        }
        engineParams.BaseURL = strOooO0O0;
        engineParams.PayAppId = this.OooO00o.getAppId();
        Script script2 = this.OooO00o;
        engineParams.ScriptType = (script2 == null || !TextUtils.isEmpty(script2.getAppId())) && ((script = this.OooO00o) == null || !TextUtils.isEmpty(script.getVersion()));
        Script script3 = this.OooO00o;
        engineParams.AppVersion = (script3 == null || !TextUtils.isEmpty(script3.getVersion())) ? this.OooO00o.getVersion() : AppContext.OooO00o().getString(R.string.pay_vsersion);
        engineParams.authDesKeys = j3.OooO0OO;
        engineParams.keys = m7.OooO0o0().OooO0Oo();
        engineParams.id = this.OooO00o.getId();
        return n4.OooO0O0(engineParams);
    }

    public String OooO0o() {
        return "d6c9aaeed6c9abd9c8cffed0cef3d8cbcccfd0d7c9cfd7fdc9aaccc0d6c9aaeed6c9aad1cecff6d2c0f1abd8d7dffedecfa9dcd2cfaaf6f3d7aac8c8c8cfd0d8cfccccd8cbcec8d2cef1dcdfcbaad0eacfcfeed9c0abdcdfcbaac8e3f9f1feaad1e3a3f3f8a8eee3c9d2d4cccbf7c0aff8dffde8cec2d4eaf8edeaebc9cfd0d2cfccdcd7cca8e2abf9dedcf2fef7c8a9f9a9c0efcdf3eee0c0cdfde2ffced0afd1e0dcc8ccaaf2ebccdfc8d5c3a9fec3f9ddd4f3c9cfa3cafff0fee2f8dff5e3cba9c8d6f9a8dcedd6aaafa9ccc2c0c3d9f1f2aad7f6c8eecff6dbaad7f0c3e3c8f0cbe2c0f0d0d3cccccfafccf7e2d9d7dcd0f0d7f7e2d8c0abc8abcff7fef5f9ddcce2c9aafea8ffccdccad7abd0edfbcffec2c3a8fef5d7c2cce8f9f1feccc8dcd3afc8f0cfd1d4cdeeaef8aadcf6d5cdf1e8cff7fec0c8f6ccddf8f0f2a9c9cfc8d8cfcfdcd9d9f3aaeed6c9aaeec8cfafdfd3dcd8cccbf1e2d0cbe3d8d6c8ccf1eed6c9aaeed6cbf5a7";
    }

    public String OooO0o0() {
        return "d6c9aaeed6c9abd9c8cffed0cef3d8c9cfaadffdcfdcd0d0ccf1dccfc8c9d8d6c8ccf1eed6c9aaeed6cbead4c9cff6deccabdcd0cbf1dcd8c9aad0f4cfcfd4edcbcfdccec8cdf5aec0cde2f0cdf6dcaefef0f1edf8cfabcff9dcf6c0f8f1afabcccffef2cfccfec8fea9f6cbf8cff5edccf7feddc0cdeeeafec2fec2d5d2d4e9d9f0d8acfea8eda8f8dfafddc8cdeed1cccedfe0feddafefced2d0f5c9dfd4ecd4f7fee2cce0f2d6cea8c8e2fbc2f2d3cdddc3e8c3a8c8f6cdc2d0d9fbf1dce3c8cdf9e2ceddeec3cff6f6ccfef6f6f5fff7a3d7d6a8cfd1cdcdeac8d5cdedafd4dccfaffedefef0f8dec0f0fbaacfe3cca8eaebd4f6f1e2cdf1d4edcfdceafbcee3eedfd4f0c8a9fbccdcf3cfc2d0eccdccdcefc8c2d0efc0e0dbe3d4c2d0e0cfd2d4ebfeaaf6dfcbccdcd8cbfdead8f8f0fdaaffddd4ead1a9c3aad4ccd4d9c0dcf2ded4dfe2ddf9cff6aed5ced0e8cdf4f9e2c3a9d7edcbf4d4cafbddaee8c9ced8f2fbdef2effed9eeafffc2f6dcfbccdce0fbaaabeefbf0f2aecfcffed0cbf4feecd9f6eadff9abdce8d4ccf1edcbabccd0f8cceaf3d7cff2f6c9dceaddccf1f2d6f9dceaecd7d2f6d5d5cdd4dcd4a9feeaccccd0decfc2f2e0d1a9dcf2f8aad4f1c8f7cbe0d7dfc8dfc9c2fdaefbddfde0d1a8f2aafff0cbd1f9cfafacc3e0cbabcdf7c8a8c8a9dcccc0cedfaac3e0f2a8cfaacce0c8d2f6c8ccf0f6dccff1c0f5fbf7aee3d7cfd4ccfea8d4c2cbc2c8ecc9d2f2d8fbaaccd8d7dceaf3cfa9ead7cddcccd2ccaaafebccf7c0d3fffdeacecdf4dccef8ced0d9cca9f6d8fff6c8e8c8a9f2dcfbcecccad1aaf2f7cbcdf6d1d6abead3fbc2c0c8c8ddd0c0c0f6eaf1ccdfdccfd1aac3abcccfabd1d5dfccc9c8f7a3dfcea9d8effbd2feaad4f7eaaad7cddcedd9f4f2f1c8cedcccfeaaead9cbcfaaabf9abd4d2c9f1a3c9c9dff5ecc9f0feecc0cfc0cccedffdeccdc2d4c8f8c2fed8c3a9fda9fedffec0cfccd4d6cfabdcc0cbaac0cefbc9eed4c9f0fee2d4f6eaf3c3f0fef5fbf1a2d1ffccc3aac0f1ede3cce3eedfcecddcdcd4d2d8c8fed2d4f7c3cff6abf9cdd4aed7d2cfa9c0cec0ddcccfd4c8c8cddcccf8cdfeaffbcfafa8fbaaafaecccdfecac9cfe2c3f9c2c0f7cbf7f2d4ffddf2cbc3ccf2f6d4edeac3fbcffda8d5dcdfedd7e0feabfbc2f6c8cccdabdfd6a9f2abc8f7a3ead1a8dce3fff0f9e3d7ccc8f1cba8c8f3c0ddaaaec9a9c8aacdc2cbe8fff1d0e8cecceaf5fbf7dfafffcedbedcbabdcdfc9f1afdfc9e0cfe0d9f0c0d9c9cffeebfbabf9a8cfc2c0d8cef1cbe8f8c2c8c2c8ddfedcffcedfaec8f6f2c2f9f7c0acd4e3eefbc8dde2d7f9dcc0f2fef1ccdff9f4c0eecff3a3cfc0f7afa9d4cfd4f5ffcdf2d9d7dceaf0f8cde2edc0aaf5d1cecda2a8fbcefeabfbaac8d6cfabc0a9cfaad4e8cbabdcd8ccd9e9e0cff1cce0c9c2dccdf9dfccabd4e0f2edfeccf2d4cea9c8e3f9cffea8ccf6dceffbcda3abc0abd8f5fbcdf2f0fef4d0c9d7abfee3c0f1ccfbf8fdeaf0f9f1f2cbfbdfc0d3d7cddcdef9f7d0d1d7abcce9fedfeecbf9ded0f6cfdcf2dfd7ddccd6cef0ccaaf8a8ccccfbf6c0afcfdedba3d9f3aaeed6c9aaeec8cfafdfd3dcd0cecbc9d8cbcff1f6cdcbccc8dcd3dfeedccdc9aaeed6c9aaeed9fda7a7";
    }

    public Script OooO0oO() {
        return this.OooO00o;
    }

    public void OooO0oo() {
    }

    public void OooOO0() {
        if (this.OooO00o == null) {
            throw new RuntimeException("script info not exist");
        }
        i7.OooO().Oooo000(this.OooO00o.getLcFile().getAbsolutePath(), this.OooO00o.getAtcFile().getAbsolutePath(), this.OooO00o.getCfgFile().getAbsolutePath(), 0, this.OooO0Oo, m7.OooO0o0().OooO0o(), m7.OooO0o0().OooO0oO(), AppContext.OooO00o().getString(R.string.pay_appid), AppContext.OooO00o().getString(R.string.pay_vsersion));
    }

    public boolean OooOO0O() {
        Script script;
        Script script2 = this.OooO00o;
        return !(script2 == null || TextUtils.isEmpty(script2.getAppId())) || ((script = this.OooO00o) != null && TextUtils.isEmpty(script.getVersion()));
    }

    public boolean OooOO0o() {
        return c9.OooO(AppContext.OooO00o(), this.OooO0O0);
    }

    public void OooOOO() {
        OooO();
    }

    public void OooOOO0(long j) {
        String str = "ENGIN_MQRUNNER_TOKENKEY: setTokenKey = " + j;
        this.OooO0Oo = j;
    }
}
