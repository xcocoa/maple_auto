.class public Lcn/haorui/sdk/core/utils/SdkHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/SdkHandler$b;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/SdkHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/core/utils/SdkHandler$a;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/SdkHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/SdkHandler$b;->a:Lcn/haorui/sdk/core/utils/SdkHandler;

    return-object v0
.end method


# virtual methods
.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/utils/SdkHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
