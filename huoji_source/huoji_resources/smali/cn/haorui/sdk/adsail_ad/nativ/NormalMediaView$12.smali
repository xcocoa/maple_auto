.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy isEyes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume,playState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
