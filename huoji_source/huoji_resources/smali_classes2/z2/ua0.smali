.class public Lz2/ua0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AES:Ljava/lang/String; = "AES"

.field public static final MD5:Ljava/lang/String; = "MD5"


# instance fields
.field public associatedModelsMapForJoinTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithoutFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public baseObjId:J

.field private fieldsToSetToDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearAssociatedFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearSelfFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearFKNameList()V
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lz2/ua0;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private clearIdOfModelForJoinTable()V
    .locals 3

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearIdOfModelWithFK()V
    .locals 3

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lz2/ua0;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ua0;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearIdOfModelWithoutFK()V
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public addAssociatedModelForJoinTable(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addAssociatedModelWithFK(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz2/ua0;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addAssociatedModelWithoutFK(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAssociatedTableNameToClearFK(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lz2/ua0;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addEmptyModelForJoinTable(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lz2/ua0;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addFKNameToClearSelf(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lz2/ua0;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public assignBaseObjId(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lz2/ua0;->baseObjId:J

    return-void
.end method

.method public clearAssociatedData()V
    .locals 0

    invoke-direct {p0}, Lz2/ua0;->clearIdOfModelWithFK()V

    invoke-direct {p0}, Lz2/ua0;->clearIdOfModelWithoutFK()V

    invoke-direct {p0}, Lz2/ua0;->clearIdOfModelForJoinTable()V

    invoke-direct {p0}, Lz2/ua0;->clearFKNameList()V

    return-void
.end method

.method public clearSavedState()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/ua0;->baseObjId:J

    return-void
.end method

.method public delete()I
    .locals 5

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lz2/sa0;

    invoke-direct {v2, v1}, Lz2/sa0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2, p0}, Lz2/sa0;->o000000(Lz2/ua0;)I

    move-result v2

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lz2/ua0;->baseObjId:J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public deleteAsync()Lz2/hb0;
    .locals 2

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/ua0$OooO00o;

    invoke-direct {v1, p0, v0}, Lz2/ua0$OooO00o;-><init>(Lz2/ua0;Lz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getAssociatedModelsMapForJoinTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/ua0;->associatedModelsMapForJoinTable:Ljava/util/Map;

    return-object v0
.end method

.method public getAssociatedModelsMapWithFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ua0;->associatedModelsMapWithFK:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/ua0;->associatedModelsMapWithFK:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/ua0;->associatedModelsMapWithFK:Ljava/util/Map;

    return-object v0
.end method

.method public getAssociatedModelsMapWithoutFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ua0;->associatedModelsMapWithoutFK:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/ua0;->associatedModelsMapWithoutFK:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/ua0;->associatedModelsMapWithoutFK:Ljava/util/Map;

    return-object v0
.end method

.method public getBaseObjId()J
    .locals 2

    iget-wide v0, p0, Lz2/ua0;->baseObjId:J

    return-wide v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsToSetToDefault()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ua0;->fieldsToSetToDefault:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ua0;->fieldsToSetToDefault:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/ua0;->fieldsToSetToDefault:Ljava/util/List;

    return-object v0
.end method

.method public getListToClearAssociatedFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ua0;->listToClearAssociatedFK:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ua0;->listToClearAssociatedFK:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/ua0;->listToClearAssociatedFK:Ljava/util/List;

    return-object v0
.end method

.method public getListToClearSelfFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ua0;->listToClearSelfFK:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ua0;->listToClearSelfFK:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/ua0;->listToClearSelfFK:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSaved()Z
    .locals 5

    iget-wide v0, p0, Lz2/ua0;->baseObjId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public save()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lz2/ua0;->saveThrows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public saveAsync()Lz2/gb0;
    .locals 2

    new-instance v0, Lz2/gb0;

    invoke-direct {v0}, Lz2/gb0;-><init>()V

    new-instance v1, Lz2/ua0$OooO0o;

    invoke-direct {v1, p0, v0}, Lz2/ua0$OooO0o;-><init>(Lz2/ua0;Lz2/gb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public varargs saveIfNotExist([Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lz2/na0;->Oooo0o(Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lz2/ua0;->save()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs saveOrUpdate([Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lz2/ua0;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lz2/ua0;->save()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_0
    invoke-static {p1}, Lz2/na0;->o00ooo([Ljava/lang/String;)Lz2/ja0;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lz2/ja0;->OooO(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lz2/ua0;->save()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_1
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/ua0;

    invoke-virtual {v2}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v2

    iput-wide v2, p0, Lz2/ua0;->baseObjId:J

    new-instance v2, Lz2/za0;

    invoke-direct {v2, v1}, Lz2/za0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2, p0}, Lz2/za0;->o000000(Lz2/ua0;)V

    invoke-virtual {p0}, Lz2/ua0;->clearAssociatedData()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public varargs saveOrUpdateAsync([Ljava/lang/String;)Lz2/gb0;
    .locals 2

    new-instance v0, Lz2/gb0;

    invoke-direct {v0}, Lz2/gb0;-><init>()V

    new-instance v1, Lz2/ua0$OooO;

    invoke-direct {v1, p0, p1, v0}, Lz2/ua0$OooO;-><init>(Lz2/ua0;[Ljava/lang/String;Lz2/gb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public saveThrows()V
    .locals 5

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lz2/za0;

    invoke-direct {v2, v1}, Lz2/za0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2, p0}, Lz2/za0;->o000000(Lz2/ua0;)V

    invoke-virtual {p0}, Lz2/ua0;->clearAssociatedData()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v3, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setToDefault(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lz2/ua0;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(J)I
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ab0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ab0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1, p2}, Lz2/ab0;->o0ooOoO(Lz2/ua0;J)I

    move-result p1

    invoke-virtual {p0}, Lz2/ua0;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs updateAll([Ljava/lang/String;)I
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ab0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ab0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1}, Lz2/ab0;->o0Oo0oo(Lz2/ua0;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lz2/ua0;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs updateAllAsync([Ljava/lang/String;)Lz2/hb0;
    .locals 2

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/ua0$OooO0OO;

    invoke-direct {v1, p0, p1, v0}, Lz2/ua0$OooO0OO;-><init>(Lz2/ua0;[Ljava/lang/String;Lz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public updateAsync(J)Lz2/hb0;
    .locals 2

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/ua0$OooO0O0;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/ua0$OooO0O0;-><init>(Lz2/ua0;JLz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method
