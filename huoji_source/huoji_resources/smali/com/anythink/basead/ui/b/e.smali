.class public final Lcom/anythink/basead/ui/b/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/b/e$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILandroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;ILcom/anythink/basead/ui/b/b$a;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/anythink/core/common/f/l;",
            "Lcom/anythink/core/common/f/m;",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/anythink/basead/ui/b/b$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/basead/ui/b/b;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "myoffer_guide2click_container"

    const-string v4, "id"

    invoke-static {p1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string v5, "myoffer_guide2click_mask"

    invoke-static {p1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_rl_root"

    invoke-static {v5, v6, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v1, v5

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_splash_root"

    invoke-static {v5, v6, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    :goto_0
    and-int/lit8 v4, p0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    new-instance v4, Lcom/anythink/basead/ui/b/f;

    invoke-direct {v4}, Lcom/anythink/basead/ui/b/f;-><init>()V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v1

    move-object v10, v3

    move-object v11, v0

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v5 .. v13}, Lcom/anythink/basead/ui/b/f;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v4, p0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    new-instance v4, Lcom/anythink/basead/ui/b/c;

    invoke-direct {v4}, Lcom/anythink/basead/ui/b/c;-><init>()V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v1

    move-object v10, v3

    move-object v11, v0

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v5 .. v13}, Lcom/anythink/basead/ui/b/c;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    new-instance v4, Lcom/anythink/basead/ui/b/g;

    invoke-direct {v4}, Lcom/anythink/basead/ui/b/g;-><init>()V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v1

    move-object v10, v3

    move-object v11, v0

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v5 .. v13}, Lcom/anythink/basead/ui/b/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    const/16 v4, 0x8

    and-int/lit8 v5, p0, 0x8

    if-ne v5, v4, :cond_5

    new-instance v4, Lcom/anythink/basead/ui/b/d;

    invoke-direct {v4}, Lcom/anythink/basead/ui/b/d;-><init>()V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v1

    move-object v10, v3

    move-object v11, v0

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v5 .. v13}, Lcom/anythink/basead/ui/b/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v2
.end method
