.class public final Lcom/anythink/china/a/a/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/a/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OaidAidlUtil"

.field private static final b:Ljava/lang/String; = "com.huawei.hwid"

.field private static final c:Ljava/lang/String; = "com.uodis.opendevice.OPENIDS_SERVICE"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/content/ServiceConnection;

.field private f:Lcom/anythink/china/a/a/g;

.field private g:Lcom/anythink/china/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a/g;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/a/a/h;->f:Lcom/anythink/china/a/a/g;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/china/a/a/h;Lcom/anythink/china/a/a/g;)Lcom/anythink/china/a/a/g;
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/a/a/h;->f:Lcom/anythink/china/a/a/g;

    return-object p1
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/anythink/china/a/a/h$a;

    invoke-direct {v0, p0, v1}, Lcom/anythink/china/a/a/h$a;-><init>(Lcom/anythink/china/a/a/h;B)V

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->e:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/a/a/h;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/a/a/h;->g:Lcom/anythink/china/a/a;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/china/a/a/h;->e:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->f:Lcom/anythink/china/a/a/g;

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->g:Lcom/anythink/china/a/a;

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/anythink/china/a/a/h;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/china/a/a/h;->e:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->f:Lcom/anythink/china/a/a/g;

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/anythink/china/a/a/h;->g:Lcom/anythink/china/a/a;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/china/a/a/h;->g:Lcom/anythink/china/a/a;

    iget-object p1, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/anythink/china/a/a/h$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/anythink/china/a/a/h$a;-><init>(Lcom/anythink/china/a/a/h;B)V

    iput-object p1, p0, Lcom/anythink/china/a/a/h;->e:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.huawei.hwid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/anythink/china/a/a/h;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/a/a/h;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method
