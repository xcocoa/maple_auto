.class public final Lcom/anythink/expressad/exoplayer/g/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/g/e;)Lcom/anythink/expressad/exoplayer/g/a;
    .locals 16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/c/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-instance v2, Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {v2, v1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>([BI)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    new-instance v0, Lcom/anythink/expressad/exoplayer/g/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/anythink/expressad/exoplayer/g/a$a;

    new-instance v2, Lcom/anythink/expressad/exoplayer/g/a/a;

    move-object v3, v2

    move-wide v11, v14

    invoke-direct/range {v3 .. v12}, Lcom/anythink/expressad/exoplayer/g/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/g/a;-><init>([Lcom/anythink/expressad/exoplayer/g/a$a;)V

    return-object v0
.end method
