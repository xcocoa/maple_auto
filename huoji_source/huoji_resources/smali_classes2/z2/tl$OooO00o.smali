.class public Lz2/tl$OooO00o;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/tl;->OoooO00(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:Landroid/widget/TextView;

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:Landroid/widget/TextView;

.field public final synthetic OooO0o0:Lz2/tl;


# direct methods
.method public constructor <init>(Lz2/tl;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lz2/tl$OooO00o;->OooO0o0:Lz2/tl;

    iput p2, p0, Lz2/tl$OooO00o;->OooO00o:I

    iput-object p3, p0, Lz2/tl$OooO00o;->OooO0O0:Landroid/widget/TextView;

    iput p4, p0, Lz2/tl$OooO00o;->OooO0OO:I

    iput-object p5, p0, Lz2/tl$OooO00o;->OooO0Oo:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lz2/tl$OooO00o;->OooO0o0:Lz2/tl;

    iget v0, p0, Lz2/tl$OooO00o;->OooO00o:I

    invoke-static {p1, v0}, Lz2/tl;->OooO00o(Lz2/tl;I)I

    iget-object p1, p0, Lz2/tl$OooO00o;->OooO0o0:Lz2/tl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lz2/tl;->OooO0O0(Lz2/tl;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lz2/tl$OooO00o;->OooO0O0:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, Lz2/tl$OooO00o;->OooO0OO:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lz2/tl$OooO00o;->OooO0o0:Lz2/tl;

    invoke-static {p1}, Lz2/tl;->OooO0OO(Lz2/tl;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/tl$OooO00o;->OooO0o0:Lz2/tl;

    invoke-static {p1}, Lz2/tl;->OooO0OO(Lz2/tl;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lz2/tl$OooO00o;->OooO0Oo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
