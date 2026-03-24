.class public Lcom/tramini/plugin/a/c/c;
.super Lcom/tramini/plugin/a/c/b;
.source ""


# static fields
.field private static a:Lcom/tramini/plugin/a/c/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tramini/plugin/a/c/c;
    .locals 2

    sget-object v0, Lcom/tramini/plugin/a/c/c;->a:Lcom/tramini/plugin/a/c/c;

    if-nez v0, :cond_0

    const-class v0, Lcom/tramini/plugin/a/c/c;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/tramini/plugin/a/c/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/c/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tramini/plugin/a/c/c;->a:Lcom/tramini/plugin/a/c/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lcom/tramini/plugin/a/c/c;->a:Lcom/tramini/plugin/a/c/c;

    return-object p0
.end method

.method private h()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/tramini/plugin/a/c/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DROP TABLE IF EXISTS \'il\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tramini/plugin/a/c/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DROP TABLE IF EXISTS \'il_all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "tramini.db"

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
