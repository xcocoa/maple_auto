.class public Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    return-object v0
.end method

.method public setAdPatternType(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$102(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;I)I

    return-object p0
.end method

.method public setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$502(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$202(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setImgUrls([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$302(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setMediaView(Lcn/haorui/sdk/adsail_ad/MediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$602(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Lcn/haorui/sdk/adsail_ad/MediaView;)Lcn/haorui/sdk/adsail_ad/MediaView;

    return-object p0
.end method

.method public setShowDetail(Z)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$702(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Z)Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$402(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setVideoMute(Z)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$802(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Z)Z

    return-object p0
.end method
