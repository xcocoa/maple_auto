package com.octopus.ad.internal.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.CalendarContract;
import android.util.Base64;
import android.util.Pair;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.exoplayer.k.o;
import com.octopus.ad.AdActivity;
import com.octopus.ad.R;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.Hex;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.utilities.W3CEvent;
import com.octopus.ad.internal.view.AdWebView;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"InlinedApi"})
public class e {
    public static final String[] a = {CallMraidJS.f, CallMraidJS.g};
    public final AdWebView b;
    public int e;
    public int f;
    public int g;
    public boolean j;
    private int l;
    private int m;
    private Activity n;
    private ViewGroup o;
    private int q;
    private boolean k = false;
    public boolean c = false;
    public boolean d = false;
    public boolean h = false;
    public boolean i = false;
    private int[] p = new int[4];
    private boolean r = false;
    private f s = null;

    /* JADX INFO: renamed from: com.octopus.ad.internal.view.e$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[AdActivity.b.values().length];
            a = iArr;
            try {
                iArr[AdActivity.b.landscape.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[AdActivity.b.portrait.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[AdActivity.b.none.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum a {
        top_left,
        top_right,
        center,
        bottom_left,
        bottom_right,
        top_center,
        bottom_center
    }

    public enum b {
        STARTING_DEFAULT,
        STARTING_EXPANDED
    }

    public e(AdWebView adWebView) {
        this.b = adWebView;
    }

    private AdActivity.b a(String str) {
        return str.equals("landscape") ? AdActivity.b.landscape : str.equals("portrait") ? AdActivity.b.portrait : AdActivity.b.none;
    }

    @SuppressLint({"NewApi"})
    private void a(AdWebView adWebView) {
        if (a(new Intent("android.intent.action.VIEW", Uri.parse("sms:5555555555")))) {
            a(adWebView, "sms", true);
        }
        if (a(new Intent("android.intent.action.VIEW", Uri.parse("tel:5555555555")))) {
            a(adWebView, "tel", true);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 14) {
            if (a(new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI))) {
                a(adWebView, "calendar", true);
                this.i = true;
            } else if (a(new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event"))) {
                a(adWebView, "calendar", true);
                this.i = true;
                W3CEvent.useMIME = true;
            }
        }
        if (this.b.getContext().getPackageManager().checkPermission(com.anythink.china.common.d.b, this.b.getContext().getPackageName()) == 0 && i >= 11) {
            a(adWebView, "storePicture", true);
            this.h = true;
        }
        a(adWebView, "inlineVideo", true);
    }

    private void a(AdWebView adWebView, String str, boolean z) {
        adWebView.c(String.format("javascript:window.mraid.util.setSupports('%s', %s)", str, String.valueOf(z)));
    }

    private void c(ArrayList<Pair<String, String>> arrayList) {
        String strDecode = null;
        for (Pair<String, String> pair : arrayList) {
            if (((String) pair.first).equals("uri")) {
                strDecode = Uri.decode((String) pair.second);
            }
        }
        if (StringUtil.isEmpty(strDecode)) {
            return;
        }
        this.b.b(strDecode);
        this.b.c();
    }

    private void d(ArrayList<Pair<String, String>> arrayList) {
        String str = null;
        for (Pair<String, String> pair : arrayList) {
            if (((String) pair.first).equals("uri")) {
                str = (String) pair.second;
            }
        }
        if (str == null) {
            HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
            return;
        }
        final String strDecode = Uri.decode(str);
        AlertDialog.Builder builder = new AlertDialog.Builder(ViewUtil.getTopContext(this.b));
        builder.setTitle(R.string.store_picture_title);
        builder.setMessage(R.string.store_picture_message);
        builder.setPositiveButton(R.string.store_picture_accept, new DialogInterface.OnClickListener() { // from class: com.octopus.ad.internal.view.e.2
            /* JADX WARN: Code restructure failed: missing block: B:41:0x00d6, code lost:
            
                if (r0 == 0) goto L68;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x00f6, code lost:
            
                if (r0 == 0) goto L68;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v10 */
            /* JADX WARN: Type inference failed for: r0v11, types: [java.io.FileOutputStream] */
            /* JADX WARN: Type inference failed for: r0v14 */
            /* JADX WARN: Type inference failed for: r0v15 */
            /* JADX WARN: Type inference failed for: r0v16, types: [java.io.FileOutputStream] */
            /* JADX WARN: Type inference failed for: r0v17 */
            /* JADX WARN: Type inference failed for: r0v18 */
            /* JADX WARN: Type inference failed for: r0v19 */
            /* JADX WARN: Type inference failed for: r0v20 */
            /* JADX WARN: Type inference failed for: r0v21 */
            /* JADX WARN: Type inference failed for: r0v22 */
            /* JADX WARN: Type inference failed for: r0v23 */
            /* JADX WARN: Type inference failed for: r0v25 */
            /* JADX WARN: Type inference failed for: r0v33 */
            /* JADX WARN: Type inference failed for: r0v34 */
            /* JADX WARN: Type inference failed for: r0v35 */
            /* JADX WARN: Type inference failed for: r0v38 */
            /* JADX WARN: Type inference failed for: r0v39 */
            /* JADX WARN: Type inference failed for: r0v40 */
            /* JADX WARN: Type inference failed for: r0v41 */
            /* JADX WARN: Type inference failed for: r0v42 */
            /* JADX WARN: Type inference failed for: r0v43 */
            /* JADX WARN: Type inference failed for: r0v44 */
            /* JADX WARN: Type inference failed for: r0v9 */
            @Override // android.content.DialogInterface.OnClickListener
            @SuppressLint({"NewApi"})
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onClick(DialogInterface dialogInterface, int i) throws Throwable {
                ?? r0;
                FileOutputStream fileOutputStream;
                byte[] bArrDecode;
                int i2;
                if (strDecode.startsWith("data:")) {
                    String str2 = ".png";
                    if (strDecode.contains("image/gif")) {
                        str2 = ".gif";
                    } else if (strDecode.contains("image/jpeg") || strDecode.contains("image/pjpeg")) {
                        str2 = ".jpg";
                    } else if (!strDecode.contains("image/png")) {
                        if (strDecode.contains("image/tiff")) {
                            str2 = ".tif";
                        } else if (strDecode.contains("image/svg+xml")) {
                            str2 = ".svg";
                        }
                    }
                    boolean zContains = strDecode.contains("base64");
                    File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), System.currentTimeMillis() + str2);
                    ?? r02 = 0;
                    r02 = 0;
                    r02 = 0;
                    r02 = 0;
                    try {
                        try {
                            try {
                                fileOutputStream = new FileOutputStream(file);
                            } catch (IOException | IllegalStateException unused) {
                                HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
                            }
                        } catch (FileNotFoundException unused2) {
                        } catch (IOException unused3) {
                        } catch (IllegalArgumentException unused4) {
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        boolean zCanWrite = file.canWrite();
                        ?? r03 = zCanWrite;
                        if (zCanWrite) {
                            if (zContains) {
                                String str3 = strDecode;
                                int iLastIndexOf = str3.lastIndexOf(",") + 1;
                                bArrDecode = Base64.decode(str3.substring(iLastIndexOf, strDecode.length()), 0);
                                i2 = iLastIndexOf;
                            } else {
                                String str4 = strDecode;
                                int iLastIndexOf2 = str4.lastIndexOf(",") + 1;
                                bArrDecode = Hex.hexStringToByteArray(str4.substring(iLastIndexOf2, strDecode.length()));
                                i2 = iLastIndexOf2;
                            }
                            fileOutputStream.write(bArrDecode);
                            r03 = i2;
                        }
                        fileOutputStream.close();
                        r02 = r03;
                    } catch (FileNotFoundException unused5) {
                        r02 = fileOutputStream;
                        HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
                        r0 = r02;
                    } catch (IOException unused6) {
                        r02 = fileOutputStream;
                        HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
                        if (r02 != 0) {
                            r0 = r02;
                            r0.close();
                            r02 = r0;
                        }
                        e.this.b.c();
                    } catch (IllegalArgumentException unused7) {
                        r02 = fileOutputStream;
                        HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
                        r0 = r02;
                    } catch (Throwable th2) {
                        th = th2;
                        r02 = fileOutputStream;
                        if (r02 != 0) {
                            try {
                                r02.close();
                            } catch (IOException unused8) {
                                HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
                            }
                        }
                        throw th;
                    }
                } else {
                    DownloadManager downloadManager = (DownloadManager) e.this.b.getContext().getSystemService(g6.OoooOOo);
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(strDecode));
                    if (e.this.b.getContext().getPackageManager().checkPermission(com.anythink.china.common.d.b, e.this.b.getContext().getPackageName()) == 0) {
                        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, strDecode.split("/")[strDecode.split("/").length - 1]);
                        request.allowScanningByMediaScanner();
                        request.setNotificationVisibility(1);
                        downloadManager.enqueue(request);
                    } else {
                        HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.store_picture_error));
                    }
                }
                e.this.b.c();
            }
        });
        builder.setNegativeButton(R.string.store_picture_decline, new DialogInterface.OnClickListener() { // from class: com.octopus.ad.internal.view.e.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create().show();
    }

    private void e() {
        Activity activity = (Activity) this.b.getContextFromMutableContext();
        int[] iArr = new int[2];
        this.b.getLocationOnScreen(iArr);
        iArr[1] = iArr[1] - activity.getWindow().findViewById(android.R.id.content).getTop();
        this.b.measure(0, 0);
        int[] iArr2 = {this.b.getMeasuredWidth(), this.b.getMeasuredHeight()};
        ViewUtil.convertFromPixelsToDP(activity, iArr2);
        this.b.c(String.format("javascript:window.mraid.util.setDefaultPosition(%d, %d, %d, %d)", Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(iArr2[0]), Integer.valueOf(iArr2[1])));
    }

    private void e(ArrayList<Pair<String, String>> arrayList) {
        String str;
        int i;
        String str2 = null;
        for (Pair<String, String> pair : arrayList) {
            if (((String) pair.first).equals("uri")) {
                str2 = (String) pair.second;
            }
        }
        if (str2 == null) {
            str = HaoboLog.mraidLogTag;
            i = R.string.play_vide_no_uri;
        } else {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            try {
                intent.setDataAndType(Uri.parse(URLDecoder.decode(str2, "UTF-8")), o.e);
                try {
                    this.b.getContext().startActivity(intent);
                    this.b.c();
                    return;
                } catch (ActivityNotFoundException unused) {
                    return;
                }
            } catch (UnsupportedEncodingException unused2) {
                str = HaoboLog.mraidLogTag;
                i = R.string.unsupported_encoding;
            }
        }
        HaoboLog.d(str, HaoboLog.getString(i));
    }

    private void f() {
        if (this.b.getContextFromMutableContext() instanceof Activity) {
            Activity activity = (Activity) this.b.getContextFromMutableContext();
            int[] screenSizeAsPixels = ViewUtil.getScreenSizeAsPixels(activity);
            int i = screenSizeAsPixels[0];
            int top = screenSizeAsPixels[1] - activity.getWindow().findViewById(android.R.id.content).getTop();
            float f = activity.getResources().getDisplayMetrics().density;
            int i2 = (int) ((top / f) + 0.5f);
            int i3 = (int) ((i / f) + 0.5f);
            this.b.c("javascript:window.mraid.util.setMaxSize(" + i3 + ", " + i2 + ")");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void f(ArrayList<Pair<String, String>> arrayList) {
        W3CEvent w3CEventCreateFromJSON;
        if (arrayList != null) {
            try {
                w3CEventCreateFromJSON = arrayList.size() > 0 ? W3CEvent.createFromJSON(URLDecoder.decode((String) arrayList.get(0).second, "UTF-8")) : null;
            } catch (UnsupportedEncodingException unused) {
                return;
            }
        }
        if (w3CEventCreateFromJSON != null) {
            try {
                Intent insertIntent = w3CEventCreateFromJSON.getInsertIntent();
                insertIntent.setFlags(268435456);
                this.b.getContext().startActivity(insertIntent);
                this.b.c();
                HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.create_calendar_event));
            } catch (ActivityNotFoundException unused2) {
            }
        }
    }

    private void g() {
        if (this.b.getContextFromMutableContext() instanceof Activity) {
            int[] screenSizeAsDP = ViewUtil.getScreenSizeAsDP((Activity) this.b.getContextFromMutableContext());
            this.l = screenSizeAsDP[0];
            this.m = screenSizeAsDP[1];
            this.b.c("javascript:window.mraid.util.setScreenSize(" + this.l + ", " + this.m + ")");
        }
    }

    private void g(ArrayList<Pair<String, String>> arrayList) {
        AdActivity.b bVarA = AdActivity.b.none;
        int i = 1;
        boolean z = true;
        for (Pair<String, String> pair : arrayList) {
            if (((String) pair.first).equals("allow_orientation_change")) {
                z = Boolean.parseBoolean((String) pair.second);
            } else if (((String) pair.first).equals("force_orientation")) {
                bVarA = a((String) pair.second);
            }
        }
        if (this.c || this.b.adViewImpl.e()) {
            AdWebView adWebView = this.b;
            Activity activityC = adWebView.a ? c() : (Activity) ViewUtil.getTopContext(adWebView);
            if (z) {
                AdActivity.b(activityC);
                return;
            }
            int i2 = AnonymousClass4.a[bVarA.ordinal()];
            if (i2 == 1) {
                i = 2;
            } else if (i2 != 2) {
                i = 0;
            }
            AdActivity.a(activityC, i);
        }
    }

    private void h(ArrayList<Pair<String, String>> arrayList) {
        int i = 0;
        int i2 = -1;
        String str = "top-right";
        int i3 = -1;
        int i4 = 0;
        boolean z = true;
        for (Pair<String, String> pair : arrayList) {
            try {
                if (((String) pair.first).equals("w")) {
                    i2 = Integer.parseInt((String) pair.second);
                } else if (((String) pair.first).equals("h")) {
                    i3 = Integer.parseInt((String) pair.second);
                } else if (((String) pair.first).equals("offset_x")) {
                    i = Integer.parseInt((String) pair.second);
                } else if (((String) pair.first).equals("offset_y")) {
                    i4 = Integer.parseInt((String) pair.second);
                } else if (((String) pair.first).equals("custom_close_position")) {
                    str = (String) pair.second;
                } else if (((String) pair.first).equals("allow_offscreen")) {
                    z = Boolean.parseBoolean((String) pair.second);
                }
            } catch (NumberFormatException unused) {
                HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.number_format));
                return;
            }
        }
        if (i2 > this.l && i3 > this.m) {
            this.b.c("javascript:mraid.util.errorEvent('Resize called with resizeProperties larger than the screen.', 'mraid.resize()')");
            return;
        }
        a aVarValueOf = a.top_right;
        try {
            aVarValueOf = a.valueOf(str.replace('-', '_'));
        } catch (IllegalArgumentException unused2) {
        }
        int i5 = i2;
        int i6 = i3;
        int i7 = i;
        int i8 = i4;
        boolean z3 = z;
        HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.resize, i5, i6, i7, i8, str, z3));
        this.b.resize(i5, i6, i7, i8, aVarValueOf, z3);
        this.b.c();
        this.b.c("javascript:window.mraid.util.stateChangeEvent('resized');");
        this.d = true;
    }

    public void a() {
        if (!this.c && !this.d && !this.r) {
            if (!this.b.adViewImpl.e()) {
                this.b.d();
                return;
            }
            this.b.adViewImpl.getAdDispatcher().b();
            Activity activity = (Activity) this.b.getContextFromMutableContext();
            if (activity == null || activity.isFinishing()) {
                return;
            }
            activity.finish();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.b.getLayoutParams());
        layoutParams.height = this.f;
        layoutParams.width = this.e;
        layoutParams.gravity = this.b.adViewImpl.getMediaType().equals(l.BANNER) ? this.g : 17;
        this.b.setLayoutParams(layoutParams);
        this.b.e();
        this.b.c("javascript:window.mraid.util.stateChangeEvent('default');");
        if (!this.b.adViewImpl.e() && !this.r) {
            this.b.adViewImpl.getAdDispatcher().b();
        }
        Activity activity2 = (Activity) this.b.getContextFromMutableContext();
        if (activity2 != null) {
            activity2.setRequestedOrientation(-1);
        }
        this.c = false;
        this.d = false;
        this.s = null;
    }

    public void a(int i) {
        if (this.q != i) {
            this.q = i;
            f();
            g();
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        int[] iArr = this.p;
        if (iArr[0] == i && iArr[1] == i2 && iArr[2] == i3 && iArr[3] == i4) {
            return;
        }
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
        Activity activity = (Activity) this.b.getContextFromMutableContext();
        int[] iArr2 = {i, i2 - activity.getWindow().findViewById(android.R.id.content).getTop(), i3, i4};
        ViewUtil.convertFromPixelsToDP(activity, iArr2);
        int i5 = iArr2[0];
        int i6 = iArr2[1];
        int i7 = iArr2[2];
        int i8 = iArr2[3];
        this.b.c(String.format("javascript:window.mraid.util.setCurrentPosition(%d, %d, %d, %d)", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8)));
        this.b.c(String.format("javascript:window.mraid.util.sizeChangeEvent(%d, %d)", Integer.valueOf(i7), Integer.valueOf(i8)));
    }

    public void a(Activity activity) {
        this.n = activity;
    }

    public void a(ViewGroup viewGroup) {
        this.o = viewGroup;
    }

    public void a(AdWebView adWebView, String str) {
        if (this.k) {
            return;
        }
        String str2 = this.b.adViewImpl.d() ? "inline" : com.anythink.expressad.foundation.g.a.f.d;
        boolean zEquals = str.equals(a[b.STARTING_EXPANDED.ordinal()]);
        this.r = zEquals;
        this.b.a = zEquals;
        adWebView.c("javascript:window.mraid.util.setPlacementType('" + str2 + "')");
        if (!this.r) {
            a(adWebView);
            g();
            f();
            e();
        }
        this.b.f();
        adWebView.c("javascript:window.mraid.util.stateChangeEvent('" + str + "')");
        adWebView.c("javascript:window.mraid.util.readyEvent();");
        this.e = this.b.getLayoutParams().width;
        this.f = this.b.getLayoutParams().height;
        if (this.b.adViewImpl.getMediaType().equals(l.BANNER)) {
            this.g = ((FrameLayout.LayoutParams) this.b.getLayoutParams()).gravity;
        }
        this.k = true;
        a(this.b.g());
    }

    public void a(String str, boolean z) {
        String strReplaceFirst = str.replaceFirst("mraid://", "");
        String[] strArrSplit = strReplaceFirst.split("\\?");
        String strReplaceAll = strArrSplit[0].replaceAll("/", "");
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        if (strArrSplit.length > 1) {
            for (String str2 : strReplaceFirst.substring(strReplaceFirst.indexOf("?") + 1).split("&")) {
                String[] strArrSplit2 = str2.split("=");
                if (strArrSplit2.length >= 2 && !StringUtil.isEmpty(strArrSplit2[1]) && !"undefined".equals(strArrSplit2[1])) {
                    arrayList.add(new Pair<>(strArrSplit2[0], strArrSplit2[1]));
                }
            }
        }
        if (!strReplaceAll.equals("expand")) {
            if (strReplaceAll.equals(com.anythink.expressad.foundation.d.c.cf)) {
                a();
                return;
            }
            if (!strReplaceAll.equals("resize")) {
                if (strReplaceAll.equals("setOrientationProperties")) {
                    g(arrayList);
                    return;
                }
                if (this.i && strReplaceAll.equals("createCalendarEvent")) {
                    if (z) {
                        f(arrayList);
                        return;
                    }
                } else if (strReplaceAll.equals("playVideo")) {
                    if (z) {
                        e(arrayList);
                        return;
                    }
                } else if (!this.h || !strReplaceAll.equals("storePicture")) {
                    if (!strReplaceAll.equals("open")) {
                        if (strReplaceAll.equals("setUseCustomClose")) {
                            a(arrayList);
                            return;
                        } else {
                            if (strReplaceAll.equals("enable")) {
                                return;
                            }
                            HaoboLog.d(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.unsupported_mraid, strReplaceAll));
                            return;
                        }
                    }
                    if (z) {
                        c(arrayList);
                        return;
                    }
                } else if (z) {
                    d(arrayList);
                    return;
                }
            } else if (z) {
                h(arrayList);
                return;
            }
        } else if (z) {
            b(arrayList);
            return;
        }
        HaoboLog.w(HaoboLog.mraidLogTag, HaoboLog.getString(R.string.no_user_interaction, strReplaceFirst));
    }

    public void a(ArrayList<Pair<String, String>> arrayList) {
        this.b.setMRAIDUseCustomClose(Boolean.parseBoolean((String) arrayList.get(0).second));
    }

    public void a(boolean z) {
        if (this.k) {
            this.j = z;
            this.b.c("javascript:window.mraid.util.setIsViewable(" + z + ")");
        }
    }

    public boolean a(Intent intent) {
        return this.b.getContext().getPackageManager().queryIntentActivities(intent, 0).size() > 0;
    }

    public void b() {
        boolean zG = this.b.g();
        if (this.j != zG) {
            a(zG);
        }
    }

    public void b(ArrayList<Pair<String, String>> arrayList) {
        AdActivity.b bVar = AdActivity.b.none;
        String strDecode = null;
        final AdActivity.b bVarA = bVar;
        int i = -1;
        int i2 = -1;
        boolean z = false;
        final boolean z3 = true;
        for (Pair<String, String> pair : arrayList) {
            if (((String) pair.first).equals("w")) {
                try {
                    i = Integer.parseInt((String) pair.second);
                } catch (NumberFormatException unused) {
                }
            } else if (((String) pair.first).equals("h")) {
                i2 = Integer.parseInt((String) pair.second);
            } else if (((String) pair.first).equals("useCustomClose")) {
                z = Boolean.parseBoolean((String) pair.second);
            } else if (((String) pair.first).equals(com.anythink.expressad.foundation.d.c.am)) {
                strDecode = Uri.decode((String) pair.second);
            } else if (((String) pair.first).equals("allow_orientation_change")) {
                z3 = Boolean.parseBoolean((String) pair.second);
            } else if (((String) pair.first).equals("force_orientation")) {
                bVarA = a((String) pair.second);
            }
        }
        if (StringUtil.isEmpty(strDecode)) {
            this.b.a(i, i2, z, this, z3, bVarA);
        } else {
            try {
                f fVar = new f(this.b.adViewImpl, this);
                this.s = fVar;
                fVar.a(strDecode);
                this.b.adViewImpl.a(this.s.getMRAIDImplementation(), z, new AdWebView.b() { // from class: com.octopus.ad.internal.view.e.1
                    @Override // com.octopus.ad.internal.view.AdWebView.b
                    public void a() {
                        if (e.this.c() != null) {
                            e.this.s.a(e.this.c(), z3, bVarA);
                            AdViewImpl.setMRAIDFullscreenListener(null);
                        }
                    }
                });
            } catch (Exception e) {
                HaoboLog.e(HaoboLog.baseLogTag, "Exception initializing the redirect webview: " + e.getMessage());
            }
        }
        this.b.c("javascript:window.mraid.util.stateChangeEvent('expanded');");
        this.c = true;
        if (this.b.adViewImpl.e()) {
            return;
        }
        this.b.adViewImpl.getAdDispatcher().c();
    }

    public Activity c() {
        return this.n;
    }

    public ViewGroup d() {
        return this.o;
    }
}
