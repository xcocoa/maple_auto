.class public Lcom/cyjh/mqm/MQLanguageStub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
    }
.end annotation


# static fields
.field public static final SCRIPT_COMPILECODE_SUCCEED:I = 0x0

.field public static final SCRIPT_RUNCODE_SUCCEED:I = 0x0

.field public static final TYPE:I = 0x2


# instance fields
.field private volatile OooO00o:J

.field private volatile OooO0O0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->OooO00o:J

    iput-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->OooO0O0:J

    return-void
.end method

.method public static native InitAnjianVerification(Ljava/lang/String;)V
.end method

.method public static native InitElf(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native InitHost(Ljava/lang/String;)V
.end method

.method public static native QuitApp()V
.end method

.method public static native SetHeartBeatTime(II)V
.end method

.method public static native SetIsAccessibility(Z)V
.end method

.method public static native SetRegCode(Ljava/lang/String;)V
.end method

.method public static native enginInit()V
.end method


# virtual methods
.method public native Compile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public native Debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public DebugMessage([B)[B
    .locals 0

    invoke-static {}, Lz2/bb;->OooO0O0()[B

    move-result-object p1

    return-object p1
.end method

.method public native InitRunner(Landroid/app/Application;Ljava/lang/String;)V
.end method

.method public native Pause()I
.end method

.method public native Request(Ljava/lang/String;)V
.end method

.method public native Resume()I
.end method

.method public native Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)I
.end method

.method public native Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I
.end method

.method public native Run([BLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native SendFloatEvent([B)V
.end method

.method public native SetDeviceSessionId(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native SetProcess(Ljava/lang/String;)V
.end method

.method public native SetSid(J)V
.end method

.method public native SetWriteLog2File(Z)V
.end method

.method public native Stop()I
.end method

.method public declared-synchronized getGundamRunner()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->OooO00o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRunner()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->OooO0O0:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGundamRunner(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/cyjh/mqm/MQLanguageStub;->OooO00o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRunner(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/cyjh/mqm/MQLanguageStub;->OooO0O0:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native setScreenInfo(FF)V
.end method
