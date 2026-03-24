.class public Lrazerdp/basepopup/BasePopupWindow$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrazerdp/basepopup/BasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOO0"
.end annotation


# instance fields
.field private OoooOoO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private OoooOoo:Lrazerdp/basepopup/BasePopupWindow$OooOo00;

.field public Ooooo00:I

.field public Ooooo0o:Landroid/graphics/Rect;

.field public OooooO0:Z

.field private volatile OooooOO:Z

.field private OooooOo:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ZLrazerdp/basepopup/BasePopupWindow$OooOo00;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo00:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo0o:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooO0:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OoooOoO:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOo:Z

    iput-object p3, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OoooOoo:Lrazerdp/basepopup/BasePopupWindow$OooOo00;

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOO:Z

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0O0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOO:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0O0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOO:Z

    :cond_0
    return-void
.end method

.method public OooO0O0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OoooOoO:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public OooO0OO()Z
    .locals 1

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOO:Z

    return v0
.end method

.method public OooO0Oo()V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0O0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0O0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOO:Z

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0O0()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo0o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo0o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOo:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo0o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lz2/mf0;->OooOO0(Landroid/content/Context;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo0o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, v0, v1

    int-to-float v3, v1

    int-to-float v0, v0

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v0, v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo0o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    iget-boolean v3, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooO0:Z

    if-ne v2, v3, :cond_4

    iget v3, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo00:I

    if-ne v3, v1, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OoooOoo:Lrazerdp/basepopup/BasePopupWindow$OooOo00;

    if-eqz v3, :cond_5

    iget-boolean v4, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooOo:Z

    invoke-interface {v3, v0, v1, v2, v4}, Lrazerdp/basepopup/BasePopupWindow$OooOo00;->OooO00o(IIZZ)V

    :cond_5
    iput-boolean v2, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooooO0:Z

    iput v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->Ooooo00:I

    return-void
.end method
