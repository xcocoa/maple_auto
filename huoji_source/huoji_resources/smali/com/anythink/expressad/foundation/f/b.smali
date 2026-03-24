.class public final Lcom/anythink/expressad/foundation/f/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/f/b$a;
    }
.end annotation


# static fields
.field public static a:I = -0x2

.field public static b:I = -0x2

.field public static volatile c:Z


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/widget/RelativeLayout$LayoutParams;

.field private f:Lcom/anythink/expressad/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/anythink/expressad/foundation/f/b;->a:I

    sget v2, Lcom/anythink/expressad/foundation/f/b;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->e:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/f/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->h()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    :try_start_1
    instance-of v3, p0, Landroid/app/Activity;

    const/16 v4, 0x11

    if-eqz v3, :cond_2

    if-lt v0, v4, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    check-cast p0, Landroid/app/Activity;

    move-object v1, p0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_4

    if-lt v0, v4, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v2
.end method

.method public static a()Lcom/anythink/expressad/foundation/f/b;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b$a;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IIIFFFLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    move v2, p5

    invoke-static {v1, p5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    move v3, p6

    invoke-static {v1, p6}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    move v4, p2

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v4

    move v5, p3

    int-to-float v5, v5

    invoke-static {v1, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v5

    move v6, p4

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v6

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/anythink/expressad/foundation/f/a/a;->a(IIIIIFLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILandroid/view/ViewGroup;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/a/a;->c()Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/foundation/f/a/a;->a(I)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/anythink/expressad/foundation/f/a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/anythink/expressad/foundation/f/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/expressad/widget/a/c;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->b(Landroid/content/Context;Lcom/anythink/expressad/widget/a/c;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/anythink/expressad/widget/a/c;)Z
    .locals 3

    invoke-static {p0}, Lcom/anythink/expressad/foundation/f/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/widget/a/c;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method private c(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/f/a/a;->b()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/f/a/a;->a()V

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/f/a/a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/f/a/a;->e()Lcom/anythink/expressad/foundation/d/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/foundation/f/a/a;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/foundation/f/a/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/f/a/a;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/foundation/f/a/a;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/foundation/f/a/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/foundation/f/a/a;->b(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/anythink/expressad/foundation/f/a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object v0

    if-eqz p5, :cond_1

    new-instance v1, Lcom/anythink/expressad/foundation/f/a/a$a;

    invoke-direct {v1, p1, p5}, Lcom/anythink/expressad/foundation/f/a/a$a;-><init>(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/a/a;->a(Lcom/anythink/expressad/foundation/f/a/a$a;)V

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/a/a;->c()Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p4, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p4

    invoke-virtual {p4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p4

    const/high16 p5, 0x41200000    # 10.0f

    invoke-static {p4, p5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p4

    iget-object p5, p0, Lcom/anythink/expressad/foundation/f/b;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p5, p4, p4, p4, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p4, p0, Lcom/anythink/expressad/foundation/f/b;->e:Landroid/widget/RelativeLayout$LayoutParams;

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup;

    if-eqz p5, :cond_3

    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-static {p2}, Lcom/anythink/expressad/foundation/f/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    const p3, 0x1020002

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p3, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/foundation/f/a/a;->a(Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/foundation/f/a/a$a;

    invoke-direct {v1, p1, p2}, Lcom/anythink/expressad/foundation/f/a/a$a;-><init>(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/a/a;->a(Lcom/anythink/expressad/foundation/f/a/a$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/foundation/f/a/a;->a(Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/expressad/widget/FeedBackButton;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/f/a/a;->c()Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/f/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/foundation/f/a/a;->c(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->f:Lcom/anythink/expressad/d/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/f/a/a;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/a/a;->d()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/foundation/f/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
