.class public Lcom/anythink/core/common/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/core/common/c/j;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/j;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/d/a;->a:Lcom/anythink/core/common/c/j;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/ae;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/d/a;->a:Lcom/anythink/core/common/c/j;

    iget v1, p0, Lcom/anythink/core/common/d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/c/j;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/ae;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/d/a;->a:Lcom/anythink/core/common/c/j;

    iget v1, p0, Lcom/anythink/core/common/d/a;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/c/j;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/d/a;->a:Lcom/anythink/core/common/c/j;

    iget v1, p0, Lcom/anythink/core/common/d/a;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/core/common/c/j;->a(ILjava/lang/String;II)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/d/a;->a:Lcom/anythink/core/common/c/j;

    iget v1, p0, Lcom/anythink/core/common/d/a;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/core/common/c/j;->a(ILjava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/d/a;->a:Lcom/anythink/core/common/c/j;

    iget v1, p0, Lcom/anythink/core/common/d/a;->b:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/anythink/core/common/c/j;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
