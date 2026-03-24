.class public Lcom/octopus/ad/internal/network/ServerResponse$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/network/ServerResponse;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/internal/network/ServerResponse;

.field public final synthetic val$octopus:Lcom/octopus/ad/internal/m;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/m;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse$1;->this$0:Lcom/octopus/ad/internal/network/ServerResponse;

    iput-object p2, p0, Lcom/octopus/ad/internal/network/ServerResponse$1;->val$octopus:Lcom/octopus/ad/internal/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse$1;->this$0:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/internal/network/ServerResponse;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/octopus/ad/internal/network/ServerResponse$1;->val$octopus:Lcom/octopus/ad/internal/m;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/m;->b()Lcom/octopus/ad/internal/b/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    const v4, 0xfa000

    :goto_1
    if-lez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sub-int/2addr v4, v5

    goto :goto_1

    :catch_0
    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
