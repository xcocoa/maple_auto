package com.anythink.expressad.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class f implements ab {
    public static final long a = 5000;
    public static final int b = 0;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 50;
    private static final String f = "DefaultRenderersFactory";
    private final Context g;

    @Nullable
    private final com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> h;
    private final int i;
    private final long j;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public f(Context context) {
        this(context, 0);
    }

    public f(Context context, int i) {
        this(context, null, i, a);
    }

    public f(Context context, int i, long j) {
        this(context, null, i, j);
    }

    @Deprecated
    private f(Context context, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar) {
        this(context, gVar, (byte) 0);
    }

    @Deprecated
    private f(Context context, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, byte b2) {
        this(context, gVar, 0, a);
    }

    @Deprecated
    private f(Context context, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, int i, long j) {
        this.g = context;
        this.i = i;
        this.j = j;
        this.h = gVar;
    }

    private static void a() {
    }

    private static void a(Context context, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, long j, Handler handler, com.anythink.expressad.exoplayer.l.h hVar, int i, ArrayList<y> arrayList) {
        arrayList.add(new com.anythink.expressad.exoplayer.l.e(context, com.anythink.expressad.exoplayer.f.c.a, j, gVar, handler, hVar, 50));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            arrayList.add(size, (y) Class.forName("com.anythink.expressad.exoplayer.ext.vp9.LibvpxVideoRenderer").getConstructor(Boolean.TYPE, Long.TYPE, Handler.class, com.anythink.expressad.exoplayer.l.h.class, Integer.TYPE).newInstance(Boolean.TRUE, Long.valueOf(j), handler, hVar, 50));
            Log.i(f, "Loaded LibvpxVideoRenderer.");
        } catch (ClassNotFoundException unused) {
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating VP9 extension", e2);
        }
    }

    private static void a(Context context, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, com.anythink.expressad.exoplayer.b.f[] fVarArr, Handler handler, com.anythink.expressad.exoplayer.b.g gVar2, int i, ArrayList<y> arrayList) {
        int i2;
        int i3;
        arrayList.add(new com.anythink.expressad.exoplayer.b.o(context, com.anythink.expressad.exoplayer.f.c.a, gVar, handler, gVar2, com.anythink.expressad.exoplayer.b.c.a(context), fVarArr));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                i2 = size + 1;
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating Opus extension", e2);
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            arrayList.add(size, (y) Class.forName("com.anythink.expressad.exoplayer.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.anythink.expressad.exoplayer.b.g.class, com.anythink.expressad.exoplayer.b.f[].class).newInstance(handler, gVar2, fVarArr));
            Log.i(f, "Loaded LibopusAudioRenderer.");
        } catch (ClassNotFoundException unused2) {
            size = i2;
            i2 = size;
        }
        try {
            try {
                i3 = i2 + 1;
                try {
                    arrayList.add(i2, (y) Class.forName("com.anythink.expressad.exoplayer.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.anythink.expressad.exoplayer.b.g.class, com.anythink.expressad.exoplayer.b.f[].class).newInstance(handler, gVar2, fVarArr));
                    Log.i(f, "Loaded LibflacAudioRenderer.");
                } catch (ClassNotFoundException unused3) {
                    i2 = i3;
                    i3 = i2;
                }
            } catch (Exception e3) {
                throw new RuntimeException("Error instantiating FLAC extension", e3);
            }
        } catch (ClassNotFoundException unused4) {
        }
        try {
            arrayList.add(i3, (y) Class.forName("com.anythink.expressad.exoplayer.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.anythink.expressad.exoplayer.b.g.class, com.anythink.expressad.exoplayer.b.f[].class).newInstance(handler, gVar2, fVarArr));
            Log.i(f, "Loaded FfmpegAudioRenderer.");
        } catch (ClassNotFoundException unused5) {
        } catch (Exception e4) {
            throw new RuntimeException("Error instantiating FFmpeg extension", e4);
        }
    }

    private static void a(com.anythink.expressad.exoplayer.g.f fVar, Looper looper, ArrayList<y> arrayList) {
        arrayList.add(new com.anythink.expressad.exoplayer.g.g(fVar, looper));
    }

    private static com.anythink.expressad.exoplayer.b.f[] b() {
        return new com.anythink.expressad.exoplayer.b.f[0];
    }

    @Override // com.anythink.expressad.exoplayer.ab
    public final y[] a(Handler handler, com.anythink.expressad.exoplayer.l.h hVar, com.anythink.expressad.exoplayer.b.g gVar, com.anythink.expressad.exoplayer.g.f fVar, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar2) {
        int i;
        int i2;
        com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar3 = gVar2 == null ? this.h : gVar2;
        ArrayList arrayList = new ArrayList();
        Context context = this.g;
        long j = this.j;
        int i3 = this.i;
        arrayList.add(new com.anythink.expressad.exoplayer.l.e(context, com.anythink.expressad.exoplayer.f.c.a, j, gVar3, handler, hVar, 50));
        if (i3 != 0) {
            int size = arrayList.size();
            if (i3 == 2) {
                size--;
            }
            try {
                arrayList.add(size, (y) Class.forName("com.anythink.expressad.exoplayer.ext.vp9.LibvpxVideoRenderer").getConstructor(Boolean.TYPE, Long.TYPE, Handler.class, com.anythink.expressad.exoplayer.l.h.class, Integer.TYPE).newInstance(Boolean.TRUE, Long.valueOf(j), handler, hVar, 50));
                Log.i(f, "Loaded LibvpxVideoRenderer.");
            } catch (ClassNotFoundException unused) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        }
        Context context2 = this.g;
        com.anythink.expressad.exoplayer.b.f[] fVarArr = new com.anythink.expressad.exoplayer.b.f[0];
        int i4 = this.i;
        arrayList.add(new com.anythink.expressad.exoplayer.b.o(context2, com.anythink.expressad.exoplayer.f.c.a, gVar3, handler, gVar, com.anythink.expressad.exoplayer.b.c.a(context2), fVarArr));
        if (i4 != 0) {
            int size2 = arrayList.size();
            if (i4 == 2) {
                size2--;
            }
            try {
                try {
                    i = size2 + 1;
                    try {
                        arrayList.add(size2, (y) Class.forName("com.anythink.expressad.exoplayer.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.anythink.expressad.exoplayer.b.g.class, com.anythink.expressad.exoplayer.b.f[].class).newInstance(handler, gVar, fVarArr));
                        Log.i(f, "Loaded LibopusAudioRenderer.");
                    } catch (ClassNotFoundException unused2) {
                        size2 = i;
                        i = size2;
                    }
                } catch (ClassNotFoundException unused3) {
                }
                try {
                    try {
                        i2 = i + 1;
                        try {
                            arrayList.add(i, (y) Class.forName("com.anythink.expressad.exoplayer.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.anythink.expressad.exoplayer.b.g.class, com.anythink.expressad.exoplayer.b.f[].class).newInstance(handler, gVar, fVarArr));
                            Log.i(f, "Loaded LibflacAudioRenderer.");
                        } catch (ClassNotFoundException unused4) {
                            i = i2;
                            i2 = i;
                        }
                    } catch (ClassNotFoundException unused5) {
                    }
                    try {
                        arrayList.add(i2, (y) Class.forName("com.anythink.expressad.exoplayer.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.anythink.expressad.exoplayer.b.g.class, com.anythink.expressad.exoplayer.b.f[].class).newInstance(handler, gVar, fVarArr));
                        Log.i(f, "Loaded FfmpegAudioRenderer.");
                    } catch (ClassNotFoundException unused6) {
                    } catch (Exception e3) {
                        throw new RuntimeException("Error instantiating FFmpeg extension", e3);
                    }
                } catch (Exception e4) {
                    throw new RuntimeException("Error instantiating FLAC extension", e4);
                }
            } catch (Exception e5) {
                throw new RuntimeException("Error instantiating Opus extension", e5);
            }
        }
        arrayList.add(new com.anythink.expressad.exoplayer.g.g(fVar, handler.getLooper()));
        return (y[]) arrayList.toArray(new y[arrayList.size()]);
    }
}
