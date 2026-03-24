.class public Lcom/google/android/material/tabs/TabLayout$Oooo000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OooO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Oooo000"
.end annotation


# instance fields
.field private final OooO00o:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Oooo000;->OooO00o:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/google/android/material/tabs/TabLayout$OooOOO0;)V
    .locals 0

    return-void
.end method

.method public OooO0O0(Lcom/google/android/material/tabs/TabLayout$OooOOO0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Oooo000;->OooO00o:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public OooO0OO(Lcom/google/android/material/tabs/TabLayout$OooOOO0;)V
    .locals 0

    return-void
.end method
