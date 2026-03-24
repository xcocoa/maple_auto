.class public Lz2/va0;
.super Lz2/qa0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/qa0;-><init>()V

    return-void
.end method

.method private o00000(Lz2/ua0;Lz2/ua0;)Z
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lz2/va0;->o000000(Lz2/ua0;Lz2/ua0;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lz2/va0;->o000000O(Lz2/ua0;Lz2/ua0;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lz2/va0;->o000000o(Lz2/ua0;Lz2/ua0;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return v8

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return v8

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private o000000(Lz2/ua0;Lz2/ua0;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lz2/ra0;->Oooo0oo(Lz2/ua0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o000000O(Lz2/ua0;Lz2/ua0;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/la0;->OooO0oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ? and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/la0;->OooO0oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o000000o(Lz2/ua0;Lz2/ua0;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lz2/ua0;->getBaseObjId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    return-object v0
.end method

.method private o000OOo(Lz2/ob0;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o0O0O00(Lz2/ua0;Lz2/ob0;)V
    .locals 0

    invoke-direct {p0, p2}, Lz2/va0;->o000OOo(Lz2/ob0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/ua0;->addEmptyModelForJoinTable(Ljava/lang/String;)V

    return-void
.end method

.method private o0Oo0oo(Ljava/util/Collection;Lz2/ua0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lz2/ua0;",
            ">;",
            "Lz2/ua0;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private oo0o0Oo(Lz2/ua0;Lz2/ua0;)V
    .locals 3

    invoke-virtual {p2}, Lz2/ua0;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lz2/ua0;->addAssociatedModelForJoinTable(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public o0OO00O(Lz2/ua0;Lz2/ob0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/ra0;->Oooo00o(Lz2/ua0;Lz2/ob0;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lz2/va0;->o0O0O00(Lz2/ua0;Lz2/ob0;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/ua0;

    invoke-virtual {p0, v1, p2}, Lz2/qa0;->o0ooOOo(Lz2/ua0;Lz2/ob0;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p2}, Lz2/ob0;->OooO0O0()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lz2/qa0;->o00oO0o(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lz2/va0;->o0Oo0oo(Ljava/util/Collection;Lz2/ua0;)V

    invoke-virtual {p0, v1, p2, v2}, Lz2/qa0;->o0OOO0o(Lz2/ua0;Lz2/ob0;Ljava/util/Collection;)V

    invoke-direct {p0, p1, v1}, Lz2/va0;->oo0o0Oo(Lz2/ua0;Lz2/ua0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
