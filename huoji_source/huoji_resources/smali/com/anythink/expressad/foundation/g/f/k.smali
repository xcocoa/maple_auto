.class public final Lcom/anythink/expressad/foundation/g/f/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lcom/anythink/expressad/foundation/g/f/a/a;

.field public c:Lcom/anythink/expressad/foundation/g/f/f/c;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/foundation/g/f/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->b:Lcom/anythink/expressad/foundation/g/f/a/a;

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->c:Lcom/anythink/expressad/foundation/g/f/f/c;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/k;->b:Lcom/anythink/expressad/foundation/g/f/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/anythink/expressad/foundation/g/f/f/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/anythink/expressad/foundation/g/f/f/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->b:Lcom/anythink/expressad/foundation/g/f/a/a;

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->c:Lcom/anythink/expressad/foundation/g/f/f/c;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/k;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/k;->c:Lcom/anythink/expressad/foundation/g/f/f/c;

    return-void
.end method

.method public static a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/anythink/expressad/foundation/g/f/a/a;",
            ")",
            "Lcom/anythink/expressad/foundation/g/f/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/k;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/foundation/g/f/k;-><init>(Lcom/anythink/expressad/foundation/g/f/a/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/anythink/expressad/foundation/g/f/f/c;)Lcom/anythink/expressad/foundation/g/f/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/anythink/expressad/foundation/g/f/f/c;",
            ")",
            "Lcom/anythink/expressad/foundation/g/f/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/k;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/foundation/g/f/k;-><init>(Ljava/lang/Object;Lcom/anythink/expressad/foundation/g/f/f/c;)V

    return-object v0
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/k;->b:Lcom/anythink/expressad/foundation/g/f/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
