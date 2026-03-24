.class public Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADExposed()V
    .locals 2

    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onADExposed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    return-void
.end method

.method public onAdClick()V
    .locals 2

    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    return-void
.end method

.method public onAdClose()V
    .locals 2

    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    return-void
.end method

.method public onAdRenderFailed(I)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onADExposed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
