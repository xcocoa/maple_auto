.class public Lcom/octopus/ad/utils/a/b/f$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/utils/a/b/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a/b/f;->a(Lcom/octopus/ad/utils/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/a/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/a/b/f$1;->a:Lcom/octopus/ad/utils/a/b/f;

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

    invoke-static {p1}, Lcom/octopus/ad/utils/a/a/a/e/a/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/utils/a/a/a/e/a/a/a/a/a/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/octopus/ad/utils/a/a/a/e/a/a/a/a/a/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User has disabled advertising identifier"

    invoke-static {v0}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lcom/octopus/ad/utils/a/a/a/e/a/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
