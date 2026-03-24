.class public Lz2/j7$OooO0O0;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/j7$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/j7$OooO0O0;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bindTypeKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Lz2/j7;->OooO0oo(Landroid/os/Messenger;)V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    const/16 v1, 0x2775

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    const/16 v1, 0x2777

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    invoke-direct {v1, p1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x7

    if-ne v0, p1, :cond_3

    new-instance p1, Lz2/f8;

    invoke-direct {p1}, Lz2/f8;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_1
    return-void
.end method
