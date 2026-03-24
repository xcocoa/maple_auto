.class public final Lcn/haorui/sdk/core/AdSdk$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/AdSdk;->initPackConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getConfig(Landroid/content/Context;)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->access$200()V

    return-void
.end method
