.class public Lcom/octopus/ad/utils/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/octopus/ad/utils/b;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/octopus/ad/utils/a;

.field private e:Lcom/octopus/ad/b/b$i;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/octopus/ad/utils/b;
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/b;->b:Lcom/octopus/ad/utils/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/octopus/ad/utils/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/b;->b:Lcom/octopus/ad/utils/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/b;

    invoke-direct {v1, p0}, Lcom/octopus/ad/utils/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/octopus/ad/utils/b;->b:Lcom/octopus/ad/utils/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/octopus/ad/utils/b;->b:Lcom/octopus/ad/utils/b;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/utils/b;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcom/octopus/ad/utils/b;->f()Z

    move-result v0

    const-string v1, "octopus"

    if-nez v0, :cond_0

    const-string v0, "startDownloadService download:\u4e0b\u8f7d\u5fc5\u8981\u53c2\u6570\u4e3anull"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/octopus/ad/utils/b/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "startDownloadService:checkStoragePermission false"

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    const-class v3, Lcom/octopus/ad/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private e()V
    .locals 4

    :try_start_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    sget v2, Lcom/octopus/ad/R$style;->OctopusAlertDialogStyle:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u5e94\u7528\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "APP"

    iget-object v2, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    invoke-virtual {v2}, Lcom/octopus/ad/utils/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    invoke-virtual {v1}, Lcom/octopus/ad/utils/a;->e()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u89c2\u770b\u66f4\u591a\u5185\u5bb9"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$string;->octopus_confirm:I

    new-instance v2, Lcom/octopus/ad/utils/b$1;

    invoke-direct {v2, p0}, Lcom/octopus/ad/utils/b$1;-><init>(Lcom/octopus/ad/utils/b;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$string;->octopus_cancel:I

    new-instance v2, Lcom/octopus/ad/utils/b$2;

    invoke-direct {v2, p0}, Lcom/octopus/ad/utils/b$2;-><init>(Lcom/octopus/ad/utils/b;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private f()Z
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/utils/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "DownloadManager"

    if-eqz v0, :cond_1

    const-string v0, "apkUrl can not be empty!"

    :goto_0
    invoke-static {v2, v0}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    invoke-virtual {v0}, Lcom/octopus/ad/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "apkName can not be empty!"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    invoke-virtual {v0}, Lcom/octopus/ad/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "apkName must endsWith .apk!"

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Lcom/octopus/ad/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/b/b$i;)Lcom/octopus/ad/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/b;->e:Lcom/octopus/ad/b/b$i;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/utils/a;)Lcom/octopus/ad/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/b;->d:Lcom/octopus/ad/utils/a;

    return-object p0
.end method

.method public a(Z)Lcom/octopus/ad/utils/b;
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/utils/b;->c:Z

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/octopus/ad/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/utils/b;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/utils/b;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/octopus/ad/utils/b;->d()V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/utils/b;->a:Landroid/content/Context;

    sput-object v0, Lcom/octopus/ad/utils/b;->b:Lcom/octopus/ad/utils/b;

    return-void
.end method
