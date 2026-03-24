.class public final Lcom/anythink/core/common/f/ae;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/core/common/f/ae;->a:I

    iput-object p2, p0, Lcom/anythink/core/common/f/ae;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/common/f/ae;->d:I

    iput p1, p0, Lcom/anythink/core/common/f/ae;->e:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/anythink/core/common/f/ae;->c:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/ae;->b:Ljava/lang/String;

    return-void
.end method

.method private c(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ae;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/ae;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ae;->d:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/ae;->c:J

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/ae;->c:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ae;->e:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ae;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ae;->e:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ae;->a:I

    return v0
.end method
