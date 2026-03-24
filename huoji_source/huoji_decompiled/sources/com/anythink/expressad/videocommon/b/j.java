package com.anythink.expressad.videocommon.b;

import android.text.TextUtils;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.videocommon.b.h;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final int a = 259200000;
    private static final String b = "HTMLResourceManager";
    private String c;

    public static class a {
        public static j a = new j(0);

        private a() {
        }
    }

    private j() {
        this.c = com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_HTML);
    }

    public /* synthetic */ j(byte b2) {
        this();
    }

    public static j a() {
        return a.a;
    }

    private void c() {
        this.c = com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_HTML);
    }

    public final String a(String str) {
        try {
            String str2 = this.c + "/" + p.a(x.a(str)) + ".html";
            if (new File(str2).exists()) {
                return "file:////".concat(String.valueOf(str2));
            }
            return null;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public final boolean a(String str, byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        try {
            if (bArr.length <= 0) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.c);
            sb.append("/");
            sb.append(p.a(x.a(str)));
            sb.append(".html");
            return com.anythink.expressad.foundation.h.m.a(bArr, new File(sb.toString()));
        } catch (Exception e) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            e.printStackTrace();
            return false;
        }
    }

    public final String b(String str) {
        try {
            File file = new File(this.c + "/" + p.a(x.a(str)) + ".html");
            if (file.length() > 0) {
                return com.anythink.expressad.foundation.h.m.a(file);
            }
            return null;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public final void b() {
        try {
            if (TextUtils.isEmpty(this.c)) {
                return;
            }
            h.a.a.a(new com.anythink.expressad.foundation.g.g.a() { // from class: com.anythink.expressad.videocommon.b.j.1
                @Override // com.anythink.expressad.foundation.g.g.a
                public final void a() {
                    com.anythink.expressad.foundation.h.m.c(j.this.c);
                }

                @Override // com.anythink.expressad.foundation.g.g.a
                public final void b() {
                }

                @Override // com.anythink.expressad.foundation.g.g.a
                public final void c() {
                }
            });
        } catch (Exception e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
        }
    }
}
