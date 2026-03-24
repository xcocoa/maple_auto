.class public final Lcom/anythink/core/common/n/d$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/h/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/n/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/n/d$2;->a:Lcom/anythink/core/common/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/anythink/core/common/h/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/d$2;->a:Lcom/anythink/core/common/n/d;

    check-cast p1, Lcom/anythink/core/common/h/a/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/a/a;->b()I

    move-result p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/n/d;->a(Lcom/anythink/core/common/n/d;I)V

    iget-object p1, p0, Lcom/anythink/core/common/n/d$2;->a:Lcom/anythink/core/common/n/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/n/d;->a(Lcom/anythink/core/common/n/d;Z)Z

    iget-object p1, p0, Lcom/anythink/core/common/n/d$2;->a:Lcom/anythink/core/common/n/d;

    invoke-static {p1}, Lcom/anythink/core/common/n/d;->a(Lcom/anythink/core/common/n/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "anythink_sdk"

    const-string v3, "LOG_SEND_TIME"

    invoke-static {p1, v2, v3, v0, v1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/core/common/n/d$2;->a:Lcom/anythink/core/common/n/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/n/d;->a(Lcom/anythink/core/common/n/d;Z)Z

    return-void
.end method
