.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->initEvent()V
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

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->replay()V

    :goto_0
    return-void
.end method
