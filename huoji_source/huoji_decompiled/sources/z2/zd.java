package z2;

import java.util.concurrent.TimeUnit;
import retrofit2.Retrofit;
import z2.ox;

/* JADX INFO: loaded from: classes.dex */
public class zd {
    private Retrofit OooO00o;

    public static class OooO0O0 {
        private static final zd OooO00o = new zd();

        private OooO0O0() {
        }
    }

    private zd() {
        this.OooO00o = new Retrofit.Builder().client(OooO00o()).baseUrl("").addCallAdapterFactory(su.OooO00o()).build();
    }

    private ox OooO00o() {
        ox.OooO0O0 oooO0O0 = new ox.OooO0O0();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        oooO0O0.OooO(60L, timeUnit);
        oooO0O0.Oooo0O0(60L, timeUnit);
        oooO0O0.OooOoo(60L, timeUnit);
        oooO0O0.OooOooo(true);
        return oooO0O0.OooO0Oo();
    }

    public static zd OooO0O0() {
        return OooO0O0.OooO00o;
    }

    public Retrofit OooO0OO() {
        return this.OooO00o;
    }
}
