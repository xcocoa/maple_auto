.class public abstract Lcom/anythink/basead/e/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/j;


# instance fields
.field public a:Lcom/anythink/core/common/f/l;

.field public b:Lcom/anythink/core/common/f/h;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/e/f;->a:Lcom/anythink/core/common/f/l;

    iput-object p2, p0, Lcom/anythink/basead/e/f;->b:Lcom/anythink/core/common/f/h;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/e/f;->a:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/anythink/core/common/a/d;->a()Lcom/anythink/core/common/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/a/d;->b(Lcom/anythink/core/common/f/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/e/f;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    iget-object v0, p0, Lcom/anythink/basead/e/f;->b:Lcom/anythink/core/common/f/h;

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/e/f;->a:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/anythink/core/common/a/d;->a()Lcom/anythink/core/common/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/a/d;->b(Lcom/anythink/core/common/f/j;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/e/f;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/e/f;->b:Lcom/anythink/core/common/f/h;

    iget p1, p1, Lcom/anythink/basead/e/i;->d:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/e/f;->b:Lcom/anythink/core/common/f/h;

    iget p1, p1, Lcom/anythink/basead/e/i;->c:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->o(I)V

    :cond_3
    :goto_0
    return-void
.end method
