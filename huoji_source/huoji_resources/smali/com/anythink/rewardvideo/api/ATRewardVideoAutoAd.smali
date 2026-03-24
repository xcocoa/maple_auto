.class public Lcom/anythink/rewardvideo/api/ATRewardVideoAutoAd;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addPlacementId([Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/rewardvideo/a/c;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static checkAdStatus(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/rewardvideo/a/c;->c(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public static checkValidAdCaches(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/rewardvideo/a/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/anythink/rewardvideo/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    invoke-static {p0, p1, p2}, Lcom/anythink/rewardvideo/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;)V
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/rewardvideo/a/c;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;)V

    return-void
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/rewardvideo/a/c;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs removePlacementId([Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    invoke-static {p0}, Lcom/anythink/rewardvideo/a/c;->b([Ljava/lang/String;)V

    return-void
.end method

.method public static setLocalExtra(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    invoke-static {p0, p1}, Lcom/anythink/rewardvideo/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V
    .locals 2

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/rewardvideo/a/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/anythink/rewardvideo/a/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V

    return-void
.end method
