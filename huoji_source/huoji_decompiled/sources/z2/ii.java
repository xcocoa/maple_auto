package z2;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.cyjh.elfin.util.IpcSwap;
import com.cyjh.mobileanjian.ipc.uip.UisScriptRunner;
import com.cyjh.mq.sdk.MqBridge;
import com.cyjh.mq.service.IpcService;

/* JADX INFO: loaded from: classes2.dex */
public class ii {
    public static Application OooO00o;

    public static void OooO() {
        hi.OooO0OO().OooO();
    }

    public static String OooO00o(String str) {
        return IpcSwap.checkTemplateReq(str);
    }

    public static void OooO0O0() {
        MqBridge.exit();
    }

    public static vi OooO0OO(Context context, String str, String str2, String str3) {
        String str4 = "EnginSdk --- getScriptModel:" + str3;
        return si.OooO00o(context, str, str2, str3);
    }

    public static void OooO0Oo(Application application) {
        hi.OooO0OO().OooO0Oo(application);
        OooO00o = application;
    }

    public static void OooO0o(String str, String str2, String str3) {
        hi.OooO0OO().OooO0o(str, str2, str3);
    }

    public static void OooO0o0(Application application, String str, String str2, String str3, ji jiVar) {
        hi.OooO0OO().OooO0o0(application, str, str2, str3, jiVar);
    }

    public static boolean OooO0oO() {
        return hi.OooO0OO().OooO0oO();
    }

    public static boolean OooO0oo() {
        return hi.OooO0OO().OooO0oo();
    }

    public static void OooOO0() {
        hi.OooO0OO().OooOO0();
    }

    public static void OooOO0O(boolean z, int i, int i2, int i3, int i4) {
        hi.OooO0OO().OooOO0O(z, i, i2, i3, i4);
    }

    public static void OooOO0o(boolean z) {
        hi.OooO0OO().OooOO0o(z);
    }

    public static void OooOOO(String str) {
        hi.OooO0OO().OooOOO0(str);
    }

    public static void OooOOO0(String str) {
        MqBridge.setPaddleOcrV2Dir(str);
    }

    public static void OooOOOO(int i) {
        hi.OooO0OO().OooOOO(i);
    }

    public static void OooOOOo(String str, String str2, String str3, int i, long j, String str4, String str5, String str6, String str7) {
        String str8 = "EnginSdk -- setScriptInfo: " + str3;
        hi.OooO0OO().OooOOOO(str, str2, str3, i, j, str4, str5, str6, str7);
    }

    public static void OooOOo() {
        hi.OooO0OO().OooOOo0();
    }

    public static void OooOOo0(String str, String str2, String str3, String str4, String str5) {
        hi.OooO0OO().OooOOOo(str, str2, str3, str4, str5);
    }

    public static String OooOOoo(String str) {
        return IpcSwap.startAppReq(str);
    }

    public static void OooOo0() {
        hi.OooO0OO().OooOOo();
    }

    public static void OooOo00(String str, String str2, String str3, long j, String str4) {
        UisScriptRunner.getInstance().startLoop(str, str2, str3, j, str4);
    }

    public static void OooOo0O(Context context) {
        context.stopService(new Intent(context, (Class<?>) IpcService.class));
    }

    public static void OooOo0o() {
        UisScriptRunner.getInstance().stopLoop();
    }
}
