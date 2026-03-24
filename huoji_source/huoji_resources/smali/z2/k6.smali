.class public Lz2/k6;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0O0:I = 0x1

.field private static OooO0OO:Lz2/k6;


# instance fields
.field private OooO00o:Lz2/j6;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j6;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const-string v2, "MESSAGE.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lz2/j6;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lz2/k6;->OooO00o:Lz2/j6;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/k6;)Lz2/j6;
    .locals 0

    iget-object p0, p0, Lz2/k6;->OooO00o:Lz2/j6;

    return-object p0
.end method

.method public static OooO0Oo()Lz2/k6;
    .locals 2

    sget-object v0, Lz2/k6;->OooO0OO:Lz2/k6;

    if-nez v0, :cond_1

    const-class v0, Lz2/k6;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/k6;->OooO0OO:Lz2/k6;

    if-nez v1, :cond_0

    new-instance v1, Lz2/k6;

    invoke-direct {v1}, Lz2/k6;-><init>()V

    sput-object v1, Lz2/k6;->OooO0OO:Lz2/k6;

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
    sget-object v0, Lz2/k6;->OooO0OO:Lz2/k6;

    return-object v0
.end method


# virtual methods
.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lz2/k6;->OooO00o:Lz2/j6;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public OooO0OO()V
    .locals 3

    iget-object v0, p0, Lz2/k6;->OooO00o:Lz2/j6;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "Message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public OooO0o(Lz2/r3;)V
    .locals 2

    invoke-static {}, Lz2/rb;->OooO00o()Lz2/qb;

    move-result-object v0

    new-instance v1, Lz2/k6$OooO00o;

    invoke-direct {v1, p0, p1}, Lz2/k6$OooO00o;-><init>(Lz2/k6;Lz2/r3;)V

    invoke-virtual {v0, v1}, Lz2/qb;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OooO0o0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/k6;->OooO00o:Lz2/j6;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    iget-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    const-string v5, "number"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    const-string v5, "time"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    const-string v5, "content"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    const-string v5, "description"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "Message"

    invoke-virtual {v0, v4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
