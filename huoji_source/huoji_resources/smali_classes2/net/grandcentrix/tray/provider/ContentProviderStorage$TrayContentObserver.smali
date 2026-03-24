.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/tray/provider/ContentProviderStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrayContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Lnet/grandcentrix/tray/provider/ContentProviderStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->access$000(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayUri;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    iget-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-virtual {p2}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    :cond_0
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->access$100(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    iget-object v0, v0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v2, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;

    invoke-direct {v2, p0, v1, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;-><init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;->onTrayPreferenceChanged(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    return-void
.end method
