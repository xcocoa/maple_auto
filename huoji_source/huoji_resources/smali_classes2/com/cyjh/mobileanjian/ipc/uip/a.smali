.class public final Lcom/cyjh/mobileanjian/ipc/uip/a;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0OO;
    }
.end annotation


# static fields
.field private static final o00Ooo:I = 0x8


# instance fields
.field private OoooOoO:Landroidx/viewpager/widget/ViewPager;

.field private OoooOoo:I

.field private Ooooo00:I

.field private Ooooo0o:I

.field private OooooO0:I

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:Landroid/animation/Animator;

.field private Oooooo0:I

.field private OoooooO:Landroid/animation/Animator;

.field private Ooooooo:Landroid/animation/Animator;

.field private final o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private o00Oo0:Landroid/database/DataSetObserver;

.field private o0OoOo0:Landroid/animation/Animator;

.field private ooOO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00Oo0:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00Oo0:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    sget v0, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    sget v0, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    sget v0, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00Oo0:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    sget p4, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    sget p4, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    sget p4, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00Oo0:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private OooO(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOO0o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0oo(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I
    .locals 0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    return p1
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private OooO0Oo()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    if-ne v1, v3, :cond_1

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooooo:Landroid/animation/Animator;

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o0OoOo0:Landroid/animation/Animator;

    :goto_1
    invoke-direct {p0, v2, v4, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0oO(IILandroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private OooO0o(IIIIII)V
    .locals 0
    .param p4    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    iput p5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    iput p6, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0oo(Landroid/content/Context;)V

    return-void
.end method

.method private OooO0o0(III)V
    .locals 2

    sget v0, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0oo(Landroid/content/Context;)V

    return-void
.end method

.method private OooO0oO(IILandroid/animation/Animator;)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    invoke-virtual {p0, v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private OooO0oo(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    const/high16 v1, 0x41000000    # 8.0f

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO00o(F)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO00o(F)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    if-gez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO00o(F)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    if-nez v0, :cond_3

    sget v0, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    :cond_3
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOO0(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOO0(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooooo:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOOO0(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooooO:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOOO0(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o0OoOo0:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    if-nez p1, :cond_4

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    :cond_4
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    return-void
.end method

.method private OooOO0(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooooO:Landroid/animation/Animator;

    return-object p0
.end method

.method private OooOO0o(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_width:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo00:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Ooooo0o:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoo:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator_reverse:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable:I

    sget v2, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    sget v2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable_unselected:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_orientation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x11

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic OooOOO(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo:Landroid/animation/Animator;

    return-object p0
.end method

.method private OooOOO0(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOO:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooO0:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0OO;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;B)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic OooOOOO(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    return p0
.end method

.method public static synthetic OooOOOo(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->Oooooo0:I

    return p0
.end method

.method public static synthetic OooOOo(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0Oo()V

    return-void
.end method

.method public static synthetic OooOOo0(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooooOo:I

    return p0
.end method


# virtual methods
.method public final OooO00o(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00Oo0:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public final setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "can not find Viewpager , setViewPager first"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->ooOO:I

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0Oo()V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o00O0O:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->OoooOoO:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
