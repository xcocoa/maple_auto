.class public Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/didi/virtualapk/delegate/RemoteContentProvider;

.field public final synthetic val$auth:Ljava/lang/String;

.field public final synthetic val$pluginManager:Lcom/didi/virtualapk/PluginManager;

.field public final synthetic val$providerInfo:Landroid/content/pm/ProviderInfo;

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/delegate/RemoteContentProvider;Lcom/didi/virtualapk/PluginManager;Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->this$0:Lcom/didi/virtualapk/delegate/RemoteContentProvider;

    iput-object p2, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$pluginManager:Lcom/didi/virtualapk/PluginManager;

    iput-object p3, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$providerInfo:Landroid/content/pm/ProviderInfo;

    iput-object p5, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$auth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$pluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$uri:Landroid/net/Uri;

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    invoke-static {}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;->val$auth:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VA.RemoteContentProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
