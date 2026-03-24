.class public Lcom/cyjh/common/util/toast/ThreadUtils$UtilsThreadFactory$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/ThreadUtils$UtilsThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/common/util/toast/ThreadUtils$UtilsThreadFactory;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/util/toast/ThreadUtils$UtilsThreadFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/util/toast/ThreadUtils$UtilsThreadFactory$OooO0O0;->OooO00o:Lcom/cyjh/common/util/toast/ThreadUtils$UtilsThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
