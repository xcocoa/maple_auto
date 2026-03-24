.class public Lcom/octopus/ad/internal/f$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/network/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/network/ServerResponse;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl;

.field public final synthetic c:Lcom/octopus/ad/internal/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/f$1;->c:Lcom/octopus/ad/internal/f;

    iput-object p2, p0, Lcom/octopus/ad/internal/f$1;->a:Lcom/octopus/ad/internal/network/ServerResponse;

    iput-object p3, p0, Lcom/octopus/ad/internal/f$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/f$1;->a:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->containsAds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_no_ads:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/f$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    const v1, 0x138e4

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/b;->a(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMediaType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/internal/f$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "octopus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/f$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v2, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/f$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    check-cast v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->resetContainerIfNeeded()V

    :cond_2
    const-string v0, "handleStandardAds"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/f$1;->c:Lcom/octopus/ad/internal/f;

    iget-object v1, p0, Lcom/octopus/ad/internal/f$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v2, p0, Lcom/octopus/ad/internal/f$1;->a:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/network/ServerResponse;)V

    return-void
.end method
