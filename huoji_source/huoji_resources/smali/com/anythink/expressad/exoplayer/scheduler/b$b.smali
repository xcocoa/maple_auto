.class public final Lcom/anythink/expressad/exoplayer/scheduler/b$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/scheduler/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/scheduler/b;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/scheduler/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$b;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/scheduler/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/scheduler/b$b;-><init>(Lcom/anythink/expressad/exoplayer/scheduler/b;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$b;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " received "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b$b;->a:Lcom/anythink/expressad/exoplayer/scheduler/b;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/scheduler/b;->a(Lcom/anythink/expressad/exoplayer/scheduler/b;)V

    :cond_0
    return-void
.end method
