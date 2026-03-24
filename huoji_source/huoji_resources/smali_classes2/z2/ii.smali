.class public Lz2/ii;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static OooO00o:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/hi;->OooO()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/cyjh/elfin/util/IpcSwap;->checkTemplateReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0()V
    .locals 0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    return-void
.end method

.method public static OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz2/vi;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnginSdk --- getScriptModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lz2/si;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz2/vi;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(Landroid/app/Application;)V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/hi;->OooO0Oo(Landroid/app/Application;)V

    sput-object p0, Lz2/ii;->OooO00o:Landroid/app/Application;

    return-void
.end method

.method public static OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lz2/hi;->OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0o0(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ji;)V
    .locals 6

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lz2/hi;->OooO0o0(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ji;)V

    return-void
.end method

.method public static OooO0oO()Z
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/hi;->OooO0oO()Z

    move-result v0

    return v0
.end method

.method public static OooO0oo()Z
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/hi;->OooO0oo()Z

    move-result v0

    return v0
.end method

.method public static OooOO0()V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/hi;->OooOO0()V

    return-void
.end method

.method public static OooOO0O(ZIIII)V
    .locals 6

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lz2/hi;->OooOO0O(ZIIII)V

    return-void
.end method

.method public static OooOO0o(Z)V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/hi;->OooOO0o(Z)V

    return-void
.end method

.method public static OooOOO(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/hi;->OooOOO0(Ljava/lang/String;)V

    return-void
.end method

.method public static OooOOO0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/cyjh/mq/sdk/MqBridge;->setPaddleOcrV2Dir(Ljava/lang/String;)V

    return-void
.end method

.method public static OooOOOO(I)V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/hi;->OooOOO(I)V

    return-void
.end method

.method public static OooOOOo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnginSdk -- setScriptInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Lz2/hi;->OooOOOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooOOo()V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/hi;->OooOOo0()V

    return-void
.end method

.method public static OooOOo0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lz2/hi;->OooOOOo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooOOoo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/cyjh/elfin/util/IpcSwap;->startAppReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0()V
    .locals 1

    invoke-static {}, Lz2/hi;->OooO0OO()Lz2/hi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/hi;->OooOOo()V

    return-void
.end method

.method public static OooOo00(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static OooOo0O(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static OooOo0o()V
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->stopLoop()V

    return-void
.end method
