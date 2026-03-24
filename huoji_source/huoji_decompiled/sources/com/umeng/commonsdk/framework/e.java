package com.umeng.commonsdk.framework;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static HandlerThread a = null;
    private static Handler b = null;
    private static d c = null;
    private static final int d = 768;
    private static final int e = 769;
    private static final int f = 770;

    private e() {
    }

    private static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        String str2;
        Context contextA = c.a();
        if (jSONObject != null && jSONObject2 != null) {
            try {
                if (jSONObject.opt(str) != null && (jSONObject.opt(str) instanceof JSONObject)) {
                    JSONObject jSONObject3 = (JSONObject) jSONObject.opt(str);
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception e2) {
                                com.umeng.commonsdk.proguard.e.a(contextA, e2);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(contextA, th);
            }
        }
        return jSONObject;
    }

    public static void a() {
        Handler handler = b;
        if (handler != null) {
            Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.what = f;
            b.sendMessage(messageObtainMessage);
        }
    }

    public static void a(Context context, int i, UMLogDataProtocol uMLogDataProtocol, Object obj) {
        if (context == null || uMLogDataProtocol == null) {
            com.umeng.commonsdk.statistics.common.e.b("--->>> Context or UMLogDataProtocol parameter cannot be null!");
            return;
        }
        c.a(context.getApplicationContext());
        if (c.a(i, uMLogDataProtocol)) {
            if (a == null || b == null) {
                e();
            }
            if (b != null) {
                if (c == null) {
                    b.f(context);
                    c = new d(context, b);
                }
                Message messageObtainMessage = b.obtainMessage();
                messageObtainMessage.what = d;
                messageObtainMessage.arg1 = i;
                messageObtainMessage.obj = obj;
                b.sendMessage(messageObtainMessage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Message message) {
        int i = message.arg1;
        Object obj = message.obj;
        UMLogDataProtocol uMLogDataProtocolA = c.a(c.a(i));
        if (uMLogDataProtocolA != null) {
            com.umeng.commonsdk.statistics.common.e.b("--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x" + Integer.toHexString(i) + "]");
            uMLogDataProtocolA.workEvent(obj, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        com.umeng.commonsdk.statistics.common.e.b("--->>> autoProcess Enter...");
        Context contextA = c.a();
        if (contextA != null) {
            long jMaxDataSpace = UMEnvelopeBuild.maxDataSpace(contextA);
            UMLogDataProtocol uMLogDataProtocolA = c.a("analytics");
            JSONObject jSONObject = null;
            int length = 0;
            try {
                if (UMEnvelopeBuild.isReadyBuild(contextA, UMLogDataProtocol.UMBusinessType.U_DPLUS) && uMLogDataProtocolA != null && (jSONObject = uMLogDataProtocolA.setupReportData(jMaxDataSpace)) != null) {
                    length = jSONObject.toString().getBytes().length;
                }
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("header", new JSONObject());
                        jSONObject2.put("content", new JSONObject());
                    } catch (Throwable th) {
                        com.umeng.commonsdk.proguard.e.a(contextA, th);
                    }
                    if (jSONObject != null && length > 0) {
                        jSONObject2 = a(a(jSONObject2, jSONObject.optJSONObject("header"), "header"), jSONObject.optJSONObject("content"), "content");
                    }
                    if (jSONObject2 == null || UMEnvelopeBuild.buildEnvelopeWithExtHeader(contextA, jSONObject2.optJSONObject("header"), jSONObject2.optJSONObject("content")) == null || jSONObject == null) {
                        return;
                    }
                    uMLogDataProtocolA.removeCacheData(jSONObject);
                }
            } catch (Throwable th2) {
                com.umeng.commonsdk.proguard.e.a(contextA, th2);
            }
        }
    }

    private static void e() {
        com.umeng.commonsdk.statistics.common.e.b("--->>> Dispatch: init Enter...");
        if (a == null) {
            HandlerThread handlerThread = new HandlerThread("work_thread");
            a = handlerThread;
            handlerThread.start();
            if (b == null) {
                b = new Handler(a.getLooper()) { // from class: com.umeng.commonsdk.framework.e.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        switch (message.what) {
                            case e.d /* 768 */:
                                e.b(message);
                                break;
                            case e.e /* 769 */:
                                e.d();
                                break;
                            case e.f /* 770 */:
                                e.g();
                                break;
                        }
                    }
                };
            }
        }
    }

    private static void f() {
        if (a != null) {
            a = null;
        }
        if (b != null) {
            b = null;
        }
        if (c != null) {
            c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g() {
        if (c == null || a == null) {
            return;
        }
        d.a();
        com.umeng.commonsdk.statistics.common.e.b("--->>> handleQuit: Quit dispatch thread.");
        a.quit();
        f();
    }
}
