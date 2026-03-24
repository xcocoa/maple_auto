.class public Lcom/octopus/ad/utils/a/b/n$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/utils/a/b/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a/b/n;->a(Lcom/octopus/ad/utils/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/a/b/n;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/a/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/a/b/n$1;->a:Lcom/octopus/ad/utils/a/b/n;

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

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/utils/a/b/n$1;->a:Lcom/octopus/ad/utils/a/b/n;

    invoke-static {v0, p1}, Lcom/octopus/ad/utils/a/b/n;->a(Lcom/octopus/ad/utils/a/b/n;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/octopus/ad/utils/a/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/octopus/ad/utils/a/e;

    invoke-direct {v0, p1}, Lcom/octopus/ad/utils/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    throw p1
.end method
