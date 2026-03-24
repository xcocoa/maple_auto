.class public final Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/expressad/video/dynview/ordercamp/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->b:Lcom/anythink/expressad/video/dynview/ordercamp/a/a;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->a:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    mul-float v1, v1, p2

    float-to-int p2, v1

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->b:Lcom/anythink/expressad/video/dynview/ordercamp/a/a;

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;)Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->b:Lcom/anythink/expressad/video/dynview/ordercamp/a/a;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;)Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->b:Lcom/anythink/expressad/video/dynview/ordercamp/a/a;

    invoke-static {p2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;)Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    move-result-object p2

    iget-object p2, p2, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;->b:Lcom/anythink/expressad/video/dynview/ordercamp/a/a;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;)Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    move-result-object p1

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    const/high16 p2, 0x55000000

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
