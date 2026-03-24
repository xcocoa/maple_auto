package com.anythink.expressad.exoplayer.d;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.d.j;
import com.anythink.expressad.exoplayer.k.af;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(23)
public final class l implements j<k> {
    private static final String g = "cenc";
    private final UUID h;
    private final MediaDrm i;

    @SuppressLint({"WrongConstant"})
    private l(UUID uuid) {
        com.anythink.expressad.exoplayer.k.a.a(uuid);
        UUID uuid2 = com.anythink.expressad.exoplayer.b.bi;
        com.anythink.expressad.exoplayer.k.a.a(!uuid2.equals(uuid), "Use C.CLEARKEY_UUID instead");
        if (af.a < 27 && com.anythink.expressad.exoplayer.b.bj.equals(uuid)) {
            uuid = uuid2;
        }
        this.h = uuid;
        MediaDrm mediaDrm = new MediaDrm(uuid);
        this.i = mediaDrm;
        if (com.anythink.expressad.exoplayer.b.bk.equals(uuid) && "ASUS_Z00AD".equals(af.d)) {
            mediaDrm.setPropertyString("securityLevel", "L3");
        }
    }

    public static l a(UUID uuid) throws o {
        try {
            return new l(uuid);
        } catch (Exception e) {
            throw new o(e);
        }
    }

    private static boolean d() {
        return "ASUS_Z00AD".equals(af.d);
    }

    private k e(byte[] bArr) {
        return new k(new MediaCrypto(this.h, bArr), af.a < 21 && com.anythink.expressad.exoplayer.b.bk.equals(this.h) && "L3".equals(a("securityLevel")));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    @Override // com.anythink.expressad.exoplayer.d.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final j.d a(byte[] bArr, byte[] bArr2, String str, int i, HashMap<String, String> map) throws NotProvisionedException {
        byte[] bArr3;
        int i2 = af.a;
        if (i2 >= 21 || !com.anythink.expressad.exoplayer.b.bk.equals(this.h)) {
            if (com.anythink.expressad.exoplayer.b.bl.equals(this.h) && "Amazon".equals(af.c)) {
                String str2 = af.d;
                if ("AFTB".equals(str2) || "AFTS".equals(str2) || "AFTM".equals(str2)) {
                    byte[] bArrA = com.anythink.expressad.exoplayer.e.a.h.a(bArr2, this.h);
                    if (bArrA != null) {
                        bArr3 = bArrA;
                    }
                }
            }
            bArr3 = bArr2;
        }
        if (i2 < 26 && com.anythink.expressad.exoplayer.b.bj.equals(this.h) && (com.anythink.expressad.exoplayer.k.o.e.equals(str) || com.anythink.expressad.exoplayer.k.o.q.equals(str))) {
            str = "cenc";
        }
        MediaDrm.KeyRequest keyRequest = this.i.getKeyRequest(bArr, bArr3, str, i, map);
        byte[] data = keyRequest.getData();
        if (com.anythink.expressad.exoplayer.b.bj.equals(this.h) && i2 < 27) {
            data = af.c(af.a(data).replace('+', '-').replace(IOUtils.DIR_SEPARATOR_UNIX, '_'));
        }
        return new j.a(data, keyRequest.getDefaultUrl());
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final String a(String str) {
        return this.i.getPropertyString(str);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void a(final j.f<? super k> fVar) {
        this.i.setOnEventListener(new MediaDrm.OnEventListener() { // from class: com.anythink.expressad.exoplayer.d.l.1
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(@NonNull MediaDrm mediaDrm, @Nullable byte[] bArr, int i, int i2, byte[] bArr2) {
                fVar.a(bArr, i);
            }
        });
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void a(final j.g<? super k> gVar) {
        if (af.a < 23) {
            throw new UnsupportedOperationException();
        }
        this.i.setOnKeyStatusChangeListener(gVar == null ? null : new MediaDrm.OnKeyStatusChangeListener() { // from class: com.anythink.expressad.exoplayer.d.l.2
            @Override // android.media.MediaDrm.OnKeyStatusChangeListener
            public final void onKeyStatusChange(@NonNull MediaDrm mediaDrm, @NonNull byte[] bArr, @NonNull List<MediaDrm.KeyStatus> list, boolean z) {
                ArrayList arrayList = new ArrayList();
                for (MediaDrm.KeyStatus keyStatus : list) {
                    arrayList.add(new j.b(keyStatus.getStatusCode(), keyStatus.getKeyId()));
                }
            }
        }, (Handler) null);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void a(String str, String str2) {
        this.i.setPropertyString(str, str2);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void a(String str, byte[] bArr) {
        this.i.setPropertyByteArray(str, bArr);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void a(byte[] bArr) {
        this.i.closeSession(bArr);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final byte[] a() {
        return this.i.openSession();
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (com.anythink.expressad.exoplayer.b.bj.equals(this.h)) {
            bArr2 = a.a(bArr2);
        }
        return this.i.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final j.h b() {
        MediaDrm.ProvisionRequest provisionRequest = this.i.getProvisionRequest();
        return new j.c(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void b(byte[] bArr) throws DeniedByServerException {
        this.i.provideProvisionResponse(bArr);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void b(byte[] bArr, byte[] bArr2) {
        this.i.restoreKeys(bArr, bArr2);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final byte[] b(String str) {
        return this.i.getPropertyByteArray(str);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final Map<String, String> c(byte[] bArr) {
        return this.i.queryKeyStatus(bArr);
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final void c() {
        this.i.release();
    }

    @Override // com.anythink.expressad.exoplayer.d.j
    public final /* synthetic */ i d(byte[] bArr) {
        return new k(new MediaCrypto(this.h, bArr), af.a < 21 && com.anythink.expressad.exoplayer.b.bk.equals(this.h) && "L3".equals(a("securityLevel")));
    }
}
