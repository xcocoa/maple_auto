.class public abstract Lz2/gi;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO(Ljava/lang/String;)V
.end method

.method public abstract OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;
.end method

.method public abstract OooO0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
.end method

.method public OooO0OO()Z
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->isScriptStarted()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo()V
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->pause()V

    return-void
.end method

.method public abstract OooO0o(ZIIII)V
.end method

.method public OooO0o0()V
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->resume()V

    return-void
.end method

.method public OooO0oO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public abstract OooO0oo(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
.end method

.method public OooOO0(Lz2/pg;)V
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setScript(Lz2/pg;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public OooOO0O()V
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->start()V

    return-void
.end method

.method public OooOO0o()V
    .locals 1

    invoke-virtual {p0}, Lz2/gi;->OooO00o()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->stop()V

    return-void
.end method
