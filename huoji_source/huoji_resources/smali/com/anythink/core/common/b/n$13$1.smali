.class public final Lcom/anythink/core/common/b/n$13$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/n$13;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/b/n$13;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/n$13;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/n$13$1;->a:Lcom/anythink/core/common/b/n$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/t;->b()V

    invoke-static {}, Lcom/anythink/core/common/s;->a()Lcom/anythink/core/common/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/s;->b()V

    return-void
.end method
