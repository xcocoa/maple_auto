.class public Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;,
        Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;,
        Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0o;
    }
.end annotation


# static fields
.field private static final Oooooo:I = 0x18

.field private static final OoooooO:I = 0x4

.field private static final Ooooooo:I = 0xc


# instance fields
.field private OoooOoO:I

.field private OoooOoo:I

.field private Ooooo00:I

.field private Ooooo0o:Z

.field private OooooO0:Landroidx/viewpager/widget/ViewPager;

.field private OooooOO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooooOo:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final Oooooo0:Lz2/ue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooOO:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoO:I

    new-instance p2, Lz2/ue;

    invoke-direct {p2, p1}, Lz2/ue;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    const/4 p1, -0x1

    const/4 p3, -0x2

    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private OooO(II)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    :cond_1
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoO:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private OooO00o(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v0
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    return-object p0
.end method

.method private OooO0OO()V
    .locals 12

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoo:I

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoo:I

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v4, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Ooooo00:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v4, v5

    move-object v6, v4

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v9, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x101030e

    invoke-virtual {v10, v11, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v10, v4

    float-to-int v4, v10

    invoke-virtual {v9, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object v4, v9

    :cond_1
    if-nez v6, :cond_2

    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    :cond_2
    iget-boolean v9, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Ooooo0o:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooOO:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    if-ne v3, v5, :cond_5

    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private OooO0Oo(II)V
    .locals 0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoo:I

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Ooooo00:I

    return-void
.end method

.method private OooO0o0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooOO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO(II)V

    return-void
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooOo:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method public static synthetic OooOO0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method


# virtual methods
.method public final OooO0o(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lz2/bf;

    iget-object v1, v0, Lz2/bf;->OooO00o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lz2/bf;->OooO0O0:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO(II)V

    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0o;)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    iput-object p1, v0, Lz2/ue;->OooooOo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0o;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Ooooo0o:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooOo:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    const/4 v1, 0x0

    iput-object v1, v0, Lz2/ue;->OooooOo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0o;

    iget-object v1, v0, Lz2/ue;->Oooooo0:Lz2/ue$OooO0O0;

    iput-object p1, v1, Lz2/ue$OooO0O0;->OooO00o:[I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 11

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoo:I

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OoooOoo:I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v3, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Ooooo00:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v3, v4

    move-object v5, v3

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v8, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x101030e

    invoke-virtual {v9, v10, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v3

    float-to-int v3, v9

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object v3, v8

    :cond_1
    if-nez v5, :cond_2

    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    :cond_2
    iget-boolean v8, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Ooooo0o:Z

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooOO:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->Oooooo0:Lz2/ue;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooooO0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v2, v4, :cond_5

    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
