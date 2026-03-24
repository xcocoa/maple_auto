.class public Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0o;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->OooOOoo(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$OooO;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/fk;

.field public final synthetic OooO0O0:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lz2/fk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0o;->OooO0O0:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0o;->OooO00o:Lz2/fk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0o;->OooO00o:Lz2/fk;

    invoke-interface {p1}, Lz2/fk;->getRevealInfo()Lz2/fk$OooO;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lz2/fk$OooO;->OooO0OO:F

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0o;->OooO00o:Lz2/fk;

    invoke-interface {v0, p1}, Lz2/fk;->setRevealInfo(Lz2/fk$OooO;)V

    return-void
.end method
