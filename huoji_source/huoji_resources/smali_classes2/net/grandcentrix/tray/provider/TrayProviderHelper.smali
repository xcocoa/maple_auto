.class public Lnet/grandcentrix/tray/provider/TrayProviderHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    return-void
.end method

.method public static cursorToTrayItem(Landroid/database/Cursor;)Lnet/grandcentrix/tray/core/TrayItem;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "MODULE"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "KEY"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "MIGRATED_KEY"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "VALUE"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    const-string v0, "CREATED"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    const-string v0, "UPDATED"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Lnet/grandcentrix/tray/core/TrayItem;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lnet/grandcentrix/tray/core/TrayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object p0
.end method


# virtual methods
.method public clear()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v1}, Lnet/grandcentrix/tray/provider/TrayUri;->get()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public varargs clearBut([Lnet/grandcentrix/tray/core/AbstractTrayPreference;)Z
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MODULE != ?"

    invoke-static {v3, v7}, Lnet/grandcentrix/tray/provider/SqliteHelper;->extendSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v1, v5}, Lnet/grandcentrix/tray/provider/SqliteHelper;->extendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v2}, Lnet/grandcentrix/tray/provider/TrayUri;->get()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/grandcentrix/tray/core/TrayItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->get()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public persist(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public persist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MIGRATED_KEY"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    iget-object p3, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public persist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public persist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p3}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public queryProvider(Landroid/net/Uri;)Ljava/util/List;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lnet/grandcentrix/tray/core/TrayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/TrayException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->cursorToTrayItem(Landroid/database/Cursor;)Lnet/grandcentrix/tray/core/TrayItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_1
    new-instance v0, Lnet/grandcentrix/tray/core/TrayException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not access stored data with uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/core/TrayException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    new-instance v0, Lnet/grandcentrix/tray/core/TrayException;

    const-string v1, "Hard error accessing the ContentProvider"

    invoke-direct {v0, v1, p1}, Lnet/grandcentrix/tray/core/TrayException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lnet/grandcentrix/tray/core/TrayItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProvider(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/TrayException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public remove(Landroid/net/Uri;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public removeAndCount(Landroid/net/Uri;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public wipe()Z
    .locals 4

    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->clear()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v2}, Lnet/grandcentrix/tray/provider/TrayUri;->getInternal()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
