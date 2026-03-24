.class public Lz2/hu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/Object;

.field private static OooO0O0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz2/hu;->OooO00o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()J
    .locals 5

    sget-object v0, Lz2/hu;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lz2/hu;->OooO0O0:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lz2/hu;->OooO0O0:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
