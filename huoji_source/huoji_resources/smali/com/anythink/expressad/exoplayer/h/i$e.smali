.class public final Lcom/anythink/expressad/exoplayer/h/i$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/expressad/exoplayer/h/i$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/h/s;

.field public final b:Ljava/lang/Object;

.field public c:Lcom/anythink/expressad/exoplayer/h/i$b;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/h/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/h/i$b;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/i$e;)I
    .locals 1
    .param p1    # Lcom/anythink/expressad/exoplayer/h/i$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->d:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iput p3, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->h:Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    sub-int/2addr v0, p1

    return v0
.end method
