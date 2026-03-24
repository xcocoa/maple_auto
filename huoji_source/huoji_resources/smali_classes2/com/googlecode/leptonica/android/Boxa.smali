.class public Lcom/googlecode/leptonica/android/Boxa;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0OO:Ljava/lang/String;


# instance fields
.field private final OooO00o:J

.field private OooO0O0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/googlecode/leptonica/android/Boxa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Boxa;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    return-void
.end method

.method private OooO00o()J
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooO0O0(I)Landroid/graphics/Rect;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [I

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    invoke-static {v2, v3, p1, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    aget p1, v1, p1

    const/4 v0, 0x1

    aget v0, v1, v0

    const/4 v2, 0x2

    aget v2, v1, v2

    add-int/2addr v2, p1

    const/4 v3, 0x3

    aget v1, v1, v3

    add-int/2addr v1, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0OO(I[I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0Oo()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetCount(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private declared-synchronized OooO0o()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeDestroy(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private OooO0o0(I)[I
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [I

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO00o:J

    invoke-static {v2, v3, p1, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetGeometry(JI[I)Z
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->OooO0O0:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/googlecode/leptonica/android/Boxa;->OooO0OO:Ljava/lang/String;

    const-string v1, "Boxa was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/googlecode/leptonica/android/Boxa;->OooO0o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
