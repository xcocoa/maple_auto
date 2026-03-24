.class public abstract Lz2/kk$OooOOO;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OooOOO"
.end annotation


# instance fields
.field private OooO00o:Z

.field private OooO0O0:F

.field private OooO0OO:F

.field public final synthetic OooO0Oo:Lz2/kk;


# direct methods
.method private constructor <init>(Lz2/kk;)V
    .locals 0

    iput-object p1, p0, Lz2/kk$OooOOO;->OooO0Oo:Lz2/kk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/kk;Lz2/kk$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/kk$OooOOO;-><init>(Lz2/kk;)V

    return-void
.end method


# virtual methods
.method public abstract OooO00o()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lz2/kk$OooOOO;->OooO0Oo:Lz2/kk;

    iget-object p1, p1, Lz2/kk;->OooO0oo:Lz2/fl;

    iget v0, p0, Lz2/kk$OooOOO;->OooO0OO:F

    invoke-virtual {p1, v0}, Lz2/fl;->OooOOOO(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/kk$OooOOO;->OooO00o:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-boolean v0, p0, Lz2/kk$OooOOO;->OooO00o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/kk$OooOOO;->OooO0Oo:Lz2/kk;

    iget-object v0, v0, Lz2/kk;->OooO0oo:Lz2/fl;

    invoke-virtual {v0}, Lz2/fl;->OooOO0()F

    move-result v0

    iput v0, p0, Lz2/kk$OooOOO;->OooO0O0:F

    invoke-virtual {p0}, Lz2/kk$OooOOO;->OooO00o()F

    move-result v0

    iput v0, p0, Lz2/kk$OooOOO;->OooO0OO:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/kk$OooOOO;->OooO00o:Z

    :cond_0
    iget-object v0, p0, Lz2/kk$OooOOO;->OooO0Oo:Lz2/kk;

    iget-object v0, v0, Lz2/kk;->OooO0oo:Lz2/fl;

    iget v1, p0, Lz2/kk$OooOOO;->OooO0O0:F

    iget v2, p0, Lz2/kk$OooOOO;->OooO0OO:F

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lz2/fl;->OooOOOO(F)V

    return-void
.end method
