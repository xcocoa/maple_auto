.class public final Lcom/anythink/expressad/exoplayer/b/l$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/v;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/v;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l$d;->a:Lcom/anythink/expressad/exoplayer/v;

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/b/l$d;->b:J

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/b/l$d;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/v;JJB)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/anythink/expressad/exoplayer/b/l$d;-><init>(Lcom/anythink/expressad/exoplayer/v;JJ)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/b/l$d;)Lcom/anythink/expressad/exoplayer/v;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/b/l$d;->a:Lcom/anythink/expressad/exoplayer/v;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/b/l$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l$d;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/b/l$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l$d;->b:J

    return-wide v0
.end method
