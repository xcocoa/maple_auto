.class public Lcn/haorui/sdk/core/ad/paster/HRPasterAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->replay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/paster/HRPasterAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd$1;->this$0:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd$1;->this$0:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->replay()V

    return-void
.end method
