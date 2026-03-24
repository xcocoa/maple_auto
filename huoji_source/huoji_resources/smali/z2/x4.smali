.class public Lz2/x4;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0O0:Lz2/x4; = null

.field private static OooO0OO:Ljava/lang/String; = "com.cyjh.elfin.base.AppContext"


# instance fields
.field private OooO00o:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0O0()Lz2/x4;
    .locals 2

    sget-object v0, Lz2/x4;->OooO0O0:Lz2/x4;

    if-nez v0, :cond_1

    const-class v0, Lz2/x4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/x4;->OooO0O0:Lz2/x4;

    if-nez v1, :cond_0

    new-instance v1, Lz2/x4;

    invoke-direct {v1}, Lz2/x4;-><init>()V

    sput-object v1, Lz2/x4;->OooO0O0:Lz2/x4;

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
    sget-object v0, Lz2/x4;->OooO0O0:Lz2/x4;

    return-object v0
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public OooO0OO(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public OooO0o0(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/d5;

    invoke-direct {v0, p1}, Lz2/d5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    return-void
.end method

.method public OooO0oO(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/x4;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
