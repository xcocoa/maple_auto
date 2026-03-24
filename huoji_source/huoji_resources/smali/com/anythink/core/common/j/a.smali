.class public final Lcom/anythink/core/common/j/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/j/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/anythink/core/common/j/b;

.field public d:Lcom/anythink/core/common/m/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/core/common/j/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/j/a$1;-><init>(Lcom/anythink/core/common/j/a;)V

    iput-object v0, p0, Lcom/anythink/core/common/j/a;->d:Lcom/anythink/core/common/m/b;

    iput-object p1, p0, Lcom/anythink/core/common/j/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/core/common/j/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/j/a;->d:Lcom/anythink/core/common/m/b;

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/4 p1, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 6

    new-instance v4, Lcom/anythink/core/common/f/v;

    invoke-direct {v4}, Lcom/anythink/core/common/f/v;-><init>()V

    invoke-virtual {v4, p1}, Lcom/anythink/core/common/f/v;->a(Landroid/content/Context;)V

    iput p2, v4, Lcom/anythink/core/common/f/v;->d:I

    iget-object p2, p0, Lcom/anythink/core/common/j/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/j/a;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/j/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/j/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/anythink/core/common/j/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/j/a;->d:Lcom/anythink/core/common/m/b;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/4 p2, 0x0

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    iget-object p2, p0, Lcom/anythink/core/common/j/a;->c:Lcom/anythink/core/common/j/b;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/j/a;->a:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/anythink/core/common/j/b;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/j/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/j/a;->c:Lcom/anythink/core/common/j/b;

    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/j/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/u;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/core/common/j/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/j/a;->c:Lcom/anythink/core/common/j/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/j/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/j/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/j/a;->d:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method
