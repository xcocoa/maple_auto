.class public final Lcn/haorui/sdk/core/utils/HttpUtil$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$h;->a:Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/HttpUtil$h;->a:Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;->onFailure(Ljava/io/IOException;)V

    return-void
.end method
