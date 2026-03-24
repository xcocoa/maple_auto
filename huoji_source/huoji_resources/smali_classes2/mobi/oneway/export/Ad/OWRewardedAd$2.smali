.class public Lmobi/oneway/export/Ad/OWRewardedAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWRewardedAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmobi/oneway/export/Ad/OWRewardedAd;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/Ad/OWRewardedAd;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$2;->a:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$2;->a:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->b(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$2;->a:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->b(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/b/a/a;->a()V

    :cond_0
    return-void
.end method
