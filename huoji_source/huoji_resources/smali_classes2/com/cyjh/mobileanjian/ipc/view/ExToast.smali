.class public Lcom/cyjh/mobileanjian/ipc/view/ExToast;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field private static final OooOOO:I = 0x33


# instance fields
.field private OooO:I

.field private OooO00o:Landroid/view/WindowManager;

.field private OooO0O0:Landroid/view/WindowManager$LayoutParams;

.field private OooO0OO:Ljava/util/Timer;

.field private OooO0Oo:Landroid/widget/Toast;

.field private OooO0o:I

.field private OooO0o0:Z

.field private OooO0oO:I

.field private OooO0oo:I

.field private OooOO0:Ljava/lang/CharSequence;

.field private OooOO0O:I

.field private OooOO0o:Landroid/widget/TextView;

.field private OooOOO0:Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oo:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOO0O:I

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO00o:Landroid/view/WindowManager;

    const-string v0, ""

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-static {}, Lz2/gf;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/cyjh/mqsdk/R$layout;->ui_show_toast_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0OO:Ljava/util/Timer;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x1030004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f6

    :goto_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_1
    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    const/16 v3, 0x7d5

    goto :goto_0

    :cond_2
    const/16 v3, 0x7d2

    goto :goto_0

    :goto_1
    const/16 v3, 0x98

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "config_toastDefaultGravity"

    const-string v4, "Integer"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "config_toastDefaultGravity tempResId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultGravity = 81"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const/16 v0, 0x51

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "toast_y_offset"

    const-string v4, "dimen"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez v0, :cond_4

    sget v0, Lcom/cyjh/mqsdk/R$dimen;->toast_y_offset:I

    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oO:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "Toast"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1d

    if-gt v2, p1, :cond_5

    if-ne v2, p1, :cond_6

    invoke-static {}, Lz2/gf;->OooO00o()I

    move-result p1

    if-lez p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x3f4a3d71    # 0.79f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_7
    return-void
.end method

.method private OooO00o(ILjava/lang/CharSequence;IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oO:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o0:Z

    if-eqz p1, :cond_1

    if-eqz p5, :cond_2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO00o:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO00o:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private OooO0O0(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f6

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    const/16 v2, 0x7d5

    goto :goto_0

    :cond_1
    const/16 v2, 0x7d2

    goto :goto_0

    :goto_1
    const/16 v2, 0x98

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "config_toastDefaultGravity"

    const-string v3, "Integer"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_toastDefaultGravity tempResId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDefaultGravity = 81"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/16 v0, 0x51

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "toast_y_offset"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez v0, :cond_3

    sget v0, Lcom/cyjh/mqsdk/R$dimen;->toast_y_offset:I

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oO:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "Toast"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1d

    if-gt v1, p1, :cond_5

    if-ne v1, p1, :cond_4

    invoke-static {}, Lz2/gf;->OooO00o()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x3f4a3d71    # 0.79f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_6
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/ExToast;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;
    .locals 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setDuration(I)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO00o:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o0:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOO0O:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOO0:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 6

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOO0:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO00o(ILjava/lang/CharSequence;IIZ)V

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0OO:Ljava/util/Timer;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;III)V
    .locals 11

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    :try_start_0
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oo:I

    if-ltz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    if-gez p3, :cond_1

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO:I

    if-ltz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oo:I

    if-ne p2, v3, :cond_3

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO:I

    if-ne p3, v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ltz p2, :cond_5

    if-gez p3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x33

    const/16 v6, 0x33

    goto :goto_3

    :cond_5
    :goto_2
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o:I

    move v6, v4

    :goto_3
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0oo:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO:I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    invoke-virtual {v4}, Ljava/util/TimerTask;->cancel()Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config_toastDefaultGravity show gravity = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0Oo:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getYOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO00o(ILjava/lang/CharSequence;IIZ)V

    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0o0:Z

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/view/ExToast$OooO0O0;

    const/16 p2, 0x7d0

    if-gez p4, :cond_7

    const p4, 0x7fffffff

    goto :goto_5

    :cond_7
    if-ltz p4, :cond_8

    if-ge p4, p2, :cond_8

    const/16 p4, 0x7d0

    :cond_8
    :goto_5
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->OooO0OO:Ljava/util/Timer;

    int-to-long p3, p4

    invoke-virtual {p2, p1, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
