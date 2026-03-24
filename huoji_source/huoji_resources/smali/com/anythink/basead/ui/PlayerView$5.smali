.class public final Lcom/anythink/basead/ui/PlayerView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/l/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/PlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->X(Lcom/anythink/basead/ui/PlayerView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/basead/ui/PlayerView;->autoFitVideoSize(IILandroid/view/View;)V

    return-void
.end method
