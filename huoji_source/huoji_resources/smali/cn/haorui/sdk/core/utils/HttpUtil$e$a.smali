.class public Lcn/haorui/sdk/core/utils/HttpUtil$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil$e;->onFailure(Lz2/tw;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lcn/haorui/sdk/core/utils/HttpUtil$e;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpUtil$e;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$a;->b:Lcn/haorui/sdk/core/utils/HttpUtil$e;

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$a;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$a;->b:Lcn/haorui/sdk/core/utils/HttpUtil$e;

    iget-object v0, v0, Lcn/haorui/sdk/core/utils/HttpUtil$e;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e$a;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;->onFailure(Ljava/io/IOException;)V

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    return-void
.end method
