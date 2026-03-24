.class public Lcom/googlecode/leptonica/android/Clip;
.super Ljava/lang/Object;
.source ""


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

.method private static OooO00o(Lcom/googlecode/leptonica/android/Pix;Lcom/googlecode/leptonica/android/Box;)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Box;->OooO00o()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/googlecode/leptonica/android/Clip;->nativeClipRectangle(JJ)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/googlecode/leptonica/android/Pix;

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeClipRectangle(JJ)I
.end method
