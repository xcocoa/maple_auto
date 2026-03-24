.class public Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$300(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$400(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$400(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
