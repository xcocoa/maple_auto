package com.anythink.expressad.videocommon.b;

import android.net.Uri;
import android.text.TextUtils;
import androidx.multidex.MultiDexExtractor;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.videocommon.b.h;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    public static final String a = "foldername";
    public static final String b = "md5filename";
    public static final String c = "nc";
    public static final int d = 259200000;
    private static String e = "ResourceManager";
    private String f;

    public static class a {
        public static m a = new m(0);

        private a() {
        }
    }

    private m() {
        this.f = com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_RES);
    }

    public /* synthetic */ m(byte b2) {
        this();
    }

    public static m a() {
        return a.a;
    }

    private String a(String str, String str2, File file) {
        String strA = com.anythink.expressad.foundation.h.m.a(str2, this.f + "/" + p.a(x.a(str)));
        return TextUtils.isEmpty(strA) ? com.anythink.expressad.foundation.h.m.b(file) : strA;
    }

    private void c() {
        this.f = com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_RES);
    }

    public final String a(String str) {
        String strSubstring;
        try {
            String str2 = this.f + "/" + p.a(x.a(str));
            List<String> queryParameters = Uri.parse(str).getQueryParameters(a);
            if (queryParameters == null || queryParameters.size() <= 0) {
                return null;
            }
            String str3 = queryParameters.get(0);
            if (TextUtils.isEmpty(str3)) {
                return null;
            }
            String str4 = str2 + "/" + str3 + "/" + str3 + ".html";
            if (!com.anythink.expressad.foundation.h.m.a(str4)) {
                return null;
            }
            try {
                strSubstring = str.substring(str.indexOf("?") + 1);
            } catch (Exception unused) {
                strSubstring = "";
            }
            return "file://" + str4 + (TextUtils.isEmpty(strSubstring) ? "" : "?".concat(String.valueOf(strSubstring)));
        } catch (Exception e2) {
            if (!com.anythink.expressad.a.a) {
                return null;
            }
            e2.printStackTrace();
            return null;
        }
    }

    public final synchronized String a(String str, byte[] bArr) {
        String message;
        String strA = "unknow exception ";
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    String str2 = this.f + "/" + p.a(x.a(str)) + MultiDexExtractor.EXTRACTED_SUFFIX;
                    File file = new File(str2);
                    if (com.anythink.expressad.foundation.h.m.a(bArr, file)) {
                        Uri uri = Uri.parse(str);
                        List<String> queryParameters = uri.getQueryParameters("nc");
                        if (queryParameters == null || queryParameters.size() == 0) {
                            List<String> queryParameters2 = uri.getQueryParameters(b);
                            if (queryParameters2 != null && queryParameters2.size() > 0) {
                                String str3 = queryParameters2.get(0);
                                if (!TextUtils.isEmpty(str3) && str3.equals(com.anythink.expressad.foundation.h.l.a(file))) {
                                    strA = a(str, str2, file);
                                }
                            }
                        } else {
                            strA = a(str, str2, file);
                        }
                    }
                    if (!TextUtils.isEmpty(strA)) {
                        com.anythink.expressad.foundation.h.m.b(file);
                    }
                }
                message = strA;
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
                message = e2.getMessage();
            }
        } else {
            message = strA;
        }
        return message;
    }

    public final void b() {
        try {
            if (TextUtils.isEmpty(this.f)) {
                return;
            }
            h.a.a.a(new com.anythink.expressad.foundation.g.g.a() { // from class: com.anythink.expressad.videocommon.b.m.1
                @Override // com.anythink.expressad.foundation.g.g.a
                public final void a() {
                    com.anythink.expressad.foundation.h.m.c(m.this.f);
                }

                @Override // com.anythink.expressad.foundation.g.g.a
                public final void b() {
                }

                @Override // com.anythink.expressad.foundation.g.g.a
                public final void c() {
                }
            });
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }
}
