.class public Lcom/didi/virtualapk/delegate/LocalService;
.super Landroid/app/Service;
.source ""


# static fields
.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field public static final EXTRA_COMMAND_BIND_SERVICE:I = 0x3

.field public static final EXTRA_COMMAND_START_SERVICE:I = 0x1

.field public static final EXTRA_COMMAND_STOP_SERVICE:I = 0x2

.field public static final EXTRA_COMMAND_UNBIND_SERVICE:I = 0x4

.field public static final EXTRA_PLUGIN_LOCATION:Ljava/lang/String; = "plugin_location"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "target"

.field private static final TAG:Ljava/lang/String; = "VA.LocalService"


# instance fields
.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v0, Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    const-string v5, "target"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "command"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v5, :cond_c

    if-gtz v6, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v9, v8}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v9

    const-string v10, "VA.LocalService"

    if-nez v9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error target: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v11, "attach"

    const/4 v13, 0x6

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v12, 0x2

    if-eq v6, v4, :cond_a

    const-string v4, ": "

    const-string v7, " not found"

    if-eq v6, v12, :cond_8

    if-eq v6, v15, :cond_5

    if-eq v6, v14, :cond_3

    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_3
    iget-object v0, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    iget-object v7, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v0, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    new-array v12, v13, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v17, v12, v16

    const-class v17, Landroid/app/ActivityThread;

    const/16 v18, 0x1

    aput-object v17, v12, v18

    const/16 v17, 0x2

    aput-object v3, v12, v17

    const-class v3, Landroid/os/IBinder;

    const/16 v17, 0x3

    aput-object v3, v12, v17

    const-class v3, Landroid/app/Application;

    const/16 v17, 0x4

    aput-object v3, v12, v17

    const/4 v3, 0x5

    aput-object v0, v12, v3

    invoke-virtual {v15, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v3

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v4, v11, v9

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v11, v9

    const/4 v4, 0x3

    aput-object v6, v11, v4

    const/4 v4, 0x4

    aput-object v14, v11, v4

    const/4 v4, 0x5

    aput-object v3, v11, v4

    invoke-virtual {v0, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/app/Service;->onCreate()V

    iget-object v0, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_1
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v0, v7

    :goto_3
    :try_start_3
    invoke-virtual {v0, v5}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sc"

    invoke-static {v2, v3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_7

    const/4 v3, 0x0

    invoke-interface {v2, v8, v0, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    const-string v3, "connected"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-class v4, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v2, v3, v5}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    iget-object v0, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_9

    :try_start_4
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop service "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    iget-object v6, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v6}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v0, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v0

    goto :goto_6

    :cond_b
    :try_start_5
    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Service;

    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v14, v12, v15

    const-class v14, Landroid/app/ActivityThread;

    const/4 v15, 0x1

    aput-object v14, v12, v15

    const/4 v14, 0x2

    aput-object v3, v12, v14

    const-class v3, Landroid/os/IBinder;

    const/4 v14, 0x3

    aput-object v3, v12, v14

    const-class v3, Landroid/app/Application;

    const/4 v14, 0x4

    aput-object v3, v12, v14

    const/4 v3, 0x5

    aput-object v0, v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v3

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    aput-object v2, v10, v9

    const/4 v2, 0x3

    aput-object v4, v10, v2

    const/4 v2, 0x4

    aput-object v7, v10, v2

    const/4 v2, 0x5

    aput-object v3, v10, v2

    invoke-virtual {v0, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/app/Service;->onCreate()V

    iget-object v0, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v6

    :goto_6
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3, v2}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    goto/16 :goto_0

    :goto_7
    return v2

    :catchall_2
    const/4 v2, 0x1

    return v2

    :cond_c
    :goto_8
    const/4 v2, 0x1

    return v2

    :cond_d
    :goto_9
    const/4 v2, 0x1

    return v2
.end method
