.class public final Lcom/anythink/interstitial/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/b;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:I

.field public final synthetic f:Lcom/anythink/core/api/ATEventInterface;

.field public final synthetic g:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field public final synthetic h:J

.field public final synthetic i:Lcom/anythink/interstitial/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/common/f/b;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;ILcom/anythink/core/api/ATEventInterface;Lcom/anythink/interstitial/api/ATInterstitialListener;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/f/b;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/interstitial/a/a$1;->d:Ljava/util/Map;

    iput p6, p0, Lcom/anythink/interstitial/a/a$1;->e:I

    iput-object p7, p0, Lcom/anythink/interstitial/a/a$1;->f:Lcom/anythink/core/api/ATEventInterface;

    iput-object p8, p0, Lcom/anythink/interstitial/a/a$1;->g:Lcom/anythink/interstitial/api/ATInterstitialListener;

    iput-wide p9, p0, Lcom/anythink/interstitial/a/a$1;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    check-cast v0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/d;->refreshActivityContext(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/anythink/core/common/o/h;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->h(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v2}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/v;->a(Landroid/content/Context;Lcom/anythink/core/common/f/h;)V

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->d:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/v;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v2}, Lcom/anythink/interstitial/a/a;->b(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v3}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;)V

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v2}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v2

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v5

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)V

    iget v2, p0, Lcom/anythink/interstitial/a/a$1;->e:I

    if-lez v2, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    new-instance v3, Lcom/anythink/interstitial/a/a$1$1;

    invoke-direct {v3, p0}, Lcom/anythink/interstitial/a/a$1$1;-><init>(Lcom/anythink/interstitial/a/a$1;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    new-instance v3, Lcom/anythink/interstitial/a/a$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/anythink/interstitial/a/a$1$2;-><init>(Lcom/anythink/interstitial/a/a$1;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/common/f/h;)V

    iget v0, p0, Lcom/anythink/interstitial/a/a$1;->e:I

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
