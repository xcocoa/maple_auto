.class public Lcom/octopus/ad/internal/view/AdViewImpl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->addSkipView(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a(Z)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->c()Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->c()Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->jsLogTag:Ljava/lang/String;

    const-string v1, "Should not close banner!"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/octopus/ad/internal/b;->a(J)V

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->h(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->i(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$4;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->h(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/widget/SkipView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "\u8df3\u8fc7 %d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
