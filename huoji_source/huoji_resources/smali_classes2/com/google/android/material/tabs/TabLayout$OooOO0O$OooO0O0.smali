.class public Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO0O0;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

.field public final synthetic OooO0O0:Lcom/google/android/material/tabs/TabLayout$OooOO0O;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$OooOO0O;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO0O0;->OooO0O0:Lcom/google/android/material/tabs/TabLayout$OooOO0O;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO0O0;->OooO00o:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO0O0;->OooO0O0:Lcom/google/android/material/tabs/TabLayout$OooOO0O;

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOO0O$OooO0O0;->OooO00o:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$OooOO0O;->Ooooo0o:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$OooOO0O;->OooooO0:F

    return-void
.end method
