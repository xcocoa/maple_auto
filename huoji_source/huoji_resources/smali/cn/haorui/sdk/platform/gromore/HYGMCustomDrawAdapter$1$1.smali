.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->callDrawAdClick()V

    :cond_0
    return-void
.end method
