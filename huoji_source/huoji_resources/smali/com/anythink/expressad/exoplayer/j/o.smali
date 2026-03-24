.class public final Lcom/anythink/expressad/exoplayer/j/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/h$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/anythink/expressad/exoplayer/j/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/j/aa<",
            "-",
            "Lcom/anythink/expressad/exoplayer/j/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/anythink/expressad/exoplayer/j/h$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/j/aa;Lcom/anythink/expressad/exoplayer/j/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/expressad/exoplayer/j/aa<",
            "-",
            "Lcom/anythink/expressad/exoplayer/j/h;",
            ">;",
            "Lcom/anythink/expressad/exoplayer/j/h$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/o;->b:Lcom/anythink/expressad/exoplayer/j/aa;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/j/o;->c:Lcom/anythink/expressad/exoplayer/j/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/j/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/aa;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/aa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/exoplayer/j/aa<",
            "-",
            "Lcom/anythink/expressad/exoplayer/j/h;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/q;

    invoke-direct {v0, p2, p3}, Lcom/anythink/expressad/exoplayer/j/q;-><init>(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/aa;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/anythink/expressad/exoplayer/j/o;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/j/aa;Lcom/anythink/expressad/exoplayer/j/h$a;)V

    return-void
.end method

.method private b()Lcom/anythink/expressad/exoplayer/j/n;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/n;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/o;->b:Lcom/anythink/expressad/exoplayer/j/aa;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/o;->c:Lcom/anythink/expressad/exoplayer/j/h$a;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/j/h$a;->a()Lcom/anythink/expressad/exoplayer/j/h;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/j/n;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/j/aa;Lcom/anythink/expressad/exoplayer/j/h;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/anythink/expressad/exoplayer/j/h;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/n;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/o;->b:Lcom/anythink/expressad/exoplayer/j/aa;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/o;->c:Lcom/anythink/expressad/exoplayer/j/h$a;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/j/h$a;->a()Lcom/anythink/expressad/exoplayer/j/h;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/j/n;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/j/aa;Lcom/anythink/expressad/exoplayer/j/h;)V

    return-object v0
.end method
