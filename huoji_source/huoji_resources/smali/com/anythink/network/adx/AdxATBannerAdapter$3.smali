.class public final Lcom/anythink/network/adx/AdxATBannerAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATBannerAdapter;->initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/adx/AdxATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$3;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$3;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    new-instance v1, Lcom/anythink/network/adx/AdxATBannerAdapter$3$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/adx/AdxATBannerAdapter$3$1;-><init>(Lcom/anythink/network/adx/AdxATBannerAdapter$3;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/d;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
