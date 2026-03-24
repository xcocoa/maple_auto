.class public Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplashBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder<",
        "Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;",
        "Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;-><init>(Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    return-void
.end method


# virtual methods
.method public build()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    return-object v0
.end method

.method public bridge synthetic build()Lcn/haorui/sdk/core/ad/BaseAdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->build()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public returnThis()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->returnThis()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAdContainer(Landroid/view/ViewGroup;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$402(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setClkArea(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$302(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setClkType(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$002(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I

    return-object p0
.end method

.method public setIsEyes(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1802(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I

    return-object p0
.end method

.method public setPowerIndex(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$102(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I

    return-object p0
.end method

.method public bridge synthetic setPowerIndex(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setPowerIndex(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPowerType(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$202(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I

    return-object p0
.end method

.method public setVideo_complete([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$902(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_cover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1502(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_endcover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1602(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_keep_time(Ljava/lang/Long;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1702(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setVideo_mute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1202(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_one_half([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$702(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_one_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$602(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_pause([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1002(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_replay([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1402(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_resume([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1102(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_start([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$502(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_three_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$802(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_unmute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->access$1302(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method
