.class public Lrazerdp/blur/BlurImageView$OooO0O0;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrazerdp/blur/BlurImageView;->OooOOOO(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lrazerdp/blur/BlurImageView;


# direct methods
.method public constructor <init>(Lrazerdp/blur/BlurImageView;)V
    .locals 0

    iput-object p1, p0, Lrazerdp/blur/BlurImageView$OooO0O0;->OooO00o:Lrazerdp/blur/BlurImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lrazerdp/blur/BlurImageView$OooO0O0;->OooO00o:Lrazerdp/blur/BlurImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lrazerdp/blur/BlurImageView;->OooO0O0(Lrazerdp/blur/BlurImageView;Z)Z

    return-void
.end method
