.class public final Lcom/anythink/expressad/exoplayer/j/m$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/j/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/anythink/expressad/exoplayer/j/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:J

.field private d:I

.field private e:Lcom/anythink/expressad/exoplayer/k/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->c:J

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->d:I

    sget-object v0, Lcom/anythink/expressad/exoplayer/k/c;->a:Lcom/anythink/expressad/exoplayer/k/c;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->e:Lcom/anythink/expressad/exoplayer/k/c;

    return-void
.end method

.method private a(I)Lcom/anythink/expressad/exoplayer/j/m$a;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->d:I

    return-object p0
.end method

.method private a(J)Lcom/anythink/expressad/exoplayer/j/m$a;
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->c:J

    return-object p0
.end method

.method private a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;)Lcom/anythink/expressad/exoplayer/j/m$a;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->b:Lcom/anythink/expressad/exoplayer/j/d$a;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k/c;)Lcom/anythink/expressad/exoplayer/j/m$a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->e:Lcom/anythink/expressad/exoplayer/k/c;

    return-object p0
.end method

.method private a()Lcom/anythink/expressad/exoplayer/j/m;
    .locals 9

    new-instance v8, Lcom/anythink/expressad/exoplayer/j/m;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->b:Lcom/anythink/expressad/exoplayer/j/d$a;

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->c:J

    iget v5, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->d:I

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/j/m$a;->e:Lcom/anythink/expressad/exoplayer/k/c;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/j/m;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;B)V

    return-object v8
.end method
