package com.octopus.ad.internal;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.octopus.ad.internal.r;
import com.octopus.ad.internal.utilities.HTTPGet;
import com.octopus.ad.internal.utilities.HTTPResponse;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.UrlUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class k extends HTTPGet {
    private String a;
    private r b;
    private boolean c;
    private Context d;
    private a e;
    private ArrayList<String> f;
    private String g;

    public class a implements r.a {
        public long a;

        private a() {
            this.a = 0L;
        }

        @Override // com.octopus.ad.internal.r.a
        public void a(boolean z) {
            this.a = z ? this.a + 250 : 0L;
            if (this.a >= 500) {
                k.this.a();
            }
        }
    }

    private k(String str, String str2, r rVar, Context context, ArrayList<String> arrayList) {
        super(false);
        this.c = false;
        this.g = "";
        this.a = str2;
        this.b = rVar;
        this.e = new a();
        this.d = context;
        this.f = arrayList;
        this.g = str;
    }

    public static k a(String str, String str2, r rVar, Context context, ArrayList<String> arrayList) {
        if (rVar == null) {
            return null;
        }
        k kVar = new k(str, str2, rVar, context, arrayList);
        rVar.a(kVar.e);
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Context context;
        if (!this.c && (context = this.d) != null) {
            com.octopus.ad.internal.network.c cVarA = com.octopus.ad.internal.network.c.a(context.getApplicationContext());
            if (cVarA.b(this.d)) {
                execute(new Void[0]);
                this.b.b(this.e);
                this.e = null;
            } else {
                cVarA.a(this.a, this.d);
            }
            this.c = true;
            this.f.remove(this.a);
        }
    }

    @Override // com.octopus.ad.internal.utilities.HTTPGet
    public String getUrl() {
        View viewA = this.b.a();
        if (viewA == null) {
            return UrlUtil.replaceToTouchEventUrl(this.a, "", "", "", "", "", "", "");
        }
        if (!TextUtils.isEmpty(this.g)) {
            this.a = this.a.replace("__REQUESTUUID__", this.g);
        }
        return StringUtil.replaceView(0, viewA, this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.octopus.ad.internal.utilities.HTTPGet, android.os.AsyncTask
    public void onPostExecute(HTTPResponse hTTPResponse) {
        HaoboLog.d(HaoboLog.nativeLogTag, "Impression tracked.");
    }
}
