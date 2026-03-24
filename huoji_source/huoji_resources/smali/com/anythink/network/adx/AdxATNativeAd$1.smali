.class public final Lcom/anythink/network/adx/AdxATNativeAd$1;
.super Lcom/anythink/basead/e/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/h;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/anythink/network/adx/AdxATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATNativeAd;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iput-object p4, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/anythink/basead/e/e;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdClick(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->r()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1, v1, v1}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdShow(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->r()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1, v1, v0}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/a;->notifyDeeplinkCallback(Z)V

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 0

    return-void
.end method
