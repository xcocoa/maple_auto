.class public Lz2/z6;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0Oo:Lz2/z6;


# instance fields
.field public OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

.field private OooO0O0:Landroid/view/WindowManager;

.field private OooO0OO:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/z6;

    invoke-direct {v0}, Lz2/z6;-><init>()V

    sput-object v0, Lz2/z6;->OooO0Oo:Lz2/z6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0Oo()Lz2/z6;
    .locals 1

    sget-object v0, Lz2/z6;->OooO0Oo:Lz2/z6;

    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lz2/z6;->OooO0O0:Landroid/view/WindowManager;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    iget-object v1, p0, Lz2/z6;->OooO0OO:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v2, p0, Lz2/z6;->OooO0OO:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;-><init>(Landroid/content/Context;Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;)V

    iput-object v1, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v1, p0, Lz2/z6;->OooO0O0:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lz2/z6;->OooO0O0:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OoooOOo()V

    :cond_0
    return-void
.end method

.method public OooO0O0()V
    .locals 2

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    :cond_1
    return-void
.end method

.method public OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
    .locals 1

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    return-object v0
.end method

.method public OooO0o(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lz2/z6;->OooO0OO:Landroid/content/Context;

    return-void
.end method

.method public OooO0o0()V
    .locals 3

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public OooO0oO()V
    .locals 3

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/z6;->OooO00o()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OoooOOo()V

    :goto_0
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
