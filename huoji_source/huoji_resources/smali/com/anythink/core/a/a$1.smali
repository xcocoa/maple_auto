.class public final Lcom/anythink/core/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/a/a$1;->a:Lcom/anythink/core/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/a/a$1;->a:Lcom/anythink/core/a/a;

    iget-object v1, v0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/l;

    iget-object v0, v0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/l;->a(Ljava/lang/String;)V

    return-void
.end method
