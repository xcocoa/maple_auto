.class public final Lcom/anythink/basead/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/b$a;,
        Lcom/anythink/basead/a/b$b;
    }
.end annotation


# static fields
.field public static final A:I = 0x8

.field public static final B:I = 0x9

.field public static final C:I = 0xb

.field public static final D:I = 0xc

.field public static final E:I = 0xd

.field public static final F:I = 0xd

.field public static final G:I = 0xe

.field public static final H:I = 0xf

.field public static final I:I = 0x10

.field public static final J:I = 0x11

.field public static final K:I = 0x12

.field public static final L:I = 0x13

.field public static final M:I = 0x14

.field public static final N:I = 0x15

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x6

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7

.field public static final o:I = 0xa

.field public static final p:I = 0xb

.field public static final q:I = 0xc

.field public static final r:I = 0xd

.field public static final s:I = 0xd

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field public static final x:I = 0x5

.field public static final y:I = 0x6

.field public static final z:I = 0x7


# instance fields
.field public O:Lcom/anythink/core/common/f/l;

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Landroid/content/Context;

.field public T:Z

.field public U:Lcom/anythink/core/common/f/m;

.field public V:Lcom/anythink/basead/a/b$b;

.field public W:Lcom/anythink/core/api/IOfferClickHandler;

.field public X:Lcom/anythink/basead/a/b$a;

.field public Y:Z

.field public Z:Z

.field public aa:Lcom/anythink/basead/a/b$b;

.field private final ab:Ljava/lang/String;

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private final af:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/basead/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/b;->ab:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/basead/a/b;->ac:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/basead/a/b;->ad:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/anythink/basead/a/b;->ae:I

    const/16 v3, 0xa

    iput v3, p0, Lcom/anythink/basead/a/b;->af:I

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->R:Z

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->Z:Z

    new-instance v3, Lcom/anythink/basead/a/b$1;

    invoke-direct {v3, p0}, Lcom/anythink/basead/a/b$1;-><init>(Lcom/anythink/basead/a/b;)V

    iput-object v3, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    iput-object p3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    iput-object p2, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    iget-object p1, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    instance-of v3, p3, Lcom/anythink/core/common/f/j;

    if-eqz v3, :cond_0

    instance-of p3, p1, Lcom/anythink/core/common/f/ak;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/anythink/core/common/f/ak;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/ak;->au()I

    move-result p1

    if-ne p1, v1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    instance-of p1, p3, Lcom/anythink/core/common/f/z;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/anythink/core/common/f/z;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/z;->Y()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/anythink/basead/a/b;->T:Z

    iget-object p1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/l;->h(Ljava/lang/String;)V

    new-instance p1, Lcom/anythink/basead/handler/OfferClickHandler;

    invoke-direct {p1}, Lcom/anythink/basead/handler/OfferClickHandler;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/a/b;->W:Lcom/anythink/core/api/IOfferClickHandler;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->U()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->Y:Z

    return-void
.end method

.method private a(ILcom/anythink/basead/c/i;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/anythink/basead/a/b$b;->a()V

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/a/b$6;

    invoke-direct {v2, p0}, Lcom/anythink/basead/a/b$6;-><init>(Lcom/anythink/basead/a/b;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    const-string v4, "\\{req_id\\}"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, p2, v3, v4}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->g()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->H()I

    move-result v3

    if-ne v3, v4, :cond_4

    new-instance v3, Lcom/anythink/basead/c/d;

    invoke-direct {v3, v2, v2, v2}, Lcom/anythink/basead/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/anythink/basead/c/d;

    invoke-direct {v3, v1, v2, v2}, Lcom/anythink/basead/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/d;)V

    iget-object v5, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->H()I

    move-result v5

    if-eq v5, v0, :cond_e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    if-eq v5, v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    :cond_5
    invoke-direct {p0, v2, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    goto/16 :goto_6

    :cond_6
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v2, v4, v1}, Lcom/anythink/basead/d/b/a/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;)Lcom/anythink/basead/c/d;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    iput-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    iput-object v1, v3, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/anythink/basead/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iget-object v1, v1, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v1, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)V

    :cond_9
    :goto_2
    iput-object v1, v3, Lcom/anythink/basead/c/d;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/d;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iput-boolean v0, p2, Lcom/anythink/basead/c/i;->j:Z

    :goto_3
    invoke-direct {p0, v1, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/basead/d/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v2, v3, Lcom/anythink/basead/c/d;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/d;)V

    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    :cond_d
    invoke-direct {p0, v2, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    return-void

    :cond_e
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct {p0, v1, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    return-void

    :cond_f
    iget-object v2, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/anythink/basead/a/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    :goto_4
    iget-boolean v5, p0, Lcom/anythink/basead/a/b;->T:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->C()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_11

    iget-object v5, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iget-object v5, v5, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    :cond_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-direct {p0, v5, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    const/4 v0, 0x0

    :cond_12
    if-eqz v2, :cond_13

    iget-object v1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iget-object v1, v1, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    goto :goto_5

    :cond_13
    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)V

    :cond_14
    :goto_5
    if-eqz v0, :cond_16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    :cond_15
    invoke-direct {p0, v1, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    :cond_16
    :goto_6
    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b;ILcom/anythink/basead/c/i;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/anythink/basead/a/b$b;->a()V

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/a/b$6;

    invoke-direct {v2, p0}, Lcom/anythink/basead/a/b$6;-><init>(Lcom/anythink/basead/a/b;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    const-string v4, "\\{req_id\\}"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, p2, v3, v4}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->g()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->H()I

    move-result v3

    if-ne v3, v4, :cond_4

    new-instance v3, Lcom/anythink/basead/c/d;

    invoke-direct {v3, v2, v2, v2}, Lcom/anythink/basead/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/anythink/basead/c/d;

    invoke-direct {v3, v1, v2, v2}, Lcom/anythink/basead/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/d;)V

    iget-object v5, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->H()I

    move-result v5

    if-eq v5, v0, :cond_e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    if-eq v5, v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    :cond_5
    invoke-direct {p0, v2, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    goto/16 :goto_6

    :cond_6
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v2, v4, v1}, Lcom/anythink/basead/d/b/a/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;)Lcom/anythink/basead/c/d;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    iput-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    iput-object v1, v3, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/anythink/basead/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iget-object v1, v1, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v1, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)V

    :cond_9
    :goto_2
    iput-object v1, v3, Lcom/anythink/basead/c/d;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/d;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iput-boolean v0, p2, Lcom/anythink/basead/c/i;->j:Z

    :goto_3
    invoke-direct {p0, v1, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/basead/d/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v2, v3, Lcom/anythink/basead/c/d;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/d;)V

    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v2, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    :cond_d
    invoke-direct {p0, v2, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    return-void

    :cond_e
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct {p0, v1, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    return-void

    :cond_f
    iget-object v2, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/anythink/basead/a/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    :goto_4
    iget-boolean v5, p0, Lcom/anythink/basead/a/b;->T:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->C()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_11

    iget-object v5, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iget-object v5, v5, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    :cond_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-direct {p0, v5, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    const/4 v0, 0x0

    :cond_12
    if-eqz v2, :cond_13

    iget-object v1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iget-object v1, v1, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    goto :goto_5

    :cond_13
    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p0, v1}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)V

    :cond_14
    :goto_5
    if-eqz v0, :cond_16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, v3, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    :cond_15
    invoke-direct {p0, v1, p1, p2}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V

    :cond_16
    :goto_6
    return-void
.end method

.method private a(Lcom/anythink/basead/c/d;)V
    .locals 3

    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;Lcom/anythink/basead/c/d;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/basead/a/b$a;

    invoke-direct {v0}, Lcom/anythink/basead/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    iput-object p1, v0, Lcom/anythink/basead/a/b$a;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->T()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/anythink/basead/a/b$a;->b:J

    iget-object p1, p0, Lcom/anythink/basead/a/b;->X:Lcom/anythink/basead/a/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/anythink/basead/a/b$a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V
    .locals 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/anythink/basead/a/b;->Q:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/anythink/basead/a/b;->P:Z

    iget-object p1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/anythink/basead/a/b$b;->a(Z)V

    :cond_2
    invoke-direct {p0, p3}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/b$7;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/b$7;-><init>(Lcom/anythink/basead/a/b;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    invoke-direct {p0, p3, v0}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz p2, :cond_6

    invoke-interface {p2, v2}, Lcom/anythink/basead/a/b$b;->a(Z)V

    :cond_6
    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->H()I

    move-result p2

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->H()I

    move-result p2

    if-ne p2, v1, :cond_c

    :cond_7
    iget-object p2, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/anythink/basead/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    new-instance v3, Lcom/anythink/basead/c/b;

    invoke-direct {v3}, Lcom/anythink/basead/c/b;-><init>()V

    iput-object v3, p3, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->e()Lcom/anythink/basead/c/d;

    move-result-object v3

    iget-object v4, p3, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v3, ""

    :goto_1
    iput-object v3, v4, Lcom/anythink/basead/c/b;->a:Ljava/lang/String;

    iget-object v3, p3, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    const/4 v4, 0x5

    goto :goto_2

    :cond_9
    iget v4, v3, Lcom/anythink/basead/c/a;->j:I

    :goto_2
    iput v4, v3, Lcom/anythink/basead/c/a;->j:I

    :cond_a
    if-eqz p2, :cond_b

    invoke-direct {p0, p3}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;)V

    const/16 p1, 0x19

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {p1, p2, p3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iput-boolean v2, p0, Lcom/anythink/basead/a/b;->P:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/b$8;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/b$8;-><init>(Lcom/anythink/basead/a/b;)V

    goto/16 :goto_0

    :cond_b
    const/16 p2, 0x1a

    iget-object v3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {p2, v3, p3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    :cond_c
    iget-object p2, p3, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    const/4 v3, 0x3

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->H()I

    move-result p2

    if-ne p2, v1, :cond_f

    iget-boolean p2, p3, Lcom/anythink/basead/c/i;->j:Z

    if-eqz p2, :cond_e

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object p2

    iget-object v4, p3, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    if-eqz p2, :cond_d

    iget-object v5, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    iget-object v6, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    invoke-interface {p2, v5, v6}, Lcom/anythink/core/api/IExHandler;->checkDownloadType(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)I

    move-result p2

    goto :goto_3

    :cond_d
    iget p2, v4, Lcom/anythink/basead/c/a;->j:I

    :goto_3
    iput p2, v4, Lcom/anythink/basead/c/a;->j:I

    goto :goto_4

    :cond_e
    iget-object p2, p3, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    iput v3, p2, Lcom/anythink/basead/c/a;->j:I

    :cond_f
    :goto_4
    invoke-direct {p0, p3}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->C()Ljava/lang/String;

    move-result-object p1

    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "anythink"

    const-string p2, "Offer click result is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/b$9;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/b$9;-><init>(Lcom/anythink/basead/a/b;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/anythink/basead/a/b;->P:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/b$10;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/b$10;-><init>(Lcom/anythink/basead/a/b;)V

    goto/16 :goto_0

    :cond_11
    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->H()I

    move-result p2

    const/4 v4, 0x2

    if-eq p2, v0, :cond_16

    if-eq p2, v4, :cond_15

    if-eq p2, v3, :cond_14

    if-eq p2, v1, :cond_13

    const/4 p3, 0x6

    if-eq p2, p3, :cond_12

    iget-object p2, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->q()I

    move-result p2

    if-ne p2, v4, :cond_15

    new-instance p2, Lcom/anythink/core/basead/b/c;

    invoke-direct {p2}, Lcom/anythink/core/basead/b/c;-><init>()V

    goto :goto_5

    :cond_12
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->f()Z

    move-result p2

    if-nez p2, :cond_18

    new-instance p2, Lcom/anythink/core/basead/b/c;

    invoke-direct {p2}, Lcom/anythink/core/basead/b/c;-><init>()V

    goto :goto_5

    :cond_13
    invoke-direct {p0, p1, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;)V

    goto :goto_7

    :cond_14
    iget-object p2, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    iget-object p3, p0, Lcom/anythink/basead/a/b;->W:Lcom/anythink/core/api/IOfferClickHandler;

    invoke-interface {p2, p1, p3}, Lcom/anythink/basead/a/b$b;->a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p2

    if-nez p2, :cond_18

    new-instance p2, Lcom/anythink/core/basead/b/c;

    invoke-direct {p2}, Lcom/anythink/core/basead/b/c;-><init>()V

    :goto_5
    iget-object p3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    iput-object p3, p2, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    iget-object p3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iput-object p3, p2, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    iput-object p1, p2, Lcom/anythink/core/basead/b/c;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->W:Lcom/anythink/core/api/IOfferClickHandler;

    iput-object p1, p2, Lcom/anythink/core/basead/b/c;->g:Lcom/anythink/core/api/IOfferClickHandler;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/content/Context;Lcom/anythink/core/basead/b/c;)V

    goto :goto_7

    :cond_15
    invoke-static {p1}, Lcom/anythink/core/common/o/n;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    if-eqz p1, :cond_17

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_6

    :cond_17
    const/4 v0, 0x0

    :goto_6
    iget-object p2, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_18

    if-nez v0, :cond_18

    iget-object p2, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->q()I

    move-result p2

    if-ne p2, v4, :cond_15

    new-instance p2, Lcom/anythink/core/basead/b/c;

    invoke-direct {p2}, Lcom/anythink/core/basead/b/c;-><init>()V

    goto :goto_5

    :cond_18
    :goto_7
    iput-boolean v2, p0, Lcom/anythink/basead/a/b;->P:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/b$2;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/b$2;-><init>(Lcom/anythink/basead/a/b;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/anythink/basead/c/i;)V
    .locals 6

    iget-boolean p2, p2, Lcom/anythink/basead/c/i;->j:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->e()Lcom/anythink/basead/c/d;

    move-result-object v3

    new-instance v5, Lcom/anythink/basead/a/h;

    invoke-direct {v5}, Lcom/anythink/basead/a/h;-><init>()V

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/d;Ljava/lang/String;Lcom/anythink/core/common/g/b;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/anythink/core/common/o/n;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/anythink/core/common/o/n;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/i;)Z
    .locals 5

    new-instance v0, Lcom/anythink/basead/c/b;

    invoke-direct {v0}, Lcom/anythink/basead/c/b;-><init>()V

    iput-object v0, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->e()Lcom/anythink/basead/c/d;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Lcom/anythink/basead/c/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v3, "\\{req_id\\}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    if-eqz v2, :cond_2

    iput-boolean v3, v2, Lcom/anythink/basead/c/a;->i:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;)V

    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v4, "1"

    invoke-static {p1, v2, v0, v4, v3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/anythink/basead/a/b$b;->a()V

    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz p1, :cond_4

    invoke-interface {p1, v3}, Lcom/anythink/basead/a/b$b;->a(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->P:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/a/b$4;

    invoke-direct {v0, p0, v1}, Lcom/anythink/basead/a/b$4;-><init>(Lcom/anythink/basead/a/b;Z)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return v3

    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v2, "0"

    invoke-static {p1, p0, v0, v2, v3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v1
.end method

.method private a(Lcom/anythink/basead/c/i;Z)Z
    .locals 5

    new-instance v0, Lcom/anythink/basead/c/b;

    invoke-direct {v0}, Lcom/anythink/basead/c/b;-><init>()V

    iput-object v0, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->e()Lcom/anythink/basead/c/d;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Lcom/anythink/basead/c/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v3, "\\{req_id\\}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    if-eqz v2, :cond_2

    iput-boolean v3, v2, Lcom/anythink/basead/c/a;->i:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;)V

    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v4, "1"

    invoke-static {p1, v2, v0, v4, v3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    invoke-interface {p1}, Lcom/anythink/basead/a/b$b;->a()V

    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz p1, :cond_4

    invoke-interface {p1, v3}, Lcom/anythink/basead/a/b$b;->a(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->P:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/a/b$4;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/a/b$4;-><init>(Lcom/anythink/basead/a/b;Z)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return v3

    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v2, "0"

    invoke-static {p1, p2, v0, v2, v3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    move-object v2, p1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    const-string v4, ""

    if-ge v1, v3, :cond_b

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "GET"

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v3, :cond_0

    const/16 v6, 0x9

    invoke-static {v6, v3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/n;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "User-Agent"

    invoke-virtual {v5, v6, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0x7530

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v6, 0x12e

    if-eq v3, v6, :cond_1

    const/16 v6, 0x12d

    if-eq v3, v6, :cond_1

    const/16 v6, 0x133

    if-ne v3, v6, :cond_5

    :cond_1
    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/basead/a/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".apk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "http"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :cond_5
    if-nez v0, :cond_8

    const/16 v0, 0xc8

    if-ne v3, v0, :cond_6

    goto :goto_2

    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v7, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object v8, p1

    move-object v9, v2

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v4

    :cond_8
    :goto_2
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v2

    :catchall_0
    move-exception p1

    move-object v3, v5

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v8, v2

    move-object v3, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v2

    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v6, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v9, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw p1

    :cond_b
    :goto_5
    return-object v4
.end method

.method private b(Lcom/anythink/basead/c/i;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/basead/a/b;->Y:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/a/b;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->Z:Z

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/i;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;Z)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/anythink/basead/c/i;Z)Z
    .locals 6

    new-instance v0, Lcom/anythink/basead/c/b;

    invoke-direct {v0}, Lcom/anythink/basead/c/b;-><init>()V

    iput-object v0, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->e()Lcom/anythink/basead/c/d;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/basead/c/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Lcom/anythink/basead/c/b;->a:Ljava/lang/String;

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v3, "\\{req_id\\}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/f/l;)V

    iget-object v2, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput-boolean v3, v2, Lcom/anythink/basead/c/a;->i:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;)V

    iget-object v2, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v5, "1"

    invoke-static {v2, v4, v0, v5, v1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->a()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Lcom/anythink/basead/a/b$b;->a(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->P:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/a/b$5;

    invoke-direct {v1, p0, p2}, Lcom/anythink/basead/a/b$5;-><init>(Lcom/anythink/basead/a/b;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    const/16 p2, 0x18

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {p2, v0, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return v3

    :cond_5
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object p2

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2, v2}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/f/l;)V

    iget-object p2, p0, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x1c

    goto :goto_2

    :cond_6
    const/16 p2, 0x1d

    :goto_2
    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {p2, v2, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object p1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object p2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const-string v2, "0"

    invoke-static {p1, p2, v0, v2, v1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    return v1
.end method

.method private e()Lcom/anythink/basead/c/d;
    .locals 3

    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;)Lcom/anythink/basead/c/d;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 8

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->J()Lcom/anythink/core/common/f/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ay;->b()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ay;->a()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/anythink/core/common/o/e;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    return v3

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    return v3

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    return v3

    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-static {v4}, Lcom/anythink/core/common/o/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "userName"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "path"

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "miniprogramType"

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "MINIPTOGRAM_TYPE_RELEASE"

    invoke-virtual {v5, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "com.tencent.mm.opensdk.openapi.IWXAPI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sendReq"

    new-array v5, v2, [Ljava/lang/Class;

    const-string v7, "com.tencent.mm.opensdk.modelbase.BaseReq"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    return v3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    return v3
.end method

.method private g()Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->r()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    instance-of v2, v0, Lcom/anythink/core/common/f/ai;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->a()I

    move-result v0

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

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->Q:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/a/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b;->V:Lcom/anythink/basead/a/b$b;

    return-void
.end method

.method public final a(Lcom/anythink/basead/c/i;)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/basead/a/b;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->P:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->Q:Z

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/a/b$3;

    invoke-direct {v2, p0, p1}, Lcom/anythink/basead/a/b$3;-><init>(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/i;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v2, p1, v0}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/a/b;->P:Z

    return v0
.end method

.method public final b()Lcom/anythink/core/common/f/l;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    return-object v0
.end method

.method public final c()Lcom/anythink/core/common/f/m;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->R:Z

    return-void
.end method
