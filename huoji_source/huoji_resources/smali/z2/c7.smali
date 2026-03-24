.class public Lz2/c7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/c7$OooO;
    }
.end annotation


# static fields
.field public static OooO:I = 0x3eb

.field public static OooO0o:I = 0x3e8

.field private static OooO0o0:Ljava/lang/String; = "c7"

.field public static OooO0oO:I = 0x3e9

.field public static OooO0oo:I = 0x3ea

.field public static OooOO0:I = 0x3ec

.field private static OooOO0O:Lz2/c7;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:I

.field private OooO0Oo:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lz2/c7;->OooO0oo:I

    iput v0, p0, Lz2/c7;->OooO0OO:I

    return-void
.end method

.method public static synthetic OooO00o(Lz2/c7;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/c7;->OooO0o(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/c7;)V
    .locals 0

    invoke-direct {p0}, Lz2/c7;->OooO0o0()V

    return-void
.end method

.method public static synthetic OooO0OO(Lz2/c7;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz2/c7;->OooO0Oo:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic OooO0Oo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/c7;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method private OooO0o(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lz2/c7;->OooO00o:Landroid/content/Context;

    sget-object v1, Lz2/g6;->o0Oo0oo:Ljava/lang/String;

    invoke-static {v0, v1}, Lz2/j4;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/g5;->OooO0OO(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterDownloadSuccess --> 2 \u89e3\u538b\u662f\u5426\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/c7$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/c7$OooO00o;-><init>(Lz2/c7;Ljava/io/File;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lz2/h7;->OooO0Oo(Lz2/h7$OooOO0;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lz2/c7;->OooO0Oo:Landroid/os/Handler;

    new-instance v0, Lz2/c7$OooO0O0;

    invoke-direct {v0, p0}, Lz2/c7$OooO0O0;-><init>(Lz2/c7;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget p1, p0, Lz2/c7;->OooO0OO:I

    sget v0, Lz2/c7;->OooO0o:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    iget-object v0, p0, Lz2/c7;->OooO0O0:Ljava/lang/String;

    const-string v1, "\u811a\u672c\u89e3\u538b\u5931\u8d25\uff01"

    invoke-static {p1, v1, v0}, Lz2/dh;->OooO0oO(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object p1

    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b5;->OooO0Oo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/b5;->OooO0oO(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setIsPreventRepeatedClick(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private OooO0o0()V
    .locals 2

    iget-object v0, p0, Lz2/c7;->OooO0Oo:Landroid/os/Handler;

    new-instance v1, Lz2/c7$OooO0OO;

    invoke-direct {v1, p0}, Lz2/c7$OooO0OO;-><init>(Lz2/c7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lz2/c7;->OooO0OO:I

    sget v1, Lz2/c7;->OooO0o:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    const-string v1, "\u811a\u672c\u4e0b\u8f7d\u5931\u8d25!"

    invoke-static {v0, v1}, Lz2/dh;->OooO0o(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v0

    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b5;->OooO0Oo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/b5;->OooO0oO(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setIsPreventRepeatedClick(Z)V

    :cond_1
    return-void
.end method

.method public static OooO0oo()Lz2/c7;
    .locals 2

    sget-object v0, Lz2/c7;->OooOO0O:Lz2/c7;

    if-nez v0, :cond_1

    const-class v0, Lz2/c7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/c7;->OooOO0O:Lz2/c7;

    if-nez v1, :cond_0

    new-instance v1, Lz2/c7;

    invoke-direct {v1}, Lz2/c7;-><init>()V

    sput-object v1, Lz2/c7;->OooOO0O:Lz2/c7;

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
    sget-object v0, Lz2/c7;->OooOO0O:Lz2/c7;

    return-object v0
.end method

.method private OooOO0O(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz2/c7;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lz2/g6;->o0ooOoO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u811a\u672c\u5f00\u59cb\u70ed\u66f4\u65b0"

    invoke-static {v1}, Lz2/t5;->o000oOoO(Ljava/lang/CharSequence;)V

    new-instance v1, Lz2/c7$OooO;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz2/c7$OooO;-><init>(Lz2/c7;Lz2/c7$OooO00o;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public OooO(Landroid/content/Context;Ljava/lang/String;I)Lz2/c7;
    .locals 1

    iput-object p1, p0, Lz2/c7;->OooO00o:Landroid/content/Context;

    iget-object p1, p0, Lz2/c7;->OooO0Oo:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lz2/c7;->OooO00o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lz2/c7;->OooO0Oo:Landroid/os/Handler;

    :cond_0
    iput-object p2, p0, Lz2/c7;->OooO0O0:Ljava/lang/String;

    iput p3, p0, Lz2/c7;->OooO0OO:I

    return-object p0
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadScriptOperate --> scriptFileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p0, Lz2/c7;->OooO0OO:I

    sget v1, Lz2/c7;->OooO0o:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lz2/og;->isScriptStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "\u811a\u672c\u66f4\u65b0\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lz2/dh;->OooO0o(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lz2/c7;->OooOO0O(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OooOO0()V
    .locals 5

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterDownloadSuccess --> 3 initScript script beforeUpdateScriptId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooOOO()V

    const/4 v1, 0x1

    invoke-static {v1}, Lz2/y8;->OooOO0o(I)V

    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v1

    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b5;->OooO0O0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/b5;->OooO0oo(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterDownloadSuccess --> 3 initScript mCurrentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/c7;->OooO0OO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterDownloadSuccess --> 3 initScript script afterUpdateScriptId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    new-instance v4, Lz2/c7$OooO0o;

    invoke-direct {v4, p0, v1}, Lz2/c7$OooO0o;-><init>(Lz2/c7;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lz2/rc;->OooOO0O(Landroid/content/Context;Ljava/lang/String;Lz2/rc$OooO00o;)V

    :cond_0
    iget v0, p0, Lz2/c7;->OooO0OO:I

    sget v1, Lz2/c7;->OooO0o:I

    const/16 v2, 0x7d1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "\u811a\u672c\u66f4\u65b0\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lz2/dh;->OooO0o(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v1, Lz2/c7;->OooO:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lz2/og;->isScriptStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lz2/og;->stop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop --> 3 initScript mCurrentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/c7;->OooO0OO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    sget v0, Lz2/c7;->OooOO0:I

    iget v1, p0, Lz2/c7;->OooO0OO:I

    if-ne v0, v1, :cond_4

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/q3;

    iget v2, p0, Lz2/c7;->OooO0OO:I

    invoke-direct {v1, v2}, Lz2/q3;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/p3;

    invoke-direct {v1}, Lz2/p3;-><init>()V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    return-void
.end method
