.class public final Lcom/anythink/core/common/l/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/core/common/l/e;

.field public b:I

.field public c:Z

.field public d:J

.field public e:Lcom/anythink/core/common/l/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/l/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/l/a;->a:Lcom/anythink/core/common/l/e;

    iput p2, p0, Lcom/anythink/core/common/l/a;->b:I

    return-void
.end method

.method private b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/l/a;->c:Z

    return v0
.end method

.method private c()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/l/a;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/l/a;->c:Z

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/l/a;->d:J

    return-void
.end method

.method public final a(Lcom/anythink/core/common/l/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/l/a;->e:Lcom/anythink/core/common/l/c;

    return-void
.end method
