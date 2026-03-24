.class public Lcom/anythink/basead/ui/MraidMediaView;
.super Lcom/anythink/basead/ui/BaseMediaATView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/MraidMediaView$a;
    }
.end annotation


# instance fields
.field public g:Z

.field public h:Z

.field public i:Z

.field private j:Lcom/anythink/basead/ui/MraidContainerView;

.field private k:Lcom/anythink/basead/ui/MraidMediaView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/ui/MraidMediaView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/anythink/basead/ui/BaseMediaATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/MraidMediaView;)Lcom/anythink/basead/ui/MraidMediaView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/MraidMediaView;->k:Lcom/anythink/basead/ui/MraidMediaView$a;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MraidMediaView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseMediaATView;->a:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseMediaATView;->c:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/ui/MraidMediaView$1;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/MraidMediaView$1;-><init>(Lcom/anythink/basead/ui/MraidMediaView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->i:Z

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->a:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseMediaATView;->destroy()V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->release()V

    :cond_0
    return-void
.end method

.method public fireAudioVolumeChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->fireAudioVolumeChange(Z)V

    :cond_0
    return-void
.end method

.method public init(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseMediaATView;->init(II)V

    new-instance p1, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->a:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->c:Lcom/anythink/core/common/f/m;

    new-instance v2, Lcom/anythink/basead/ui/MraidMediaView$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/MraidMediaView$1;-><init>(Lcom/anythink/basead/ui/MraidMediaView;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->f:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->f:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->h:Z

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidMediaView;->a()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->h:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->fireMraidIsViewable(Z)V

    :cond_0
    return-void
.end method

.method public setMraidWebViewListener(Lcom/anythink/basead/ui/MraidMediaView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->k:Lcom/anythink/basead/ui/MraidMediaView$a;

    return-void
.end method
