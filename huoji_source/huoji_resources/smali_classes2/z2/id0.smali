.class public final Lz2/id0;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/id0$OooO0O0;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/id0$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/id0;-><init>()V

    return-void
.end method

.method public static OooO00o()Lz2/id0;
    .locals 1

    invoke-static {}, Lz2/id0$OooO0O0;->OooO00o()Lz2/id0;

    move-result-object v0

    return-object v0
.end method
