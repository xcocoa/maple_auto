.class public final Lcom/anythink/expressad/foundation/g/f/d/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/foundation/g/f/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field public final synthetic f:Lcom/anythink/expressad/foundation/g/f/d/b;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private i:Lcom/anythink/expressad/foundation/g/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/foundation/g/f/e<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/anythink/expressad/foundation/g/f/d/a;

.field private k:I


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/foundation/g/f/d/b;Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/g/f/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->h:Ljava/io/File;

    iput-object p4, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->i:Lcom/anythink/expressad/foundation/g/f/e;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/foundation/g/f/d/b;Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/foundation/g/f/d/b$a;-><init>(Lcom/anythink/expressad/foundation/g/f/d/b;Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/foundation/g/f/d/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/g/f/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/anythink/expressad/foundation/g/f/d/b$a;-><init>(Lcom/anythink/expressad/foundation/g/f/d/b;Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Z
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->h:Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->g:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-direct {v2, v0, v1}, Lcom/anythink/expressad/foundation/g/f/d/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->j:Lcom/anythink/expressad/foundation/g/f/d/a;

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;-><init>(Lcom/anythink/expressad/foundation/g/f/d/b$a;)V

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/e;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/f/d/b;->a(Lcom/anythink/expressad/foundation/g/f/d/b;)Lcom/anythink/expressad/foundation/g/f/j;

    move-result-object v1

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->j:Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-virtual {v1, p0}, Lcom/anythink/expressad/foundation/g/f/j;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->i:Lcom/anythink/expressad/foundation/g/f/e;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/foundation/g/f/d/b$a;)I
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    return v0
.end method

.method private c()Z
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->h:Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->g:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-direct {v2, v0, v1}, Lcom/anythink/expressad/foundation/g/f/d/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->j:Lcom/anythink/expressad/foundation/g/f/d/a;

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;-><init>(Lcom/anythink/expressad/foundation/g/f/d/b$a;)V

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/e;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/f/d/b;->a(Lcom/anythink/expressad/foundation/g/f/d/b;)Lcom/anythink/expressad/foundation/g/f/j;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->j:Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/foundation/g/f/j;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return v0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    return v0
.end method

.method private e()Z
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->j:Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->e()V

    :cond_1
    iput v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b;->b(Lcom/anythink/expressad/foundation/g/f/d/b;)V

    return v2
.end method

.method private f()Z
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b;->b(Lcom/anythink/expressad/foundation/g/f/d/b;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 4

    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->j:Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->e()V

    :cond_2
    iput v2, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->k:I

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {v0, p0}, Lcom/anythink/expressad/foundation/g/f/d/b;->a(Lcom/anythink/expressad/foundation/g/f/d/b;Lcom/anythink/expressad/foundation/g/f/d/b$a;)V

    return v1
.end method
