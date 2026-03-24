.class public Lcom/googlecode/leptonica/android/Skew;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:F = 30.0f

.field public static final OooO0O0:F = 5.0f

.field public static final OooO0OO:I = 0x8

.field public static final OooO0Oo:I = 0x4

.field public static final OooO0o0:F = 0.01f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o(Lcom/googlecode/leptonica/android/Pix;)F
    .locals 7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/16 v4, 0x8

    const/4 v5, 0x4

    const v6, 0x3c23d70a    # 0.01f

    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/Skew;->nativeFindSkew(JFFIIF)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static OooO0O0(Lcom/googlecode/leptonica/android/Pix;)F
    .locals 7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/16 v4, 0x8

    const/4 v5, 0x4

    const v6, 0x3c23d70a    # 0.01f

    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/Skew;->nativeFindSkew(JFFIIF)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeFindSkew(JFFIIF)F
.end method
