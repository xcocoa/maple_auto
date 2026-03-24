.class public Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATBannerAdapter;->startLoadBanner(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$302(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    new-instance v1, Lcom/octopus/ad/BannerAd;

    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;

    invoke-direct {v4, p0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;-><init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/octopus/ad/BannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/BannerAdListener;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$402(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Lcom/octopus/ad/BannerAd;)Lcom/octopus/ad/BannerAd;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/BannerAd;->openAdInNativeBrowser(Z)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->loadAd()V

    return-void
.end method
