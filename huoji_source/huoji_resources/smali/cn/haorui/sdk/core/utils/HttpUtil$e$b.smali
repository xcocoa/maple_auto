.class public Lcn/haorui/sdk/core/utils/HttpUtil$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil$e;->onResponse(Lz2/tw;Lz2/sx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz2/sx;

.field public final synthetic b:Lcn/haorui/sdk/core/utils/HttpUtil$e;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpUtil$e;Lz2/sx;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$b;->b:Lcn/haorui/sdk/core/utils/HttpUtil$e;

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$b;->a:Lz2/sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$b;->b:Lcn/haorui/sdk/core/utils/HttpUtil$e;

    iget-object v0, v0, Lcn/haorui/sdk/core/utils/HttpUtil$e;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$b;->a:Lz2/sx;

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
