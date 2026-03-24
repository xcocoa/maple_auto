.class public final Lcom/anythink/splashad/a/c$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/c;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/h;ZLcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/splashad/a/h;

.field public final synthetic b:Lcom/anythink/core/api/BaseAd;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Lcom/anythink/splashad/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/c;Lcom/anythink/splashad/a/h;Lcom/anythink/core/api/BaseAd;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/c$3;->d:Lcom/anythink/splashad/a/c;

    iput-object p2, p0, Lcom/anythink/splashad/a/c$3;->a:Lcom/anythink/splashad/a/h;

    iput-object p3, p0, Lcom/anythink/splashad/a/c$3;->b:Lcom/anythink/core/api/BaseAd;

    iput-object p4, p0, Lcom/anythink/splashad/a/c$3;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 0

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/c$3;->a:Lcom/anythink/splashad/a/h;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/h;->onSplashAdDismiss()V

    iget-object v0, p0, Lcom/anythink/splashad/a/c$3;->b:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/splashad/a/c$3;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/BaseAd;->clear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/splashad/a/c$3;->b:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->destroy()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 0

    return-void
.end method
