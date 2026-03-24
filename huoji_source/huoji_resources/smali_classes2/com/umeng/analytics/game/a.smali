.class public Lcom/umeng/analytics/game/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/game/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/umeng/analytics/game/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "um_g_cache"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->d:Ljava/lang/String;

    const-string v0, "single_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->e:Ljava/lang/String;

    const-string v0, "stat_player_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->f:Ljava/lang/String;

    const-string v0, "stat_game_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    iput-object p1, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;
    .locals 1

    new-instance v0, Lcom/umeng/analytics/game/a$a;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/game/a$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->a()V

    iget-object p1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    return-object p1
.end method

.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->b()V

    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "single_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-static {v2}, Lcom/umeng/analytics/pro/s;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "stat_player_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "stat_game_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->d()V

    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "single_level"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/game/a$a;

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/umeng/analytics/game/a$a;->c()V

    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "stat_player_level"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "userlevel"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "stat_game_level"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
