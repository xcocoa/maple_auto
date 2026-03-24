.class public Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$OooOO0O;->OooO00o(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:I

.field public final synthetic OooO0o0:Lcom/google/android/material/tabs/TabLayout$OooOO0O;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$OooOO0O;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0o0:Lcom/google/android/material/tabs/TabLayout$OooOO0O;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO00o:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0O0:I

    iput p4, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0OO:I

    iput p5, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0Oo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0o0:Lcom/google/android/material/tabs/TabLayout$OooOO0O;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO00o:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0O0:I

    invoke-static {v1, v2, p1}, Lz2/ej;->OooO0O0(IIF)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0OO:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO00o;->OooO0Oo:I

    invoke-static {v2, v3, p1}, Lz2/ej;->OooO0O0(IIF)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/tabs/TabLayout$OooOO0O;->OooO0o0(II)V

    return-void
.end method
