.class public final Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z

    move-result p3

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3, v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    if-le p2, v0, :cond_0

    invoke-static {p3, v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p3, v2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    if-le p2, v0, :cond_2

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;I)V

    return-void

    :cond_2
    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->move(I)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->move(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->loose()V

    :cond_5
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->loose()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    return-void
.end method
