.class public abstract Lcom/anythink/basead/e/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/e/b$b;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/e/b$b;->c:Z

    iput-object p1, p0, Lcom/anythink/basead/e/b$b;->a:Ljava/util/Map;

    invoke-static {}, Lcom/anythink/core/common/n/a;->a()Lcom/anythink/core/common/n/a;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/e/b$b$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/e/b$b$1;-><init>(Lcom/anythink/basead/e/b$b;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/n/a;->a(Ljava/lang/String;Lcom/anythink/core/common/n/a$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/e/b$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/e/b$b;->c:Z

    return p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/basead/e/b$b;->b:I

    return-void
.end method

.method public abstract a(Lcom/anythink/basead/c/e;)V
.end method

.method public abstract a(Lcom/anythink/basead/e/i;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/anythink/basead/e/i;)V
.end method

.method public abstract c()V
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/basead/e/b$b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/e/b$b;->c:Z

    iget-object v0, p0, Lcom/anythink/basead/e/b$b;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/anythink/basead/e/b$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "close_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/anythink/basead/e/b$b;->b:I

    return v0
.end method
