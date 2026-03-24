.class public Lcn/haorui/sdk/core/oaid/impl/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/oaid/impl/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/oaid/impl/m;->a(Lcn/haorui/sdk/core/oaid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/oaid/impl/m;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/oaid/impl/m;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/oaid/impl/m$a;->a:Lcn/haorui/sdk/core/oaid/impl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/oaid/impl/m$a;->a:Lcn/haorui/sdk/core/oaid/impl/m;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/oaid/impl/m;->a(Lcn/haorui/sdk/core/oaid/impl/m;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcn/haorui/sdk/core/oaid/OAIDException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcn/haorui/sdk/core/oaid/OAIDException;

    invoke-direct {v0, p1}, Lcn/haorui/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    throw p1
.end method
