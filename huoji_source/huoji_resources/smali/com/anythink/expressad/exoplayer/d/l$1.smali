.class public final Lcom/anythink/expressad/exoplayer/d/l$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/d/l;->a(Lcom/anythink/expressad/exoplayer/d/j$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/d/j$f;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/d/l;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/d/l;Lcom/anythink/expressad/exoplayer/d/j$f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/l$1;->b:Lcom/anythink/expressad/exoplayer/d/l;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/d/l$1;->a:Lcom/anythink/expressad/exoplayer/d/j$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0
    .param p1    # Landroid/media/MediaDrm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/d/l$1;->a:Lcom/anythink/expressad/exoplayer/d/j$f;

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/exoplayer/d/j$f;->a([BI)V

    return-void
.end method
