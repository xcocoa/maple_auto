.class public Lz2/r7$OooO0O0;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/r7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bindTypeKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "bindActionKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    invoke-static {}, Lz2/dh;->OooOOOO()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    invoke-static {}, Lz2/dh;->OooOOO()V

    :cond_1
    :goto_0
    const-string v3, "bindMsgKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x3ea

    const/4 v4, -0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-ne v1, v3, :cond_3

    if-ne v0, v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-static {v4, p1}, Lz2/dh;->OooO0o0(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_5

    if-ne v0, v5, :cond_4

    const/4 v4, 0x0

    :cond_4
    invoke-static {v4, p1}, Lz2/dh;->OooO0Oo(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x3eb

    if-ne v1, v0, :cond_6

    new-instance v0, Lz2/g8;

    invoke-direct {v0}, Lz2/g8;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_6
    const/16 v0, 0x44d

    if-ne v1, v0, :cond_7

    invoke-static {}, Lz2/r7;->OooO0Oo()Ljava/lang/String;

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lz2/eh;

    const/16 v1, 0x2775

    invoke-direct {v0, v1}, Lz2/eh;-><init>(I)V

    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x3ec

    if-ne v1, v0, :cond_8

    invoke-static {}, Lz2/c9;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lz2/ad;->OooO0o()Lz2/ad;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lz2/r7$OooO0O0$OooO00o;

    invoke-direct {v3, p0}, Lz2/r7$OooO0O0$OooO00o;-><init>(Lz2/r7$OooO0O0;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lz2/ad;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/ad$OooO00o;)V

    :cond_8
    :goto_1
    return-void
.end method
