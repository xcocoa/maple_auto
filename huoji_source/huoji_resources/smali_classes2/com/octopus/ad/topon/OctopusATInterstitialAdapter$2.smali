.class public Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->startLoad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;

    new-instance v1, Lcom/octopus/ad/InterstitialAd;

    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2$1;

    invoke-direct {v4, p0}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2$1;-><init>(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/octopus/ad/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/InterstitialAdListener;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->access$302(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;Lcom/octopus/ad/InterstitialAd;)Lcom/octopus/ad/InterstitialAd;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/octopus/ad/InterstitialAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/InterstitialAd;->openAdInNativeBrowser(Z)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/octopus/ad/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->loadAd()V

    return-void
.end method
