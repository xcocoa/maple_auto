.class public Lcn/haorui/sdk/core/oaid/impl/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/oaid/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcn/haorui/sdk/core/oaid/a;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/oaid/impl/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcn/haorui/sdk/core/oaid/OAIDException;

    const-string v0, "Huawei Advertising ID not available"

    invoke-direct {p1, v0}, Lcn/haorui/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/g$a;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/core/oaid/impl/g$a;-><init>(Lcn/haorui/sdk/core/oaid/impl/g;)V

    invoke-static {v1, v0, p1, v2}, Lcn/haorui/sdk/core/oaid/impl/l;->a(Landroid/content/Context;Landroid/content/Intent;Lcn/haorui/sdk/core/oaid/a;Lcn/haorui/sdk/core/oaid/impl/l$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 5

    const-string v0, "com.huawei.hwid.tv"

    const-string v1, "com.huawei.hwid"

    iget-object v2, p0, Lcn/haorui/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/g;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string v0, "com.huawei.hms"

    :try_start_1
    iput-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v3, 0x1

    :catch_0
    :cond_3
    return v3
.end method
