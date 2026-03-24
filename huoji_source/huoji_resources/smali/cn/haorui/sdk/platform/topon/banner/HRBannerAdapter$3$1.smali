.class public Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;->onAdReady(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3$1;->this$1:Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3$1;->this$1:Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;

    iget-object v0, v0, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter;->access$1200(Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3$1;->this$1:Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;

    iget-object v0, v0, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter;->access$1300(Lcn/haorui/sdk/platform/topon/banner/HRBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method
