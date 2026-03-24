.class public final Lcom/anythink/expressad/exoplayer/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/b/d$a;,
        Lcom/anythink/expressad/exoplayer/b/d$b;
    }
.end annotation


# instance fields
.field public a:Lcom/anythink/expressad/exoplayer/b/c;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/anythink/expressad/exoplayer/b/d$b;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/b/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/d;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/b/d$b;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/d;->c:Lcom/anythink/expressad/exoplayer/b/d$b;

    sget p1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    new-instance p1, Lcom/anythink/expressad/exoplayer/b/d$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/anythink/expressad/exoplayer/b/d$a;-><init>(Lcom/anythink/expressad/exoplayer/b/d;B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/d;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()Lcom/anythink/expressad/exoplayer/b/c;
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/d;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/d;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/c;->a(Landroid/content/Intent;)Lcom/anythink/expressad/exoplayer/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/d;->a:Lcom/anythink/expressad/exoplayer/b/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/b/d;)Lcom/anythink/expressad/exoplayer/b/d$b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/b/d;->c:Lcom/anythink/expressad/exoplayer/b/d$b;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/d;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
