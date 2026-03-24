.class public Lz2/kk$OooO0O0;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/kk;->OoooO(Lz2/kk$OooOO0O;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lz2/kk$OooOO0O;

.field public final synthetic OooO0OO:Lz2/kk;


# direct methods
.method public constructor <init>(Lz2/kk;ZLz2/kk$OooOO0O;)V
    .locals 0

    iput-object p1, p0, Lz2/kk$OooO0O0;->OooO0OO:Lz2/kk;

    iput-boolean p2, p0, Lz2/kk$OooO0O0;->OooO00o:Z

    iput-object p3, p0, Lz2/kk$OooO0O0;->OooO0O0:Lz2/kk$OooOO0O;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lz2/kk$OooO0O0;->OooO0OO:Lz2/kk;

    const/4 v0, 0x0

    iput v0, p1, Lz2/kk;->OooO00o:I

    const/4 v0, 0x0

    iput-object v0, p1, Lz2/kk;->OooO0O0:Landroid/animation/Animator;

    iget-object p1, p0, Lz2/kk$OooO0O0;->OooO0O0:Lz2/kk$OooOO0O;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lz2/kk$OooOO0O;->OooO00o()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lz2/kk$OooO0O0;->OooO0OO:Lz2/kk;

    iget-object v0, v0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    iget-boolean v1, p0, Lz2/kk$OooO0O0;->OooO00o:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->OooO0OO(IZ)V

    iget-object v0, p0, Lz2/kk$OooO0O0;->OooO0OO:Lz2/kk;

    const/4 v1, 0x2

    iput v1, v0, Lz2/kk;->OooO00o:I

    iput-object p1, v0, Lz2/kk;->OooO0O0:Landroid/animation/Animator;

    return-void
.end method
