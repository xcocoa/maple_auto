.class public abstract Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;
    }
.end annotation


# static fields
.field public static final SEPECIAL_NOTE_INTERVAL_TIME:J = 0x1f4L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

.field public i:Ljava/lang/Runnable;

.field public j:Lcom/anythink/core/common/o/a/c;

.field public k:Lcom/anythink/core/common/o/a/f$b;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Ljava/lang/String;

.field private o:Landroid/view/View;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->a:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b:J

    const/16 p1, 0x32

    iput p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c:I

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->a:Ljava/lang/String;

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b:J

    const/16 p1, 0x32

    iput p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c:I

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h()V

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    new-instance v2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    :cond_4
    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    new-instance v2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    return-void
.end method

.method private g()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h()V

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    new-instance v2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    :cond_4
    return-void
.end method

.method private h()V
    .locals 9

    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    div-long/2addr v0, v7

    long-to-int v1, v0

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialNote do action,type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;->a(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->release()V

    return-void
.end method

.method private j()Z
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k:Lcom/anythink/core/common/o/a/f$b;

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    const/16 v4, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/anythink/core/common/o/a/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private k()V
    .locals 2

    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d:J

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f:J

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_special_note_delay_click"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    return-void
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;

    invoke-direct {v1, p0, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract d()Z
.end method

.method public hasBeenShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return v0
.end method

.method public initSetting(Landroid/view/View;ILcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;JJ)V
    .locals 2

    iput p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->a()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b()V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/anythink/basead/a/j;->a()Lcom/anythink/basead/a/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/basead/a/j;->b()Lcom/anythink/core/common/o/a/c;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    invoke-static {}, Lcom/anythink/basead/a/j;->a()Lcom/anythink/basead/a/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/basead/a/j;->c()Lcom/anythink/core/common/o/a/f$b;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k:Lcom/anythink/core/common/o/a/f$b;

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    iput-object p3, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    iput-wide p4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d:J

    iput-wide p6, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f:J

    iput-wide p4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    iput-wide p6, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    new-instance p1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$1;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i:Ljava/lang/Runnable;

    new-instance p1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$2;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$2;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$3;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$3;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    iget-wide p6, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p6, v0

    long-to-int p7, p6

    add-int/2addr p7, p3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->resume()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->pause()V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->pause()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    iput-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public reset(IJJ)V
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    iput-wide p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d:J

    iput-wide p4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f:J

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k()V

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h()V

    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void
.end method
