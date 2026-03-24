.class public final Lcom/anythink/expressad/video/dynview/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/dynview/c$b;,
        Lcom/anythink/expressad/video/dynview/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/video/dynview/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->a(Lcom/anythink/expressad/video/dynview/c$a;)F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/dynview/c;->e:F

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->b(Lcom/anythink/expressad/video/dynview/c$a;)F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/dynview/c;->d:F

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->c(Lcom/anythink/expressad/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/dynview/c;->f:I

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->d(Lcom/anythink/expressad/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/dynview/c;->g:I

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->e(Lcom/anythink/expressad/video/dynview/c$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->f(Lcom/anythink/expressad/video/dynview/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->g(Lcom/anythink/expressad/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/dynview/c;->c:I

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->h(Lcom/anythink/expressad/video/dynview/c$a;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->h:Landroid/view/View;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->i(Lcom/anythink/expressad/video/dynview/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->j(Lcom/anythink/expressad/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/dynview/c;->j:I

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/c$a;->k(Lcom/anythink/expressad/video/dynview/c$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/dynview/c;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/video/dynview/c$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/dynview/c;-><init>(Lcom/anythink/expressad/video/dynview/c$a;)V

    return-void
.end method

.method private static l()Lcom/anythink/expressad/video/dynview/c$a;
    .locals 1

    new-instance v0, Lcom/anythink/expressad/video/dynview/c$a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c;->d:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c;->e:F

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c;->f:I

    return v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->h:Landroid/view/View;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c;->c:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c;->j:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c;->g:I

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/dynview/c;->k:Z

    return v0
.end method
