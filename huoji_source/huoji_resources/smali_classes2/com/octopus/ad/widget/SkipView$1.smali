.class public Lcom/octopus/ad/widget/SkipView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/widget/SkipView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/widget/SkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/widget/SkipView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/widget/SkipView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/RectF;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {v0}, Lcom/octopus/ad/widget/SkipView;->a(Lcom/octopus/ad/widget/SkipView;)Landroid/text/TextPaint;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {v0}, Lcom/octopus/ad/widget/SkipView;->b(Lcom/octopus/ad/widget/SkipView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {v1}, Lcom/octopus/ad/widget/SkipView;->a(Lcom/octopus/ad/widget/SkipView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {v0}, Lcom/octopus/ad/widget/SkipView;->b(Lcom/octopus/ad/widget/SkipView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {v1}, Lcom/octopus/ad/widget/SkipView;->a(Lcom/octopus/ad/widget/SkipView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {p1}, Lcom/octopus/ad/widget/SkipView;->b(Lcom/octopus/ad/widget/SkipView;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p1, p0, Lcom/octopus/ad/widget/SkipView$1;->a:Lcom/octopus/ad/widget/SkipView;

    invoke-static {p1}, Lcom/octopus/ad/widget/SkipView;->b(Lcom/octopus/ad/widget/SkipView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
