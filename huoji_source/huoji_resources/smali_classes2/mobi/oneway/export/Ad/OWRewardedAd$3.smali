.class public Lmobi/oneway/export/Ad/OWRewardedAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWRewardedAd;->setListener(Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

.field public final synthetic b:Lmobi/oneway/export/Ad/OWRewardedAd;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/Ad/OWRewardedAd;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->b:Lmobi/oneway/export/Ad/OWRewardedAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->a:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->b:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->b(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->b:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->b(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->a:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/b/a/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
