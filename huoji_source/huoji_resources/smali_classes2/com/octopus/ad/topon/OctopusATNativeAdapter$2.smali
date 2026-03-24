.class public Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATNativeAdapter;->startLoad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    new-instance v2, Lcom/octopus/ad/NativeAd;

    iget-object v3, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;

    invoke-direct {v5, p0, v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;-><init>(Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;Z)V

    invoke-direct {v2, v3, v4, v5}, Lcom/octopus/ad/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/NativeAdListener;)V

    invoke-static {v1, v2}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$402(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/NativeAd;)Lcom/octopus/ad/NativeAd;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/NativeAd;->openAdInNativeBrowser(Z)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/NativeAd;->loadAd()V

    return-void
.end method
