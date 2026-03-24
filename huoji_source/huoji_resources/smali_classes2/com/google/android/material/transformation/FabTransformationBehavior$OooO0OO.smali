.class public Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->OooOo00(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$OooO;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/fk;

.field public final synthetic OooO0O0:Landroid/graphics/drawable/Drawable;

.field public final synthetic OooO0OO:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lz2/fk;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;->OooO0OO:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;->OooO00o:Lz2/fk;

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;->OooO0O0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;->OooO00o:Lz2/fk;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lz2/fk;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;->OooO00o:Lz2/fk;

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$OooO0OO;->OooO0O0:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lz2/fk;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
