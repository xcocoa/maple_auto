.class public final Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/tools/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkedBlockingQueue4Util"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field private volatile mPool:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    iput p1, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    :cond_0
    return-void
.end method

.method public static synthetic access$302(Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;)Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0O;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
