.class public final Lcom/anythink/expressad/video/dynview/j/a$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/j/a;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/anythink/expressad/video/dynview/j/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/j/a;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->c:Lcom/anythink/expressad/video/dynview/j/a;

    iput p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->a:I

    iput-object p3, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->a:I

    const/16 v0, 0x1f5

    if-eq p2, v0, :cond_0

    const/16 v0, 0x322

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/expressad/video/dynview/i/b;->a()Lcom/anythink/expressad/video/dynview/i/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/dynview/i/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "anythink_icon_play_bg"

    const-string v0, "drawable"

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->c:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/a;->h(Lcom/anythink/expressad/video/dynview/j/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "anythink_icon_play_bg"

    const-string v0, "drawable"

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->c:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/a;->h(Lcom/anythink/expressad/video/dynview/j/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$10;->b:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method
