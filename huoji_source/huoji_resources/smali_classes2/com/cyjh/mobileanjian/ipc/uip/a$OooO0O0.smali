.class public final Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/uip/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0OO(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0OO(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOOOO(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0OO(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/4 v1, -0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0O0;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooOOo(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    return-void
.end method
