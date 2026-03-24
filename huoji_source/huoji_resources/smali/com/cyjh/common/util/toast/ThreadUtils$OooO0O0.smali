.class public Lcom/cyjh/common/util/toast/ThreadUtils$OooO0O0;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/ThreadUtils;->OooO(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;JJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/util/concurrent/ExecutorService;

.field public final synthetic OoooOoo:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooO0O0;->OoooOoO:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooO0O0;->OoooOoo:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooO0O0;->OoooOoO:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooO0O0;->OoooOoo:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
