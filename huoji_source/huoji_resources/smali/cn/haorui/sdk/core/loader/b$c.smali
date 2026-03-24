.class public Lcn/haorui/sdk/core/loader/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/b;->handleNoAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/haorui/sdk/core/loader/b;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b$c;->b:Lcn/haorui/sdk/core/loader/b;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/b$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/b$c;->a:Ljava/lang/String;

    sget-object v2, Lcn/haorui/sdk/core/exception/a;->d:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/b$c;->b:Lcn/haorui/sdk/core/loader/b;

    iget-object v1, v1, Lcn/haorui/sdk/core/loader/b;->loaderListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method
