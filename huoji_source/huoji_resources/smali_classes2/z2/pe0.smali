.class public final Lz2/pe0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/pe0$OooO0OO;,
        Lz2/pe0$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO00o:Lz2/pe0$OooO0O0;

.field private OooO0O0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0OO:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/pe0;->OooO0OO:I

    return-void
.end method

.method public synthetic constructor <init>(Lz2/pe0$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/pe0;-><init>()V

    return-void
.end method

.method private OooO(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic OooO00o(Lz2/pe0;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lz2/pe0;->OooO(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0O0(Lz2/pe0;)I
    .locals 2

    iget v0, p0, Lz2/pe0;->OooO0OO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz2/pe0;->OooO0OO:I

    return v0
.end method

.method public static synthetic OooO0OO(Lz2/pe0;)I
    .locals 2

    iget v0, p0, Lz2/pe0;->OooO0OO:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lz2/pe0;->OooO0OO:I

    return v0
.end method

.method public static synthetic OooO0Oo(Lz2/pe0;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lz2/pe0;->OooO0O0:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static OooO0o0()Lz2/pe0;
    .locals 1

    invoke-static {}, Lz2/pe0$OooO0OO;->OooO00o()Lz2/pe0;

    move-result-object v0

    return-object v0
.end method

.method private OooOO0(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lz2/pe0$OooO00o;

    invoke-direct {v0, p0}, Lz2/pe0$OooO00o;-><init>(Lz2/pe0;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public OooO0o()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lz2/pe0;->OooO0O0:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0
.end method

.method public OooO0oO(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lz2/pe0;->OooO00o:Lz2/pe0$OooO0O0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :goto_0
    invoke-direct {p0, v0}, Lz2/pe0;->OooOO0(Landroid/app/Application;)V

    new-instance v0, Lz2/pe0$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/pe0$OooO0O0;-><init>(Lz2/pe0;Landroid/content/Context;)V

    iput-object v0, p0, Lz2/pe0;->OooO00o:Lz2/pe0$OooO0O0;

    return-void
.end method

.method public OooO0oo()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lz2/pe0;->OooO0OO:I

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "isAppOnBackground"

    invoke-static {v2, v1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lz2/pe0;->OooO0OO:I

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
