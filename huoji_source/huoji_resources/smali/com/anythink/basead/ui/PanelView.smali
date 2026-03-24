.class public Lcom/anythink/basead/ui/PanelView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/PanelView$a;
    }
.end annotation


# static fields
.field public static final TYPE_FULL_SCREEN_BANNER:I = 0x0

.field public static final TYPE_FULL_SCREEN_EMPTY_INFO:I = 0x8

.field public static final TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_LANDSCAPE:I = 0x6

.field public static final TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_PORTRAIT:I = 0x1

.field public static final TYPE_FULL_SCREEN_ENDCARD_VERTICAL_LANDSCAPE:I = 0x2

.field public static final TYPE_FULL_SCREEN_ENDCARD_VERTICAL_PORTRAIT:I = 0x5

.field public static final TYPE_HALF_SCREEN_EMPTY_INFO:I = 0x7

.field public static final TYPE_HALF_SCREEN_HORIZONTAL:I = 0x4

.field public static final TYPE_HALF_SCREEN_VERTICAL:I = 0x3

.field public static final TYPE_LETTER:I = 0x9


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lcom/anythink/basead/ui/BaseShakeView;

.field private h:Lcom/anythink/basead/ui/PanelView$a;

.field private i:I

.field private j:Lcom/anythink/core/common/f/n;

.field private k:Lcom/anythink/core/common/f/m;

.field private l:Lcom/anythink/core/common/f/l;

.field private m:I

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/anythink/basead/ui/d/a;

.field private final x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PanelView;->s:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PanelView;->t:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    new-instance p1, Lcom/anythink/basead/ui/PanelView$9;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/PanelView$9;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/basead/ui/PanelView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->h:Lcom/anythink/basead/ui/PanelView$a;

    return-object p0
.end method

.method private a(Lcom/anythink/core/common/f/l;)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v6, Lcom/anythink/core/common/res/e;

    invoke-direct {v6, v1, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/anythink/basead/ui/PanelView$2;

    invoke-direct {v7, p0, v0}, Lcom/anythink/basead/ui/PanelView$2;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v4, v3, v7}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v1, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/anythink/basead/ui/PanelView$3;

    invoke-direct {v1, p0, v0, v3}, Lcom/anythink/basead/ui/PanelView$3;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v4, v5, v1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v2}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/PanelView;->b(Lcom/anythink/core/common/f/l;)V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/PanelView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .locals 10

    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->d()V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v2, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/ui/PanelView$2;

    invoke-direct {v8, p0, v1}, Lcom/anythink/basead/ui/PanelView$2;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v5, v4, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v7

    new-instance v8, Lcom/anythink/core/common/res/e;

    invoke-direct {v8, v2, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/anythink/basead/ui/PanelView$3;

    invoke-direct {v9, p0, v1, v4}, Lcom/anythink/basead/ui/PanelView$3;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-static {v4, v5}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    :cond_9
    :goto_3
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/PanelView;->b(Lcom/anythink/core/common/f/l;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PanelView$8;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iget-object v4, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1, v4}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    :cond_f
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "myoffer_panel_view_blank"

    const-string v5, "id"

    invoke-static {v1, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v1, v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    iget v0, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    :goto_5
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_12
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->w:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_13

    iget v1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/PanelView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PanelView$1;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private b(Lcom/anythink/core/common/f/l;)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_panel_version"

    const-string v4, "string"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->K()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/PanelView$4;-><init>(Lcom/anythink/basead/ui/PanelView;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/PanelView$5;-><init>(Lcom/anythink/basead/ui/PanelView;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/ui/PanelView$6;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$6;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/ui/PanelView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$7;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "myoffer_four_element_container_bg"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_b
    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/PanelView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v1, v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    iget v0, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/core/common/f/n;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_title"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_desc"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_banner_cta"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_ad_logo"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_four_element_container"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_version_name"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_publisher_name"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_permission_manage"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_privacy_agreement"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_shake_hint_text"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/BaseShakeView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->k:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setShakeSetting(Lcom/anythink/core/common/f/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->e()V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/basead/ui/PanelView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    return-object p0
.end method

.method private e()V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/basead/ui/BaseShakeView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    return-object p0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PanelView$8;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_blank"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCTAButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public getClickViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    return-object v0
.end method

.method public getShakeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    return-object v0
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;IZLcom/anythink/basead/ui/PanelView$a;)V
    .locals 0

    iput-object p5, p0, Lcom/anythink/basead/ui/PanelView;->h:Lcom/anythink/basead/ui/PanelView$a;

    iput p3, p0, Lcom/anythink/basead/ui/PanelView;->i:I

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->k:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    iput-boolean p4, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->O()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PanelView;->s:Z

    iget-object p2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->u()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/anythink/basead/ui/PanelView;->t:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    new-instance p2, Lcom/anythink/basead/ui/d/a;

    iget-object p3, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-direct {p2, p1, p3}, Lcom/anythink/basead/ui/d/a;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->w:Lcom/anythink/basead/ui/d/a;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setLayoutType(I)V
    .locals 9

    iput p1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const-string v0, "myoffer_panel_view_horizontal_without_icon"

    const-string v1, "myoffer_panel_view_horizontal"

    const-string v2, "myoffer_panel_view_endcard_portrait_without_icon"

    const-string v3, "layout"

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_bottom_banner_without_icon"

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_letter"

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_full_screen_empty_info"

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_empty_info"

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_vertical_portrait"

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget p1, p0, Lcom/anythink/basead/ui/PanelView;->i:I

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_vertical_without_icon"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_vertical"

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_landscape_without_icon"

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_landscape"

    goto/16 :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_horizontal_portrait"

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_bottom_banner"

    goto/16 :goto_0

    :goto_4
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->d()V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v6, Lcom/anythink/core/common/res/e;

    invoke-direct {v6, v4, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/anythink/basead/ui/PanelView$2;

    invoke-direct {v7, p0, v0}, Lcom/anythink/basead/ui/PanelView$2;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v3, v2, v7}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    :cond_7
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v4, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/ui/PanelView$3;

    invoke-direct {v8, p0, v0, v2}, Lcom/anythink/basead/ui/PanelView$3;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v3, v5, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-static {v2, v3}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :cond_10
    :goto_8
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/PanelView;->b(Lcom/anythink/core/common/f/l;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz p1, :cond_16

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v0, Lcom/anythink/basead/ui/PanelView$8;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$8;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1, v0, v2}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    :cond_16
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "myoffer_panel_view_blank"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v0, p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    iget p1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x6

    if-eq p1, v0, :cond_18

    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    goto :goto_a

    :cond_18
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    :goto_a
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_19
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->w:Lcom/anythink/basead/ui/d/a;

    if-eqz p1, :cond_1a

    iget v0, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/PanelView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$1;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
