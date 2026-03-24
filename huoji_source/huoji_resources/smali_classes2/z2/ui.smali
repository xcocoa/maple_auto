.class public Lz2/ui;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/vi;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Ljava/io/File;

.field private OooO0OO:Ljava/io/File;

.field private OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

.field public OooO0o0:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ui;->OooO0o0:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz2/ui;->OooO0O0:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lz2/ui;->OooO0OO:Ljava/io/File;

    iput-object p1, p0, Lz2/ui;->OooO00o:Landroid/content/Context;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-direct {p2, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lz2/ui;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    return-void
.end method

.method private synthetic OooO(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/ui;->OooO0O0:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ui;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lz2/ui;->OooO00o:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p2, p0, Lz2/ui;->OooO0o0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private OooO0o(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ui;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic OooO0oO()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    iget-object v1, p0, Lz2/ui;->OooO0O0:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private OooOO0O(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lz2/ui;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/ui;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveConfigToJson()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/ui;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OooO0Oo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/ui;->OooO0OO:Ljava/io/File;

    invoke-direct {p0, v0}, Lz2/ui;->OooOO0O(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/ui;->OooO0O0:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ui;->OooO0OO:Ljava/io/File;

    invoke-direct {p0, v0}, Lz2/ui;->OooO0o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic OooO0oo()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lz2/ui;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic OooOO0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/ui;->OooO(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method

.method public read()Landroid/widget/LinearLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v1

    new-instance v2, Lz2/ri;

    invoke-direct {v2, p0}, Lz2/ri;-><init>(Lz2/ui;)V

    invoke-virtual {v1, v2}, Lz2/p40;->OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object v1

    new-instance v2, Lz2/qi;

    invoke-direct {v2, p0, v0}, Lz2/qi;-><init>(Lz2/ui;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Lz2/ui;->OooO0o0:Landroid/widget/LinearLayout;

    return-object v0
.end method
