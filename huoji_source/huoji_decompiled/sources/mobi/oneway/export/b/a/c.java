package mobi.oneway.export.b.a;

import android.app.Activity;
import android.view.ViewGroup;
import java.util.Collections;
import java.util.List;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.b.b.i;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.f.d;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final AdType a = AdType.splash;
    private String b;

    public c(String str) {
        this.b = str;
    }

    public void a(Activity activity, ViewGroup viewGroup, OWSplashAdListener oWSplashAdListener, long j) {
        List<mobi.oneway.export.f.a> listA = d.a(this.b, this.a);
        if (listA == null) {
            if (oWSplashAdListener != null) {
                oWSplashAdListener.onAdError(OnewaySdkError.INITIALIZE_FAILED, this.a.name() + mobi.oneway.export.a.a.m);
                return;
            }
            return;
        }
        if (listA.size() >= 1) {
            i iVar = new i(this.a, Collections.singletonList(listA.get(0).f()), j);
            iVar.a(oWSplashAdListener);
            iVar.c();
            listA.get(0).a(activity, viewGroup, iVar, j);
        }
    }
}
