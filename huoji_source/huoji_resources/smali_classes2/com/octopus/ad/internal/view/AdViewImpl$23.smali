.class public Lcom/octopus/ad/internal/view/AdViewImpl$23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->addInterstitialCloseButton(IILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;IZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->a:I

    iput-boolean p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->b:Z

    iput-object p4, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->c:Landroid/view/View;

    instance-of v1, v0, Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0, v2}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdBy(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    check-cast v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/a/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/a/b;->g()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/video/AdVideoView;->getAdWebView()Lcom/octopus/ad/internal/view/AdWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdBy(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->jsLogTag:Ljava/lang/String;

    const-string v1, "Should not close banner!"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->a:I

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$23;->d:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
