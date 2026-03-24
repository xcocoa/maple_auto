.class public abstract Lcom/anythink/basead/ui/BaseATView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/guidetoclickv2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/BaseATView$a;,
        Lcom/anythink/basead/ui/BaseATView$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/core/common/f/m;

.field public c:Lcom/anythink/core/common/f/l;

.field public d:Lcom/anythink/core/common/o/a/c;

.field public e:Lcom/anythink/basead/a/b;

.field public volatile f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/view/View;

.field public r:Z

.field public s:Landroid/view/View;

.field public t:Lcom/anythink/basead/ui/b/a;

.field public u:Lcom/anythink/basead/ui/guidetoclickv2/c;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "BaseATView"

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseATView;->v:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "BaseATView"

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseATView;->v:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iput-object p4, p0, Lcom/anythink/basead/ui/BaseATView;->o:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->p:Ljava/util/List;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->d()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->a()V

    new-instance p1, Lcom/anythink/basead/ui/BaseATView$2;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->n()I

    move-result v5

    new-instance v6, Lcom/anythink/basead/ui/BaseATView$1;

    invoke-direct {v6, p0}, Lcom/anythink/basead/ui/BaseATView$1;-><init>(Lcom/anythink/basead/ui/BaseATView;)V

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/anythink/basead/ui/BaseATView$2;-><init>(Lcom/anythink/basead/ui/BaseATView;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->t:Lcom/anythink/basead/ui/b/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->u:Lcom/anythink/basead/ui/guidetoclickv2/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method private static b(I)I
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    if-lez p0, :cond_0

    int-to-double v1, p0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v1

    double-to-int p0, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v3

    double-to-int v1, v1

    sub-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 8

    new-instance v7, Lcom/anythink/basead/ui/BaseATView$2;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->n()I

    move-result v5

    new-instance v6, Lcom/anythink/basead/ui/BaseATView$1;

    invoke-direct {v6, p0}, Lcom/anythink/basead/ui/BaseATView$1;-><init>(Lcom/anythink/basead/ui/BaseATView;)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/anythink/basead/ui/BaseATView$2;-><init>(Lcom/anythink/basead/ui/BaseATView;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V

    iput-object v7, p0, Lcom/anythink/basead/ui/BaseATView;->t:Lcom/anythink/basead/ui/b/a;

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->q:Landroid/view/View;

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/z;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v1, Lcom/anythink/core/common/f/z;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/a/b;->a(Lcom/anythink/core/common/f/z;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/anythink/core/common/f/aj;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/basead/d/c/d;->a()Lcom/anythink/basead/d/c/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/anythink/basead/d/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v4, v4, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/d/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/aj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget v1, v1, Lcom/anythink/core/common/f/m;->f:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_3

    check-cast v0, Lcom/anythink/core/common/f/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v0, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/aj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget v1, v1, Lcom/anythink/core/common/f/m;->f:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/anythink/core/common/f/aj;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v0, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v0, v2, v2}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/anythink/basead/ui/a;I)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f000000    # 0.5f

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f400000    # 0.75f

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3fc00000    # 1.5f

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/a;->setClickAreaScaleFactor(F)V

    :cond_3
    return v0
.end method

.method public abstract a()V
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->t:Lcom/anythink/basead/ui/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/b/a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseATView;->v:Z

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->h()V

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->e:Lcom/anythink/basead/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/basead/a/b;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-direct {v1, v2, v3, v4}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->e:Lcom/anythink/basead/a/b;

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->e:Lcom/anythink/basead/a/b;

    invoke-virtual {v1}, Lcom/anythink/basead/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    if-eqz v1, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x9

    goto :goto_0

    :cond_3
    const/16 p2, 0x8

    goto :goto_0

    :cond_4
    const/4 p2, 0x7

    goto :goto_0

    :cond_5
    const/4 p2, 0x6

    :cond_6
    :goto_0
    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/anythink/basead/e/i;->a(II)Lcom/anythink/basead/e/i;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->e:Lcom/anythink/basead/a/b;

    new-instance v2, Lcom/anythink/basead/ui/BaseATView$3;

    invoke-direct {v2, p0, p2}, Lcom/anythink/basead/ui/BaseATView$3;-><init>(Lcom/anythink/basead/ui/BaseATView;Lcom/anythink/basead/e/i;)V

    invoke-virtual {v1, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->i()Lcom/anythink/basead/c/i;

    move-result-object p2

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->q:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p0}, Lcom/anythink/basead/ui/BaseATView;->a(Landroid/view/View;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->j()Lcom/anythink/basead/c/a;

    move-result-object p1

    iput-object p1, p2, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->e:Lcom/anythink/basead/a/b;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V

    const/16 p1, 0x71

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    return-void
.end method

.method public a(ILjava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/anythink/core/common/o/a/c;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    if-lez p1, :cond_0

    invoke-direct {v0, p1}, Lcom/anythink/core/common/o/a/c;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/anythink/core/common/o/a/c;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->d:Lcom/anythink/core/common/o/a/c;

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->d:Lcom/anythink/core/common/o/a/c;

    new-instance v1, Lcom/anythink/basead/ui/BaseATView$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/basead/ui/BaseATView$4;-><init>(Lcom/anythink/basead/ui/BaseATView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p0, v1}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v2}, Lcom/anythink/basead/ui/BaseATView;->b(I)I

    move-result v2

    invoke-static {p1}, Lcom/anythink/basead/ui/BaseATView;->b(I)I

    move-result p1

    add-int v3, v1, v2

    iput v3, p0, Lcom/anythink/basead/ui/BaseATView;->g:I

    add-int v4, v0, p1

    iput v4, p0, Lcom/anythink/basead/ui/BaseATView;->h:I

    iput v2, p0, Lcom/anythink/basead/ui/BaseATView;->k:I

    iput p1, p0, Lcom/anythink/basead/ui/BaseATView;->l:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    mul-double v4, v4, v6

    double-to-int p1, v4

    add-int/2addr v3, p1

    iput v3, p0, Lcom/anythink/basead/ui/BaseATView;->i:I

    add-int/2addr v2, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double v3, v3, v6

    double-to-int p1, v3

    add-int/2addr v2, p1

    iput v2, p0, Lcom/anythink/basead/ui/BaseATView;->j:I

    iget p1, p0, Lcom/anythink/basead/ui/BaseATView;->i:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/anythink/basead/ui/BaseATView;->m:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/anythink/basead/ui/BaseATView;->n:I

    return-void
.end method

.method public abstract a(Lcom/anythink/basead/e/i;)V
.end method

.method public abstract a(Z)V
.end method

.method public a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->e:Lcom/anythink/basead/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->d:Lcom/anythink/core/common/o/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/o/a/c;->b()V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->i:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->j:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->n:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseATView;->l:I

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract e()V
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public getHasPerformClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseATView;->v:Z

    return v0
.end method

.method public declared-synchronized h()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseATView;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseATView;->f:Z

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v2, v1, Lcom/anythink/core/common/f/z;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v2, Lcom/anythink/core/common/f/z;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/f/a/b;->a(Lcom/anythink/core/common/f/z;)V

    goto :goto_0

    :cond_1
    instance-of v1, v1, Lcom/anythink/core/common/f/aj;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/anythink/basead/d/c/d;->a()Lcom/anythink/basead/d/c/d;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v4, v3, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/anythink/basead/d/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v5, v5, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/anythink/basead/d/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v2, v1, Lcom/anythink/core/common/f/aj;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget v2, v2, Lcom/anythink/core/common/f/m;->f:I

    const/16 v3, 0x43

    if-ne v2, v3, :cond_4

    check-cast v1, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v1, v0, v0}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_3
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v1, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_4
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Lcom/anythink/basead/c/i;
    .locals 3

    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/i;->e:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/i;->f:I

    return-object v0
.end method

.method public isShowingEndCardAfterVideoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    return v0
.end method

.method public final j()Lcom/anythink/basead/c/a;
    .locals 2

    new-instance v0, Lcom/anythink/basead/c/a;

    invoke-direct {v0}, Lcom/anythink/basead/c/a;-><init>()V

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->g:I

    iput v1, v0, Lcom/anythink/basead/c/a;->a:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->h:I

    iput v1, v0, Lcom/anythink/basead/c/a;->b:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->i:I

    iput v1, v0, Lcom/anythink/basead/c/a;->c:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->j:I

    iput v1, v0, Lcom/anythink/basead/c/a;->d:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->k:I

    iput v1, v0, Lcom/anythink/basead/c/a;->e:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->l:I

    iput v1, v0, Lcom/anythink/basead/c/a;->f:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->m:I

    iput v1, v0, Lcom/anythink/basead/c/a;->g:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseATView;->n:I

    iput v1, v0, Lcom/anythink/basead/c/a;->h:I

    return-object v0
.end method

.method public k()Z
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/shake/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->Q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCallback(Lcom/anythink/basead/ui/guidetoclickv2/c;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->u:Lcom/anythink/basead/ui/guidetoclickv2/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHasPerformClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseATView;->v:Z

    return-void
.end method

.method public setShowingEndCardAfterVideoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    return-void
.end method
