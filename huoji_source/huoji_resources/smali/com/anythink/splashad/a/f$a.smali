.class public final Lcom/anythink/splashad/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATCustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/splashad/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field public final synthetic b:Lcom/anythink/splashad/a/f;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/f$a;->b:Lcom/anythink/splashad/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/splashad/a/f$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    return-void
.end method


# virtual methods
.method public final varargs onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/f$a;->b:Lcom/anythink/splashad/a/f;

    iget-object v1, p0, Lcom/anythink/splashad/a/f$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v0, v1, p1}, Lcom/anythink/splashad/a/f;->a(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;[Lcom/anythink/core/api/BaseAd;)V

    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 0

    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/splashad/a/f$a;->b:Lcom/anythink/splashad/a/f;

    iget-object v1, p0, Lcom/anythink/splashad/a/f$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    const-string v2, "4001"

    invoke-static {v2, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/splashad/a/f$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/anythink/splashad/a/f;->a(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V

    return-void
.end method
