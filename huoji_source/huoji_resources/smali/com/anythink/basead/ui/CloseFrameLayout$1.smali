.class public final Lcom/anythink/basead/ui/CloseFrameLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/CloseFrameLayout;->setClickAreaScaleFactor(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/CloseFrameLayout;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/CloseFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->b(Lcom/anythink/basead/ui/CloseFrameLayout;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v3}, Lcom/anythink/basead/ui/CloseFrameLayout;->b(Lcom/anythink/basead/ui/CloseFrameLayout;)F

    move-result v3

    sub-float/2addr v3, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v2}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v2}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/anythink/basead/ui/CloseFrameLayout$1;->a:Lcom/anythink/basead/ui/CloseFrameLayout;

    invoke-static {v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->a(Lcom/anythink/basead/ui/CloseFrameLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    return-void
.end method
