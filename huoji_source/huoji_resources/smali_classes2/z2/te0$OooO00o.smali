.class public Lz2/te0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/te0;->OooOOO(Lrazerdp/basepopup/BasePopupHelper;Lz2/df0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/te0;


# direct methods
.method public constructor <init>(Lz2/te0;)V
    .locals 0

    iput-object p1, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {p1}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0OO(Lz2/te0;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0OO(Lz2/te0;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {v1}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object v1

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0OO(Lz2/te0;)Landroid/view/View;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {v1}, Lz2/te0;->OooO0Oo(Lz2/te0;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_2
    iget-object v0, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0Oo(Lz2/te0;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {p1}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->OooO()Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object p1, p0, Lz2/te0$OooO00o;->OoooOoO:Lz2/te0;

    invoke-static {p1}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o()Z

    move-result p1

    return p1
.end method
