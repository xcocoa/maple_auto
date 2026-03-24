package com.anythink.expressad.videocommon.b;

import android.webkit.URLUtil;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.videocommon.b.h;
import com.anythink.expressad.videocommon.b.i;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final String a = "<anythinkloadend></anythinkloadend>";
    private static final String b = "DownLoadUtils";
    private static final int c = 20000;
    private static final int d = 30000;

    public static void a(final String str, final i.c cVar) {
        try {
            if (!w.a(str) && URLUtil.isNetworkUrl(str)) {
                h.a.a.a(new com.anythink.expressad.foundation.g.g.a() { // from class: com.anythink.expressad.videocommon.b.g.1
                    public final /* synthetic */ boolean f = true;

                    /* JADX WARN: Can't wrap try/catch for region: R(10:(8:5|6|113|7|(8:108|8|(1:10)(1:115)|45|(1:47)|(1:51)|(3:107|55|(2:60|61))|(2:75|(2:77|78)(1:117))(2:71|(2:73|74)(1:116)))|11|(4:13|101|14|(2:16|17))(1:20)|21)(2:30|31)|103|32|(1:34)|(1:36)|37|(0)|(1:65)|75|(0)(0)) */
                    /* JADX WARN: Code restructure failed: missing block: B:38:0x008a, code lost:
                    
                        r2 = e;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:107:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:110:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:47:0x00aa A[Catch: Exception -> 0x00ae, TRY_ENTER, TryCatch #0 {Exception -> 0x00ae, blocks: (B:34:0x0080, B:36:0x0085, B:47:0x00aa, B:51:0x00b2), top: B:100:0x0002 }] */
                    /* JADX WARN: Removed duplicated region for block: B:51:0x00b2 A[Catch: Exception -> 0x00ae, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ae, blocks: (B:34:0x0080, B:36:0x0085, B:47:0x00aa, B:51:0x00b2), top: B:100:0x0002 }] */
                    /* JADX WARN: Removed duplicated region for block: B:77:0x00f6 A[Catch: all -> 0x00d0, TRY_LEAVE, TryCatch #7 {all -> 0x00d0, blocks: (B:55:0x00bf, B:58:0x00c5, B:60:0x00c8, B:65:0x00d4, B:67:0x00da, B:69:0x00e0, B:71:0x00e8, B:73:0x00ec, B:75:0x00f2, B:77:0x00f6), top: B:107:0x00bf }] */
                    /* JADX WARN: Removed duplicated region for block: B:96:0x012a A[Catch: Exception -> 0x0126, TRY_LEAVE, TryCatch #10 {Exception -> 0x0126, blocks: (B:92:0x0122, B:96:0x012a), top: B:110:0x0122 }] */
                    @Override // com.anythink.expressad.foundation.g.g.a
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void a() throws Throwable {
                        InputStream inputStream;
                        ByteArrayOutputStream byteArrayOutputStream;
                        String str2;
                        byte[] byteArray;
                        String message;
                        Throwable th;
                        i.c cVar2;
                        HttpURLConnection httpURLConnection;
                        int responseCode;
                        boolean z;
                        byte[] bArr;
                        InputStream inputStream2 = null;
                        str = null;
                        String str3 = null;
                        inputStream2 = null;
                        boolean z3 = false;
                        try {
                            try {
                                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                                httpURLConnection.setReadTimeout(30000);
                                httpURLConnection.setConnectTimeout(20000);
                                responseCode = httpURLConnection.getResponseCode();
                            } catch (Exception e) {
                                e.printStackTrace();
                                message = e.getMessage();
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str2 = null;
                            byteArray = null;
                            byteArrayOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = null;
                            byteArrayOutputStream = null;
                        }
                        try {
                            if (responseCode == 200) {
                                inputStream = httpURLConnection.getInputStream();
                                try {
                                    bArr = new byte[6144];
                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                } catch (Exception e3) {
                                    e = e3;
                                    byteArray = null;
                                    byteArrayOutputStream = null;
                                    inputStream2 = inputStream;
                                    str2 = null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    byteArrayOutputStream = null;
                                    th = th;
                                    if (inputStream != null) {
                                    }
                                    if (byteArrayOutputStream != null) {
                                    }
                                    throw th;
                                }
                                while (true) {
                                    try {
                                        try {
                                            int i = inputStream.read(bArr);
                                            if (i == -1) {
                                                break;
                                            } else {
                                                byteArrayOutputStream.write(bArr, 0, i);
                                            }
                                        } catch (Exception e4) {
                                            e = e4;
                                            byteArray = null;
                                            inputStream2 = inputStream;
                                            str2 = null;
                                        }
                                        if (z3) {
                                            try {
                                                if (this.f && byteArray != null && byteArray.length > 0) {
                                                    cVar.a(byteArray, str);
                                                    return;
                                                }
                                            } catch (Throwable th4) {
                                                if (com.anythink.expressad.a.a) {
                                                    th4.printStackTrace();
                                                }
                                                i.c cVar3 = cVar;
                                                if (cVar3 != null) {
                                                    try {
                                                        cVar3.a(th4.getMessage());
                                                        return;
                                                    } catch (Exception e5) {
                                                        e5.printStackTrace();
                                                        return;
                                                    }
                                                }
                                                return;
                                            }
                                        }
                                        if (z3 || !w.b(str2) || str2.length() <= 0 || !str2.contains(g.a)) {
                                            cVar2 = cVar;
                                            if (cVar2 == null) {
                                                cVar2.a("content write failed:".concat(String.valueOf(message)));
                                                return;
                                            }
                                            return;
                                        }
                                        i.c cVar4 = cVar;
                                        if (cVar4 != null) {
                                            cVar4.a(byteArray, str);
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        if (inputStream != null) {
                                        }
                                        if (byteArrayOutputStream != null) {
                                        }
                                        throw th;
                                    }
                                    message = e.getMessage();
                                    new StringBuilder("getStringFromUrl failed ").append(e.getLocalizedMessage());
                                    if (inputStream2 != null) {
                                        inputStream2.close();
                                    }
                                    if (byteArrayOutputStream != null) {
                                        byteArrayOutputStream.close();
                                    }
                                }
                                if (byteArrayOutputStream.toByteArray() != null) {
                                    byteArray = byteArrayOutputStream.toByteArray();
                                    try {
                                        if (!this.f) {
                                            str3 = new String(byteArray);
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        str2 = null;
                                        inputStream2 = inputStream;
                                    }
                                } else {
                                    byteArray = null;
                                }
                                z = true;
                                message = "";
                                str2 = str3;
                                inputStream2 = inputStream;
                            } else {
                                message = "responseCode is ".concat(String.valueOf(responseCode));
                                str2 = null;
                                byteArray = null;
                                byteArrayOutputStream = null;
                                z = false;
                            }
                            httpURLConnection.disconnect();
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            z3 = z;
                            if (z3) {
                            }
                            if (z3) {
                            }
                            cVar2 = cVar;
                            if (cVar2 == null) {
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            inputStream = inputStream2;
                            th = th;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    e7.getMessage();
                                    throw th;
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            throw th;
                        }
                    }

                    @Override // com.anythink.expressad.foundation.g.g.a
                    public final void b() {
                    }

                    @Override // com.anythink.expressad.foundation.g.g.a
                    public final void c() {
                    }
                });
                return;
            }
            cVar.a("url is error");
        } catch (Throwable th) {
            if (com.anythink.expressad.a.a) {
                th.printStackTrace();
            }
        }
    }
}
