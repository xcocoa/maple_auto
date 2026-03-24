.class public final Lcom/anythink/expressad/exoplayer/scheduler/b$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/scheduler/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/scheduler/b;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/scheduler/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$a;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/scheduler/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/scheduler/b$a;-><init>(Lcom/anythink/expressad/exoplayer/scheduler/b;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$a;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NetworkCallback.onAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$a;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/scheduler/b;->a(Lcom/anythink/expressad/exoplayer/scheduler/b;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$a;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NetworkCallback.onLost"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$a;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/scheduler/b;->a(Lcom/anythink/expressad/exoplayer/scheduler/b;)V

    return-void
.end method
