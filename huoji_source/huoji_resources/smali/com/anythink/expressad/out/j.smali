.class public Lcom/anythink/expressad/out/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/e/b;
.implements Lcom/anythink/expressad/foundation/g/d/c;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L

.field public static final cR:I = 0x1

.field public static final cS:I = 0x2

.field public static final cT:I = 0x3


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field public cU:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:D

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Lcom/anythink/expressad/out/q;

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/out/j;->i:J

    const v0, 0x8235

    iput v0, p0, Lcom/anythink/expressad/out/j;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/out/j;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/out/j;->r:I

    iput v0, p0, Lcom/anythink/expressad/out/j;->s:I

    iput v0, p0, Lcom/anythink/expressad/out/j;->t:I

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/j;->r:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->o:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Lcom/anythink/expressad/out/q;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->q:Lcom/anythink/expressad/out/q;

    iget-object p1, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->l:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->n:Ljava/lang/String;

    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/j;->s:I

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->p:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private b(Lcom/anythink/expressad/out/q;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->q:Lcom/anythink/expressad/out/q;

    iget-object p1, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_0
    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Lcom/anythink/expressad/out/q;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->q:Lcom/anythink/expressad/out/q;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/j;->r:I

    return v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/j;->s:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/out/j;->j:D

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/out/j;->i:J

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/out/j;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/out/j;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->q:Lcom/anythink/expressad/out/q;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/out/j;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/out/j;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/expressad/out/j;->o:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/anythink/expressad/out/j;->q:Lcom/anythink/expressad/out/q;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/out/j;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final aX()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/out/j;->j:D

    return-wide v0
.end method

.method public final aY()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/j;->k:I

    return v0
.end method

.method public final aZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final ba()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final bb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final bc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final bd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final be()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final bf()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/j;->m:I

    return v0
.end method

.method public final bg()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/out/j;->i:J

    return-wide v0
.end method

.method public final bh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/out/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final bi()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/j;->t:I

    return v0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/j;->k:I

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/j;->m:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/j;->t:I

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->b:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->c:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->d:Ljava/lang/String;

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->e:Ljava/lang/String;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/j;->g:Ljava/lang/String;

    return-void
.end method
