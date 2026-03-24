package com.cyjh.event;

import android.app.Instrumentation;
import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaScannerConnection;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.event.accessibility.Cservice;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.ui.m;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.MqRunnerLite;
import com.cyjh.mqsdk.R;
import com.github.kevinsawicki.http.HttpRequest;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.googlecode.tesseract.android.TessBaseAPI;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.AuthenticationFailedException;
import javax.mail.MessagingException;
import javax.mail.internet.MimeBodyPart;
import org.apache.commons.io.FileUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.Cif;
import z2.af;
import z2.ag;
import z2.cm;
import z2.db;
import z2.eb;
import z2.em;
import z2.eo;
import z2.g3;
import z2.ge;
import z2.jf;
import z2.jg;
import z2.jo;
import z2.k3;
import z2.kx;
import z2.lo;
import z2.ng;
import z2.o4;
import z2.se;
import z2.te;
import z2.vl;
import z2.xe;
import z2.xf;
import z2.ze;
import z2.ze.OooO00o;
import z2.ze.OooO0O0;
import z2.ze.OooO0o;
import z2.zl;
import z2.zs;

/* JADX INFO: loaded from: classes.dex */
public final class Injector {
    private static boolean OooO = false;
    private static final String OooO00o = "Injector";
    private static Instrumentation OooO0O0 = null;
    private static Context OooO0OO = null;
    private static ExToast OooO0Oo = null;
    private static ze OooO0o = null;
    private static ge OooO0o0 = null;
    private static TessBaseAPI OooO0oO = null;
    private static boolean OooO0oo = false;
    private static int OooOO0 = 0;
    private static final float OooOO0o = 0.0f;
    private static final float OooOOO = -3.1415927f;
    private static final float OooOOO0 = -1.5707964f;
    private static final float OooOOOO = 1.5707964f;
    private static boolean OooOOOo = false;
    private static String OooOOo = null;
    private static int OooOOo0 = 0;
    private static final int OooOOoo = 1;
    private static final int OooOo = 2;
    private static final String OooOo0 = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11";
    private static final int OooOo00 = 2;
    private static final int OooOo0O = 5;
    private static final int OooOo0o = 1;
    private static final int OooOoO0 = 3;
    private static Handler OooOO0O = new OooO00o(Looper.getMainLooper());
    private static OooO0o[] OooOoO = null;
    private static MotionEvent.PointerProperties[] OooOoOO = null;
    private static MotionEvent.PointerCoords[] OooOoo0 = null;

    public interface OooO {
        public static final int OooO = 9;
        public static final int OooO00o = 1;
        public static final int OooO0O0 = 2;
        public static final int OooO0OO = 3;
        public static final int OooO0Oo = 4;
        public static final int OooO0o = 6;
        public static final int OooO0o0 = 5;
        public static final int OooO0oO = 7;
        public static final int OooO0oo = 8;
    }

    public class OooO00o extends Handler {
        public OooO00o(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Injector.OooO0oo((db) message.obj);
                    break;
                case 2:
                    Injector.OooOO0o((db) message.obj);
                    break;
                case 3:
                    Injector.OooOOOo((db) message.obj);
                    break;
                case 4:
                    Injector.OooOOoo((db) message.obj);
                    break;
                case 5:
                    Injector.OooOO0O();
                    break;
                case 6:
                    Injector.OooO0Oo();
                    break;
                case 7:
                    Injector.OooO((byte[]) message.obj);
                    break;
                case 8:
                    db dbVar = (db) message.obj;
                    if (!MqRunnerLite.getInstance().OooO0o) {
                        MqRunner.getInstance();
                    } else {
                        if (MqRunnerLite.getInstance().OooO0o0 != null) {
                            MqRunnerLite.getInstance().OooO0o0.onCallback(dbVar.OooO00o, dbVar.OooO0Oo);
                        }
                        if (MqRunnerLite.getInstance().OooO0Oo != null) {
                            MqRunnerLite.getInstance().OooO0Oo.callback(dbVar.OooO00o, dbVar.OooO0Oo);
                        }
                    }
                    break;
                case 9:
                    Injector.OooOo0((db) message.obj);
                    break;
            }
        }
    }

    public class OooO0O0 implements se.OooO0o {
        @Override // z2.se.OooO0o
        public final void a(int i) {
            Injector.setSyncReturnValue(i, "");
        }
    }

    public class OooO0OO implements te.OooO0O0 {
        @Override // z2.te.OooO0O0
        public final void a(String str) {
            Injector.setSyncReturnValue(0, str);
        }
    }

    public static class OooO0o {
        public boolean OooO00o;
        public int OooO0O0;
        public float OooO0OO;
        public float OooO0Oo;

        private OooO0o() {
        }

        public /* synthetic */ OooO0o(byte b) {
            this();
        }
    }

    private Injector() {
    }

    public static void AddContact(String str, String str2, String str3) {
        jf.OooO0o0(OooO0OO, str, str2, str3);
    }

    public static void ClearAllPhotos() {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/anjian/";
        File[] fileArrListFiles = new File(str).listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        String str2 = "_data like \"" + str + "%\"";
        OooO0OO.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, str2, null);
        OooO0OO.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, str2, null);
    }

    public static void ClearCaches(String str) {
    }

    public static void ClearContacts() throws Throwable {
        jf.OooO00o(OooO0OO);
    }

    public static void DeleteContact(String str) throws Throwable {
        jf.OooO0O0(OooO0OO, str);
    }

    public static void FloatEventThreadExit() {
        eb.OooO0oo();
    }

    public static void FreeupMemory() {
        OooO0o0.OooOOOo();
    }

    public static String GetAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String GetAppPackageName() {
        return "";
    }

    public static String GetAppPath(String str) {
        try {
            return OooO0OO.getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String GetAppSingInfo() {
        return "";
    }

    public static String GetDeviceID() {
        Context contextOooO0o0 = ag.OooO0o0();
        String deviceId = ((TelephonyManager) contextOooO0o0.getSystemService("phone")).getDeviceId();
        if (deviceId == null || deviceId.equals("")) {
            deviceId = ng.OooO00o(contextOooO0o0);
        }
        return TextUtils.isEmpty(deviceId) ? ng.OooO00o(ag.OooO0o0()) : deviceId;
    }

    public static String GetDeviceName() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && !TextUtils.isEmpty(defaultAdapter.getName())) {
                return defaultAdapter.getName();
            }
        } catch (Exception unused) {
        }
        return Build.MODEL;
    }

    public static int GetDisplayDpi() {
        return OooO0OO.getResources().getDisplayMetrics().densityDpi;
    }

    public static byte[] GetFloatEvent() {
        ByteString byteStringOooO0oO = eb.OooO0oO();
        if (byteStringOooO0oO == null) {
            return null;
        }
        return byteStringOooO0oO.toByteArray();
    }

    public static String GetForegroundPackage(int i) {
        return MqRunnerLite.getInstance().OooO0oO != null ? MqRunnerLite.getInstance().OooO0oO.getForegroundPackage() : "";
    }

    public static String GetFullUiElement() {
        return "";
    }

    public static String GetNetType() {
        return OooO0o0.OooOo0O();
    }

    public static String GetRunningApp() {
        return MqRunnerLite.getInstance().OooO0oO.getRunningPackages();
    }

    public static int GetScreenRotation() {
        return ((WindowManager) ag.OooO0Oo().getSystemService("window")).getDefaultDisplay().getRotation();
    }

    public static String GetSdcardDir() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static float GetTapRotation() {
        int iGetScreenRotation = GetScreenRotation();
        if (iGetScreenRotation == 0) {
            return 0.0f;
        }
        if (iGetScreenRotation == 1) {
            return OooOOO0;
        }
        if (iGetScreenRotation == 2) {
            return OooOOO;
        }
        if (iGetScreenRotation != 3) {
            return 0.0f;
        }
        return OooOOOO;
    }

    public static String GetUiElement() {
        return "";
    }

    public static byte[] GetUiEvent() {
        return eb.OooO0Oo();
    }

    public static boolean GetVPNStatus() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.isUp()) {
                    String name = networkInterface.getName();
                    Log.e("GetVPNStatus", "GetVPNStatus name:" + networkInterface.getName());
                    if (name.contains("tun") || name.contains("ppp") || name.contains("pptp")) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String GetVersion() {
        return "10_2168";
    }

    public static String GetWebViewElement(String str) {
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String ImageQRDeCode(String str) throws Throwable {
        FileInputStream fileInputStream;
        Bitmap bitmap;
        cm cmVar;
        HashMap map = new HashMap();
        map.put(DecodeHintType.CHARACTER_SET, "utf-8");
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream);
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    bitmap = bitmapDecodeStream;
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    bitmap = null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream2 != null) {
            }
            throw th;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            cmVar = new cm(width, height, iArr);
            try {
                em emVarOooO00o = new zl().OooO00o(new vl(new lo(cmVar)), map);
                Log.i("RootIpcFramework", "syncDecodeQRCode: result is:" + emVarOooO00o.OooO0oO());
                return emVarOooO00o.OooO0oO();
            } catch (Exception e6) {
                e = e6;
                e.printStackTrace();
                if (cmVar != null) {
                    try {
                        return new zl().OooO00o(new vl(new jo(cmVar)), map).OooO0oO();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                        return null;
                    }
                }
                return null;
            }
        } catch (Exception e7) {
            e = e7;
            cmVar = null;
        }
    }

    public static void ImageQREnCode(String str, String str2, int i) {
        eo eoVarOooO0O0;
        zs zsVar = new zs();
        HashMap map = new HashMap();
        map.put(EncodeHintType.CHARACTER_SET, "utf-8");
        map.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
        map.put(EncodeHintType.MARGIN, 2);
        try {
            eoVarOooO0O0 = zsVar.OooO0O0(str2, BarcodeFormat.QR_CODE, 400, 400, map);
        } catch (WriterException e) {
            e.printStackTrace();
            eoVarOooO0O0 = null;
        }
        int[] iArr = new int[160000];
        for (int i2 = 0; i2 < 400; i2++) {
            for (int i3 = 0; i3 < 400; i3++) {
                if (eoVarOooO0O0.OooO0o0(i2, i3)) {
                    iArr[(i2 * 400) + i3] = -16777216;
                } else {
                    iArr[(i2 * 400) + i3] = -1;
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, 400, 400, Bitmap.Config.RGB_565);
        if (bitmapCreateBitmap == null) {
            return;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapCreateBitmap.compress(str.endsWith(".png") ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            Log.e("RootIpcFramework", "ImageQREnCode IOException" + e2.toString());
        }
    }

    public static int InjectWebViewElement(String str, String str2) {
        return 0;
    }

    public static void InsertImageToGallery(String str, int i) throws Throwable {
        int i2 = Build.VERSION.SDK_INT;
        File file = new File(str);
        if (file.exists()) {
            if (i == 1) {
                String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/anjian/";
                File file2 = new File(str2);
                if (!file2.exists()) {
                    file2.mkdir();
                }
                File file3 = new File(str2 + file.getName());
                if (file3.exists()) {
                    file3.delete();
                }
                try {
                    FileUtils.copyFile(file, file3);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                file = file3;
            }
            if (i2 < 29) {
                try {
                    MediaStore.Images.Media.insertImage(OooO0OO.getContentResolver(), file.getAbsolutePath(), file.getName(), (String) null);
                } catch (FileNotFoundException e2) {
                    e2.printStackTrace();
                }
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", file.getName());
                contentValues.put("mime_type", "image/jpeg");
                contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
                ContentResolver contentResolver = OooO0OO.getContentResolver();
                Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                if (uriInsert == null) {
                    Log.e("InsertImageToGallery", "图片保存失败:" + str + a.bQ + file.getName());
                    return;
                }
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                    android.os.FileUtils.copy(bufferedInputStream, outputStreamOpenOutputStream);
                    bufferedInputStream.close();
                    outputStreamOpenOutputStream.close();
                    file.delete();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            if (i2 >= 19) {
                MediaScannerConnection.scanFile(OooO0OO, new String[]{file.getAbsolutePath()}, null, null);
                return;
            }
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file));
            OooO0OO.sendBroadcast(intent);
        }
    }

    public static void InsertVideoToGallery(String str) throws Throwable {
        File file = new File(str);
        if (file.exists()) {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/anjian/";
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdir();
            }
            File file3 = new File(str2 + file.getName());
            if (file3.exists()) {
                file3.delete();
            }
            try {
                FileUtils.copyFile(file, file3);
            } catch (IOException e) {
                e.printStackTrace();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ContentResolver contentResolver = OooO0OO.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", file3.getName());
            contentValues.put("_display_name", file3.getName());
            contentValues.put("mime_type", "video/3gp");
            contentValues.put("datetaken", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("date_modified", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("date_added", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("_data", file3.getAbsolutePath());
            contentValues.put("_size", Long.valueOf(file3.length()));
            OooO0OO.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues)));
        }
    }

    public static boolean Is64Bit() {
        Class<?> cls;
        Method declaredMethod;
        Object objInvoke;
        Method declaredMethod2;
        try {
            if (Build.VERSION.SDK_INT < 21 || (cls = Class.forName("dalvik.system.VMRuntime")) == null || (declaredMethod = cls.getDeclaredMethod("getRuntime", new Class[0])) == null || (objInvoke = declaredMethod.invoke(null, new Object[0])) == null || (declaredMethod2 = cls.getDeclaredMethod("is64Bit", new Class[0])) == null) {
                return false;
            }
            Object objInvoke2 = declaredMethod2.invoke(objInvoke, new Object[0]);
            if (objInvoke2 instanceof Boolean) {
                return ((Boolean) objInvoke2).booleanValue();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public static boolean IsRoot() {
        String str = System.getenv("PATH");
        new ArrayList();
        for (String str2 : str.split(":")) {
            File file = new File(str2, "su");
            if (file.exists() && file.canExecute()) {
                return true;
            }
            File file2 = new File(str2, "xu");
            if (file2.exists() && file2.canExecute()) {
                return true;
            }
        }
        return false;
    }

    public static void KeepScreen(boolean z) {
        OooO0o0.OooO0o(z ? 10 : 0);
    }

    public static void KeyDown(int i) {
        try {
            OooOo00().sendKeySync(new KeyEvent(0, i));
        } catch (Throwable unused) {
        }
    }

    public static void KeyPress(int i) {
        if (OooO) {
            KeyPressAB(i);
        } else if (MqRunnerLite.getInstance().OooO0oO != null) {
            MqRunnerLite.getInstance().OooO0oO.keyPress(i);
        }
    }

    public static void KeyPressAB(int i) {
        if (Cservice.OooOOOO()) {
            Cservice.OoooOoo.OooOOOo(i, OooO0OO);
        }
    }

    public static void KeyUp(int i) {
        try {
            OooOo00().sendKeySync(new KeyEvent(1, i));
        } catch (Throwable unused) {
        }
    }

    public static void KillApp(String str) {
        if (MqRunnerLite.getInstance().OooO0oO != null) {
            MqRunnerLite.getInstance().OooO0oO.killApp(str);
        }
    }

    public static void LockScreen() {
        OooO0o0.OooOo00();
    }

    public static void MoveZoomIn(float f, float f2, float f3, float f4, int i) {
        Log.e("RootIpcFramework", "MoveZoomIn");
        float f5 = (f + f3) / 2.0f;
        float f6 = (f2 + f4) / 2.0f;
        TouchDown(10123, f5, f6);
        TouchDown(10124, f5, f6);
        int i2 = i / 11;
        if (i2 < 10) {
            i2 = 10;
        }
        float f7 = (f - f5) / 11.0f;
        float f8 = (f2 - f6) / 11.0f;
        float f9 = (f3 - f5) / 11.0f;
        float f10 = (f4 - f6) / 11.0f;
        try {
            Thread.sleep(20L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        float f11 = f6;
        float f12 = f11;
        float f13 = f5;
        for (int i3 = 0; i3 < 11; i3++) {
            f5 += f7;
            f11 += f8;
            f13 += f9;
            f12 += f10;
            TouchMoveEvent(10123, f5, f11, 0);
            TouchMoveEvent(10124, f13, f12, 0);
            try {
                Thread.sleep(i2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        TouchUp(10123);
        TouchUp(10124);
    }

    public static void MoveZoomOut(float f, float f2, float f3, float f4, int i) {
        Log.e("RootIpcFramework", "MoveZoomOut");
        float f5 = (f + f3) / 2.0f;
        float f6 = (f2 + f4) / 2.0f;
        TouchDown(10125, f, f2);
        TouchDown(10126, f3, f4);
        int i2 = i / 11;
        if (i2 < 10) {
            i2 = 10;
        }
        float f7 = (f5 - f) / 11.0f;
        float f8 = (f6 - f2) / 11.0f;
        float f9 = (f5 - f3) / 11.0f;
        float f10 = (f6 - f4) / 11.0f;
        try {
            Thread.sleep(20L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (int i3 = 0; i3 < 11; i3++) {
            f += f7;
            f2 += f8;
            f3 += f9;
            f4 += f10;
            TouchMoveEvent(10125, f, f2, 0);
            TouchMoveEvent(10126, f3, f4, 0);
            try {
                Thread.sleep(i2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        TouchUp(10125);
        TouchUp(10126);
    }

    public static void NotifyApp(String str) {
        if (MqRunnerLite.getInstance().OooO0oo != null) {
            MqRunnerLite.getInstance().OooO0oo.callback(str);
        }
    }

    public static String OcrText(byte[] bArr, int i, int i2, int i3) {
        Log.e("TAG", "GetOrcText: width=" + i2 + " hight=" + i3 + " size=" + i);
        if (!OooO0oo) {
            OooO0oo = initTessBass();
        }
        if (!OooO0oo) {
            return "";
        }
        int i4 = i / 4;
        int[] iArr = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < 4; i6++) {
                iArr[i5] = iArr[i5] + ((bArr[(i5 * 4) + i6] & 255) << ((3 - i6) * 8));
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i2, i3, Bitmap.Config.ARGB_8888);
        OooO0oO.OooO0Oo(bitmapCreateBitmap);
        String strOooO00o = OooO0oO.OooO00o();
        bitmapCreateBitmap.recycle();
        return strOooO00o;
    }

    public static void OnElfCallback(int i, String str) {
        db dbVar = new db();
        dbVar.OooO00o = i;
        dbVar.OooO0Oo = str;
        OooO0oO(8, dbVar);
    }

    public static void OnPause() {
        OooOO0O.sendEmptyMessage(6);
    }

    public static void OnResponse(int i, String str) {
        db dbVar = new db();
        dbVar.OooO00o = i;
        dbVar.OooO0Oo = str;
        OooO0oO(8, dbVar);
    }

    public static void OnResume() {
        OooOO0O.sendEmptyMessage(5);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void OooO(byte[] bArr) {
        String parentId;
        af afVar;
        View view;
        CharSequence text;
        String string;
        TextPaint paint;
        try {
            UiMessage.CommandToUi from = UiMessage.CommandToUi.parseFrom(ByteString.copyFrom(bArr));
            if (from != null) {
                ze zeVar = OooO0o;
                String controlId = from.getControlId();
                UiMessage.CommandToUi.Command_Type command = from.getCommand();
                new StringBuilder("command: ").append(from);
                int i = 3;
                boolean zOooOOo = true;
                switch (ze.OooO0OO.OooO00o[command.ordinal()]) {
                    case 1:
                        try {
                            zeVar.OooO0OO(from.getPath());
                        } catch (IOException e) {
                            e = e;
                            e.printStackTrace();
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 2:
                        try {
                            zeVar.OooOO0o(from.getPath());
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        } catch (JSONException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 3:
                        int width = from.getWidth();
                        int height = from.getHeight();
                        int i2 = zeVar.OoooOoo + 1;
                        zeVar.OoooOoo = i2;
                        zeVar.OoooOoO[i2] = zeVar.Ooooo0o.OooOOOO(controlId, width, height);
                        zeVar.OooooO0.put(controlId, Integer.valueOf(zeVar.OoooOoo));
                        zeVar.OooooOO[zeVar.OoooOoo] = new HashMap();
                        zeVar.OoooOoO[zeVar.OoooOoo].OooO0oO = zeVar.new OooO00o(controlId);
                        zeVar.OoooOoO[zeVar.OoooOoo].OooO0o = zeVar.new OooO0O0(controlId);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 4:
                        if (zeVar.OooooO0.get(controlId) == null) {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId);
                            ze.OooO0o0(false);
                        } else if (!zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooOOo0) {
                            zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooOOoo();
                            ze.OooO0o0(true);
                            eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 5:
                        ze.OooOOOO(controlId);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 6:
                        zOooOOo = zeVar.OooOOo(controlId);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 7:
                        zeVar.OooOOO0();
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 8:
                        af[] afVarArr = zeVar.OoooOoO;
                        int i3 = zeVar.OoooOoo;
                        if (afVarArr[i3] != null) {
                            af afVar2 = afVarArr[i3];
                            zeVar.OooO00o();
                            afVar2.OooOO0(controlId, from.getParentId(), from.getWidth(), from.getHeight());
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 9:
                        String text2 = from.getText();
                        if (zeVar.OooooO0.get(controlId) == null) {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId);
                            zOooOOo = false;
                        } else {
                            zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooO0oo(text2);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 10:
                        if (zeVar.OooooO0.get(controlId) != null) {
                            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooO0O0()).build()).build().toByteString());
                        } else {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId);
                            ze.OooO0o0(false);
                        }
                        break;
                    case 11:
                        String controlId2 = from.getControlId();
                        String color = from.getColor();
                        if (zeVar.OooooO0.get(controlId2) == null) {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId2);
                            ze.OooO0o0(false);
                        } else if (!color.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            zeVar.OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                            ze.OooO0o0(false);
                        } else {
                            if (!color.startsWith("#")) {
                                color = "#".concat(String.valueOf(color));
                            }
                            zeVar.OoooOoO[zeVar.OooooO0.get(controlId2).intValue()].OooOOOO(Cif.OooO00o(Color.parseColor(color)));
                            ze.OooO0o0(true);
                        }
                        break;
                    case 12:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            LinearLayout linearLayoutOooOo00 = xeVar.OooOo00(controlId, from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.LINE);
                            af afVar3 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = linearLayoutOooOo00;
                            afVar = afVar3;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 13:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar2 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            TextView textViewOooOO0O = xeVar2.OooOO0O(controlId, from.getText(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.TEXT_VIEW);
                            af afVar4 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = textViewOooOO0O;
                            afVar = afVar4;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 14:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar3 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            EditText editTextOooOo = xeVar3.OooOo(controlId, from.getText(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.EDIT_TEXT);
                            zeVar.OoooOoO[zeVar.OoooOoo].OooO0oO(editTextOooOo, from.getParentId());
                            editTextOooOo.addTextChangedListener(zeVar.new OooO0o(controlId));
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 15:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar4 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            Button buttonOooOOo = xeVar4.OooOOo(controlId, from.getText(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.BUTTON);
                            buttonOooOOo.setOnClickListener(zeVar);
                            af afVar5 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = buttonOooOOo;
                            afVar = afVar5;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 16:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar5 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            RadioGroup radioGroupOooO0oo = xeVar5.OooO0oo(controlId, from.getItemTextList(), from.getDefaultItemIndex(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.RADIIO_GROUP);
                            af afVar6 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = radioGroupOooO0oo;
                            afVar = afVar6;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 17:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar6 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            CheckBox checkBoxOooO0Oo = xeVar6.OooO0Oo(controlId, from.getText(), from.getWidth(), from.getHeight(), from.getDefaultCheckStatus());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.CHECK_BOX);
                            af afVar7 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = checkBoxOooO0Oo;
                            afVar = afVar7;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 18:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            ImageView imageViewOooO0o0 = zeVar.Ooooo0o.OooO0o0(zeVar.OooO00o(), controlId, from.getWidth(), from.getHeight(), from.getPath());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.IMAGE_VIEW);
                            imageViewOooO0o0.setOnClickListener(zeVar);
                            af afVar8 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = imageViewOooO0o0;
                            afVar = afVar8;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 19:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar7 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            WebView webViewOooO0OO = xeVar7.OooO0OO(controlId, from.getWidth(), from.getHeight(), from.getUrl());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.WEB_VIEW);
                            af afVar9 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = webViewOooO0OO;
                            afVar = afVar9;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 20:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar8 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            List<String> itemTextList = from.getItemTextList();
                            int defaultItemIndex = from.getDefaultItemIndex();
                            from.getWidth();
                            from.getHeight();
                            Spinner spinnerOooO = xeVar8.OooO(controlId, itemTextList, defaultItemIndex);
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.SPINNER);
                            zeVar.OoooOoO[zeVar.OoooOoo].OooO0oO(spinnerOooO, from.getParentId());
                            spinnerOooO.setOnItemSelectedListener(zeVar);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 21:
                        af[] afVarArr2 = zeVar.OoooOoO;
                        int i4 = zeVar.OoooOoo;
                        if (afVarArr2[i4] != null) {
                            afVarArr2[i4].OooO(from.getControlId(), from.getHeight());
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 22:
                        af[] afVarArr3 = zeVar.OoooOoO;
                        int i5 = zeVar.OoooOoo;
                        if (afVarArr3[i5] != null) {
                            zOooOOo = afVarArr3[i5].OooOO0O(zeVar.OooO00o(), from.getControlId(), from.getParentId(), from.getText());
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                        zOooOOo = zeVar.OooO0o(from);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 34:
                        if (zeVar.OooooO0.get(controlId) != null) {
                            ze.OooO0o0(true);
                        } else if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId) == null) {
                            ze.OooO0o0(false);
                        } else {
                            View viewOooOOO0 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId);
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
                            layoutParams.width = -1;
                            viewOooOOO0.setLayoutParams(layoutParams);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 35:
                        zeVar.OooOOO(from);
                        break;
                    case 36:
                        zeVar.OooOO0O(from);
                        break;
                    case 37:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId3 = from.getControlId();
                            from.getText();
                            View viewOooOOO02 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId3);
                            if (viewOooOOO02 == null) {
                                ze.OooO0o0(false);
                            } else if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId3) == m.EDIT_TEXT) {
                                ((EditText) viewOooOOO02).setInputType(from.getEditInputType());
                                ze.OooO0o0(true);
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 38:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] == null) {
                            ze.OooO0o0(false);
                            break;
                        } else {
                            String controlId4 = from.getControlId();
                            if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId4) == null) {
                                ze.OooO0o0(false);
                                break;
                            } else {
                                switch (ze.OooO0OO.OooO0O0[((m) zeVar.OooooOO[zeVar.OoooOoo].get(controlId4)).ordinal()]) {
                                    case 1:
                                    case 2:
                                    case 3:
                                        text = ((TextView) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4)).getText();
                                        string = text.toString();
                                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        break;
                                    case 4:
                                        text = ((CheckBox) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4)).getText();
                                        string = text.toString();
                                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        break;
                                    case 5:
                                        RadioButton radioButton = (RadioButton) ((RadioGroup) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4)).findViewById(from.getItemIndex());
                                        if (radioButton != null) {
                                            text = radioButton.getText();
                                            string = text.toString();
                                            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        } else {
                                            ze.OooO0o0(false);
                                        }
                                        break;
                                    case 6:
                                        Spinner spinner = (Spinner) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4);
                                        if (from.getItemIndex() < spinner.getCount()) {
                                            new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(from.getItemIndex()));
                                            string = (String) spinner.getItemAtPosition(from.getItemIndex());
                                            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        } else {
                                            ze.OooO0o0(false);
                                        }
                                        break;
                                    default:
                                        ze.OooO0o0(false);
                                        break;
                                }
                            }
                        }
                        break;
                    case 39:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId5 = from.getControlId();
                            String color2 = from.getColor();
                            if (!color2.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                                zeVar.OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                                ze.OooO0o0(false);
                            } else {
                                if (!color2.startsWith("#")) {
                                    color2 = "#".concat(String.valueOf(color2));
                                }
                                int iOooO00o = Cif.OooO00o(Color.parseColor(color2));
                                if (zeVar.OooooO0.get(controlId5) == null) {
                                    View viewOooOOO03 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId5);
                                    if (viewOooOOO03 == null) {
                                        ze.OooO0o0(false);
                                        break;
                                    } else {
                                        switch (ze.OooO0OO.OooO0O0[((m) zeVar.OooooOO[zeVar.OoooOoo].get(controlId5)).ordinal()]) {
                                            case 1:
                                            case 2:
                                            case 3:
                                                ((TextView) viewOooOOO03).setTextColor(iOooO00o);
                                                break;
                                            case 4:
                                                ((CheckBox) viewOooOOO03).setTextColor(iOooO00o);
                                                break;
                                            case 5:
                                                RadioButton radioButton2 = (RadioButton) ((RadioGroup) viewOooOOO03).findViewById(from.getItemIndex());
                                                if (radioButton2 != null) {
                                                    radioButton2.setTextColor(iOooO00o);
                                                } else {
                                                    ze.OooO0o0(false);
                                                }
                                                break;
                                            case 6:
                                                if (from.getItemIndex() >= ((Spinner) viewOooOOO03).getCount()) {
                                                    ze.OooO0o0(false);
                                                }
                                                break;
                                            default:
                                                ze.OooO0o0(false);
                                                break;
                                        }
                                    }
                                } else {
                                    zeVar.OoooOoO[zeVar.OooooO0.get(controlId5).intValue()].OooO0OO(iOooO00o);
                                }
                                ze.OooO0o0(true);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 40:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId6 = from.getControlId();
                            View viewOooOOO04 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId6);
                            if (viewOooOOO04 != null) {
                                String color3 = from.getColor();
                                if (!color3.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                                    zeVar.OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                                    ze.OooO0o0(false);
                                } else {
                                    if (!color3.startsWith("#")) {
                                        color3 = "#".concat(String.valueOf(color3));
                                    }
                                    int iOooO00o2 = Cif.OooO00o(Color.parseColor(color3));
                                    if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId6) != m.BUTTON) {
                                        if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId6) != m.SPINNER) {
                                            viewOooOOO04.setBackgroundColor(iOooO00o2);
                                        }
                                        ze.OooO0o0(true);
                                    } else {
                                        GradientDrawable gradientDrawable = new GradientDrawable();
                                        gradientDrawable.setColor(iOooO00o2);
                                        gradientDrawable.setCornerRadius(zeVar.OooO());
                                        if (Build.VERSION.SDK_INT >= 16) {
                                            viewOooOOO04.setBackground(gradientDrawable);
                                        } else {
                                            viewOooOOO04.setBackgroundDrawable(gradientDrawable);
                                        }
                                        ze.OooO0o0(true);
                                    }
                                }
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 41:
                        zeVar.OooOo00(controlId);
                        break;
                    case 42:
                        af[] afVarArr4 = zeVar.OoooOoO;
                        int i6 = zeVar.OoooOoo;
                        if (afVarArr4[i6] != null) {
                            View viewOooOOO05 = afVarArr4[i6].OooOOO0(controlId);
                            if (viewOooOOO05 != null) {
                                boolean zIsEnabled = viewOooOOO05.isEnabled();
                                if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId) == m.EDIT_TEXT) {
                                    zIsEnabled = ((EditText) viewOooOOO05).isFocusable();
                                }
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(zIsEnabled).build()).build().toByteString());
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 43:
                        af[] afVarArr5 = zeVar.OoooOoO;
                        int i7 = zeVar.OoooOoo;
                        if (afVarArr5[i7] != null) {
                            View viewOooOOO06 = afVarArr5[i7].OooOOO0(controlId);
                            if (viewOooOOO06 != null) {
                                int visibility = viewOooOOO06.getVisibility();
                                if (visibility == 0) {
                                    i = 1;
                                } else if (visibility == 4) {
                                    i = 2;
                                } else if (visibility != 8) {
                                }
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 44:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId7 = from.getControlId();
                            if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId7) != null) {
                                int i8 = ze.OooO0OO.OooO0O0[((m) zeVar.OooooOO[zeVar.OoooOoo].get(controlId7)).ordinal()];
                                if (i8 == 1 || i8 == 2 || i8 == 3) {
                                    paint = ((TextView) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId7)).getPaint();
                                } else if (i8 == 4) {
                                    paint = ((CheckBox) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId7)).getPaint();
                                } else if (i8 != 5) {
                                    ze.OooO0o0(false);
                                } else {
                                    RadioButton radioButton3 = (RadioButton) ((RadioGroup) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId7)).findViewById(from.getItemIndex());
                                    if (radioButton3 == null) {
                                        ze.OooO0o0(false);
                                    } else {
                                        paint = radioButton3.getPaint();
                                    }
                                }
                                int color4 = paint.getColor();
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 45:
                    case 47:
                    default:
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 46:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            View viewOooOOO07 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(from.getControlId());
                            if (viewOooOOO07 != null) {
                                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewOooOOO07.getLayoutParams();
                                layoutParams2.gravity = from.getAlignType();
                                viewOooOOO07.setLayoutParams(layoutParams2);
                                new StringBuilder("set gravity ok; ").append(layoutParams2);
                                ze.OooO0o0(true);
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 48:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            View viewOooOOO08 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(from.getControlId());
                            if (viewOooOOO08 != null) {
                                UiMessage.Padding_Var padding = from.getPadding();
                                new StringBuilder("padding: ").append(padding.getLeft());
                                new StringBuilder("padding: ").append(padding.getTop());
                                new StringBuilder("padding: ").append(padding.getRight());
                                new StringBuilder("padding: ").append(padding.getBottom());
                                viewOooOOO08.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                                ze.OooO0o0(true);
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                }
            }
        } catch (InvalidProtocolBufferException e5) {
            e5.printStackTrace();
        }
    }

    private static final float OooO00o(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    private static int OooO0O0(int i, int i2) {
        int iOooOoO = OooOoO();
        int iOooOOo0 = OooOOo0(OooOOO(i));
        int i3 = 0;
        if (i2 != 1) {
            if (i2 == 2) {
                i3 = 1 == iOooOoO ? 2 : (iOooOOo0 * 256) + 2;
            } else if (i2 == 3) {
                i3 = 1 == iOooOoO ? 1 : (iOooOOo0 * 256) + 6;
            }
        } else if (1 != iOooOoO) {
            i3 = (iOooOOo0 * 256) + 5;
        }
        StringBuilder sb = new StringBuilder("injector>>>>>>touchType:");
        sb.append(i2);
        sb.append("action:");
        sb.append(i3);
        sb.append("---pointerNum:");
        sb.append(iOooOoO);
        sb.append("---pointerId:");
        sb.append(iOooOOo0);
        return i3;
    }

    private static String OooO0OO(String str) {
        try {
            Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
            while (matcher.find()) {
                String strGroup = matcher.group();
                str = str.replaceAll(strGroup, URLEncoder.encode(strGroup, "UTF-8"));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static /* synthetic */ void OooO0Oo() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onPause();
        }
    }

    private static void OooO0o(int i, float f, float f2) {
        OooO0o oooO0o;
        int i2 = 0;
        while (true) {
            if (i2 >= 5) {
                for (int i3 = 0; i3 < 5; i3++) {
                    OooO0o[] oooO0oArr = OooOoO;
                    if (oooO0oArr[i3].OooO00o) {
                        oooO0oArr[i3].OooO0O0 = i;
                        oooO0oArr[i3].OooO0OO = f;
                        oooO0oArr[i3].OooO0Oo = f2;
                        oooO0o = oooO0oArr[i3];
                    }
                }
                return;
            }
            OooO0o[] oooO0oArr2 = OooOoO;
            if (!oooO0oArr2[i2].OooO00o && oooO0oArr2[i2].OooO0O0 == i) {
                oooO0oArr2[i2].OooO0O0 = i;
                oooO0oArr2[i2].OooO0OO = f;
                oooO0oArr2[i2].OooO0Oo = f2;
                oooO0o = oooO0oArr2[i2];
                break;
            }
            i2++;
        }
        oooO0o.OooO00o = false;
    }

    private static void OooO0o0(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            OooO0o[] oooO0oArr = OooOoO;
            if (i == oooO0oArr[i2].OooO0O0) {
                oooO0oArr[i2].OooO00o = true;
                oooO0oArr[i2].OooO0O0 = 0;
                oooO0oArr[i2].OooO0OO = 0.0f;
                oooO0oArr[i2].OooO0Oo = 0.0f;
            }
        }
    }

    private static void OooO0oO(int i, db dbVar) {
        StringBuilder sb = new StringBuilder("sendToTargetHandler ");
        sb.append(i);
        sb.append("         ");
        sb.append(dbVar);
        OooOO0O.obtainMessage(i, dbVar).sendToTarget();
    }

    public static /* synthetic */ void OooO0oo(db dbVar) {
        if (OooO0Oo == null) {
            OooO0Oo = new ExToast(OooO0OO);
        }
        OooO0Oo.show(dbVar.OooO0Oo, dbVar.OooO00o, dbVar.OooO0O0, dbVar.OooO0OO);
    }

    private static OooO0o OooOO0(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            OooO0o[] oooO0oArr = OooOoO;
            if (!oooO0oArr[i2].OooO00o && oooO0oArr[i2].OooO0O0 == i) {
                return oooO0oArr[i2];
            }
        }
        return null;
    }

    public static /* synthetic */ void OooOO0O() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onResume();
        }
    }

    public static /* synthetic */ void OooOO0o(db dbVar) {
        new se(OooO0OO, dbVar.OooO0Oo, dbVar.OooO00o, new OooO0O0()).OooO00o();
    }

    private static int OooOOO(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            OooO0o[] oooO0oArr = OooOoO;
            if (!oooO0oArr[i2].OooO00o && oooO0oArr[i2].OooO0O0 == i) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void OooOOO0(byte[] bArr) {
        String parentId;
        af afVar;
        View view;
        CharSequence text;
        String string;
        TextPaint paint;
        try {
            UiMessage.CommandToUi from = UiMessage.CommandToUi.parseFrom(ByteString.copyFrom(bArr));
            if (from != null) {
                ze zeVar = OooO0o;
                String controlId = from.getControlId();
                UiMessage.CommandToUi.Command_Type command = from.getCommand();
                new StringBuilder("command: ").append(from);
                int i = 3;
                boolean zOooOOo = true;
                switch (ze.OooO0OO.OooO00o[command.ordinal()]) {
                    case 1:
                        try {
                            zeVar.OooO0OO(from.getPath());
                        } catch (IOException e) {
                            e = e;
                            e.printStackTrace();
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 2:
                        try {
                            zeVar.OooOO0o(from.getPath());
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        } catch (JSONException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 3:
                        int width = from.getWidth();
                        int height = from.getHeight();
                        int i2 = zeVar.OoooOoo + 1;
                        zeVar.OoooOoo = i2;
                        zeVar.OoooOoO[i2] = zeVar.Ooooo0o.OooOOOO(controlId, width, height);
                        zeVar.OooooO0.put(controlId, Integer.valueOf(zeVar.OoooOoo));
                        zeVar.OooooOO[zeVar.OoooOoo] = new HashMap();
                        zeVar.OoooOoO[zeVar.OoooOoo].OooO0oO = zeVar.new OooO00o(controlId);
                        zeVar.OoooOoO[zeVar.OoooOoo].OooO0o = zeVar.new OooO0O0(controlId);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 4:
                        if (zeVar.OooooO0.get(controlId) == null) {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId);
                            ze.OooO0o0(false);
                        } else if (!zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooOOo0) {
                            zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooOOoo();
                            ze.OooO0o0(true);
                            eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 5:
                        ze.OooOOOO(controlId);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 6:
                        zOooOOo = zeVar.OooOOo(controlId);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 7:
                        zeVar.OooOOO0();
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 8:
                        af[] afVarArr = zeVar.OoooOoO;
                        int i3 = zeVar.OoooOoo;
                        if (afVarArr[i3] != null) {
                            af afVar2 = afVarArr[i3];
                            zeVar.OooO00o();
                            afVar2.OooOO0(controlId, from.getParentId(), from.getWidth(), from.getHeight());
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 9:
                        String text2 = from.getText();
                        if (zeVar.OooooO0.get(controlId) == null) {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId);
                            zOooOOo = false;
                        } else {
                            zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooO0oo(text2);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 10:
                        if (zeVar.OooooO0.get(controlId) != null) {
                            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(zeVar.OoooOoO[zeVar.OooooO0.get(controlId).intValue()].OooO0O0()).build()).build().toByteString());
                        } else {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId);
                            ze.OooO0o0(false);
                        }
                        break;
                    case 11:
                        String controlId2 = from.getControlId();
                        String color = from.getColor();
                        if (zeVar.OooooO0.get(controlId2) == null) {
                            zeVar.OooO0O0(R.string.ui_show_not_found_ui, controlId2);
                            ze.OooO0o0(false);
                        } else if (!color.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            zeVar.OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                            ze.OooO0o0(false);
                        } else {
                            if (!color.startsWith("#")) {
                                color = "#".concat(String.valueOf(color));
                            }
                            zeVar.OoooOoO[zeVar.OooooO0.get(controlId2).intValue()].OooOOOO(Cif.OooO00o(Color.parseColor(color)));
                            ze.OooO0o0(true);
                        }
                        break;
                    case 12:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            LinearLayout linearLayoutOooOo00 = xeVar.OooOo00(controlId, from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.LINE);
                            af afVar3 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = linearLayoutOooOo00;
                            afVar = afVar3;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 13:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar2 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            TextView textViewOooOO0O = xeVar2.OooOO0O(controlId, from.getText(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.TEXT_VIEW);
                            af afVar4 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = textViewOooOO0O;
                            afVar = afVar4;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 14:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar3 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            EditText editTextOooOo = xeVar3.OooOo(controlId, from.getText(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.EDIT_TEXT);
                            zeVar.OoooOoO[zeVar.OoooOoo].OooO0oO(editTextOooOo, from.getParentId());
                            editTextOooOo.addTextChangedListener(zeVar.new OooO0o(controlId));
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 15:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar4 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            Button buttonOooOOo = xeVar4.OooOOo(controlId, from.getText(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.BUTTON);
                            buttonOooOOo.setOnClickListener(zeVar);
                            af afVar5 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = buttonOooOOo;
                            afVar = afVar5;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 16:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar5 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            RadioGroup radioGroupOooO0oo = xeVar5.OooO0oo(controlId, from.getItemTextList(), from.getDefaultItemIndex(), from.getWidth(), from.getHeight());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.RADIIO_GROUP);
                            af afVar6 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = radioGroupOooO0oo;
                            afVar = afVar6;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 17:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar6 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            CheckBox checkBoxOooO0Oo = xeVar6.OooO0Oo(controlId, from.getText(), from.getWidth(), from.getHeight(), from.getDefaultCheckStatus());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.CHECK_BOX);
                            af afVar7 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = checkBoxOooO0Oo;
                            afVar = afVar7;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 18:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            ImageView imageViewOooO0o0 = zeVar.Ooooo0o.OooO0o0(zeVar.OooO00o(), controlId, from.getWidth(), from.getHeight(), from.getPath());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.IMAGE_VIEW);
                            imageViewOooO0o0.setOnClickListener(zeVar);
                            af afVar8 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = imageViewOooO0o0;
                            afVar = afVar8;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 19:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar7 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            WebView webViewOooO0OO = xeVar7.OooO0OO(controlId, from.getWidth(), from.getHeight(), from.getUrl());
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.WEB_VIEW);
                            af afVar9 = zeVar.OoooOoO[zeVar.OoooOoo];
                            parentId = from.getParentId();
                            view = webViewOooO0OO;
                            afVar = afVar9;
                            afVar.OooO0oO(view, parentId);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 20:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            xe xeVar8 = zeVar.Ooooo0o;
                            zeVar.OooO00o();
                            List<String> itemTextList = from.getItemTextList();
                            int defaultItemIndex = from.getDefaultItemIndex();
                            from.getWidth();
                            from.getHeight();
                            Spinner spinnerOooO = xeVar8.OooO(controlId, itemTextList, defaultItemIndex);
                            zeVar.OooooOO[zeVar.OoooOoo].put(controlId, m.SPINNER);
                            zeVar.OoooOoO[zeVar.OoooOoo].OooO0oO(spinnerOooO, from.getParentId());
                            spinnerOooO.setOnItemSelectedListener(zeVar);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 21:
                        af[] afVarArr2 = zeVar.OoooOoO;
                        int i4 = zeVar.OoooOoo;
                        if (afVarArr2[i4] != null) {
                            afVarArr2[i4].OooO(from.getControlId(), from.getHeight());
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 22:
                        af[] afVarArr3 = zeVar.OoooOoO;
                        int i5 = zeVar.OoooOoo;
                        if (afVarArr3[i5] != null) {
                            zOooOOo = afVarArr3[i5].OooOO0O(zeVar.OooO00o(), from.getControlId(), from.getParentId(), from.getText());
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                        zOooOOo = zeVar.OooO0o(from);
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 34:
                        if (zeVar.OooooO0.get(controlId) != null) {
                            ze.OooO0o0(true);
                        } else if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId) == null) {
                            ze.OooO0o0(false);
                        } else {
                            View viewOooOOO0 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId);
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
                            layoutParams.width = -1;
                            viewOooOOO0.setLayoutParams(layoutParams);
                        }
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 35:
                        zeVar.OooOOO(from);
                        break;
                    case 36:
                        zeVar.OooOO0O(from);
                        break;
                    case 37:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId3 = from.getControlId();
                            from.getText();
                            View viewOooOOO02 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId3);
                            if (viewOooOOO02 == null) {
                                ze.OooO0o0(false);
                            } else if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId3) == m.EDIT_TEXT) {
                                ((EditText) viewOooOOO02).setInputType(from.getEditInputType());
                                ze.OooO0o0(true);
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 38:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] == null) {
                            ze.OooO0o0(false);
                            break;
                        } else {
                            String controlId4 = from.getControlId();
                            if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId4) == null) {
                                ze.OooO0o0(false);
                                break;
                            } else {
                                switch (ze.OooO0OO.OooO0O0[((m) zeVar.OooooOO[zeVar.OoooOoo].get(controlId4)).ordinal()]) {
                                    case 1:
                                    case 2:
                                    case 3:
                                        text = ((TextView) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4)).getText();
                                        string = text.toString();
                                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        break;
                                    case 4:
                                        text = ((CheckBox) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4)).getText();
                                        string = text.toString();
                                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        break;
                                    case 5:
                                        RadioButton radioButton = (RadioButton) ((RadioGroup) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4)).findViewById(from.getItemIndex());
                                        if (radioButton != null) {
                                            text = radioButton.getText();
                                            string = text.toString();
                                            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        } else {
                                            ze.OooO0o0(false);
                                        }
                                        break;
                                    case 6:
                                        Spinner spinner = (Spinner) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId4);
                                        if (from.getItemIndex() < spinner.getCount()) {
                                            new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(from.getItemIndex()));
                                            string = (String) spinner.getItemAtPosition(from.getItemIndex());
                                            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                        } else {
                                            ze.OooO0o0(false);
                                        }
                                        break;
                                    default:
                                        ze.OooO0o0(false);
                                        break;
                                }
                            }
                        }
                        break;
                    case 39:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId5 = from.getControlId();
                            String color2 = from.getColor();
                            if (!color2.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                                zeVar.OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                                ze.OooO0o0(false);
                            } else {
                                if (!color2.startsWith("#")) {
                                    color2 = "#".concat(String.valueOf(color2));
                                }
                                int iOooO00o = Cif.OooO00o(Color.parseColor(color2));
                                if (zeVar.OooooO0.get(controlId5) == null) {
                                    View viewOooOOO03 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId5);
                                    if (viewOooOOO03 == null) {
                                        ze.OooO0o0(false);
                                        break;
                                    } else {
                                        switch (ze.OooO0OO.OooO0O0[((m) zeVar.OooooOO[zeVar.OoooOoo].get(controlId5)).ordinal()]) {
                                            case 1:
                                            case 2:
                                            case 3:
                                                ((TextView) viewOooOOO03).setTextColor(iOooO00o);
                                                break;
                                            case 4:
                                                ((CheckBox) viewOooOOO03).setTextColor(iOooO00o);
                                                break;
                                            case 5:
                                                RadioButton radioButton2 = (RadioButton) ((RadioGroup) viewOooOOO03).findViewById(from.getItemIndex());
                                                if (radioButton2 != null) {
                                                    radioButton2.setTextColor(iOooO00o);
                                                } else {
                                                    ze.OooO0o0(false);
                                                }
                                                break;
                                            case 6:
                                                if (from.getItemIndex() >= ((Spinner) viewOooOOO03).getCount()) {
                                                    ze.OooO0o0(false);
                                                }
                                                break;
                                            default:
                                                ze.OooO0o0(false);
                                                break;
                                        }
                                    }
                                } else {
                                    zeVar.OoooOoO[zeVar.OooooO0.get(controlId5).intValue()].OooO0OO(iOooO00o);
                                }
                                ze.OooO0o0(true);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 40:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId6 = from.getControlId();
                            View viewOooOOO04 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId6);
                            if (viewOooOOO04 != null) {
                                String color3 = from.getColor();
                                if (!color3.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                                    zeVar.OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                                    ze.OooO0o0(false);
                                } else {
                                    if (!color3.startsWith("#")) {
                                        color3 = "#".concat(String.valueOf(color3));
                                    }
                                    int iOooO00o2 = Cif.OooO00o(Color.parseColor(color3));
                                    if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId6) != m.BUTTON) {
                                        if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId6) != m.SPINNER) {
                                            viewOooOOO04.setBackgroundColor(iOooO00o2);
                                        }
                                        ze.OooO0o0(true);
                                    } else {
                                        GradientDrawable gradientDrawable = new GradientDrawable();
                                        gradientDrawable.setColor(iOooO00o2);
                                        gradientDrawable.setCornerRadius(zeVar.OooO());
                                        if (Build.VERSION.SDK_INT >= 16) {
                                            viewOooOOO04.setBackground(gradientDrawable);
                                        } else {
                                            viewOooOOO04.setBackgroundDrawable(gradientDrawable);
                                        }
                                        ze.OooO0o0(true);
                                    }
                                }
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 41:
                        zeVar.OooOo00(controlId);
                        break;
                    case 42:
                        af[] afVarArr4 = zeVar.OoooOoO;
                        int i6 = zeVar.OoooOoo;
                        if (afVarArr4[i6] != null) {
                            View viewOooOOO05 = afVarArr4[i6].OooOOO0(controlId);
                            if (viewOooOOO05 != null) {
                                boolean zIsEnabled = viewOooOOO05.isEnabled();
                                if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId) == m.EDIT_TEXT) {
                                    zIsEnabled = ((EditText) viewOooOOO05).isFocusable();
                                }
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(zIsEnabled).build()).build().toByteString());
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 43:
                        af[] afVarArr5 = zeVar.OoooOoO;
                        int i7 = zeVar.OoooOoo;
                        if (afVarArr5[i7] != null) {
                            View viewOooOOO06 = afVarArr5[i7].OooOOO0(controlId);
                            if (viewOooOOO06 != null) {
                                int visibility = viewOooOOO06.getVisibility();
                                if (visibility == 0) {
                                    i = 1;
                                } else if (visibility == 4) {
                                    i = 2;
                                } else if (visibility != 8) {
                                }
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 44:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            String controlId7 = from.getControlId();
                            if (zeVar.OooooOO[zeVar.OoooOoo].get(controlId7) != null) {
                                int i8 = ze.OooO0OO.OooO0O0[((m) zeVar.OooooOO[zeVar.OoooOoo].get(controlId7)).ordinal()];
                                if (i8 == 1 || i8 == 2 || i8 == 3) {
                                    paint = ((TextView) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId7)).getPaint();
                                } else if (i8 == 4) {
                                    paint = ((CheckBox) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId7)).getPaint();
                                } else if (i8 != 5) {
                                    ze.OooO0o0(false);
                                } else {
                                    RadioButton radioButton3 = (RadioButton) ((RadioGroup) zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(controlId7)).findViewById(from.getItemIndex());
                                    if (radioButton3 == null) {
                                        ze.OooO0o0(false);
                                    } else {
                                        paint = radioButton3.getPaint();
                                    }
                                }
                                int color4 = paint.getColor();
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 45:
                    case 47:
                    default:
                        ze.OooO0o0(zOooOOo);
                        break;
                    case 46:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            View viewOooOOO07 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(from.getControlId());
                            if (viewOooOOO07 != null) {
                                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewOooOOO07.getLayoutParams();
                                layoutParams2.gravity = from.getAlignType();
                                viewOooOOO07.setLayoutParams(layoutParams2);
                                new StringBuilder("set gravity ok; ").append(layoutParams2);
                                ze.OooO0o0(true);
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                    case 48:
                        if (zeVar.OoooOoO[zeVar.OoooOoo] != null) {
                            View viewOooOOO08 = zeVar.OoooOoO[zeVar.OoooOoo].OooOOO0(from.getControlId());
                            if (viewOooOOO08 != null) {
                                UiMessage.Padding_Var padding = from.getPadding();
                                new StringBuilder("padding: ").append(padding.getLeft());
                                new StringBuilder("padding: ").append(padding.getTop());
                                new StringBuilder("padding: ").append(padding.getRight());
                                new StringBuilder("padding: ").append(padding.getBottom());
                                viewOooOOO08.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                                ze.OooO0o0(true);
                            } else {
                                ze.OooO0o0(false);
                            }
                        } else {
                            ze.OooO0o0(false);
                        }
                        break;
                }
            }
        } catch (InvalidProtocolBufferException e5) {
            e5.printStackTrace();
        }
    }

    private static void OooOOOO() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onResume();
        }
    }

    public static /* synthetic */ void OooOOOo(db dbVar) {
        new te(OooO0OO, dbVar.OooO0Oo, new OooO0OO()).OooO0O0();
    }

    private static void OooOOo() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onPause();
        }
    }

    private static int OooOOo0(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (!OooOoO[i3].OooO00o) {
                i2++;
            }
        }
        return i2;
    }

    public static /* synthetic */ void OooOOoo(db dbVar) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onUpdateControlBarPos(dbVar.OooO0o0, dbVar.OooO00o, dbVar.OooO0O0);
        }
    }

    private static void OooOo() {
        if (OooOoO == null) {
            OooOoO = new OooO0o[5];
            byte b = 0;
            for (int i = 0; i < 5; i++) {
                OooO0o oooO0o = new OooO0o(b);
                oooO0o.OooO00o = true;
                oooO0o.OooO0O0 = 0;
                oooO0o.OooO0OO = 0.0f;
                oooO0o.OooO0Oo = 0.0f;
                OooOoO[i] = oooO0o;
            }
        }
    }

    public static /* synthetic */ void OooOo0(db dbVar) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onSetControlBarVisiable(dbVar.OooO00o);
        }
    }

    private static Instrumentation OooOo00() {
        if (OooO0O0 == null) {
            OooOO0 = 0;
            OooOO0 = OooOo0O();
            OooO0O0 = new Instrumentation();
        }
        return OooO0O0;
    }

    private static int OooOo0O() {
        boolean zBooleanValue = false;
        for (int i : InputDevice.getDeviceIds()) {
            InputDevice device = InputDevice.getDevice(i);
            try {
                Method declaredMethod = Class.forName(device.getClass().getName()).getDeclaredMethod("supportsSource", Integer.TYPE);
                declaredMethod.setAccessible(true);
                zBooleanValue = ((Boolean) declaredMethod.invoke(device, 4098)).booleanValue();
            } catch (Exception e) {
                new StringBuilder("getInputDeviceId error:").append(e.getMessage());
            }
            if (zBooleanValue) {
                return i;
            }
        }
        return 0;
    }

    private static void OooOo0o(db dbVar) {
        if (OooO0Oo == null) {
            OooO0Oo = new ExToast(OooO0OO);
        }
        OooO0Oo.show(dbVar.OooO0Oo, dbVar.OooO00o, dbVar.OooO0O0, dbVar.OooO0OO);
    }

    private static int OooOoO() {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            if (!OooOoO[i2].OooO00o) {
                i++;
            }
        }
        return i;
    }

    private static void OooOoO0(db dbVar) {
        new se(OooO0OO, dbVar.OooO0Oo, dbVar.OooO00o, new OooO0O0()).OooO00o();
    }

    private static void OooOoOO(db dbVar) {
        new te(OooO0OO, dbVar.OooO0Oo, new OooO0OO()).OooO0O0();
    }

    private static void OooOoo(db dbVar) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onUpdateControlBarPos(dbVar.OooO0o0, dbVar.OooO00o, dbVar.OooO0O0);
        }
    }

    private static void OooOoo0() {
        int iOooOoO = OooOoO();
        if (iOooOoO == 0) {
            return;
        }
        OooOoOO = new MotionEvent.PointerProperties[iOooOoO];
        OooOoo0 = new MotionEvent.PointerCoords[iOooOoO];
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            if (!OooOoO[i2].OooO00o) {
                if (i < iOooOoO) {
                    MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                    MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
                    pointerProperties.id = i2;
                    OooO0o[] oooO0oArr = OooOoO;
                    pointerCoords.x = oooO0oArr[i2].OooO0OO;
                    pointerCoords.y = oooO0oArr[i2].OooO0Oo;
                    pointerCoords.orientation = GetTapRotation();
                    OooOoOO[i] = pointerProperties;
                    OooOoo0[i] = pointerCoords;
                }
                i++;
            }
        }
    }

    private static void OooOooO(db dbVar) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().OooO0OO;
        if (onScriptListener != null) {
            onScriptListener.onSetControlBarVisiable(dbVar.OooO00o);
        }
    }

    public static void PlaySound(String str) {
        ge.OooOOO(str);
    }

    public static void RandomTap(float f, float f2, int i, String str) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            StringBuilder sb = new StringBuilder("RandomTap：x=");
            sb.append(f);
            sb.append(",y = ");
            sb.append(f2);
            sb.append(",random = ");
            sb.append(i);
            double d = i;
            float fRandom = f + ((int) ((Math.random() * d) - ((double) (i / 2))));
            float fRandom2 = f2 + ((int) ((Math.random() * d) - ((double) (i / 2))));
            StringBuilder sb2 = new StringBuilder("RandomTap：realX=");
            sb2.append(fRandom);
            sb2.append(",realY = ");
            sb2.append(fRandom2);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoords.x = fRandom;
            pointerCoords.y = fRandom2;
            pointerCoords.orientation = GetTapRotation();
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
            try {
                Thread.sleep(50L);
            } catch (Exception unused) {
            }
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
            new xf(OooO0OO).OooO0O0((int) fRandom, (int) fRandom2, str);
        } catch (Throwable unused2) {
        }
    }

    public static void RandomsTap(float f, float f2, int i, String str) {
        float f3;
        long jUptimeMillis;
        StringBuilder sb = new StringBuilder("RandomsTap：x=");
        sb.append(f);
        sb.append(",y = ");
        sb.append(f2);
        sb.append(",random = ");
        sb.append(i);
        double d = i;
        double d2 = i / 2;
        float fRandom = f + ((int) ((Math.random() * d) - d2));
        float fRandom2 = f2 + ((int) ((Math.random() * d) - d2));
        StringBuilder sb2 = new StringBuilder("RandomTap：x2=");
        sb2.append(fRandom);
        sb2.append(",y2 = ");
        sb2.append(fRandom2);
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 0, f, f2, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
        try {
            jUptimeMillis = SystemClock.uptimeMillis();
            f3 = fRandom;
        } catch (InterruptedException e) {
            e = e;
            f3 = fRandom;
        }
        try {
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 2, fRandom, fRandom2, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
            Thread.sleep(20L);
        } catch (InterruptedException e2) {
            e = e2;
            e.printStackTrace();
        }
        long jUptimeMillis3 = SystemClock.uptimeMillis();
        OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis3, jUptimeMillis3, 1, f3, fRandom2, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
        new xf(OooO0OO).OooO0O0((int) f3, (int) fRandom2, str);
    }

    public static void RunApp(String str, String str2) {
        if (MqRunnerLite.getInstance().OooO0oO != null) {
            MqRunnerLite.getInstance().OooO0oO.launchApp(str);
        }
    }

    public static void SaveSnapShot(int[] iArr, int i, int i2, int i3, String str, int i4) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i2, i3, Bitmap.Config.ARGB_8888);
        if (bitmapCreateBitmap == null) {
            return;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i4, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e("RootIpcFramework", "SaveSnapShot IOException" + e.toString());
        }
    }

    public static boolean SendSimpleEmail(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str6)) {
            Log.i("TestTAG", "SendSimpleEmail1 --- " + Thread.currentThread().getName());
            g3 g3Var = new g3(str2, str3);
            Log.i("TestTAG", "SendSimpleEmail2");
            g3Var.OooO0oO = str;
            g3Var.OooO0Oo = str2;
            g3Var.OooO = str5;
            g3Var.OooO0OO = str6.contains(";") ? str6.split(";") : new String[]{str6};
            g3Var.OooO0oo = str4;
            try {
                for (String str8 : str7.split("\\|")) {
                    if (new File(str8).exists()) {
                        MimeBodyPart mimeBodyPart = new MimeBodyPart();
                        mimeBodyPart.setDataHandler(new DataHandler(new FileDataSource(str8)));
                        mimeBodyPart.setFileName(str8);
                        g3Var.OooOO0o.addBodyPart(mimeBodyPart);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                return g3Var.OooO0o0();
            } catch (AuthenticationFailedException e2) {
                e2.printStackTrace();
            } catch (MessagingException e3) {
                e3.printStackTrace();
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static byte[] SendUiRequest(byte[] bArr) {
        OooOO0O.obtainMessage(7, bArr).sendToTarget();
        return eb.OooO0O0();
    }

    public static int SetAirplaneMode(boolean z) {
        return -1;
    }

    public static void SetAutoLockTime(int i) {
        OooO0o0.OooOO0(i);
    }

    public static void SetBTEnable(boolean z) {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (z) {
            defaultAdapter.enable();
        } else {
            defaultAdapter.disable();
        }
    }

    public static void SetBacklightLevel(int i) {
        if (i > 100) {
            i = 100;
        }
        OooO0o0.OooOOO0(i);
    }

    public static void SetCaptureScreenMode(int i) {
        if (i == 1) {
            jg.OooO0O0(OooO0OO);
        }
    }

    public static void SetCellularDataEnable(boolean z) {
        ConnectivityManager connectivityManager = (ConnectivityManager) OooO0OO.getSystemService("connectivity");
        try {
            connectivityManager.getClass().getMethod("setMobileDataEnabled", Boolean.TYPE).invoke(connectivityManager, Boolean.valueOf(z));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void SetControlBarPos(float f, int i, int i2) {
        db dbVar = new db();
        dbVar.OooO0o0 = f;
        dbVar.OooO00o = i;
        dbVar.OooO0O0 = i2;
        OooO0oO(4, dbVar);
    }

    public static void SetControlBarVisiable(boolean z) {
        db dbVar = new db();
        dbVar.OooO00o = z ? 1 : 0;
        OooO0oO(9, dbVar);
    }

    public static void SetIsAccessibility(boolean z) {
        OooO = z;
    }

    public static void SetRotationLockEnable(boolean z) {
        Settings.System.putInt(OooO0OO.getContentResolver(), "accelerometer_rotation", !z ? 1 : 0);
    }

    public static void SetVPNEnable(boolean z) {
        OooO0o0.OooOo();
    }

    public static void SetVolumeLevel(int i) {
        if (i > 100) {
            i = 100;
        }
        OooO0o0.OooOOo0(i);
    }

    public static void SetWifiEnable(boolean z) {
        ((WifiManager) OooO0OO.getSystemService("wifi")).setWifiEnabled(z);
    }

    public static String ShowInputDialog(String str, int i, int i2) {
        OooOOOo = false;
        db dbVar = new db();
        dbVar.OooO00o = i;
        dbVar.OooO0O0 = i2;
        dbVar.OooO0Oo = str;
        OooO0oO(3, dbVar);
        while (!OooOOOo) {
            try {
                TimeUnit.MILLISECONDS.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        new StringBuilder("InputDialog typed text: ").append(OooOOo);
        return OooOOo;
    }

    public static void ShowMessage(String str, int i, int i2, int i3) {
        db dbVar = new db();
        dbVar.OooO00o = i2;
        dbVar.OooO0O0 = i3;
        dbVar.OooO0OO = i;
        dbVar.OooO0Oo = str;
        OooO0oO(1, dbVar);
    }

    public static int ShowMsgBox(String str, int i, int i2, int i3) {
        OooOOOo = false;
        db dbVar = new db();
        dbVar.OooO00o = i;
        dbVar.OooO0O0 = i2;
        dbVar.OooO0OO = i3;
        dbVar.OooO0Oo = str;
        OooO0oO(2, dbVar);
        while (!OooOOOo) {
            try {
                TimeUnit.MILLISECONDS.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return OooOOo0;
    }

    public static void SpecialFunction(int i, String str) {
        StringBuilder sb = new StringBuilder("SpecialFunction   ");
        sb.append(i);
        sb.append(", ");
        sb.append(str);
        if (MqRunnerLite.getInstance().OooO0oO != null) {
            MqRunnerLite.getInstance().OooO0oO.doSpecialFuction(i, str);
        }
    }

    public static void StopPlay() {
        ge.OooOOo();
    }

    public static void StopScript() {
    }

    public static void Swipe(float f, float f2, float f3, float f4, int i) {
        if (OooO) {
            SwipeAB(f, f2, f3, f4, i);
            return;
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, f, f2, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
            int i2 = i / 11;
            for (int i3 = 1; i3 <= 11; i3++) {
                try {
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    float f5 = i3 / 11.0f;
                    OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 2, ((f3 - f) * f5) + f, ((f4 - f2) * f5) + f2, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
                    if (i2 != 0) {
                        Thread.sleep(i2);
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    long jUptimeMillis3 = SystemClock.uptimeMillis();
                    OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis3, jUptimeMillis3, 1, f3, f4, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
                }
            }
            long jUptimeMillis32 = SystemClock.uptimeMillis();
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis32, jUptimeMillis32, 1, f3, f4, 1.0f, 1.0f, 0, 1.0f, 1.0f, OooOO0, 0));
        } catch (Throwable unused) {
        }
    }

    @RequiresApi(api = 24)
    public static void SwipeAB(float f, float f2, float f3, float f4, int i) {
        int i2 = i <= 10 ? 10 : i;
        String str = OooO00o;
        Log.e(str, "SwipeABSwipeABSwipeAB1");
        if (Cservice.OooOOOO()) {
            Log.e(str, "SwipeABSwipeABSwipeAB2");
            Cservice.OoooOoo.OooO0O0((int) f, (int) f2, (int) f3, (int) f4, i2);
        }
    }

    public static void Tap(float f, float f2, int i) {
        StringBuilder sb = new StringBuilder("ipc process Tap1：x=");
        sb.append(f);
        sb.append(",y = ");
        sb.append(f2);
        sb.append(",delay = ");
        sb.append(i);
        if (OooO) {
            TapAB(f, f2, i);
            return;
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoords.x = f;
            pointerCoords.y = f2;
            pointerCoords.orientation = GetTapRotation();
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
            StringBuilder sb2 = new StringBuilder("Tap2 ：x=");
            sb2.append(f);
            sb2.append(",y = ");
            sb2.append(f2);
            sb2.append(",delay = ");
            sb2.append(i);
            if (i != 0) {
                try {
                    Thread.sleep(i);
                } catch (Exception unused) {
                }
            }
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
            StringBuilder sb3 = new StringBuilder("Tap3 ：x=");
            sb3.append(f);
            sb3.append(",y = ");
            sb3.append(f2);
            sb3.append(",delay = ");
            sb3.append(i);
        } catch (Throwable unused2) {
        }
    }

    @RequiresApi(api = 24)
    public static void TapAB(float f, float f2, int i) {
        if (i <= 10) {
            i = 10;
        }
        StringBuilder sb = new StringBuilder("TapAB (");
        sb.append(f);
        sb.append(",");
        sb.append(f2);
        sb.append(")");
        if (Cservice.OooOOOO()) {
            StringBuilder sb2 = new StringBuilder("TapAB (");
            sb2.append(f);
            sb2.append(",");
            sb2.append(f2);
            sb2.append(")");
            Cservice.OoooOoo.OooO0Oo((int) f, (int) f2, i);
        }
    }

    public static void TouchDown(int i, float f, float f2) {
        try {
            if (OooOoO == null) {
                OooOoO = new OooO0o[5];
                byte b = 0;
                for (int i2 = 0; i2 < 5; i2++) {
                    OooO0o oooO0o = new OooO0o(b);
                    oooO0o.OooO00o = true;
                    oooO0o.OooO0O0 = 0;
                    oooO0o.OooO0OO = 0.0f;
                    oooO0o.OooO0Oo = 0.0f;
                    OooOoO[i2] = oooO0o;
                }
            }
            if (OooOoO() >= 5) {
                return;
            }
            OooO0o(i, f, f2);
            long jUptimeMillis = SystemClock.uptimeMillis();
            int iOooO0O0 = OooO0O0(i, 1);
            int iOooOoO = OooOoO();
            OooOoo0();
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, iOooO0O0, iOooOoO, OooOoOO, OooOoo0, 0, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
        } catch (Throwable unused) {
        }
    }

    public static void TouchMove(int i, float f, float f2, int i2) {
        OooO0o oooO0oOooOO0;
        try {
            if (OooOoO == null || (oooO0oOooOO0 = OooOO0(i)) == null) {
                return;
            }
            float f3 = oooO0oOooOO0.OooO0OO;
            float f4 = oooO0oOooOO0.OooO0Oo;
            int i3 = 11;
            if (i2 <= 200) {
                float f5 = f3 - f;
                float f6 = f4 - f2;
                double dSqrt = Math.sqrt((f5 * f5) + (f6 * f6));
                double dMin = Math.min(ag.OooO0o0().getResources().getDisplayMetrics().widthPixels, ag.OooO0o0().getResources().getDisplayMetrics().heightPixels);
                if (!(2.0d * dSqrt > dMin)) {
                    i3 = ((int) ((dSqrt * 20.0d) / dMin)) + 1;
                }
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            for (int i4 = 1; i4 <= i3; i4++) {
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                float f7 = i4 / i3;
                OooO0o(i, ((f - f3) * f7) + f3, ((f2 - f4) * f7) + f4);
                int iOooO0O0 = OooO0O0(i, 2);
                int iOooOoO = OooOoO();
                OooOoo0();
                OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, iOooO0O0, iOooOoO, OooOoOO, OooOoo0, 0, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
                if (i2 != 0) {
                    long jUptimeMillis3 = (((long) i2) - (SystemClock.uptimeMillis() - jUptimeMillis)) / ((long) ((i3 + 1) - i4));
                    if (jUptimeMillis3 >= 10) {
                        Thread.sleep(jUptimeMillis3);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void TouchMoveEvent(int i, float f, float f2, int i2) {
        try {
            if (OooOoO == null || OooOO0(i) == null) {
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            OooO0o(i, f, f2);
            int iOooO0O0 = OooO0O0(i, 2);
            int iOooOoO = OooOoO();
            OooOoo0();
            if (i2 > 10) {
                Thread.sleep(i2 - 15);
            }
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, iOooO0O0, iOooOoO, OooOoOO, OooOoo0, 0, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void TouchUp(int i) {
        try {
            if (OooOoO == null || OooOO0(i) == null) {
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            int iOooO0O0 = OooO0O0(i, 3);
            int iOooOoO = OooOoO();
            OooOoo0();
            OooOo00().sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, iOooO0O0, iOooOoO, OooOoOO, OooOoo0, 0, 0, 0.0f, 0.0f, OooOO0, 0, 0, 0));
            for (int i2 = 0; i2 < 5; i2++) {
                OooO0o[] oooO0oArr = OooOoO;
                if (i == oooO0oArr[i2].OooO0O0) {
                    oooO0oArr[i2].OooO00o = true;
                    oooO0oArr[i2].OooO0O0 = 0;
                    oooO0oArr[i2].OooO0OO = 0.0f;
                    oooO0oArr[i2].OooO0Oo = 0.0f;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void TracePrint(String str) {
    }

    public static int UninstallApp(String str, String str2) {
        return -1;
    }

    public static void UnlockScreen() {
        OooO0o0.OooOo0();
    }

    public static String UrlRequest(int i, String str, String str2, int i2) {
        if (i2 <= 0) {
            i2 = 5;
        }
        if (i == 1) {
            int i3 = i2 * 1000;
            String strBody = HttpRequest.get(OooO0OO(str)).connectTimeout(i3).readTimeout(i3).useCaches(false).body();
            return strBody == null ? "" : strBody;
        }
        if (i == 2) {
            int i4 = i2 * 1000;
            String strBody2 = new HttpRequest(str, "POST").header("User-Agent", OooOo0).followRedirects(false).connectTimeout(i4).readTimeout(i4).useCaches(false).send(str2).body();
            return strBody2 == null ? "" : strBody2;
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0141 A[Catch: all -> 0x01b3, Exception -> 0x01b7, LOOP:1: B:36:0x013b->B:38:0x0141, LOOP_END, TryCatch #6 {Exception -> 0x01b7, all -> 0x01b3, blocks: (B:23:0x00e5, B:25:0x00f1, B:36:0x013b, B:38:0x0141, B:39:0x0151, B:41:0x0157, B:42:0x0170, B:44:0x0178, B:46:0x017e, B:48:0x0184, B:50:0x018f, B:51:0x0192, B:26:0x0100), top: B:91:0x00e5 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0157 A[Catch: all -> 0x01b3, Exception -> 0x01b7, TryCatch #6 {Exception -> 0x01b7, all -> 0x01b3, blocks: (B:23:0x00e5, B:25:0x00f1, B:36:0x013b, B:38:0x0141, B:39:0x0151, B:41:0x0157, B:42:0x0170, B:44:0x0178, B:46:0x017e, B:48:0x0184, B:50:0x018f, B:51:0x0192, B:26:0x0100), top: B:91:0x00e5 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018f A[Catch: all -> 0x01b3, Exception -> 0x01b7, TryCatch #6 {Exception -> 0x01b7, all -> 0x01b3, blocks: (B:23:0x00e5, B:25:0x00f1, B:36:0x013b, B:38:0x0141, B:39:0x0151, B:41:0x0157, B:42:0x0170, B:44:0x0178, B:46:0x017e, B:48:0x0184, B:50:0x018f, B:51:0x0192, B:26:0x0100), top: B:91:0x00e5 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a3 A[Catch: IOException -> 0x01a7, TRY_ENTER, TryCatch #3 {IOException -> 0x01a7, blocks: (B:53:0x01a3, B:57:0x01ab, B:70:0x01db, B:72:0x01e0), top: B:90:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ab A[Catch: IOException -> 0x01a7, TRY_LEAVE, TryCatch #3 {IOException -> 0x01a7, blocks: (B:53:0x01a3, B:57:0x01ab, B:70:0x01db, B:72:0x01e0), top: B:90:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fd A[Catch: IOException -> 0x01f9, TRY_LEAVE, TryCatch #0 {IOException -> 0x01f9, blocks: (B:78:0x01f5, B:82:0x01fd), top: B:86:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0151 A[EDGE_INSN: B:94:0x0151->B:39:0x0151 BREAK  A[LOOP:1: B:36:0x013b->B:38:0x0141], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String UrlRequestEx(int i, String str) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        Throwable th2;
        String string;
        String string2;
        String string3;
        HttpURLConnection httpURLConnection;
        PrintWriter printWriter;
        BufferedReader bufferedReader2;
        String line;
        String headerField;
        File file;
        Log.d("RootIpcFramework", "UrlRequestEx: type=" + i + " postData:" + str);
        String str2 = "";
        PrintWriter printWriter2 = null;
        bufferedReader = null;
        bufferedReader = null;
        BufferedReader bufferedReader3 = null;
        printWriter2 = null;
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string4 = jSONObject.getString(c.am);
                string = jSONObject.getString("data");
                string2 = jSONObject.getString("code");
                string3 = jSONObject.getString("setcookie");
                String string5 = jSONObject.getString("cookie");
                if (string2 == null || string2.isEmpty()) {
                    string2 = "UTF-8";
                }
                if (!string4.contains("http")) {
                    string4 = "http://".concat(String.valueOf(string4));
                }
                httpURLConnection = (HttpURLConnection) new URL(string4).openConnection();
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                if (jSONObject.get("header") instanceof JSONArray) {
                    Log.e("RootIpcFramework", "jsonObject: is JSONArray");
                    JSONObject jSONObject2 = jSONObject.getJSONArray("header").getJSONObject(0);
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String string6 = jSONObject2.getString(next);
                        Log.e("RootIpcFramework", "UrlRequestEx: key=" + next + "value=" + string6);
                        httpURLConnection.setRequestProperty(next, string6);
                    }
                }
                if (!string5.isEmpty()) {
                    httpURLConnection.setRequestProperty("Cookie", string5);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e = e2;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            if (printWriter2 != null) {
            }
            if (bufferedReader == null) {
            }
        }
        if (i == 2) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            printWriter = new PrintWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), string2));
            try {
                printWriter.print(string);
                printWriter.flush();
                bufferedReader2 = httpURLConnection.getResponseCode() == 200 ? new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), string2)) : new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), string2));
            } catch (Exception e3) {
                e = e3;
                bufferedReader = bufferedReader3;
                printWriter2 = printWriter;
                try {
                    Log.e("RootIpcFramework", "UrlRequestEx: Exception:" + e.toString());
                    e.printStackTrace();
                    if (printWriter2 != null) {
                        printWriter2.close();
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    th = th2;
                    if (printWriter2 != null) {
                        try {
                            printWriter2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            throw th;
                        }
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    bufferedReader.close();
                    throw th;
                }
            } catch (Throwable th5) {
                th2 = th5;
                bufferedReader = bufferedReader3;
                printWriter2 = printWriter;
                th = th2;
                if (printWriter2 != null) {
                }
                if (bufferedReader == null) {
                }
            }
        } else {
            if (i != 1) {
                printWriter = null;
                while (true) {
                    line = bufferedReader3.readLine();
                    if (line != null) {
                        break;
                    }
                    str2 = str2 + line;
                }
                if (httpURLConnection.getResponseCode() != 200) {
                    str2 = httpURLConnection.getResponseCode() + o4.OooO00o.OooO0Oo + str2;
                }
                headerField = httpURLConnection.getHeaderField("Set-Cookie");
                if (headerField != null && !headerField.isEmpty() && !string3.isEmpty()) {
                    file = new File(string3);
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    FileWriter fileWriter = new FileWriter(file.getName(), false);
                    fileWriter.write(headerField);
                    fileWriter.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
                if (bufferedReader3 != null) {
                    bufferedReader3.close();
                }
                Log.e("RootIpcFramework", "UrlRequestEx: result:".concat(String.valueOf(str2)));
                return str2;
            }
            httpURLConnection.connect();
            bufferedReader2 = httpURLConnection.getResponseCode() == 200 ? new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), string2)) : new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), string2));
            printWriter = null;
        }
        bufferedReader3 = bufferedReader2;
        while (true) {
            line = bufferedReader3.readLine();
            if (line != null) {
            }
            str2 = str2 + line;
        }
        if (httpURLConnection.getResponseCode() != 200) {
        }
        headerField = httpURLConnection.getHeaderField("Set-Cookie");
        if (headerField != null) {
            file = new File(string3);
            if (!file.exists()) {
            }
            FileWriter fileWriter2 = new FileWriter(file.getName(), false);
            fileWriter2.write(headerField);
            fileWriter2.close();
        }
        if (printWriter != null) {
        }
        if (bufferedReader3 != null) {
        }
        Log.e("RootIpcFramework", "UrlRequestEx: result:".concat(String.valueOf(str2)));
        return str2;
    }

    public static void Vibrate(int i) {
        OooO0o0.OooO0O0(i);
    }

    public static void dispatchGestureMoveAB(String str) {
        int i;
        JSONObject jSONObject;
        Path path = new Path();
        int i2 = 0;
        try {
            jSONObject = new JSONObject(str);
            i = jSONObject.getInt("duration");
        } catch (Exception e) {
            e = e;
        }
        try {
            if (jSONObject.get("points") instanceof JSONArray) {
                JSONArray jSONArray = jSONObject.getJSONArray("points");
                while (i2 < jSONArray.length()) {
                    int iIntValue = ((Integer) jSONArray.getJSONObject(i2).get("x")).intValue();
                    int iIntValue2 = ((Integer) jSONArray.getJSONObject(i2).get("y")).intValue();
                    float f = iIntValue;
                    float f2 = iIntValue2;
                    if (i2 == 0) {
                        path.moveTo(f, f2);
                    } else {
                        path.lineTo(f, f2);
                    }
                    StringBuilder sb = new StringBuilder("x:");
                    sb.append(iIntValue);
                    sb.append("y:");
                    sb.append(iIntValue2);
                    i2++;
                }
            }
        } catch (Exception e2) {
            e = e2;
            i2 = i;
            new StringBuilder("dispatchGestureMove: Exception:").append(e.toString());
            e.printStackTrace();
            i = i2;
        }
        Cservice.OoooOoo.OooO0oO(path, i);
    }

    public static String getAppList() {
        return kx.OooOOO;
    }

    public static void init(Context context) {
        Objects.requireNonNull(context, "Context is null...");
        OooO0OO = context.getApplicationContext();
        OooO0o0 = new ge(OooO0OO);
        OooO0o = new ze(OooO0OO);
        OooO0oo = initTessBass();
    }

    public static boolean initTessBass() {
        File file = new File(OooO0OO.getFilesDir().getAbsolutePath() + "/tessdata/", k3.o00000o0);
        File file2 = new File(OooO0OO.getFilesDir().getAbsolutePath() + "/tessdata/", k3.o00000Oo);
        boolean z = false;
        if (!file.exists() || !file2.exists()) {
            File file3 = new File(ag.OooOO0O + "/tessdata/", k3.o00000o0);
            File file4 = new File(ag.OooOO0O + "/tessdata/", k3.o00000Oo);
            if (!file3.exists() || !file4.exists()) {
                return false;
            }
            z = true;
        }
        OooO0oO = new TessBaseAPI();
        boolean zOooOOO = OooO0oO.OooOOO(z ? ag.OooOO0O : OooO0OO.getFilesDir().getAbsolutePath(), "chi_sim+eng");
        Log.i("MqmHandler", "initTessBass: init ret=".concat(String.valueOf(zOooOOO)));
        return zOooOOO;
    }

    public static boolean isLockScreen() {
        return !((PowerManager) OooO0OO.getSystemService("power")).isScreenOn();
    }

    public static int isRunning(String str) {
        return 0;
    }

    public static void release() {
        ge.OooOOo();
        OooO0o0.OooO00o();
        ze zeVar = OooO0o;
        zeVar.OooOOO0();
        zeVar.OoooOoo = 0;
        zeVar.OooooOo = 1;
        for (int i = 0; i < 32; i++) {
            zeVar.OoooOoO[i] = null;
            HashMap[] mapArr = zeVar.OooooOO;
            if (mapArr[i] != null) {
                mapArr[i].clear();
            }
        }
        releasePointerInfoArray();
    }

    public static void releasePointerInfoArray() {
        OooOoO = null;
    }

    public static String runTimeCmd(String str, int i) {
        return "";
    }

    public static void sendText(String str, int i) {
        if (OooO) {
            sendTextAB(str);
        } else if (MqRunnerLite.getInstance().OooO0oO != null) {
            MqRunnerLite.getInstance().OooO0oO.inputText(str);
        }
    }

    public static void sendTextAB(String str) {
        if (Cservice.OooOOOO()) {
            Cservice.OoooOoo.OooOOO(str, OooO0OO);
        }
    }

    public static void setSyncReturnValue(int i, String str) {
        OooOOo0 = i;
        OooOOo = str;
        OooOOOo = true;
    }

    public static void switchToIm(String str) {
    }
}
