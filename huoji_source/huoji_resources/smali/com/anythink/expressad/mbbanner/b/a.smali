.class public final Lcom/anythink/expressad/mbbanner/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Ljava/lang/String; = "BannerController"


# instance fields
.field public a:Lcom/anythink/expressad/out/i;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Lcom/anythink/expressad/out/TemplateBannerView;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/anythink/expressad/out/h;

.field private m:Lcom/anythink/expressad/foundation/d/d;

.field private n:Lcom/anythink/expressad/mbbanner/a/d/c;

.field private o:Lcom/anythink/expressad/d/c;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/anythink/expressad/mbbanner/a/c/c;

.field private v:Lcom/anythink/expressad/mbbanner/a/c/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/out/TemplateBannerView;Lcom/anythink/expressad/out/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->k:I

    new-instance v1, Lcom/anythink/expressad/mbbanner/b/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/mbbanner/b/a$1;-><init>(Lcom/anythink/expressad/mbbanner/b/a;)V

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->u:Lcom/anythink/expressad/mbbanner/a/c/c;

    new-instance v1, Lcom/anythink/expressad/mbbanner/b/a$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/mbbanner/b/a$2;-><init>(Lcom/anythink/expressad/mbbanner/b/a;)V

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->v:Lcom/anythink/expressad/mbbanner/a/c/b;

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/expressad/out/i;->a()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->h:I

    invoke-virtual {p2}, Lcom/anythink/expressad/out/i;->b()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->i:I

    :cond_0
    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/b/a;->a:Lcom/anythink/expressad/out/i;

    iput-object p4, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/mbbanner/b/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/expressad/d/c;->c(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    :cond_1
    iget p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->k:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/c;->b()I

    move-result p1

    const/16 p2, 0xb4

    const/16 p3, 0xa

    if-lez p1, :cond_3

    if-ge p1, p3, :cond_2

    const/16 p1, 0xa

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    const/16 p1, 0xb4

    :cond_3
    :goto_0
    iput p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    :cond_4
    iget p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->f:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/c;->d()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/anythink/expressad/mbbanner/b/a;->e:Z

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Z)V

    :cond_6
    return-void
.end method

.method private static a(I)I
    .locals 2

    const/16 v0, 0xb4

    const/16 v1, 0xa

    if-lez p0, :cond_1

    if-ge p0, v1, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const/16 p0, 0xb4

    :cond_1
    :goto_0
    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/b/a;Lcom/anythink/expressad/foundation/d/d;)Lcom/anythink/expressad/foundation/d/d;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->l:Lcom/anythink/expressad/out/h;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->l:Lcom/anythink/expressad/out/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->t:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/mbbanner/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->s:Z

    return p1
.end method

.method public static synthetic c(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/mbbanner/b/a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->i:I

    return p0
.end method

.method public static synthetic e(Lcom/anythink/expressad/mbbanner/b/a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->h:I

    return p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/mbbanner/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/anythink/expressad/mbbanner/b/a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    return p0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/d/c;->c(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->b()I

    move-result v0

    const/16 v1, 0xb4

    const/16 v2, 0xa

    if-lez v0, :cond_2

    if-ge v0, v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v0, 0xb4

    :cond_2
    :goto_0
    iput v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    :cond_3
    iget v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->f:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->e:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Z)V

    :cond_5
    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/mbbanner/a/c/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->v:Lcom/anythink/expressad/mbbanner/a/c/b;

    return-object p0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/d/c;->c(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->b()I

    move-result v0

    const/16 v1, 0xb4

    const/16 v2, 0xa

    if-lez v0, :cond_2

    if-ge v0, v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v0, 0xb4

    :cond_2
    :goto_0
    iput v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    :cond_3
    iget v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->f:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->e:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Z)V

    :cond_5
    return-void
.end method

.method public static synthetic h(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/foundation/d/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    return-object p0
.end method

.method private h()V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->s:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v3, p0, Lcom/anythink/expressad/mbbanner/b/a;->u:Lcom/anythink/expressad/mbbanner/a/c/c;

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/anythink/expressad/mbbanner/b/a;->e:Z

    iget-object v7, p0, Lcom/anythink/expressad/mbbanner/b/a;->o:Lcom/anythink/expressad/d/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/mbbanner/a/d/c;-><init>(Lcom/anythink/expressad/out/TemplateBannerView;Lcom/anythink/expressad/mbbanner/a/c/c;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/expressad/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->a:Lcom/anythink/expressad/out/i;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/out/i;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->p:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->q:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->c(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->e:Z

    iget v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(ZI)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/d;)V

    goto :goto_0

    :cond_2
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->s:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/TemplateBannerView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/b/a;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    return-object p0
.end method

.method private static i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static j()V
    .locals 0

    return-void
.end method

.method public static synthetic j(Lcom/anythink/expressad/mbbanner/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/b/a;->h()V

    return-void
.end method

.method private k()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->p:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->t:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/y;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    new-instance v3, Lcom/anythink/expressad/mbbanner/a/b/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/anythink/expressad/mbbanner/b/a;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/anythink/expressad/mbbanner/b/a;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v3, v4, v5}, Lcom/anythink/expressad/mbbanner/a/b/d;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->p:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/b/a;->k()V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->p:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->q:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->c(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(IIII)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->m:Lcom/anythink/expressad/foundation/d/d;

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->v:Lcom/anythink/expressad/mbbanner/a/c/b;

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/expressad/mbbanner/a/c/b;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->l:Lcom/anythink/expressad/out/h;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/i;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/out/i;->a()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->h:I

    invoke-virtual {p1}, Lcom/anythink/expressad/out/i;->b()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->i:I

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->f:I

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->r:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->l:Lcom/anythink/expressad/out/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->l:Lcom/anythink/expressad/out/h;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->v:Lcom/anythink/expressad/mbbanner/a/c/b;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->v:Lcom/anythink/expressad/mbbanner/a/c/b;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->u:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->u:Lcom/anythink/expressad/mbbanner/a/c/c;

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    :cond_3
    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/mbbanner/a/d/a;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a;->n:Lcom/anythink/expressad/mbbanner/a/d/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->a()V

    :cond_4
    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->p:Z

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/b/a;->l()V

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/b/a;->h()V

    return-void
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/mbbanner/a/b/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v2, v3, v4}, Lcom/anythink/expressad/mbbanner/a/b/d;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/b/a;->q:Z

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/b/a;->l()V

    return-void
.end method

.method public final d()V
    .locals 5

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a;->c:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/mbbanner/a/b/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/anythink/expressad/mbbanner/b/a;->j:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v2, v3, v4}, Lcom/anythink/expressad/mbbanner/a/b/d;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    return-void
.end method
