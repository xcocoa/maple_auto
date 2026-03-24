.class public Lcom/octopus/ad/internal/view/AdViewImpl$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->showAd()V
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

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$17;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$17;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/internal/view/AdWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$17;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/internal/view/AdWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$17;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v2, v2, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/network/ServerResponse;->handleView(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
