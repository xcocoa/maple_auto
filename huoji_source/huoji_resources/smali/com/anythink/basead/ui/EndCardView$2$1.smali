.class public final Lcom/anythink/basead/ui/EndCardView$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/EndCardView$2;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/EndCardView$2;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/EndCardView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {v0}, Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {v0}, Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/ui/EndCardView$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/basead/ui/EndCardView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object p1, p1, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object v1, v1, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {v1}, Lcom/anythink/basead/ui/EndCardView;->d(Lcom/anythink/basead/ui/EndCardView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object p1, p1, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p1}, Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$2$1;->a:Lcom/anythink/basead/ui/EndCardView$2;

    iget-object p1, p1, Lcom/anythink/basead/ui/EndCardView$2;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p1}, Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/EndCardView$a;->b()V

    :cond_0
    return-void
.end method
