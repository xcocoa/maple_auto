.class public interface abstract Lcom/cyjh/mq/sdk/inf/IRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/sg;


# static fields
.field public static final START_ENIGINE_TIME_OUT_MILLIS:I = 0x4e20


# virtual methods
.method public abstract isScriptStarted()Z
.end method

.method public abstract notifyRotationStatus()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;
.end method

.method public abstract setScript(Lz2/pg;)Lcom/cyjh/mq/sdk/inf/IRunner;
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
