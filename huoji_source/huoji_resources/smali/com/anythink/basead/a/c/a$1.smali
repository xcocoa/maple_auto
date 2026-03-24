.class public final Lcom/anythink/basead/a/c/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/c/a;->a(Lcom/anythink/core/common/f/l;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic c:Lcom/anythink/basead/a/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/c/a;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iput-object p2, p0, Lcom/anythink/basead/a/c/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/a/c/a$1;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$1;->b:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v1

    mul-float v2, v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$1;->c:Lcom/anythink/basead/a/c/a;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
