.class public final Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lz2/ue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0OO;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooOO0(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
