.class public final Lcom/anythink/expressad/foundation/d/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I


# direct methods
.method private constructor <init>(JJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/anythink/expressad/foundation/d/g;->a:J

    iput-wide p3, p0, Lcom/anythink/expressad/foundation/d/g;->b:J

    iput p6, p0, Lcom/anythink/expressad/foundation/d/g;->d:I

    iput p5, p0, Lcom/anythink/expressad/foundation/d/g;->c:I

    return-void
.end method

.method private a()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/foundation/d/g;->a:J

    return-wide v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/g;->c:I

    return-void
.end method

.method private a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/foundation/d/g;->a:J

    return-void
.end method

.method private b()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/foundation/d/g;->b:J

    return-wide v0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/g;->d:I

    return-void
.end method

.method private b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/foundation/d/g;->b:J

    return-void
.end method

.method private c()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/g;->c:I

    return v0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/g;->d:I

    return v0
.end method
