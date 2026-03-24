.class public final Lcom/anythink/expressad/exoplayer/ac;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/anythink/expressad/exoplayer/ac;

.field public static final b:Lcom/anythink/expressad/exoplayer/ac;

.field public static final c:Lcom/anythink/expressad/exoplayer/ac;

.field public static final d:Lcom/anythink/expressad/exoplayer/ac;

.field public static final e:Lcom/anythink/expressad/exoplayer/ac;


# instance fields
.field public final f:J

.field public final g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/anythink/expressad/exoplayer/ac;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/anythink/expressad/exoplayer/ac;-><init>(JJ)V

    sput-object v0, Lcom/anythink/expressad/exoplayer/ac;->a:Lcom/anythink/expressad/exoplayer/ac;

    new-instance v3, Lcom/anythink/expressad/exoplayer/ac;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Lcom/anythink/expressad/exoplayer/ac;-><init>(JJ)V

    sput-object v3, Lcom/anythink/expressad/exoplayer/ac;->b:Lcom/anythink/expressad/exoplayer/ac;

    new-instance v3, Lcom/anythink/expressad/exoplayer/ac;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/anythink/expressad/exoplayer/ac;-><init>(JJ)V

    sput-object v3, Lcom/anythink/expressad/exoplayer/ac;->c:Lcom/anythink/expressad/exoplayer/ac;

    new-instance v3, Lcom/anythink/expressad/exoplayer/ac;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/anythink/expressad/exoplayer/ac;-><init>(JJ)V

    sput-object v3, Lcom/anythink/expressad/exoplayer/ac;->d:Lcom/anythink/expressad/exoplayer/ac;

    sput-object v0, Lcom/anythink/expressad/exoplayer/ac;->e:Lcom/anythink/expressad/exoplayer/ac;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/ac;->f:J

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/ac;->g:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/anythink/expressad/exoplayer/ac;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/anythink/expressad/exoplayer/ac;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/ac;->f:J

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/ac;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/ac;->g:J

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/ac;->g:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/ac;->f:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/ac;->g:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
