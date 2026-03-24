.class public final Lcom/anythink/expressad/exoplayer/b/l$2;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/l;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/b/l;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/l;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l$2;->b:Lcom/anythink/expressad/exoplayer/b/l;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l$2;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$2;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method
