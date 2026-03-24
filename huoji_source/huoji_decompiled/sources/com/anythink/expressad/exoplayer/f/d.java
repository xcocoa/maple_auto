package com.anythink.expressad.exoplayer.f;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import z2.ne0;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
@TargetApi(16)
public final class d {
    private static final String a = "MediaCodecUtil";
    private static final String c = "OMX.MTK.AUDIO.DECODER.RAW";
    private static final SparseIntArray g;
    private static final SparseIntArray h;
    private static final String i = "avc1";
    private static final String j = "avc2";
    private static final Map<String, Integer> k;
    private static final String l = "hev1";
    private static final String m = "hvc1";
    private static final String b = "OMX.google.raw.decoder";
    private static final com.anythink.expressad.exoplayer.f.a d = com.anythink.expressad.exoplayer.f.a.a(b);
    private static final Pattern e = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<a, List<com.anythink.expressad.exoplayer.f.a>> f = new HashMap<>();
    private static int n = -1;

    public static final class a {
        public final String a;
        public final boolean b;

        public a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == a.class) {
                a aVar = (a) obj;
                if (TextUtils.equals(this.a, aVar.a) && this.b == aVar.b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.a;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.b ? 1231 : 1237);
        }
    }

    public static class b extends Exception {
        private b(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }

        public /* synthetic */ b(Throwable th, byte b) {
            this(th);
        }
    }

    public interface c {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.f.d$d, reason: collision with other inner class name */
    public static final class C0116d implements c {
        private C0116d() {
        }

        public /* synthetic */ C0116d(byte b) {
            this();
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final int a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return o.h.equals(str);
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final boolean b() {
            return false;
        }
    }

    @TargetApi(21)
    public static final class e implements c {
        private final int a;
        private MediaCodecInfo[] b;

        public e(boolean z) {
            this.a = z ? 1 : 0;
        }

        private void c() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final int a() {
            c();
            return this.b.length;
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final MediaCodecInfo a(int i) {
            c();
            return this.b[i];
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported("secure-playback");
        }

        @Override // com.anythink.expressad.exoplayer.f.d.c
        public final boolean b() {
            return true;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        g = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        h = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap map = new HashMap();
        k = map;
        map.put("L30", 1);
        map.put("L60", 4);
        map.put("L63", 16);
        map.put("L90", 64);
        map.put("L93", 256);
        map.put("L120", 1024);
        map.put("L123", 4096);
        map.put("L150", 16384);
        map.put("L153", 65536);
        map.put("L156", 262144);
        map.put("L180", 1048576);
        map.put("L183", 4194304);
        map.put("L186", 16777216);
        map.put("H30", 2);
        map.put("H60", 8);
        map.put("H63", 32);
        map.put("H90", 128);
        map.put("H93", 512);
        map.put("H120", 2048);
        map.put("H123", 8192);
        map.put("H150", 32768);
        map.put("H153", 131072);
        map.put("H156", 524288);
        map.put("H180", 2097152);
        map.put("H183", 8388608);
        map.put("H186", Integer.valueOf(ne0.OoooOOo));
    }

    private d() {
    }

    private static int a(int i2) {
        if (i2 == 1 || i2 == 2) {
            return 25344;
        }
        switch (i2) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            default:
                return -1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair<Integer, Integer> a(String str) {
        String[] strArrSplit;
        int i2;
        if (str == null) {
            return null;
        }
        strArrSplit = str.split("\\.");
        String str2 = strArrSplit[0];
        str2.hashCode();
        i2 = 2;
        switch (str2) {
            case "hev1":
            case "hvc1":
                if (strArrSplit.length < 4) {
                    Log.w(a, "Ignoring malformed HEVC codec string: ".concat(String.valueOf(str)));
                    break;
                } else {
                    Matcher matcher = e.matcher(strArrSplit[1]);
                    if (!matcher.matches()) {
                        Log.w(a, "Ignoring malformed HEVC codec string: ".concat(String.valueOf(str)));
                    } else {
                        String strGroup = matcher.group(1);
                        if ("1".equals(strGroup)) {
                            i2 = 1;
                        } else if (!"2".equals(strGroup)) {
                            Log.w(a, "Unknown HEVC profile string: ".concat(String.valueOf(strGroup)));
                        }
                        Integer num = k.get(strArrSplit[3]);
                        if (num == null) {
                            Log.w(a, "Unknown HEVC level string: " + matcher.group(1));
                        }
                    }
                    break;
                }
                break;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        String strConcat;
        int i2;
        if (strArr.length < 4) {
            strConcat = "Ignoring malformed HEVC codec string: ".concat(String.valueOf(str));
        } else {
            Matcher matcher = e.matcher(strArr[1]);
            if (matcher.matches()) {
                String strGroup = matcher.group(1);
                if ("1".equals(strGroup)) {
                    i2 = 1;
                } else if ("2".equals(strGroup)) {
                    i2 = 2;
                } else {
                    strConcat = "Unknown HEVC profile string: ".concat(String.valueOf(strGroup));
                }
                Integer num = k.get(strArr[3]);
                if (num != null) {
                    return new Pair<>(Integer.valueOf(i2), num);
                }
                strConcat = "Unknown HEVC level string: " + matcher.group(1);
            }
        }
        Log.w(a, strConcat);
        return null;
    }

    public static com.anythink.expressad.exoplayer.f.a a() {
        return d;
    }

    @Nullable
    public static com.anythink.expressad.exoplayer.f.a a(String str, boolean z) {
        List<com.anythink.expressad.exoplayer.f.a> listC = c(str, z);
        if (listC.isEmpty()) {
            return null;
        }
        return listC.get(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x029b A[Catch: Exception -> 0x02f0, TRY_ENTER, TryCatch #0 {Exception -> 0x02f0, blocks: (B:3:0x0004, B:5:0x0016, B:9:0x0028, B:12:0x002f, B:14:0x0035, B:16:0x003d, B:18:0x0045, B:20:0x004d, B:22:0x0055, B:24:0x005d, B:29:0x006d, B:33:0x0078, B:35:0x0080, B:37:0x008a, B:39:0x0094, B:44:0x00a1, B:46:0x00a9, B:48:0x00b3, B:50:0x00bb, B:52:0x00c3, B:54:0x00cb, B:56:0x00d3, B:58:0x00db, B:60:0x00e3, B:62:0x00eb, B:64:0x00f3, B:66:0x00fb, B:68:0x0103, B:72:0x010f, B:74:0x0117, B:76:0x0121, B:78:0x0129, B:80:0x0131, B:85:0x0141, B:87:0x0149, B:89:0x0151, B:91:0x0159, B:93:0x0163, B:95:0x016b, B:97:0x0173, B:99:0x017b, B:101:0x0183, B:103:0x018b, B:105:0x0193, B:110:0x01a3, B:112:0x01ab, B:114:0x01b3, B:116:0x01bd, B:118:0x01c5, B:120:0x01cb, B:122:0x01d3, B:126:0x01df, B:128:0x01e7, B:131:0x01f1, B:133:0x01fb, B:139:0x0209, B:141:0x0211, B:185:0x0293, B:188:0x029b, B:190:0x02a1, B:191:0x02b8, B:192:0x02d6), top: B:200:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02b8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ArrayList<com.anythink.expressad.exoplayer.f.a> a(a aVar, c cVar, String str) throws b {
        boolean z;
        int i2;
        MediaCodecInfo mediaCodecInfo;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        int i3;
        c cVar2 = cVar;
        try {
            ArrayList<com.anythink.expressad.exoplayer.f.a> arrayList = new ArrayList<>();
            String str2 = aVar.a;
            int iA = cVar.a();
            boolean zB = cVar.b();
            int i4 = 0;
            while (i4 < iA) {
                MediaCodecInfo mediaCodecInfoA = cVar2.a(i4);
                String name = mediaCodecInfoA.getName();
                if (!mediaCodecInfoA.isEncoder() && ((zB || !name.endsWith(".secure")) && (((i3 = af.a) >= 21 || (!"CIPAACDecoder".equals(name) && !"CIPMP3Decoder".equals(name) && !"CIPVorbisDecoder".equals(name) && !"CIPAMRNBDecoder".equals(name) && !"AACDecoder".equals(name) && !"MP3Decoder".equals(name))) && (i3 >= 18 || !"OMX.SEC.MP3.Decoder".equals(name))))) {
                    if (i3 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(name)) {
                        String str3 = af.b;
                        if ("a70".equals(str3) || ("Xiaomi".equals(af.c) && str3.startsWith("HM"))) {
                        }
                    } else if (i3 == 16 && "OMX.qcom.audio.decoder.mp3".equals(name)) {
                        String str4 = af.b;
                        if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                        }
                    } else if (i3 == 16 && "OMX.qcom.audio.decoder.aac".equals(name)) {
                        String str5 = af.b;
                        if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                        }
                    } else if (i3 < 24 && (("OMX.SEC.aac.dec".equals(name) || "OMX.Exynos.AAC.Decoder".equals(name)) && "samsung".equals(af.c))) {
                        String str6 = af.b;
                        if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                        }
                    } else if (i3 <= 19 && "OMX.SEC.vp8.dec".equals(name) && "samsung".equals(af.c)) {
                        String str7 = af.b;
                        if (str7.startsWith(com.anythink.expressad.foundation.g.a.O) || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                        }
                    } else if (i3 > 19 || !af.b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(name)) {
                        z = (o.B.equals(str) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(name)) ? false : true;
                    }
                }
                if (z) {
                    String[] supportedTypes = mediaCodecInfoA.getSupportedTypes();
                    int length = supportedTypes.length;
                    int i5 = 0;
                    while (i5 < length) {
                        String str8 = supportedTypes[i5];
                        if (str8.equalsIgnoreCase(str2)) {
                            try {
                                capabilitiesForType = mediaCodecInfoA.getCapabilitiesForType(str8);
                                i2 = iA;
                            } catch (Exception e2) {
                                e = e2;
                                i2 = iA;
                            }
                            try {
                                boolean zA = cVar2.a(str2, capabilitiesForType);
                                mediaCodecInfo = mediaCodecInfoA;
                                if (af.a <= 22) {
                                    try {
                                        String str9 = af.d;
                                        boolean z3 = ("ODROID-XU3".equals(str9) || "Nexus 10".equals(str9)) && ("OMX.Exynos.AVC.Decoder".equals(name) || "OMX.Exynos.AVC.Decoder.secure".equals(name));
                                        if (zB && aVar.b == zA) {
                                            arrayList.add(com.anythink.expressad.exoplayer.f.a.a(name, str2, capabilitiesForType, z3, false));
                                        } else if (!zB && !aVar.b) {
                                            arrayList.add(com.anythink.expressad.exoplayer.f.a.a(name, str2, capabilitiesForType, z3, false));
                                        } else if (!zB && zA) {
                                            try {
                                                arrayList.add(com.anythink.expressad.exoplayer.f.a.a(name + ".secure", str2, capabilitiesForType, z3, true));
                                                return arrayList;
                                            } catch (Exception e3) {
                                                e = e3;
                                                if (af.a > 23) {
                                                }
                                                Log.e(a, "Failed to query codec " + name + " (" + str8 + ")");
                                                throw e;
                                            }
                                        }
                                    } catch (Exception e4) {
                                        e = e4;
                                        if (af.a > 23 || arrayList.isEmpty()) {
                                            Log.e(a, "Failed to query codec " + name + " (" + str8 + ")");
                                            throw e;
                                        }
                                        Log.e(a, "Skipping codec " + name + " (failed to query capabilities)");
                                        i5++;
                                        cVar2 = cVar;
                                        iA = i2;
                                        mediaCodecInfoA = mediaCodecInfo;
                                    }
                                }
                            } catch (Exception e5) {
                                e = e5;
                                mediaCodecInfo = mediaCodecInfoA;
                                if (af.a > 23) {
                                }
                                Log.e(a, "Failed to query codec " + name + " (" + str8 + ")");
                                throw e;
                            }
                        } else {
                            i2 = iA;
                            mediaCodecInfo = mediaCodecInfoA;
                        }
                        i5++;
                        cVar2 = cVar;
                        iA = i2;
                        mediaCodecInfoA = mediaCodecInfo;
                    }
                }
                i4++;
                cVar2 = cVar;
                iA = iA;
            }
            return arrayList;
        } catch (Exception e6) {
            throw new b(e6, (byte) 0);
        }
    }

    private static void a(List<com.anythink.expressad.exoplayer.f.a> list) {
        if (af.a < 26) {
            if (list.size() <= 1 || !c.equals(list.get(0).c)) {
                return;
            }
            for (int i2 = 1; i2 < list.size(); i2++) {
                com.anythink.expressad.exoplayer.f.a aVar = list.get(i2);
                if (b.equals(aVar.c)) {
                    list.remove(i2);
                    list.add(0, aVar);
                    return;
                }
            }
        }
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i2 = af.a;
        if (i2 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i2 < 18 && "OMX.SEC.MP3.Decoder".equals(str)) {
            return false;
        }
        if (i2 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = af.b;
            if ("a70".equals(str3) || ("Xiaomi".equals(af.c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i2 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = af.b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i2 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = af.b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i2 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(af.c))) {
            String str6 = af.b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i2 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(af.c)) {
            String str7 = af.b;
            if (str7.startsWith(com.anythink.expressad.foundation.g.a.O) || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i2 <= 19 && af.b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (o.B.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static int b() {
        if (n == -1) {
            int iMax = 0;
            com.anythink.expressad.exoplayer.f.a aVarA = a(o.h, false);
            if (aVarA != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrA = aVarA.a();
                int length = codecProfileLevelArrA.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i2 = codecProfileLevelArrA[iMax].level;
                    int i3 = 9437184;
                    if (i2 != 1 && i2 != 2) {
                        switch (i2) {
                            case 8:
                            case 16:
                            case 32:
                                i3 = 101376;
                                break;
                            case 64:
                                i3 = 202752;
                                break;
                            case 128:
                            case 256:
                                i3 = 414720;
                                break;
                            case 512:
                                i3 = 921600;
                                break;
                            case 1024:
                                i3 = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i3 = 2097152;
                                break;
                            case 8192:
                                i3 = 2228224;
                                break;
                            case 16384:
                                i3 = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                break;
                            default:
                                i3 = -1;
                                break;
                        }
                    } else {
                        i3 = 25344;
                    }
                    iMax2 = Math.max(i3, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, af.a >= 21 ? 345600 : 172800);
            }
            n = iMax;
        }
        return n;
    }

    private static Pair<Integer, Integer> b(String str, String[] strArr) {
        Integer numValueOf;
        Integer numValueOf2;
        String strValueOf;
        String str2;
        String strConcat;
        if (strArr.length < 2) {
            strConcat = "Ignoring malformed AVC codec string: ".concat(String.valueOf(str));
        } else {
            try {
                if (strArr[1].length() == 6) {
                    numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                    numValueOf = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                } else {
                    if (strArr.length < 3) {
                        Log.w(a, "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
                        return null;
                    }
                    Integer numValueOf3 = Integer.valueOf(Integer.parseInt(strArr[1]));
                    numValueOf = Integer.valueOf(Integer.parseInt(strArr[2]));
                    numValueOf2 = numValueOf3;
                }
                int i2 = g.get(numValueOf2.intValue(), -1);
                if (i2 == -1) {
                    strValueOf = String.valueOf(numValueOf2);
                    str2 = "Unknown AVC profile: ";
                } else {
                    int i3 = h.get(numValueOf.intValue(), -1);
                    if (i3 != -1) {
                        return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
                    }
                    strValueOf = String.valueOf(numValueOf);
                    str2 = "Unknown AVC level: ";
                }
                strConcat = str2.concat(strValueOf);
            } catch (NumberFormatException unused) {
                strConcat = "Ignoring malformed AVC codec string: ".concat(String.valueOf(str));
            }
        }
        Log.w(a, strConcat);
        return null;
    }

    private static void b(String str, boolean z) {
        try {
            c(str, z);
        } catch (b e2) {
            Log.e(a, "Codec warming failed", e2);
        }
    }

    private static boolean b(String str) {
        if (af.a > 22) {
            return false;
        }
        String str2 = af.d;
        if ("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) {
            return "OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str);
        }
        return false;
    }

    private static synchronized List<com.anythink.expressad.exoplayer.f.a> c(String str, boolean z) {
        a aVar = new a(str, z);
        HashMap<a, List<com.anythink.expressad.exoplayer.f.a>> map = f;
        List<com.anythink.expressad.exoplayer.f.a> list = map.get(aVar);
        if (list != null) {
            return list;
        }
        int i2 = af.a;
        byte b2 = 0;
        c eVar = i2 >= 21 ? new e(z) : new C0116d(b2);
        ArrayList<com.anythink.expressad.exoplayer.f.a> arrayListA = a(aVar, eVar, str);
        if (z && arrayListA.isEmpty() && 21 <= i2 && i2 <= 23) {
            eVar = new C0116d(b2);
            arrayListA = a(aVar, eVar, str);
            if (!arrayListA.isEmpty()) {
                Log.w(a, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + arrayListA.get(0).c);
            }
        }
        if (o.B.equals(str)) {
            arrayListA.addAll(a(new a(o.A, aVar.b), eVar, str));
        }
        a(arrayListA);
        List<com.anythink.expressad.exoplayer.f.a> listUnmodifiableList = Collections.unmodifiableList(arrayListA);
        map.put(aVar, listUnmodifiableList);
        return listUnmodifiableList;
    }
}
