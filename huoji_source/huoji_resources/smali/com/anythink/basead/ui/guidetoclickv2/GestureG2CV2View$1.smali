.class public final Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43360000    # 182.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v1, v1, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
