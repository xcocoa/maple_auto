.class public final Lcom/anythink/core/common/b/n$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/ATNetworkConfig;

.field public final synthetic b:Lcom/anythink/core/common/b/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/n;Lcom/anythink/core/api/ATNetworkConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/n$11;->b:Lcom/anythink/core/common/b/n;

    iput-object p2, p0, Lcom/anythink/core/common/b/n$11;->a:Lcom/anythink/core/api/ATNetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/b/n$11;->b:Lcom/anythink/core/common/b/n;

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->b(Lcom/anythink/core/common/b/n;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/n$11;->a:Lcom/anythink/core/api/ATNetworkConfig;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/b/n;->a(Lcom/anythink/core/common/b/n;Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfig;)V

    return-void
.end method
