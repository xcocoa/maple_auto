package com.anythink.expressad.exoplayer.f;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.o;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class a {
    public static final String a = "MediaCodecInfo";
    public static final int b = -1;
    public final String c;

    @Nullable
    public final String d;

    @Nullable
    public final MediaCodecInfo.CodecCapabilities e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private a(String str, @Nullable String str2, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z3, boolean z4) {
        boolean z5;
        boolean z6;
        this.c = (String) com.anythink.expressad.exoplayer.k.a.a(str);
        this.d = str2;
        this.e = codecCapabilities;
        this.i = z;
        boolean z7 = true;
        if (z3 || codecCapabilities == null) {
            z5 = false;
        } else {
            if (af.a >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback")) {
                z5 = true;
            }
        }
        this.f = z5;
        if (codecCapabilities == null) {
            z6 = false;
        } else {
            if (af.a >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback")) {
                z6 = true;
            }
        }
        this.g = z6;
        if (!z4) {
            if (codecCapabilities == null) {
                z7 = false;
            } else {
                if (!(af.a >= 21 && codecCapabilities.isFeatureSupported("secure-playback"))) {
                }
            }
        }
        this.h = z7;
    }

    private static int a(String str, String str2, int i) {
        if (i > 1 || ((af.a >= 26 && i > 0) || o.t.equals(str2) || o.I.equals(str2) || o.J.equals(str2) || o.r.equals(str2) || o.G.equals(str2) || o.H.equals(str2) || o.w.equals(str2) || o.K.equals(str2) || o.x.equals(str2) || o.y.equals(str2) || o.M.equals(str2))) {
            return i;
        }
        int i2 = o.z.equals(str2) ? 6 : o.A.equals(str2) ? 16 : 30;
        Log.w(a, "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    public static a a(String str) {
        return new a(str, null, null, true, false, false);
    }

    private static a a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return new a(str, str2, codecCapabilities, false, false, false);
    }

    public static a a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z3) {
        return new a(str, str2, codecCapabilities, false, z, z3);
    }

    private static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return af.a >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    @TargetApi(21)
    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    private int b() {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        if (af.a < 23 || (codecCapabilities = this.e) == null) {
            return -1;
        }
        return codecCapabilities.getMaxSupportedInstances();
    }

    @TargetApi(19)
    private static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private void c(String str) {
        Log.d(a, "NoSupport [" + str + "] [" + this.c + ", " + this.d + "] [" + af.e + "]");
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return af.a >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void d(String str) {
        Log.d(a, "AssumedSupport [" + str + "] [" + this.c + ", " + this.d + "] [" + af.e + "]");
    }

    @TargetApi(21)
    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private static boolean e(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return af.a >= 21 && codecCapabilities.isFeatureSupported("secure-playback");
    }

    @TargetApi(21)
    private static boolean f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @TargetApi(23)
    private static int g(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.getMaxSupportedInstances();
    }

    @TargetApi(21)
    public final Point a(int i, int i2) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.e;
        if (codecCapabilities == null) {
            str = "align.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities != null) {
                int widthAlignment = videoCapabilities.getWidthAlignment();
                int heightAlignment = videoCapabilities.getHeightAlignment();
                return new Point(af.a(i, widthAlignment) * widthAlignment, af.a(i2, heightAlignment) * heightAlignment);
            }
            str = "align.vCaps";
        }
        c(str);
        return null;
    }

    @TargetApi(21)
    public final boolean a(int i) {
        String strConcat;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.e;
        if (codecCapabilities == null) {
            strConcat = "sampleRate.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                strConcat = "sampleRate.aCaps";
            } else {
                if (audioCapabilities.isSampleRateSupported(i)) {
                    return true;
                }
                strConcat = "sampleRate.support, ".concat(String.valueOf(i));
            }
        }
        c(strConcat);
        return false;
    }

    @TargetApi(21)
    public final boolean a(int i, int i2, double d) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.e;
        if (codecCapabilities == null) {
            str = "sizeAndRate.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                str = "sizeAndRate.vCaps";
            } else {
                if (a(videoCapabilities, i, i2, d)) {
                    return true;
                }
                if (i < i2 && a(videoCapabilities, i2, i, d)) {
                    Log.d(a, "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d) + "] [" + this.c + ", " + this.d + "] [" + af.e + "]");
                    return true;
                }
                str = "sizeAndRate.support, " + i + "x" + i2 + "x" + d;
            }
        }
        c(str);
        return false;
    }

    public final MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.e;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @TargetApi(21)
    public final boolean b(int i) {
        String strConcat;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.e;
        if (codecCapabilities == null) {
            strConcat = "channelCount.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                strConcat = "channelCount.aCaps";
            } else {
                String str = this.c;
                String str2 = this.d;
                int maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && ((af.a < 26 || maxInputChannelCount <= 0) && !o.t.equals(str2) && !o.I.equals(str2) && !o.J.equals(str2) && !o.r.equals(str2) && !o.G.equals(str2) && !o.H.equals(str2) && !o.w.equals(str2) && !o.K.equals(str2) && !o.x.equals(str2) && !o.y.equals(str2) && !o.M.equals(str2))) {
                    int i2 = o.z.equals(str2) ? 6 : o.A.equals(str2) ? 16 : 30;
                    Log.w(a, "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i2 + "]");
                    maxInputChannelCount = i2;
                }
                if (maxInputChannelCount >= i) {
                    return true;
                }
                strConcat = "channelCount.support, ".concat(String.valueOf(i));
            }
        }
        c(strConcat);
        return false;
    }

    public final boolean b(String str) {
        String strC;
        StringBuilder sb;
        if (str == null || this.d == null || (strC = o.c(str)) == null) {
            return true;
        }
        if (this.d.equals(strC)) {
            Pair<Integer, Integer> pairA = d.a(str);
            if (pairA == null) {
                return true;
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a()) {
                if (codecProfileLevel.profile == ((Integer) pairA.first).intValue() && codecProfileLevel.level >= ((Integer) pairA.second).intValue()) {
                    return true;
                }
            }
            sb = new StringBuilder("codec.profileLevel, ");
        } else {
            sb = new StringBuilder("codec.mime ");
        }
        sb.append(str);
        sb.append(", ");
        sb.append(strC);
        c(sb.toString());
        return false;
    }
}
