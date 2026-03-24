.class public Lcom/didi/virtualapk/internal/LoadedPlugin$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

.field public final synthetic val$temp:[Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    aput-object v0, v2, v1

    :goto_0
    return-void
.end method
