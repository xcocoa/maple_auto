.class public Lcom/yanzhenjie/zbar/SymbolSet;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lcom/yanzhenjie/zbar/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "zbar"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/yanzhenjie/zbar/SymbolSet;->init()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-wide p1, p0, Lcom/yanzhenjie/zbar/SymbolSet;->peer:J

    return-void
.end method

.method private native destroy(J)V
.end method

.method private native firstSymbol(J)J
.end method

.method private static native init()V
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/yanzhenjie/zbar/SymbolSet;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/yanzhenjie/zbar/SymbolSet;->destroy(J)V

    iput-wide v2, p0, Lcom/yanzhenjie/zbar/SymbolSet;->peer:J
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

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/zbar/SymbolSet;->destroy()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/yanzhenjie/zbar/Symbol;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/yanzhenjie/zbar/SymbolSet;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/yanzhenjie/zbar/SymbolSet;->firstSymbol(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Lz2/ev;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/ev;-><init>(Lcom/yanzhenjie/zbar/Symbol;)V

    return-object v0

    :cond_0
    new-instance v2, Lz2/ev;

    new-instance v3, Lcom/yanzhenjie/zbar/Symbol;

    invoke-direct {v3, v0, v1}, Lcom/yanzhenjie/zbar/Symbol;-><init>(J)V

    invoke-direct {v2, v3}, Lz2/ev;-><init>(Lcom/yanzhenjie/zbar/Symbol;)V

    return-object v2
.end method

.method public native size()I
.end method
