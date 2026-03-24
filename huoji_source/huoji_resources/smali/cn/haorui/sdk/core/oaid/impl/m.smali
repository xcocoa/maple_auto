.class public Lcn/haorui/sdk/core/oaid/impl/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/oaid/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/haorui/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcn/haorui/sdk/core/oaid/impl/m;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/m;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/m;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcn/haorui/sdk/core/oaid/impl/m;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcn/haorui/sdk/core/oaid/repeackage/com/heytap/openid/a$a;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/haorui/sdk/core/oaid/repeackage/com/heytap/openid/a;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcn/haorui/sdk/core/oaid/repeackage/com/heytap/openid/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/haorui/sdk/core/oaid/repeackage/com/heytap/openid/a$a$a;

    invoke-direct {v0, p1}, Lcn/haorui/sdk/core/oaid/repeackage/com/heytap/openid/a$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "OUID"

    invoke-interface {p1, p2, p3, v0}, Lcn/haorui/sdk/core/oaid/repeackage/com/heytap/openid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcn/haorui/sdk/core/oaid/OAIDException;

    const-string p2, "IOpenID is null"

    invoke-direct {p1, p2}, Lcn/haorui/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcn/haorui/sdk/core/oaid/a;)V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/m$a;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/core/oaid/impl/m$a;-><init>(Lcn/haorui/sdk/core/oaid/impl/m;)V

    invoke-static {v1, v0, p1, v2}, Lcn/haorui/sdk/core/oaid/impl/l;->a(Landroid/content/Context;Landroid/content/Intent;Lcn/haorui/sdk/core/oaid/a;Lcn/haorui/sdk/core/oaid/impl/l$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.heytap.openid"

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
