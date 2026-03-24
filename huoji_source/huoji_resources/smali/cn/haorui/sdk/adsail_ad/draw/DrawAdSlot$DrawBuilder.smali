.class public Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder<",
        "Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;",
        "Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;-><init>(Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    return-void
.end method


# virtual methods
.method public build()Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;

    return-object v0
.end method

.method public bridge synthetic build()Lcn/haorui/sdk/core/ad/BaseAdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;->build()Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public returnThis()Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;->returnThis()Lcn/haorui/sdk/adsail_ad/draw/DrawAdSlot$DrawBuilder;

    move-result-object v0

    return-object v0
.end method
