.class public Lcom/anythink/core/common/o/a/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/o/a/f$b;,
        Lcom/anythink/core/common/o/a/f$c;,
        Lcom/anythink/core/common/o/a/f$a;,
        Lcom/anythink/core/common/o/a/f$d;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "f"


# instance fields
.field public final a:I

.field public final b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private d:I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/core/common/o/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/anythink/core/common/o/a/f$b;

.field private i:Lcom/anythink/core/common/o/a/f$d;

.field private final j:Lcom/anythink/core/common/o/a/f$c;

.field private final k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/anythink/core/common/o/a/f$b;

    invoke-direct {v1}, Lcom/anythink/core/common/o/a/f$b;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/anythink/core/common/o/a/f;-><init>(Ljava/util/Map;Lcom/anythink/core/common/o/a/f$b;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/anythink/core/common/o/a/f$b;

    invoke-direct {v1}, Lcom/anythink/core/common/o/a/f$b;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/anythink/core/common/o/a/f;-><init>(Ljava/util/Map;Lcom/anythink/core/common/o/a/f$b;Landroid/os/Handler;)V

    iput p1, p0, Lcom/anythink/core/common/o/a/f;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/anythink/core/common/o/a/f$b;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/core/common/o/a/f$a;",
            ">;",
            "Lcom/anythink/core/common/o/a/f$b;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/anythink/core/common/o/a/f;->d:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/anythink/core/common/o/a/f;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/anythink/core/common/o/a/f;->f:J

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    iput-object p2, p0, Lcom/anythink/core/common/o/a/f;->h:Lcom/anythink/core/common/o/a/f$b;

    iput-object p3, p0, Lcom/anythink/core/common/o/a/f;->k:Landroid/os/Handler;

    new-instance p1, Lcom/anythink/core/common/o/a/f$c;

    invoke-direct {p1, p0}, Lcom/anythink/core/common/o/a/f$c;-><init>(Lcom/anythink/core/common/o/a/f;)V

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f;->j:Lcom/anythink/core/common/o/a/f$c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f;->e:Ljava/util/ArrayList;

    new-instance p1, Lcom/anythink/core/common/o/a/f$1;

    invoke-direct {p1, p0}, Lcom/anythink/core/common/o/a/f$1;-><init>(Lcom/anythink/core/common/o/a/f;)V

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/o/a/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    return-object p0
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/o/a/f$a;

    iget-wide v2, v2, Lcom/anythink/core/common/o/a/f$a;->c:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/o/a/f;->e:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/o/a/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/o/a/f;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/anythink/core/common/o/a/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private a(Landroid/view/View;ILjava/lang/Integer;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/o/a/f;->a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/o/a/f;->a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    instance-of v0, p0, Landroid/app/Activity;

    const v1, 0x1020002

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object p0, v2

    goto :goto_0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v2

    :goto_2
    const/4 p1, 0x0

    if-nez p0, :cond_5

    return p1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p0

    if-nez p0, :cond_6

    return p1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/o/a/f;)Lcom/anythink/core/common/o/a/f$b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/o/a/f;->h:Lcom/anythink/core/common/o/a/f$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/core/common/o/a/f;)Lcom/anythink/core/common/o/a/f$d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/o/a/f;->i:Lcom/anythink/core/common/o/a/f$d;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/core/common/o/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/anythink/core/common/o/a/f;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/o/a/f;->l:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/anythink/core/common/o/a/f;->l:Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/anythink/core/common/o/a/f;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/o/a/f$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/core/common/o/a/f$a;

    invoke-direct {v0}, Lcom/anythink/core/common/o/a/f$a;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/o/a/f;->g:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/anythink/core/common/o/a/f;->c()V

    :cond_1
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput-object p1, v0, Lcom/anythink/core/common/o/a/f$a;->d:Landroid/view/View;

    iput p3, v0, Lcom/anythink/core/common/o/a/f$a;->a:I

    iput p4, v0, Lcom/anythink/core/common/o/a/f$a;->b:I

    iget-wide p3, p0, Lcom/anythink/core/common/o/a/f;->f:J

    iput-wide p3, v0, Lcom/anythink/core/common/o/a/f$a;->c:J

    iput-object p5, v0, Lcom/anythink/core/common/o/a/f$a;->e:Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/core/common/o/a/f;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-wide p1, p0, Lcom/anythink/core/common/o/a/f;->f:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/anythink/core/common/o/a/f;->f:J

    const-wide/16 p3, 0x32

    rem-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_2

    sub-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/o/a/f;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final a(Lcom/anythink/core/common/o/a/f$d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f;->i:Lcom/anythink/core/common/o/a/f$d;

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/common/o/a/f;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/o/a/f;->i:Lcom/anythink/core/common/o/a/f$d;

    return-void
.end method

.method public final c()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/core/common/o/a/f;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/o/a/f;->l:Z

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/core/common/o/a/f;->j:Lcom/anythink/core/common/o/a/f$c;

    iget v2, p0, Lcom/anythink/core/common/o/a/f;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
