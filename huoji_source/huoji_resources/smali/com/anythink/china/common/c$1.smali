.class public final Lcom/anythink/china/common/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/c;->a(IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/china/common/c;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/c;ILjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/c$1;->d:Lcom/anythink/china/common/c;

    iput p2, p0, Lcom/anythink/china/common/c$1;->a:I

    iput-object p3, p0, Lcom/anythink/china/common/c$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/anythink/china/common/c$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/anythink/core/common/f/i;

    invoke-direct {v0}, Lcom/anythink/core/common/f/i;-><init>()V

    iget-object v1, p0, Lcom/anythink/china/common/c$1;->d:Lcom/anythink/china/common/c;

    iget-object v2, v1, Lcom/anythink/china/common/c;->b:Lcom/anythink/core/api/BaseAd;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/anythink/china/common/c;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/au;

    iget v1, p0, Lcom/anythink/china/common/c$1;->a:I

    iput v1, v0, Lcom/anythink/core/common/f/i;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/i;->c:J

    iget-object v1, v0, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/au;

    instance-of v2, v1, Lcom/anythink/core/common/f/h;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/core/common/f/h;

    iget-object v2, p0, Lcom/anythink/china/common/c$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/au;

    check-cast v1, Lcom/anythink/core/common/f/h;

    iget-wide v2, p0, Lcom/anythink/china/common/c$1;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/h;->d(J)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/q;

    move-result-object v2

    iget v3, p0, Lcom/anythink/china/common/c$1;->a:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/core/common/q;->a(ILcom/anythink/core/common/f/i;Lcom/anythink/core/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
