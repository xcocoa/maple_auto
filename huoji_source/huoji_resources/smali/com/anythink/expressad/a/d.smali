.class public Lcom/anythink/expressad/a/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10

.field public static final g:I = 0x20


# instance fields
.field private a:I

.field public h:Lcom/anythink/expressad/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/a/d;->a:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/a/d;->a:I

    return v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/a/d;->a:I

    return-void
.end method

.method private a(Lcom/anythink/expressad/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/d;->h:Lcom/anythink/expressad/a/e;

    return-void
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/a/d;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/a/d;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/a/d;->a:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/a/d;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/anythink/expressad/a/d;->a:I

    return-void
.end method
