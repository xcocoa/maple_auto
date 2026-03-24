.class public Lcn/haorui/sdk/core/oaid/impl/h;
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

    iput-object p1, p0, Lcn/haorui/sdk/core/oaid/impl/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcn/haorui/sdk/core/oaid/a;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/h;->a:Landroid/content/Context;

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/h$a;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/core/oaid/impl/h$a;-><init>(Lcn/haorui/sdk/core/oaid/impl/h;)V

    invoke-static {v1, v0, p1, v2}, Lcn/haorui/sdk/core/oaid/impl/l;->a(Landroid/content/Context;Landroid/content/Intent;Lcn/haorui/sdk/core/oaid/a;Lcn/haorui/sdk/core/oaid/impl/l$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/h;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.zui.deviceidservice"

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
