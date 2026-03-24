.class public abstract Lcom/anythink/basead/ui/BaseMediaATView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/BaseMediaATView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/anythink/core/common/f/l;

.field public b:Lcom/anythink/core/common/f/n;

.field public c:Lcom/anythink/core/common/f/m;

.field public d:Lcom/anythink/basead/ui/BaseMediaATView$a;

.field public e:Z

.field public f:Landroid/widget/FrameLayout;

.field private g:I

.field private h:I

.field private i:Lcom/anythink/basead/ui/CloseImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->g:I

    iput p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->g:I

    iput p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->h:I

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseMediaATView;->a:Lcom/anythink/core/common/f/l;

    iget-object p1, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->b:Lcom/anythink/core/common/f/n;

    iput-boolean p4, p0, Lcom/anythink/basead/ui/BaseMediaATView;->e:Z

    iput-object p5, p0, Lcom/anythink/basead/ui/BaseMediaATView;->d:Lcom/anythink/basead/ui/BaseMediaATView$a;

    iput-object p3, p0, Lcom/anythink/basead/ui/BaseMediaATView;->c:Lcom/anythink/core/common/f/m;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "base_myoffer_media_ad_view"

    const-string p4, "layout"

    invoke-static {p2, p3, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "base_media_view_content"

    const-string p3, "id"

    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "base_media_ad_close"

    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/ui/CloseImageView;

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->b:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->n()I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/BaseMediaATView;->a(Lcom/anythink/basead/ui/a;I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    new-instance v1, Lcom/anythink/basead/ui/BaseMediaATView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseMediaATView$1;-><init>(Lcom/anythink/basead/ui/BaseMediaATView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static a(Lcom/anythink/basead/ui/a;I)V
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3fc00000    # 1.5f

    :goto_0
    invoke-interface {p0, p1}, Lcom/anythink/basead/ui/a;->setClickAreaScaleFactor(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getClickViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaViewHeight()I
    .locals 1

    iget v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->h:I

    return v0
.end method

.method public getMediaViewWidth()I
    .locals 1

    iget v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->g:I

    return v0
.end method

.method public getMonitorClickView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(II)V
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->g:I

    iput p2, p0, Lcom/anythink/basead/ui/BaseMediaATView;->h:I

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/anythink/basead/ui/BaseMediaATView;->e:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    iget-object p2, p0, Lcom/anythink/basead/ui/BaseMediaATView;->b:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->n()I

    move-result p2

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/BaseMediaATView;->a(Lcom/anythink/basead/ui/a;I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    new-instance p2, Lcom/anythink/basead/ui/BaseMediaATView$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/BaseMediaATView$1;-><init>(Lcom/anythink/basead/ui/BaseMediaATView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public notifyClick()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseMediaATView;->i:Lcom/anythink/basead/ui/CloseImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseMediaATView;->b:Lcom/anythink/core/common/f/n;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->m()I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/BaseMediaATView;->a(Lcom/anythink/basead/ui/a;I)V

    :cond_0
    return-void
.end method
