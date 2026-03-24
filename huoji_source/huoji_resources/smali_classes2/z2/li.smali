.class public Lz2/li;
.super Lz2/gi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/gi;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .locals 1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cyjh/mq/sdk/MqRunner;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method public OooO0o(ZIIII)V
    .locals 6

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mq/sdk/MqRunnerLite;->setImageCrop(ZIIII)V

    return-void
.end method

.method public OooO0oo(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .locals 1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0oO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    return-void
.end method

.method public OooOOO0(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0oo(Ljava/lang/String;)V

    return-void
.end method
