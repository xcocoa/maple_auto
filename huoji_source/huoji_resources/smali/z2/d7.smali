.class public Lz2/d7;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0O0:Lz2/d7;


# instance fields
.field public OooO00o:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()Lz2/d7;
    .locals 2

    sget-object v0, Lz2/d7;->OooO0O0:Lz2/d7;

    if-nez v0, :cond_1

    const-class v0, Lz2/d7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/d7;->OooO0O0:Lz2/d7;

    if-nez v1, :cond_0

    new-instance v1, Lz2/d7;

    invoke-direct {v1}, Lz2/d7;-><init>()V

    sput-object v1, Lz2/d7;->OooO0O0:Lz2/d7;

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
    sget-object v0, Lz2/d7;->OooO0O0:Lz2/d7;

    return-object v0
.end method

.method private synthetic OooO0OO(Landroid/os/Vibrator;Lz2/x6;)V
    .locals 3

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o0()V

    invoke-virtual {p2}, Lz2/x6;->OooO0OO()V

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lz2/d7$OooO00o;

    invoke-direct {v1, p0, p1, p2}, Lz2/d7$OooO00o;-><init>(Lz2/d7;Landroid/os/Vibrator;Lz2/x6;)V

    const-wide/16 p1, 0x5dc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :array_0
    .array-data 8
        0x1f4
        0xc8
        0x1f4
        0xc8
    .end array-data
.end method


# virtual methods
.method public OooO0O0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    new-instance v0, Lz2/x6;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/x6;-><init>(Landroid/content/Context;)V

    new-instance v1, Lz2/y6;

    invoke-direct {v1, p0, p1, v0}, Lz2/y6;-><init>(Lz2/d7;Landroid/os/Vibrator;Lz2/x6;)V

    invoke-virtual {v0, v1}, Lz2/x6;->OooO00o(Lz2/x6$OooO00o;)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/os/Vibrator;Lz2/x6;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/d7;->OooO0OO(Landroid/os/Vibrator;Lz2/x6;)V

    return-void
.end method

.method public OooO0o0()V
    .locals 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
