.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage;
.super Lnet/grandcentrix/tray/core/TrayStorage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mListeners:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public mObserverThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

.field private volatile mRegisteredContentObserver:Z

.field private final mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lnet/grandcentrix/tray/core/TrayStorage$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3}, Lnet/grandcentrix/tray/core/TrayStorage;-><init>(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    new-instance p2, Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-direct {p2, p1}, Lnet/grandcentrix/tray/provider/TrayUri;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    new-instance p2, Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-direct {p2, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    return-void
.end method

.method public static synthetic access$000(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayUri;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    return-object p0
.end method

.method public static synthetic access$100(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayProviderHelper;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    return-object p0
.end method

.method public static synthetic access$200(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$302(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z

    return p1
.end method


# virtual methods
.method public annex(Lnet/grandcentrix/tray/core/TrayStorage;)V
    .locals 2

    invoke-interface {p1}, Lnet/grandcentrix/tray/core/PreferenceStorage;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/grandcentrix/tray/core/TrayItem;

    invoke-virtual {p0, v1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Lnet/grandcentrix/tray/core/TrayItem;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/grandcentrix/tray/core/PreferenceStorage;->wipe()Z

    return-void
.end method

.method public clear()Z
    .locals 2

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->remove(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->get(Ljava/lang/String;)Lnet/grandcentrix/tray/core/TrayItem;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lnet/grandcentrix/tray/core/TrayItem;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found more than one item for key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in module "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". This can be caused by using the same name for a device and user specific preference."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/grandcentrix/tray/core/TrayItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/grandcentrix/tray/core/TrayLog;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/tray/core/TrayItem;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getAll()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/grandcentrix/tray/core/TrayItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/TrayException;
        }
    .end annotation

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProvider(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayItem;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/core/TrayItem;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lnet/grandcentrix/tray/core/TrayItem;

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Lnet/grandcentrix/tray/core/TrayItem;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v0

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq v0, v1, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0, p1, p3, p2}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lnet/grandcentrix/tray/core/TrayRuntimeException;

    const-string p2, "writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed."

    invoke-direct {p1, p2}, Lnet/grandcentrix/tray/core/TrayRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Lnet/grandcentrix/tray/core/TrayItem;)Z
    .locals 2

    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayItem;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayItem;->migratedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayItem;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized registerOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .locals 2
    .param p1    # Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    new-instance p1, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;

    const-string v0, "observer"

    invoke-direct {p1, p0, v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;-><init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->removeAndCount(Landroid/net/Uri;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null is not valid. use clear or wipe to delete all preferences"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVersion(I)Z
    .locals 2

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v0

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lnet/grandcentrix/tray/core/TrayRuntimeException;

    const-string v0, "writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed."

    invoke-direct {p1, v0}, Lnet/grandcentrix/tray/core/TrayRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .locals 1
    .param p1    # Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserverThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public wipe()Z
    .locals 2

    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->clear()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->remove(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
