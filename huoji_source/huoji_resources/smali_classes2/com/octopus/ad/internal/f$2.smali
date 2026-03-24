.class public Lcom/octopus/ad/internal/f$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/network/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/network/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdWebView;

.field public final synthetic c:Lcom/octopus/ad/internal/network/ServerResponse;

.field public final synthetic d:Lcom/octopus/ad/internal/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/AdWebView;Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/f$2;->d:Lcom/octopus/ad/internal/f;

    iput-object p2, p0, Lcom/octopus/ad/internal/f$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput-object p3, p0, Lcom/octopus/ad/internal/f$2;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iput-object p4, p0, Lcom/octopus/ad/internal/f$2;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/octopus/ad/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/octopus/ad/internal/view/b;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->d:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->b:Lcom/octopus/ad/internal/view/AdWebView;

    return-object v0
.end method

.method public c()Lcom/octopus/ad/NativeAdResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdExtInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getPrice()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getTagId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f$2;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->destroy()V

    return-void
.end method
