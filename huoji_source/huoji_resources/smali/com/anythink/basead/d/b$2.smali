.class public final Lcom/anythink/basead/d/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/d/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/b;->b(Lcom/anythink/basead/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/basead/e/c;

.field public final synthetic c:Lcom/anythink/basead/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/b;Ljava/lang/String;Lcom/anythink/basead/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iput-object p2, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/a/i;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;)V
    .locals 6

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recordOfferDataEndTime, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ah;

    move-result-object v0

    iput-wide v2, v0, Lcom/anythink/core/common/f/ah;->c:J

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/core/common/f/j;)V

    iget-object p1, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/e/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/basead/e/c;->onAdDataLoaded()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget v0, v0, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-boolean v0, v0, Lcom/anythink/core/common/f/m;->o:Z

    if-eqz v0, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ah;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Ljava/lang/String;Lcom/anythink/core/common/f/ah;Z)V

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/e/c;

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/a/i;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iput-object p1, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    invoke-static {v0, p2}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/a/i;)V

    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v1, v1, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget v0, v0, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-boolean v0, v0, Lcom/anythink/core/common/f/m;->o:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "1"

    move-object v2, p2

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    iget-object p2, p2, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Ljava/lang/String;Lcom/anythink/core/common/f/ah;Z)V

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/basead/d/b$2;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/n/b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/basead/d/b$2;->c:Lcom/anythink/basead/d/b;

    invoke-static {p1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;)Z

    iget-object p1, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/e/c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/anythink/basead/e/c;->onAdCacheLoaded()V

    :cond_3
    return-void
.end method
