.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$shakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->clear()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$startShakeRoot:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
