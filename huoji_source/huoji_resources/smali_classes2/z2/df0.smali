.class public final Lz2/df0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/WindowManager;


# static fields
.field private static final Ooooo0o:Ljava/lang/String; = "WindowManagerProxy"

.field private static OooooO0:I


# instance fields
.field private OoooOoO:Landroid/view/WindowManager;

.field private OoooOoo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lz2/te0;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lrazerdp/basepopup/BasePopupHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    return-void
.end method

.method private OooO00o(Landroid/view/ViewGroup$LayoutParams;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 7

    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v3

    const-string v4, "WindowManagerProxy"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "applyHelper  >>>  \u4e0d\u62e6\u622a\u4e8b\u4ef6"

    aput-object v6, v3, v2

    invoke-static {v4, v3}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x40000

    or-int/2addr v3, v6

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->o00ooo()Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "applyHelper  >>>  \u5168\u5c4f"

    aput-object v6, v3, v2

    invoke-static {v4, v3}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-lt v0, v1, :cond_2

    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p2, p2, 0x200

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_3
    return-void
.end method

.method private OooO0OO(Landroid/content/Context;)V
    .locals 5

    sget v0, Lz2/df0;->OooooO0:I

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    sput v0, Lz2/df0;->OooooO0:I

    :cond_2
    :goto_0
    return-void
.end method

.method private OooO0o()Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    iget-object v0, p0, Lz2/df0;->Ooooo00:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrazerdp/basepopup/BasePopupHelper;

    return-object v0
.end method

.method private OooO0o0(Lz2/te0;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lz2/df0;->OooO0o()Lrazerdp/basepopup/BasePopupHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OoooOoo()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/16 v2, 0x3ea

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lz2/te0;->OooOO0O(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1}, Lz2/df0;->OooO00o(Landroid/view/ViewGroup$LayoutParams;Lrazerdp/basepopup/BasePopupHelper;)V

    :cond_3
    return-object p2
.end method

.method private OooO0oO()Lz2/te0;
    .locals 1

    iget-object v0, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/te0;

    return-object v0
.end method

.method private OooO0oo(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PopupDecorView"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PopupViewContainer"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public OooO()V
    .locals 1

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/te0;->OooOo0o()V

    :cond_1
    return-void
.end method

.method public OooO0O0(Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/df0;->Ooooo00:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public OooO0Oo()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lz2/df0;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public OooOO0(Z)V
    .locals 3

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    move-object p1, v1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_0

    :cond_0
    move-object p1, v1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    iget-object p1, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public OooOO0O(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.addView  >>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "WindowManagerProxy"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/df0;->OooO0OO(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lz2/df0;->OooO0oo(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/df0;->OooO0o()Lrazerdp/basepopup/BasePopupHelper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lz2/df0;->OooO00o(Landroid/view/ViewGroup$LayoutParams;Lrazerdp/basepopup/BasePopupHelper;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lz2/te0;->OooO(Landroid/content/Context;Lz2/df0;Lrazerdp/basepopup/BasePopupHelper;)Lz2/te0;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1, v1}, Lz2/te0;->OooO0oO(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-direct {p0, v0, p2}, Lz2/df0;->OooO0o0(Lz2/te0;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.removeView  >>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "WindowManagerProxy"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/df0;->OooO0OO(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lz2/df0;->OooO0oo(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object p1

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v2, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.removeViewImmediate  >>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "WindowManagerProxy"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/df0;->OooO0OO(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lz2/df0;->OooO0oo(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object p1, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v2, p0, Lz2/df0;->OoooOoo:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.updateViewLayout  >>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "WindowManagerProxy"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/df0;->OooO0OO(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lz2/df0;->OooO0oo(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object v0

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lz2/df0;->OooO0oO()Lz2/te0;

    move-result-object p1

    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    invoke-direct {p0, p1, p2}, Lz2/df0;->OooO0o0(Lz2/te0;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    :goto_1
    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lz2/df0;->OoooOoO:Landroid/view/WindowManager;

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
