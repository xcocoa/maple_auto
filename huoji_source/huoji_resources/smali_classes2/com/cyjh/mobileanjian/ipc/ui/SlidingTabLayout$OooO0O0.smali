.class public final Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field private OoooOoO:I

.field public final synthetic OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoO:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/ue;->OooO0OO(IF)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oO(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;II)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoO:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lz2/ue;->OooO0OO(IF)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oO(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0O0;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
