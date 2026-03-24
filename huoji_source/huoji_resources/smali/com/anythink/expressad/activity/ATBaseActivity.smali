.class public abstract Lcom/anythink/expressad/activity/ATBaseActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "ATBaseActivity"


# instance fields
.field private b:Landroid/view/OrientationEventListener;

.field private c:Landroid/view/Display;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/activity/ATBaseActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->d()I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/activity/ATBaseActivity;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->d:I

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/activity/ATBaseActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->d:I

    return p0
.end method

.method private b()V
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mCalled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/activity/ATBaseActivity;)Landroid/view/OrientationEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method private c()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/activity/ATBaseActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/anythink/expressad/activity/ATBaseActivity$2;-><init>(Lcom/anythink/expressad/activity/ATBaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic d(Lcom/anythink/expressad/activity/ATBaseActivity;)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/activity/ATBaseActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/anythink/expressad/activity/ATBaseActivity$2;-><init>(Lcom/anythink/expressad/activity/ATBaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private e()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/activity/ATBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/activity/ATBaseActivity$1;-><init>(Lcom/anythink/expressad/activity/ATBaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract a(IIIII)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->e()V

    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->d()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v1, "mCalled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :goto_0
    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->a()V

    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->e()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->e()V

    return-void
.end method
