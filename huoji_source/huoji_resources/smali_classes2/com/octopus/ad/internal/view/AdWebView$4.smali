.class public Lcom/octopus/ad/internal/view/AdWebView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/view/AdWebView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdWebView;->a(IIZLcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/AdActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/e;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/octopus/ad/AdActivity$b;

.field public final synthetic d:Lcom/octopus/ad/internal/view/AdWebView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;Lcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/AdActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->d:Lcom/octopus/ad/internal/view/AdWebView;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->a:Lcom/octopus/ad/internal/view/e;

    iput-boolean p3, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->b:Z

    iput-object p4, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->c:Lcom/octopus/ad/AdActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->a:Lcom/octopus/ad/internal/view/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/e;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->d:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->a:Lcom/octopus/ad/internal/view/e;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/e;->c()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->b:Z

    iget-object v3, p0, Lcom/octopus/ad/internal/view/AdWebView$4;->c:Lcom/octopus/ad/AdActivity$b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/octopus/ad/internal/view/AdWebView;->a(Landroid/app/Activity;ZLcom/octopus/ad/AdActivity$b;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->setMRAIDFullscreenListener(Lcom/octopus/ad/internal/view/AdWebView$b;)V

    :cond_0
    return-void
.end method
