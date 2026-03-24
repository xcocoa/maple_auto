package com.anythink.basead.a.b;

import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.n;
import java.io.File;
import java.io.FileDescriptor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    public static class a {
        public int a;
        public int b;
    }

    private static a a(int i, int i2, int i3, int i4) {
        if (i == 0 || i2 == 0) {
            return null;
        }
        a aVar = new a();
        float f = (i * 1.0f) / i2;
        if (f < (i3 * 1.0f) / i4) {
            aVar.b = i4;
            aVar.a = (int) (i4 * f);
        } else {
            aVar.a = i3;
            aVar.b = (int) (i3 / f);
        }
        return aVar;
    }

    private static a a(FileDescriptor fileDescriptor) {
        a aVar;
        a aVar2 = null;
        if (fileDescriptor == null) {
            return null;
        }
        try {
            aVar = new a();
        } catch (Exception e) {
            e = e;
        }
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(fileDescriptor);
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
            mediaMetadataRetriever.release();
            aVar.a = Integer.parseInt(strExtractMetadata);
            aVar.b = Integer.parseInt(strExtractMetadata2);
            return aVar;
        } catch (Exception e2) {
            e = e2;
            aVar2 = aVar;
            e.printStackTrace();
            return aVar2;
        }
    }

    private static a a(FileDescriptor fileDescriptor, int i, int i2) {
        a aVarA = a(fileDescriptor);
        if (aVarA == null) {
            return null;
        }
        if ((aVarA.a * 1.0f) / aVarA.b < (i * 1.0f) / i2) {
            aVarA.b = i2;
            aVarA.a = (int) Math.ceil(i2 * r0);
        } else {
            aVarA.a = i;
            aVarA.b = (int) Math.ceil(i / r0);
        }
        return aVarA;
    }

    public static a a(String str) {
        a aVar = null;
        try {
            if (TextUtils.isEmpty(str) || !new File(str).exists()) {
                return null;
            }
            a aVar2 = new a();
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(str);
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                mediaMetadataRetriever.release();
                aVar2.a = Integer.parseInt(strExtractMetadata);
                aVar2.b = Integer.parseInt(strExtractMetadata2);
                return aVar2;
            } catch (Exception e) {
                e = e;
                aVar = aVar2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        e.printStackTrace();
        return aVar;
    }

    public static void a(final l lVar, n nVar) {
        if (lVar == null) {
            return;
        }
        synchronized (lVar) {
            if (lVar != null) {
                if (!lVar.T() && !TextUtils.isEmpty(lVar.B())) {
                    lVar.U();
                    if (String.valueOf(nVar.z()).equals("3") && lVar.G() == 1 && nVar.K().equals("2")) {
                        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.a.b.g.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
                                executorServiceNewFixedThreadPool.submit(new Runnable() { // from class: com.anythink.basead.a.b.g.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            a aVarA = g.a(com.anythink.core.common.res.d.a(com.anythink.core.common.b.n.a().f()).c(4, com.anythink.core.common.o.g.a(lVar.B())));
                                            if (aVarA != null) {
                                                lVar.j(aVarA.a);
                                                lVar.k(aVarA.b);
                                            }
                                        } catch (Throwable unused) {
                                        }
                                        try {
                                            synchronized (executorServiceNewFixedThreadPool) {
                                                executorServiceNewFixedThreadPool.notifyAll();
                                            }
                                        } catch (Throwable unused2) {
                                        }
                                    }
                                });
                                try {
                                    synchronized (executorServiceNewFixedThreadPool) {
                                        executorServiceNewFixedThreadPool.wait(com.anythink.expressad.exoplayer.f.a);
                                    }
                                    executorServiceNewFixedThreadPool.shutdownNow();
                                } catch (Throwable unused) {
                                }
                            }
                        }, 2, true);
                    }
                }
            }
        }
    }
}
