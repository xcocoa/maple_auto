.class public final Lcom/anythink/expressad/mbbanner/a/b/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->d:I

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->b:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->c:I

    iput p3, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->d:I

    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->d:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->c:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/mbbanner/a/b/e;->d:I

    return v0
.end method
