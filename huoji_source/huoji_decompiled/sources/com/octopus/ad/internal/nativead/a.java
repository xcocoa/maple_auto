package com.octopus.ad.internal.nativead;

import android.content.Context;
import android.graphics.Bitmap;
import com.octopus.ad.ADBidEvent;
import com.octopus.ad.AdRequest;
import com.octopus.ad.IBidding;
import com.octopus.ad.NativeAdListener;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.internal.d;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.utilities.DeviceInfoUtil;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ImageService;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.UserEnvInfoUtil;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.octopus.ad.internal.network.a implements IBidding, com.octopus.ad.internal.a {
    public com.octopus.ad.internal.c a;
    private NativeAdListener c;
    private C0196a d;
    private boolean e;
    private boolean f;
    private d g;
    private int h;
    private String i;
    private String j;
    private boolean k = false;

    /* JADX INFO: renamed from: com.octopus.ad.internal.nativead.a$a, reason: collision with other inner class name */
    public class C0196a implements com.octopus.ad.internal.b, ImageService.ImageServiceListener {
        public ImageService a;
        public NativeAdResponse b;

        private C0196a() {
        }

        @Override // com.octopus.ad.internal.b
        public void a() {
        }

        @Override // com.octopus.ad.internal.b
        public void a(int i) {
            if (a.this.c != null) {
                a.this.c.onAdFailed(i);
            }
            a.this.k = false;
        }

        @Override // com.octopus.ad.internal.b
        public void a(long j) {
        }

        @Override // com.octopus.ad.internal.b
        public void a(com.octopus.ad.internal.network.b bVar) {
            if (!bVar.a().equals(l.NATIVE)) {
                a(AdRequest.INVALID_MEDIA_TYPE);
                return;
            }
            final NativeAdResponse nativeAdResponseC = bVar.c();
            if (nativeAdResponseC == null) {
                return;
            }
            this.b = nativeAdResponseC;
            if (((c) nativeAdResponseC).a() == 1) {
                a(AdRequest.ERROR_CODE_NO_FILL);
                a.this.sendLossNotice(bVar.e() + 100, "1001", ADBidEvent.OTHER);
                return;
            }
            a.this.a(bVar.e());
            a.this.b(bVar.f());
            a.this.e(nativeAdResponseC.getLandingPageUrl());
            if (!a.this.e && !a.this.f) {
                if (a.this.c != null) {
                    a.this.c.onAdLoaded(nativeAdResponseC);
                } else {
                    nativeAdResponseC.destroy();
                }
                a.this.k = false;
                return;
            }
            this.a = new ImageService();
            if (a.this.e) {
                this.a.registerImageReceiver(new ImageService.ImageReceiver() { // from class: com.octopus.ad.internal.nativead.a.a.1
                    @Override // com.octopus.ad.internal.utilities.ImageService.ImageReceiver
                    public void onFail() {
                        HaoboLog.e(HaoboLog.httpRespLogTag, "Image downloading logFailed for url " + nativeAdResponseC.getImageUrl());
                    }

                    @Override // com.octopus.ad.internal.utilities.ImageService.ImageReceiver
                    public void onReceiveImage(Bitmap bitmap) {
                        nativeAdResponseC.setImage(bitmap);
                    }
                }, nativeAdResponseC.getImageUrl());
            }
            if (a.this.f) {
                this.a.registerImageReceiver(new ImageService.ImageReceiver() { // from class: com.octopus.ad.internal.nativead.a.a.2
                    @Override // com.octopus.ad.internal.utilities.ImageService.ImageReceiver
                    public void onFail() {
                        HaoboLog.e(HaoboLog.httpRespLogTag, "Image downloading logFailed for url " + nativeAdResponseC.getIconUrl());
                    }

                    @Override // com.octopus.ad.internal.utilities.ImageService.ImageReceiver
                    public void onReceiveImage(Bitmap bitmap) {
                        nativeAdResponseC.setIcon(bitmap);
                    }
                }, nativeAdResponseC.getIconUrl());
            }
            this.a.registerNotification(this);
            this.a.execute();
        }

        @Override // com.octopus.ad.internal.b
        public void a(String str, int i) {
        }

        @Override // com.octopus.ad.internal.b
        public void a(String str, String str2) {
        }

        @Override // com.octopus.ad.internal.b
        public void b() {
            NativeAdResponse nativeAdResponse = this.b;
            if (nativeAdResponse != null) {
                nativeAdResponse.destroy();
                this.b = null;
            }
        }

        @Override // com.octopus.ad.internal.b
        public void c() {
        }

        @Override // com.octopus.ad.internal.b
        public void d() {
        }

        @Override // com.octopus.ad.internal.b
        public void e() {
        }

        @Override // com.octopus.ad.internal.b
        public void f() {
        }

        @Override // com.octopus.ad.internal.utilities.ImageService.ImageServiceListener
        public void onAllImageDownloadsFinish() {
            if (a.this.c != null) {
                a.this.c.onAdLoaded(this.b);
            } else {
                this.b.destroy();
            }
            this.a = null;
            this.b = null;
            a.this.k = false;
        }
    }

    public a(Context context, String str, int i) {
        DeviceInfoUtil.retrieveDeviceInfo(context.getApplicationContext());
        UserEnvInfoUtil.retrieveUserEnvInfo(context.getApplicationContext());
        d dVar = new d(context, StringUtil.createRequestId());
        this.g = dVar;
        dVar.a(str);
        this.g.a(i);
        this.g.a(l.NATIVE);
        com.octopus.ad.internal.c cVar = new com.octopus.ad.internal.c(this);
        this.a = cVar;
        cVar.a(-1);
        this.d = new C0196a();
    }

    public void a(int i) {
        this.h = i;
    }

    public void a(NativeAdListener nativeAdListener) {
        this.c = nativeAdListener;
    }

    public void a(String str) {
        HaoboLog.d(HaoboLog.nativeLogTag, HaoboLog.getString(R.string.set_placement_id, str));
        this.g.a(str);
    }

    public void a(boolean z) {
        HaoboLog.d(HaoboLog.nativeLogTag, HaoboLog.getString(R.string.set_opens_native_browser, z));
        this.g.b(z);
    }

    public boolean a() {
        HaoboLog.d(HaoboLog.nativeLogTag, HaoboLog.getString(R.string.get_opens_native_browser, this.g.j()));
        return this.g.j();
    }

    public boolean a(a.C0197a c0197a) {
        String str;
        String str2;
        if (this.c == null) {
            str = HaoboLog.nativeLogTag;
            str2 = "No mNativeAdListener installed for this request, won't load a new ad";
        } else {
            if (!this.k) {
                if (!this.g.l()) {
                    return false;
                }
                this.a.a();
                this.a.c();
                this.a.b();
                this.k = true;
                return true;
            }
            str = HaoboLog.nativeLogTag;
            str2 = "Still loading last nativead ad , won't load a new ad";
        }
        HaoboLog.e(str, str2);
        return false;
    }

    public String b() {
        HaoboLog.d(HaoboLog.nativeLogTag, HaoboLog.getString(R.string.get_placement_id, this.g.c()));
        return this.g.c();
    }

    public void b(String str) {
        this.i = str;
    }

    public void b(boolean z) {
        a(z);
    }

    public int c() {
        return this.h;
    }

    public void c(String str) {
        this.g.b(str);
    }

    public String d() {
        return this.i;
    }

    public void d(String str) {
        this.g.c(str);
    }

    public d e() {
        return this.g;
    }

    public void e(String str) {
        this.j = str;
    }

    public com.octopus.ad.internal.b f() {
        return this.d;
    }

    public void g() {
        this.d.b();
    }

    @Override // com.octopus.ad.internal.a
    public l getMediaType() {
        return this.g.k();
    }

    @Override // com.octopus.ad.internal.a
    public boolean isReadyToStart() {
        return this.c != null && this.g.l();
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i, String str, String str2) {
        NativeAdResponse nativeAdResponse;
        try {
            C0196a c0196a = this.d;
            if (c0196a == null || (nativeAdResponse = c0196a.b) == null) {
                return;
            }
            c cVar = (c) nativeAdResponse;
            cVar.a(i, str, str2);
            cVar.b();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i) {
        NativeAdResponse nativeAdResponse;
        try {
            C0196a c0196a = this.d;
            if (c0196a == null || (nativeAdResponse = c0196a.b) == null) {
                return;
            }
            ((c) nativeAdResponse).b(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
