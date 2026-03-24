.class public final Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/guidetoclickv2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-static {v1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;F)F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;)F

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->c(Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->b:Lcom/anythink/basead/ui/b/b$a;

    if-eqz p1, :cond_2

    const/16 v0, 0xb

    const/16 v2, 0xf

    invoke-interface {p1, v0, v2}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;F)F

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
