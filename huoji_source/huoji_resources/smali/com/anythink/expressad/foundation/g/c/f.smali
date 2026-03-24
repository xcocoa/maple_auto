.class public abstract Lcom/anythink/expressad/foundation/g/c/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/expressad/foundation/g/c/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/expressad/foundation/g/c/e;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/c/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/anythink/expressad/foundation/g/c/a;->a:Lcom/anythink/expressad/foundation/g/c/a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/g/c/f;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Ljava/util/List;)V

    :cond_0
    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/c/f;->a:Lcom/anythink/expressad/foundation/g/c/e;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;",
            "Lcom/anythink/expressad/foundation/g/c/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/foundation/g/c/e;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/foundation/g/c/e;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/c/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;)V

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/foundation/g/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;"
        }
    .end annotation
.end method

.method public final b()Lcom/anythink/expressad/foundation/g/c/e;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/f;->a:Lcom/anythink/expressad/foundation/g/c/e;

    return-object v0
.end method
