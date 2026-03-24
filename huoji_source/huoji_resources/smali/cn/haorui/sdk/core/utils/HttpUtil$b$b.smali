.class public Lcn/haorui/sdk/core/utils/HttpUtil$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil$b;->onResponse(Lz2/tw;Lz2/sx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/OriginalResponse;

.field public final synthetic b:Lcn/haorui/sdk/core/utils/HttpUtil$b;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpUtil$b;Lcn/haorui/sdk/core/utils/OriginalResponse;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$b$b;->b:Lcn/haorui/sdk/core/utils/HttpUtil$b;

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/HttpUtil$b$b;->a:Lcn/haorui/sdk/core/utils/OriginalResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/utils/HttpUtil$b$b;->b:Lcn/haorui/sdk/core/utils/HttpUtil$b;

    iget-object v0, v0, Lcn/haorui/sdk/core/utils/HttpUtil$b;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$b$b;->a:Lcn/haorui/sdk/core/utils/OriginalResponse;

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
