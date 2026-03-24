package com.anythink.expressad.exoplayer.k;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final String A = "audio/eac3";
    public static final String B = "audio/eac3-joc";
    public static final String C = "audio/true-hd";
    public static final String D = "audio/vnd.dts";
    public static final String E = "audio/vnd.dts.hd";
    public static final String F = "audio/vnd.dts.hd;profile=lbr";
    public static final String G = "audio/vorbis";
    public static final String H = "audio/opus";
    public static final String I = "audio/3gpp";
    public static final String J = "audio/amr-wb";
    public static final String K = "audio/flac";
    public static final String L = "audio/alac";
    public static final String M = "audio/gsm";
    public static final String N = "audio/x-unknown";
    public static final String O = "text/vtt";
    public static final String P = "text/x-ssa";
    public static final String Q = "application/mp4";
    public static final String R = "application/webm";
    public static final String S = "application/dash+xml";
    public static final String T = "application/x-mpegURL";
    public static final String U = "application/vnd.ms-sstr+xml";
    public static final String V = "application/id3";
    public static final String W = "application/cea-608";
    public static final String X = "application/cea-708";
    public static final String Y = "application/x-subrip";
    public static final String Z = "application/ttml+xml";
    public static final String a = "video";
    public static final String aa = "application/x-quicktime-tx3g";
    public static final String ab = "application/x-mp4-vtt";
    public static final String ac = "application/x-mp4-cea-608";
    public static final String ad = "application/x-rawcc";
    public static final String ae = "application/vobsub";
    public static final String af = "application/pgs";
    public static final String ag = "application/x-scte35";
    public static final String ah = "application/x-camera-motion";
    public static final String ai = "application/x-emsg";
    public static final String aj = "application/dvbsubs";
    public static final String ak = "application/x-exif";
    private static final ArrayList<a> al = new ArrayList<>();
    public static final String b = "audio";
    public static final String c = "text";
    public static final String d = "application";
    public static final String e = "video/mp4";
    public static final String f = "video/webm";
    public static final String g = "video/3gpp";
    public static final String h = "video/avc";
    public static final String i = "video/hevc";
    public static final String j = "video/x-vnd.on2.vp8";
    public static final String k = "video/x-vnd.on2.vp9";
    public static final String l = "video/mp4v-es";
    public static final String m = "video/mpeg";
    public static final String n = "video/mpeg2";
    public static final String o = "video/wvc1";
    public static final String p = "video/x-unknown";
    public static final String q = "audio/mp4";
    public static final String r = "audio/mp4a-latm";
    public static final String s = "audio/webm";
    public static final String t = "audio/mpeg";
    public static final String u = "audio/mpeg-L1";
    public static final String v = "audio/mpeg-L2";
    public static final String w = "audio/raw";
    public static final String x = "audio/g711-alaw";
    public static final String y = "audio/g711-mlaw";
    public static final String z = "audio/ac3";

    public static final class a {
        public final String a;
        public final String b;
        public final int c;

        public a(String str, String str2, int i) {
            this.a = str;
            this.b = str2;
            this.c = i;
        }
    }

    private o() {
    }

    @Nullable
    public static String a(int i2) {
        if (i2 == 32) {
            return l;
        }
        if (i2 == 33) {
            return h;
        }
        if (i2 == 35) {
            return i;
        }
        if (i2 == 64) {
            return r;
        }
        if (i2 == 163) {
            return o;
        }
        if (i2 == 177) {
            return k;
        }
        if (i2 == 165) {
            return z;
        }
        if (i2 == 166) {
            return A;
        }
        switch (i2) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return n;
            case 102:
            case 103:
            case 104:
                return r;
            case 105:
            case 107:
                return t;
            case 106:
                return m;
            default:
                switch (i2) {
                    case 169:
                    case 172:
                        return D;
                    case 170:
                    case 171:
                        return E;
                    case 173:
                        return H;
                    default:
                        return null;
                }
        }
    }

    private static void a(String str, String str2, int i2) {
        a aVar = new a(str, str2, i2);
        int size = al.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            ArrayList<a> arrayList = al;
            if (str.equals(arrayList.get(i3).a)) {
                arrayList.remove(i3);
                break;
            }
            i3++;
        }
        al.add(aVar);
    }

    public static boolean a(String str) {
        return b.equals(k(str));
    }

    public static boolean b(String str) {
        return a.equals(k(str));
    }

    @Nullable
    public static String c(@Nullable String str) {
        String strA = null;
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("avc1") || strTrim.startsWith("avc3")) {
            return h;
        }
        if (strTrim.startsWith("hev1") || strTrim.startsWith("hvc1")) {
            return i;
        }
        if (strTrim.startsWith("vp9") || strTrim.startsWith("vp09")) {
            return k;
        }
        if (strTrim.startsWith("vp8") || strTrim.startsWith("vp08")) {
            return j;
        }
        if (strTrim.startsWith("mp4a")) {
            if (strTrim.startsWith("mp4a.")) {
                String strSubstring = strTrim.substring(5);
                if (strSubstring.length() >= 2) {
                    try {
                        strA = a(Integer.parseInt(af.e(strSubstring.substring(0, 2)), 16));
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            return strA == null ? r : strA;
        }
        if (strTrim.startsWith("ac-3") || strTrim.startsWith("dac3")) {
            return z;
        }
        if (strTrim.startsWith("ec-3") || strTrim.startsWith("dec3")) {
            return A;
        }
        if (strTrim.startsWith("ec+3")) {
            return B;
        }
        if (strTrim.startsWith("dtsc") || strTrim.startsWith("dtse")) {
            return D;
        }
        if (strTrim.startsWith("dtsh") || strTrim.startsWith("dtsl")) {
            return E;
        }
        if (strTrim.startsWith("opus")) {
            return H;
        }
        if (strTrim.startsWith("vorbis")) {
            return G;
        }
        int size = al.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = al.get(i2);
            if (strTrim.startsWith(aVar.b)) {
                return aVar.a;
            }
        }
        return null;
    }

    public static int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (a(str)) {
            return 1;
        }
        if (b(str)) {
            return 2;
        }
        if ("text".equals(k(str)) || W.equals(str) || X.equals(str) || ac.equals(str) || Y.equals(str) || Z.equals(str) || aa.equals(str) || ab.equals(str) || ad.equals(str) || ae.equals(str) || af.equals(str) || aj.equals(str)) {
            return 3;
        }
        if (V.equals(str) || ai.equals(str) || ag.equals(str) || ah.equals(str)) {
            return 4;
        }
        int size = al.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = al.get(i2);
            if (str.equals(aVar.a)) {
                return aVar.c;
            }
        }
        return -1;
    }

    public static int e(String str) {
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/eac3":
                return 6;
            case "audio/vnd.dts":
                return 7;
            case "audio/ac3":
                return 5;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }

    public static int f(String str) {
        return d(c(str));
    }

    private static boolean g(String str) {
        return "text".equals(k(str));
    }

    private static boolean h(String str) {
        return d.equals(k(str));
    }

    @Nullable
    private static String i(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : af.a(str, ",")) {
            String strC = c(str2);
            if (strC != null && b(strC)) {
                return strC;
            }
        }
        return null;
    }

    @Nullable
    private static String j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : af.a(str, ",")) {
            String strC = c(str2);
            if (strC != null && a(strC)) {
                return strC;
            }
        }
        return null;
    }

    @Nullable
    private static String k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf != -1) {
            return str.substring(0, iIndexOf);
        }
        throw new IllegalArgumentException("Invalid mime type: ".concat(String.valueOf(str)));
    }

    @Nullable
    private static String l(String str) {
        int size = al.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = al.get(i2);
            if (str.startsWith(aVar.b)) {
                return aVar.a;
            }
        }
        return null;
    }

    private static int m(String str) {
        int size = al.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = al.get(i2);
            if (str.equals(aVar.a)) {
                return aVar.c;
            }
        }
        return -1;
    }
}
