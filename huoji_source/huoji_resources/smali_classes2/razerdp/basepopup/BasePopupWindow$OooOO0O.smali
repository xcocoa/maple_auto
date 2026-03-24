.class public Lrazerdp/basepopup/BasePopupWindow$OooOO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrazerdp/basepopup/BasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0O"
.end annotation


# instance fields
.field private OoooOoO:Z

.field private OoooOoo:F

.field private Ooooo00:F

.field private Ooooo0o:I

.field private OooooO0:I

.field private OooooOO:I

.field private OooooOo:Z

.field public Oooooo:Landroid/graphics/Rect;

.field private Oooooo0:Z

.field public OoooooO:Landroid/graphics/Rect;

.field public final synthetic Ooooooo:Lrazerdp/basepopup/BasePopupWindow;


# direct methods
.method private constructor <init>(Lrazerdp/basepopup/BasePopupWindow;)V
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooooO:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lrazerdp/basepopup/BasePopupWindow;Lrazerdp/basepopup/BasePopupWindow$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;-><init>(Lrazerdp/basepopup/BasePopupWindow;)V

    return-void
.end method

.method public static synthetic OooO00o(Lrazerdp/basepopup/BasePopupWindow$OooOO0O;)Z
    .locals 0

    iget-boolean p0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoO:Z

    return p0
.end method

.method private OooO0OO(Landroid/view/View;ZZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1, v1}, Lrazerdp/basepopup/BasePopupWindow;->OooOoo0(Z)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {p2, p1, v1, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOO0(Lrazerdp/basepopup/BasePopupWindow;Landroid/view/View;ZZ)V

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public OooO0O0()V
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO0Oo()V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoO:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 10

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v6

    iget v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoo:F

    const/4 v8, 0x1

    cmpl-float v7, v1, v7

    if-nez v7, :cond_1

    iget v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooo00:F

    cmpl-float v7, v2, v7

    if-nez v7, :cond_1

    iget v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooo0o:I

    if-ne v3, v7, :cond_1

    iget v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooooO0:I

    if-ne v4, v7, :cond_1

    iget v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooooOO:I

    if-eq v5, v7, :cond_2

    :cond_1
    iget-boolean v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoO:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo0:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooooO:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooooO:Landroid/graphics/Rect;

    iget-object v9, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo:Landroid/graphics/Rect;

    iget-object v9, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooooO:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooooOo:Z

    invoke-direct {p0, v0, v7, v6}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO0OO(Landroid/view/View;ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v8, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo0:Z

    :cond_3
    iput v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoo:F

    iput v2, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooo00:F

    iput v3, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooo0o:I

    iput v4, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooooO0:I

    iput v5, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooooOO:I

    iput-boolean v6, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooooOo:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoO:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OoooOoO:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO0Oo()V

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Oooooo0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lrazerdp/basepopup/BasePopupWindow;->o000OO0o(Landroid/view/View;)V

    :cond_1
    :goto_0
    return v1
.end method
