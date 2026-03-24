.class public final Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyBannerATView;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-static {v3}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->b(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int v3, v3, v1

    div-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
