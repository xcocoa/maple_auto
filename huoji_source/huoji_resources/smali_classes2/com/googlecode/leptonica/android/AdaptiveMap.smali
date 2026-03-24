.class public Lcom/googlecode/leptonica/android/AdaptiveMap;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO00o:I = 0x10

.field private static final OooO0O0:I = 0x3

.field private static final OooO0OO:I = 0xc8

.field public static final OooO0Oo:I = 0xa

.field public static final OooO0o:I = 0x28

.field public static final OooO0o0:I = 0xf

.field public static final OooO0oO:I = 0x2

.field public static final OooO0oo:I = 0x1


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

.method private static OooO00o(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    const/16 p0, 0x10

    const/4 v2, 0x3

    const/16 v3, 0xc8

    invoke-static {v0, v1, p0, v2, v3}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativeBackgroundNormMorph(JIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image background"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static OooO0O0(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    const/16 p0, 0x10

    const/4 v2, 0x3

    const/16 v3, 0xc8

    invoke-static {v0, v1, p0, v2, v3}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativeBackgroundNormMorph(JIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image background"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static OooO0OO(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    const/16 v2, 0xa

    const/16 v3, 0xf

    const/16 v4, 0x28

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativePixContrastNorm(JIIIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image contrast"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static OooO0Oo(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    const/16 v2, 0xa

    const/16 v3, 0xf

    const/16 v4, 0x28

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativePixContrastNorm(JIIIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image contrast"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeBackgroundNormMorph(JIII)J
.end method

.method private static native nativePixContrastNorm(JIIIII)J
.end method
