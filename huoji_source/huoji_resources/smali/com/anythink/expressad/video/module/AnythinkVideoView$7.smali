.class public final Lcom/anythink/expressad/video/module/AnythinkVideoView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVideoView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkVideoView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/playercommon/PlayerView;->isSilent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput p1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput v2, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_2

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
