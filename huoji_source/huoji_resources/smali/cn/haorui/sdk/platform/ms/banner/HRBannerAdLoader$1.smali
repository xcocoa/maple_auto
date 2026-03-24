.class public Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

.field public final synthetic val$pid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;->val$pid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;->val$pid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$000(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Ljava/lang/String;)V

    return-void
.end method
