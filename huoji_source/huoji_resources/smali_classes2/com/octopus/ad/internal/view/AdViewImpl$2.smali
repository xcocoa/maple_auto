.class public Lcom/octopus/ad/internal/view/AdViewImpl$2;
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
.field public final synthetic a:Z

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput-boolean p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->a:Z

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    sget v1, Lcom/octopus/ad/R$drawable;->oct_close:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

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
