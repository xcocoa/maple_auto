.class public final Lcom/anythink/core/common/f/ah;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()J
    .locals 4

    iget-wide v0, p0, Lcom/anythink/core/common/f/ah;->b:J

    iget-wide v2, p0, Lcom/anythink/core/common/f/ah;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private b()J
    .locals 4

    iget-wide v0, p0, Lcom/anythink/core/common/f/ah;->c:J

    iget-wide v2, p0, Lcom/anythink/core/common/f/ah;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private c()J
    .locals 4

    iget-wide v0, p0, Lcom/anythink/core/common/f/ah;->e:J

    iget-wide v2, p0, Lcom/anythink/core/common/f/ah;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private d()J
    .locals 4

    iget-wide v0, p0, Lcom/anythink/core/common/f/ah;->b:J

    iget-wide v2, p0, Lcom/anythink/core/common/f/ah;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
