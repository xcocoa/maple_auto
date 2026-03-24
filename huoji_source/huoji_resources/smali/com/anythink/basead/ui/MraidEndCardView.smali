.class public Lcom/anythink/basead/ui/MraidEndCardView;
.super Lcom/anythink/basead/ui/BaseEndCardView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/MraidEndCardView$a;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field public e:Lcom/anythink/basead/ui/MraidContainerView;

.field public f:Lcom/anythink/basead/ui/MraidEndCardView$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/basead/ui/MraidEndCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/MraidEndCardView;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseEndCardView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_end_card_id"

    const-string p3, "id"

    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance p1, Lcom/anythink/basead/ui/a/a;

    invoke-direct {p1}, Lcom/anythink/basead/ui/a/a;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->release()V

    :cond_0
    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/anythink/basead/ui/a/a;

    invoke-direct {v0}, Lcom/anythink/basead/ui/a/a;-><init>()V

    return-object v0
.end method

.method public init(Z)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseEndCardView;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/basead/ui/MraidEndCardView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/MraidEndCardView$1;-><init>(Lcom/anythink/basead/ui/MraidEndCardView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v0, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseEndCardView;->b:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseEndCardView;->c:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/ui/MraidEndCardView$2;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/MraidEndCardView$2;-><init>(Lcom/anythink/basead/ui/MraidEndCardView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MraidContainerView;->setNeedRegisterVolumeChangeReceiver(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/MraidContainerView;->loadMraidWebView(I)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->fireMraidIsViewable(Z)V

    :cond_0
    return-void
.end method

.method public setEndCardListener(Lcom/anythink/basead/ui/MraidEndCardView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView;->f:Lcom/anythink/basead/ui/MraidEndCardView$a;

    return-void
.end method
