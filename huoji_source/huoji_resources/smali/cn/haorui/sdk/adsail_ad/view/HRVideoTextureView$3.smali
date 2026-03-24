.class public Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$3;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$3;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$300(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
