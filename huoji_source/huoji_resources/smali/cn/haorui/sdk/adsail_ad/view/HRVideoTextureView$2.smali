.class public Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$200(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$200(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
