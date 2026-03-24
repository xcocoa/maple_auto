.class public abstract Lz2/qe0;
.super Landroid/widget/PopupWindow;
.source ""


# static fields
.field private static final OooO0o:I = 0xf

.field private static final OooO0o0:Ljava/lang/String; = "BasePopupWindowProxy"


# instance fields
.field private OooO00o:Lrazerdp/basepopup/BasePopupHelper;

.field private OooO0O0:Lz2/df0;

.field private OooO0OO:Z

.field private OooO0Oo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p5, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p4, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p3, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p2, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IILrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p4, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p5, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/qe0;->OooO0OO:Z

    iput-object p2, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/qe0;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method private OooO(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p0}, Lz2/qe0;->OooOOOO(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method private OooO0o()V
    .locals 1

    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/df0;->OooO0Oo()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lz2/nf0;->OooO00o(Landroid/view/View;)Landroid/view/View;

    invoke-static {p0}, Lz2/se0;->OooO0O0(Lz2/qe0;)V

    return-void
.end method

.method private OooOOO(Landroid/widget/PopupWindow;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lz2/we0;->OooO00o()Lz2/we0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/we0;->OooO0O0(Landroid/widget/PopupWindow;)Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lz2/df0;

    invoke-direct {v1, v0}, Lz2/df0;-><init>(Landroid/view/WindowManager;)V

    iput-object v1, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    invoke-static {}, Lz2/we0;->OooO00o()Lz2/we0;

    move-result-object v0

    iget-object v1, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    invoke-virtual {v0, p1, v1}, Lz2/we0;->OooO0Oo(Landroid/widget/PopupWindow;Landroid/view/WindowManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private OooOOO0(Landroid/widget/PopupWindow;)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mWindowManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Lz2/df0;

    invoke-direct {v3, v2}, Lz2/df0;-><init>(Landroid/view/WindowManager;)V

    iput-object v3, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "BasePopupWindowProxy"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "\u5c1d\u8bd5\u4ee3\u7406WindowManager\u6210\u529f"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v0, Landroid/widget/PopupWindow;

    const-string v2, "mOnScrollChangedListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lz2/qe0;->OooOOO(Landroid/widget/PopupWindow;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private OooOOOO(Landroid/widget/PopupWindow;)V
    .locals 2

    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cur api >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lz2/qe0;->OooOOO0(Landroid/widget/PopupWindow;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public OooO00o(Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 1

    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lz2/qe0;->OooOOOO(Landroid/widget/PopupWindow;)V

    :cond_0
    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    invoke-virtual {v0, p1}, Lz2/df0;->OooO0O0(Lrazerdp/basepopup/BasePopupHelper;)V

    return-void
.end method

.method public OooO0O0()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lz2/qe0;->OooO0o()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-direct {p0}, Lz2/qe0;->OooO0o()V

    throw v0
.end method

.method public OooO0OO()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo(Landroid/view/View;III)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/qe0;->OooOO0o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BasePopupWindowProxy"

    const-string p2, "please make sure that context is instance of activity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public OooO0o0(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public OooO0oO()Lz2/df0;
    .locals 1

    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    return-object v0
.end method

.method public OooO0oo()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isFocusable()Z

    move-result v0

    iput-boolean v0, p0, Lz2/qe0;->OooO0OO:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/qe0;->OooO0Oo:Z

    return-void
.end method

.method public OooOO0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/qe0;->OooO0Oo:Z

    return v0
.end method

.method public OooOO0O()V
    .locals 2

    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lz2/qe0;->OooO0OO:Z

    invoke-virtual {v0, v1}, Lz2/df0;->OooOO0(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/qe0;->OooO0Oo:Z

    return-void
.end method

.method public OooOO0o(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lz2/nf0;->OooO0oo(Landroid/content/Context;I)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooO0OO()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lz2/qe0;->OooO0O0()V

    :cond_2
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, p0}, Lz2/qe0;->OooOOOO(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public update()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v2

    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v0

    iget-object v1, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v1

    add-int v3, v0, v1

    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooOO0()I

    move-result v4

    iget-object v0, p0, Lz2/qe0;->OooO00o:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_0
    iget-object v0, p0, Lz2/qe0;->OooO0O0:Lz2/df0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz2/df0;->OooO()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
