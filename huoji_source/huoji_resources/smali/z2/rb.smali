.class public Lz2/rb;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Lz2/qb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()Lz2/qb;
    .locals 2

    sget-object v0, Lz2/rb;->OooO00o:Lz2/qb;

    if-nez v0, :cond_1

    const-class v0, Lz2/rb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/rb;->OooO00o:Lz2/qb;

    if-nez v1, :cond_0

    new-instance v1, Lz2/qb;

    invoke-direct {v1}, Lz2/qb;-><init>()V

    sput-object v1, Lz2/rb;->OooO00o:Lz2/qb;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/rb;->OooO00o:Lz2/qb;

    return-object v0
.end method
