.class public Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATSplashAdapter;->startLoad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATSplashAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    new-instance v1, Lcom/octopus/ad/SplashAd;

    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v4}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;

    invoke-direct {v5, p0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;-><init>(Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/octopus/ad/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/octopus/ad/SplashAdListener;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$302(Lcom/octopus/ad/topon/OctopusATSplashAdapter;Lcom/octopus/ad/SplashAd;)Lcom/octopus/ad/SplashAd;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/SplashAd;->openAdInNativeBrowser(Z)V

    return-void
.end method
