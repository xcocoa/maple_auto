.class public Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2$1;->this$1:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2$1;->this$1:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;

    iget-object v0, v0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$400(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V

    return-void
.end method
