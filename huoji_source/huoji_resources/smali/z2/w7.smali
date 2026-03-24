.class public Lz2/w7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/w7$OooOOO0;
    }
.end annotation


# static fields
.field private static volatile OooO0o:Lz2/w7; = null

.field private static final OooO0o0:Ljava/lang/String; = "FloatWindowManager"


# instance fields
.field private OooO00o:Z

.field private OooO0O0:Landroid/view/WindowManager;

.field private OooO0OO:Landroid/view/WindowManager$LayoutParams;

.field private OooO0Oo:Lz2/y9;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/w7;->OooO00o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/w7;->OooO0O0:Landroid/view/WindowManager;

    iput-object v0, p0, Lz2/w7;->OooO0OO:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private OooO(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private OooO00o(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/w7$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/w7$OooO00o;-><init>(Lz2/w7;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lz2/w7;->OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/w7;)Lz2/y9;
    .locals 0

    iget-object p0, p0, Lz2/w7;->OooO0Oo:Lz2/y9;

    return-object p0
.end method

.method private OooO0o(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lz2/c8;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lz2/w7;->OooOOO(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lz2/w7$OooOO0;

    invoke-direct {v0, p0, p1}, Lz2/w7$OooOO0;-><init>(Lz2/w7;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lz2/w7;->OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static OooO0oO(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-class v0, Landroid/provider/Settings;

    const-string v1, "ACTION_MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private OooO0oo(Landroid/content/Context;)Z
    .locals 7

    invoke-static {}, Lz2/c8;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FloatTAG"

    const-string v1, "Build.VERSION.SDK_INT: checkIsMeizuRom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lz2/w7;->OooOOO0(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    :try_start_0
    const-class v1, Landroid/provider/Settings;

    const-string v2, "canDrawOverlays"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FloatWindowManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public static OooOO0()Lz2/w7;
    .locals 2

    sget-object v0, Lz2/w7;->OooO0o:Lz2/w7;

    if-nez v0, :cond_1

    const-class v0, Lz2/w7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/w7;->OooO0o:Lz2/w7;

    if-nez v1, :cond_0

    new-instance v1, Lz2/w7;

    invoke-direct {v1}, Lz2/w7;-><init>()V

    sput-object v1, Lz2/w7;->OooO0o:Lz2/w7;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/w7;->OooO0o:Lz2/w7;

    return-object v0
.end method

.method private OooOO0O(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lz2/x7;->OooO0O0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private OooOO0o(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/w7$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/w7$OooO0O0;-><init>(Lz2/w7;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lz2/w7;->OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V

    return-void
.end method

.method private OooOOO(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/w7$OooO0OO;

    invoke-direct {v0, p0, p1}, Lz2/w7$OooO0OO;-><init>(Lz2/w7;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lz2/w7;->OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V

    return-void
.end method

.method private OooOOO0(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lz2/y7;->OooO0O0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private OooOOOO(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lz2/z7;->OooO0O0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private OooOOOo(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/w7$OooO0o;

    invoke-direct {v0, p0, p1}, Lz2/w7$OooO0o;-><init>(Lz2/w7;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lz2/w7;->OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V

    return-void
.end method

.method private OooOOo(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lz2/a8;->OooO0O0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private OooOOo0(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/w7$OooO;

    invoke-direct {v0, p0, p1}, Lz2/w7$OooO;-><init>(Lz2/w7;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lz2/w7;->OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V

    return-void
.end method

.method private OooOOoo(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lz2/b8;->OooO0O0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private OooOo0(Landroid/content/Context;Ljava/lang/String;Lz2/w7$OooOOO0;)V
    .locals 0

    iget-object p2, p0, Lz2/w7;->OooO0Oo:Lz2/y9;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz2/w7;->OooO0Oo:Lz2/y9;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance p2, Lz2/y9;

    invoke-direct {p2, p1}, Lz2/y9;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lz2/w7;->OooO0Oo:Lz2/y9;

    new-instance p1, Lz2/w7$OooOO0O;

    invoke-direct {p1, p0, p3}, Lz2/w7$OooOO0O;-><init>(Lz2/w7;Lz2/w7$OooOOO0;)V

    invoke-virtual {p2, p1}, Lz2/y9;->OooO0o(Lz2/y9$OooO00o;)V

    iget-object p1, p0, Lz2/w7;->OooO0Oo:Lz2/y9;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private OooOo00(Landroid/content/Context;Lz2/w7$OooOOO0;)V
    .locals 1

    const-string v0, "\u60a8\u7684\u624b\u673a\u6ca1\u6709\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650\uff0c\u8bf7\u5f00\u542f\u540e\u518d\u8bd5"

    invoke-direct {p0, p1, v0, p2}, Lz2/w7;->OooOo0(Landroid/content/Context;Ljava/lang/String;Lz2/w7$OooOOO0;)V

    return-void
.end method


# virtual methods
.method public OooO0OO(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lz2/w7;->OooO0o0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lz2/w7;->OooO0Oo(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public OooO0Oo(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    invoke-static {}, Lz2/c8;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lz2/w7;->OooOOOo(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/c8;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lz2/w7;->OooOOO(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/c8;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lz2/w7;->OooOO0o(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lz2/c8;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lz2/w7;->OooO00o(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lz2/c8;->OooO0o0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lz2/w7;->OooOOo0(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lz2/w7;->OooO0o(Landroid/content/Context;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public OooO0o0(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    invoke-static {}, Lz2/c8;->OooO0Oo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lz2/w7;->OooOOOO(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lz2/c8;->OooO0OO()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lz2/w7;->OooOOO0(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {}, Lz2/c8;->OooO0O0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lz2/w7;->OooOO0O(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_2
    invoke-static {}, Lz2/c8;->OooO00o()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lz2/w7;->OooOOoo(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, Lz2/c8;->OooO0o0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lz2/w7;->OooOOo(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION.SDK_INT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatTAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lz2/w7;->OooO0oo(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
