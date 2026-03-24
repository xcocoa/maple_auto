.class public Lcn/haorui/sdk/core/oaid/impl/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/oaid/b;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcn/haorui/sdk/core/oaid/a;)V
    .locals 5

    const-string v0, "com.bun.msa.param.pkgname"

    const-string v1, "com.mdid.msa"

    iget-object v2, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.bun.msa.action.start.service"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.bun.msa.action.bindto.service"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/core/oaid/impl/j$a;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/oaid/impl/j$a;-><init>(Lcn/haorui/sdk/core/oaid/impl/j;)V

    invoke-static {v0, v2, p1, v1}, Lcn/haorui/sdk/core/oaid/impl/l;->a(Landroid/content/Context;Landroid/content/Intent;Lcn/haorui/sdk/core/oaid/a;Lcn/haorui/sdk/core/oaid/impl/l$a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/j;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.mdid.msa"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method
