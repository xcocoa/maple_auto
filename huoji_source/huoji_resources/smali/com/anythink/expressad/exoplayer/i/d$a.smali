.class public final Lcom/anythink/expressad/exoplayer/i/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/i/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->a:I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private varargs b(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/d;
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    new-instance v0, Lcom/anythink/expressad/exoplayer/i/d;

    aget p2, p2, v1

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;IILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    new-instance v0, Lcom/anythink/expressad/exoplayer/i/d;

    aget p2, p2, v1

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/i/d$a;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;IILjava/lang/Object;)V

    return-object v0
.end method
