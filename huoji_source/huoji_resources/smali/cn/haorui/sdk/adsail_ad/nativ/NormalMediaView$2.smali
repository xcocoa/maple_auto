.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$2;
.super Lz2/o000OO00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$2;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Lz2/o000OO00;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$2;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
