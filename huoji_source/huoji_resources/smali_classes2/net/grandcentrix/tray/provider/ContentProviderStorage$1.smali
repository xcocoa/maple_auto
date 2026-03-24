.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/tray/provider/ContentProviderStorage;->registerOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 5

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    new-instance v1, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    iget-object v2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2, v3}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;-><init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Landroid/os/Handler;)V

    iput-object v1, v0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->access$000(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayUri;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-virtual {v1}, Lnet/grandcentrix/tray/core/TrayStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-virtual {v1}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {v1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->access$200(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    iget-object v2, v2, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;->this$0:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {v0, v3}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->access$302(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Z)Z

    return-void
.end method
