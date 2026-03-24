.class public final Lcom/anythink/expressad/exoplayer/b/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/anythink/expressad/exoplayer/b/f;

.field private final b:Lcom/anythink/expressad/exoplayer/b/q;

.field private final c:Lcom/anythink/expressad/exoplayer/b/t;


# direct methods
.method public varargs constructor <init>([Lcom/anythink/expressad/exoplayer/b/f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/expressad/exoplayer/b/f;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->a:[Lcom/anythink/expressad/exoplayer/b/f;

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/q;

    invoke-direct {v1}, Lcom/anythink/expressad/exoplayer/b/q;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->b:Lcom/anythink/expressad/exoplayer/b/q;

    new-instance v2, Lcom/anythink/expressad/exoplayer/b/t;

    invoke-direct {v2}, Lcom/anythink/expressad/exoplayer/b/t;-><init>()V

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->c:Lcom/anythink/expressad/exoplayer/b/t;

    array-length v3, p1

    aput-object v1, v0, v3

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->c:Lcom/anythink/expressad/exoplayer/b/t;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/b/t;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->b:Lcom/anythink/expressad/exoplayer/b/q;

    iget-boolean v1, p1, Lcom/anythink/expressad/exoplayer/v;->d:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/b/q;->a(Z)V

    new-instance v0, Lcom/anythink/expressad/exoplayer/v;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->c:Lcom/anythink/expressad/exoplayer/b/t;

    iget v2, p1, Lcom/anythink/expressad/exoplayer/v;->b:F

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/b/t;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->c:Lcom/anythink/expressad/exoplayer/b/t;

    iget v3, p1, Lcom/anythink/expressad/exoplayer/v;->c:F

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/exoplayer/b/t;->b(F)F

    move-result v2

    iget-boolean p1, p1, Lcom/anythink/expressad/exoplayer/v;->d:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/anythink/expressad/exoplayer/v;-><init>(FFZ)V

    return-object v0
.end method

.method public final a()[Lcom/anythink/expressad/exoplayer/b/f;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->a:[Lcom/anythink/expressad/exoplayer/b/f;

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$b;->b:Lcom/anythink/expressad/exoplayer/b/q;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/q;->j()J

    move-result-wide v0

    return-wide v0
.end method
