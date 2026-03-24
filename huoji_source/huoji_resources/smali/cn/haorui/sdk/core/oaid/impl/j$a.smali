.class public Lcn/haorui/sdk/core/oaid/impl/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/oaid/impl/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/oaid/impl/j;->a(Lcn/haorui/sdk/core/oaid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/oaid/impl/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    sget v0, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a$a;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.bun.lib.MsaIdInterface"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a$a$a;

    invoke-direct {v0, p1}, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcn/haorui/sdk/core/oaid/repeackage/com/bun/lib/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcn/haorui/sdk/core/oaid/OAIDException;

    const-string v0, "MsaIdInterface#isSupported return false"

    invoke-direct {p1, v0}, Lcn/haorui/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcn/haorui/sdk/core/oaid/OAIDException;

    const-string v0, "MsaIdInterface is null"

    invoke-direct {p1, v0}, Lcn/haorui/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
