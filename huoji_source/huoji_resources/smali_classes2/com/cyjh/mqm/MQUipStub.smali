.class public Lcom/cyjh/mqm/MQUipStub;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native StartLoop(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native StartLoop([BJ)I
.end method

.method public native StopLoop()Z
.end method
