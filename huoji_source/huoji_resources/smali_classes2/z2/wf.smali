.class public final Lz2/wf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/wf$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooOo:I = 0x4

.field public static final OooOo0O:I = 0x0

.field public static final OooOo0o:I = 0x2


# instance fields
.field private OooO:I

.field private OooO00o:Landroid/widget/Toast;

.field private OooO0O0:Landroid/content/Context;

.field private OooO0OO:Z

.field private OooO0Oo:I

.field private final OooO0o:I

.field private OooO0o0:I

.field private final OooO0oO:I

.field private final OooO0oo:I

.field private OooOO0:I

.field private OooOO0O:Ljava/lang/Object;

.field private OooOO0o:Ljava/lang/reflect/Method;

.field private OooOOO:Landroid/view/WindowManager;

.field private OooOOO0:Ljava/lang/reflect/Method;

.field private OooOOOO:Landroid/view/WindowManager$LayoutParams;

.field private OooOOOo:Landroid/view/WindowManager$LayoutParams;

.field private OooOOo:Landroid/os/Handler;

.field private OooOOo0:Landroid/view/View;

.field private OooOOoo:Ljava/util/Timer;

.field private OooOo0:Ljava/lang/Runnable;

.field private OooOo00:Lz2/wf$OooO0O0;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/wf;->OooO0OO:Z

    const/4 v1, -0x1

    iput v1, p0, Lz2/wf;->OooO0Oo:I

    const/4 v1, 0x2

    iput v1, p0, Lz2/wf;->OooO0o0:I

    const/4 v1, 0x0

    iput-object v1, p0, Lz2/wf;->OooOOOo:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lz2/wf;->OooOOo:Landroid/os/Handler;

    new-instance v1, Ljava/util/Timer;

    const-string v2, "hideTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    new-instance v1, Lz2/wf$OooO0O0;

    invoke-direct {v1, p0, v0}, Lz2/wf$OooO0O0;-><init>(Lz2/wf;B)V

    iput-object v1, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    new-instance v0, Lz2/wf$OooO00o;

    invoke-direct {v0, p0}, Lz2/wf$OooO00o;-><init>(Lz2/wf;)V

    iput-object v0, p0, Lz2/wf;->OooOo0:Ljava/lang/Runnable;

    iput-object p1, p0, Lz2/wf;->OooO0O0:Landroid/content/Context;

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result p1

    iput p1, p0, Lz2/wf;->OooO0o:I

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result p1

    iput p1, p0, Lz2/wf;->OooO0oO:I

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v0

    iput v0, p0, Lz2/wf;->OooO0oo:I

    iput p1, p0, Lz2/wf;->OooO:I

    iput v0, p0, Lz2/wf;->OooOO0:I

    return-void
.end method

.method private OooO(Ljava/lang/CharSequence;II)V
    .locals 4

    iget-object v0, p0, Lz2/wf;->OooO0O0:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    if-gez p2, :cond_0

    iget v2, p0, Lz2/wf;->OooO:I

    if-ltz v2, :cond_2

    :cond_0
    if-gez p3, :cond_1

    iget v2, p0, Lz2/wf;->OooOO0:I

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p0, Lz2/wf;->OooO:I

    if-ne p2, v2, :cond_3

    iget v2, p0, Lz2/wf;->OooOO0:I

    if-ne p3, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ltz p2, :cond_5

    if-gez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iput p2, p0, Lz2/wf;->OooO:I

    iput p3, p0, Lz2/wf;->OooOO0:I

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lz2/wf;->OooO0oo(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lz2/wf;->OooO0OO()V

    iget-object v2, p0, Lz2/wf;->OooO0O0:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    if-eqz v3, :cond_7

    iget p2, p0, Lz2/wf;->OooO0o:I

    iget p3, p0, Lz2/wf;->OooO0oO:I

    iget v2, p0, Lz2/wf;->OooO0oo:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_3

    :cond_7
    const/16 v2, 0x33

    invoke-virtual {p1, v2, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    :goto_3
    :try_start_0
    iget-boolean p1, p0, Lz2/wf;->OooO0OO:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    new-instance p1, Lz2/wf$OooO0O0;

    invoke-direct {p1, p0, v1}, Lz2/wf$OooO0O0;-><init>(Lz2/wf;B)V

    iput-object p1, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    iget-object p2, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    iget p3, p0, Lz2/wf;->OooO0o0:I

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_8
    invoke-direct {p0}, Lz2/wf;->OooOOOo()V

    iget-object p1, p0, Lz2/wf;->OooOO0o:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v0, p0, Lz2/wf;->OooO0OO:Z

    iget p1, p0, Lz2/wf;->OooO0o0:I

    if-lez p1, :cond_9

    iget-object p1, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    new-instance p1, Lz2/wf$OooO0O0;

    invoke-direct {p1, p0, v1}, Lz2/wf$OooO0O0;-><init>(Lz2/wf;B)V

    iput-object p1, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    iget-object p2, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    iget p3, p0, Lz2/wf;->OooO0o0:I

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lz2/wf;->OooO0OO()V

    iget-object p1, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void
.end method

.method private static OooO00o(Landroid/content/Context;II)Lz2/wf;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    new-instance v0, Lz2/wf;

    invoke-direct {v0, p0}, Lz2/wf;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    iput p2, v0, Lz2/wf;->OooO0o0:I

    return-object v0
.end method

.method private static OooO0O0(Landroid/content/Context;Ljava/lang/CharSequence;I)Lz2/wf;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    new-instance v0, Lz2/wf;

    invoke-direct {v0, p0}, Lz2/wf;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    iput p2, v0, Lz2/wf;->OooO0o0:I

    return-object v0
.end method

.method private OooO0Oo(I)V
    .locals 0

    iput p1, p0, Lz2/wf;->OooO0o0:I

    return-void
.end method

.method private OooO0o(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method private OooO0o0(III)V
    .locals 1

    iget-object v0, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method private OooO0oO(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mParams"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void
.end method

.method private OooO0oo(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private OooOO0()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lz2/wf;->OooO0OO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    new-instance v0, Lz2/wf$OooO0O0;

    invoke-direct {v0, p0, v1}, Lz2/wf$OooO0O0;-><init>(Lz2/wf;B)V

    iput-object v0, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    iget-object v1, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    iget v2, p0, Lz2/wf;->OooO0o0:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    invoke-direct {p0}, Lz2/wf;->OooOOOo()V

    iget-object v0, p0, Lz2/wf;->OooOO0o:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/wf;->OooO0OO:Z

    iget v0, p0, Lz2/wf;->OooO0o0:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    new-instance v0, Lz2/wf$OooO0O0;

    invoke-direct {v0, p0, v1}, Lz2/wf$OooO0O0;-><init>(Lz2/wf;B)V

    iput-object v0, p0, Lz2/wf;->OooOo00:Lz2/wf$OooO0O0;

    iget-object v1, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    iget v2, p0, Lz2/wf;->OooO0o0:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lz2/wf;->OooO0OO()V

    iget-object v0, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lz2/wf;->OooOOoo:Ljava/util/Timer;

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void
.end method

.method private OooOO0O(I)V
    .locals 1

    iget-object v0, p0, Lz2/wf;->OooO0O0:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/wf;->OooO0oo(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private OooOO0o(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lz2/wf;->OooOOOo:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private OooOOO(I)V
    .locals 0

    iput p1, p0, Lz2/wf;->OooO0Oo:I

    return-void
.end method

.method private OooOOO0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private OooOOOO()I
    .locals 1

    iget v0, p0, Lz2/wf;->OooO0Oo:I

    return v0
.end method

.method private OooOOOo()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "show"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lz2/wf;->OooOO0o:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "hide"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lz2/wf;->OooOOO0:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mParams"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lz2/wf;->OooOOOO:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lz2/wf;->OooOOOo:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    iget v2, p0, Lz2/wf;->OooO0Oo:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_1
    iget-object v0, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mNextView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    iget-object v2, p0, Lz2/wf;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final OooO0OO()V
    .locals 4

    iget-boolean v0, p0, Lz2/wf;->OooO0OO:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/wf;->OooOOO0:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lz2/wf;->OooOO0O:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :goto_0
    iput-boolean v0, p0, Lz2/wf;->OooO0OO:Z

    return-void
.end method
