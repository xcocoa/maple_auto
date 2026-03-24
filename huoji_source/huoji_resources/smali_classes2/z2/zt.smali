.class public Lz2/zt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0OO:Lz2/zt;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Lz2/du;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooOO0()Lz2/zt;
    .locals 2

    sget-object v0, Lz2/zt;->OooO0OO:Lz2/zt;

    if-nez v0, :cond_1

    const-class v0, Lz2/zt;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/zt;->OooO0OO:Lz2/zt;

    if-nez v1, :cond_0

    new-instance v1, Lz2/zt;

    invoke-direct {v1}, Lz2/zt;-><init>()V

    sput-object v1, Lz2/zt;->OooO0OO:Lz2/zt;

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
    sget-object v0, Lz2/zt;->OooO0OO:Lz2/zt;

    return-object v0
.end method


# virtual methods
.method public OooO()V
    .locals 2

    iget-object v0, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string v1, "stop_service_operate"

    invoke-static {v0, v1}, Lz2/iu;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public OooO00o(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdRenameDeviceNameCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdRenameDeviceNameResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_rename_device_name_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooO0O0(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScreenCaptureCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScreenCaptureResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_screen_capture_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooO0OO(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptSettingsCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptSettingsResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_script_settings_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooO0Oo(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptStartCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptStartResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_script_start_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooO0o(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p2}, Lz2/zt;->OooO0oO(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OooO0o0(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptStopCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptStopResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_script_stop_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooO0oO(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p3}, Lcom/hlzn/socketclient/bean/ServiceParam;->setScriptId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptUpgradeCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdScriptUpgradeResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_script_upgrade_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooO0oo(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdUnBindStudioProjectCode(I)V

    invoke-virtual {v0, p2}, Lcom/hlzn/socketclient/bean/ServiceParam;->setCmdUnBindStudioProjectResult(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string p2, "cmd_unbind_studio_project_success_operate"

    invoke-static {p1, p2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method public OooOO0O()Lz2/du;
    .locals 1

    iget-object v0, p0, Lz2/zt;->OooO0O0:Lz2/du;

    return-object v0
.end method

.method public OooOO0o(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    return-void
.end method

.method public OooOOO()V
    .locals 3

    sget-boolean v0, Lz2/bu;->OooOo0O:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setScriptRunning(Z)V

    iget-object v1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string v2, "script_stop_operate"

    invoke-static {v1, v2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    :cond_0
    return-void
.end method

.method public OooOOO0()V
    .locals 3

    sget-boolean v0, Lz2/bu;->OooOo0O:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->setScriptRunning(Z)V

    iget-object v1, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string v2, "script_start_operate"

    invoke-static {v1, v2, v0}, Lz2/iu;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    :cond_0
    return-void
.end method

.method public OooOOOO()V
    .locals 2

    iget-object v0, p0, Lz2/zt;->OooO00o:Landroid/content/Context;

    const-string v1, "send_heart_operate"

    invoke-static {v0, v1}, Lz2/iu;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public OooOOOo(Lz2/du;)V
    .locals 0

    iput-object p1, p0, Lz2/zt;->OooO0O0:Lz2/du;

    return-void
.end method
