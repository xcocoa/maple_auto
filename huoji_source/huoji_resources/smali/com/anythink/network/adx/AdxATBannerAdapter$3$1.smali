.class public final Lcom/anythink/network/adx/AdxATBannerAdapter$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATBannerAdapter$3;->onAdCacheLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/adx/AdxATBannerAdapter$3;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATBannerAdapter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$3$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$3$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter$3;

    iget-object v0, v0, Lcom/anythink/network/adx/AdxATBannerAdapter$3;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/d/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Lcom/anythink/network/adx/AdxATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
