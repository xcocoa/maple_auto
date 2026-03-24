.class public Lz2/b5;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0O0:Ljava/lang/String; = "b5"

.field private static OooO0OO:Lz2/b5; = null

.field public static final OooO0Oo:Ljava/lang/String; = "app_version"

.field public static final OooO0o0:Ljava/lang/String; = "last_app_version"


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

.method private OooO00o()V
    .locals 0

    return-void
.end method

.method public static OooO0OO()Lz2/b5;
    .locals 2

    sget-object v0, Lz2/b5;->OooO0OO:Lz2/b5;

    if-nez v0, :cond_1

    const-class v0, Lz2/b5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/b5;->OooO0OO:Lz2/b5;

    if-nez v1, :cond_0

    new-instance v1, Lz2/b5;

    invoke-direct {v1}, Lz2/b5;-><init>()V

    sput-object v1, Lz2/b5;->OooO0OO:Lz2/b5;

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
    sget-object v0, Lz2/b5;->OooO0OO:Lz2/b5;

    return-object v0
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lz2/j3;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/b5;->OooO00o:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-static {}, Lz2/j3;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lz2/j3;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/b5;->OooO00o:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-static {}, Lz2/j3;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_app_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public OooO0o(Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lz2/b5;->OooO00o:Landroid/content/SharedPreferences;

    return-void
.end method

.method public OooO0o0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lz2/b5;->OooO00o:Landroid/content/SharedPreferences;

    return-void
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lz2/b5;->OooO00o:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lz2/b5;->OooO00o:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
