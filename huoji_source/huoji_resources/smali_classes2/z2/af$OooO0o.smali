.class public final Lz2/af$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/af;->OooO(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

.field public final synthetic OoooOoo:Lz2/af;


# direct methods
.method public constructor <init>(Lz2/af;Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lz2/af$OooO0o;->OoooOoo:Lz2/af;

    iput-object p2, p0, Lz2/af$OooO0o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget-object p1, p0, Lz2/af$OooO0o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    iget-object p1, p0, Lz2/af$OooO0o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lz2/af$OooO0o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method
