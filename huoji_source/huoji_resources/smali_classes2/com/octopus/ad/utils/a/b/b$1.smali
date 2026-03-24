.class public Lcom/octopus/ad/utils/a/b/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/utils/a/b/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a/b/b;->a(Lcom/octopus/ad/utils/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/a/b/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/a/b/b$1;->a:Lcom/octopus/ad/utils/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/utils/a/e;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/octopus/ad/utils/a/a/a/d/a/a$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/utils/a/a/a/d/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/utils/a/b/b$1;->a:Lcom/octopus/ad/utils/a/b/b;

    invoke-static {v0}, Lcom/octopus/ad/utils/a/b/b;->a(Lcom/octopus/ad/utils/a/b/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/octopus/ad/utils/a/a/a/d/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/octopus/ad/utils/a/e;

    const-string v0, "IDeviceIdManager is null"

    invoke-direct {p1, v0}, Lcom/octopus/ad/utils/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
