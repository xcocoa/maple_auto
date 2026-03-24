.class public Lcom/octopus/ad/internal/view/AdViewImpl$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->addCloseButton(IIILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->a:I

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$7$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$7$2;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->b:Landroid/view/View;

    instance-of v1, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/video/AdVideoView;->onRewardVideoAdReward()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->a:I

    if-lez p1, :cond_1

    if-gt p2, p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->b:Landroid/view/View;

    instance-of p2, p1, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->onRewardVideoAdReward()V

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    new-instance p2, Lcom/octopus/ad/internal/view/AdViewImpl$7$1;

    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$7$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$7;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
