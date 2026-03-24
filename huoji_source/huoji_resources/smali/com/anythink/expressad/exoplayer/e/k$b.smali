.class public final Lcom/anythink/expressad/exoplayer/e/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/e/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/anythink/expressad/exoplayer/e/k$a;


# direct methods
.method private constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/anythink/expressad/exoplayer/e/k$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/e/k$b;->a:J

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/k$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lcom/anythink/expressad/exoplayer/e/l;->a:Lcom/anythink/expressad/exoplayer/e/l;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/anythink/expressad/exoplayer/e/l;

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/anythink/expressad/exoplayer/e/l;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/k$b;->b:Lcom/anythink/expressad/exoplayer/e/k$a;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/anythink/expressad/exoplayer/e/k$a;
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/k$b;->b:Lcom/anythink/expressad/exoplayer/e/k$a;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/k$b;->a:J

    return-wide v0
.end method
