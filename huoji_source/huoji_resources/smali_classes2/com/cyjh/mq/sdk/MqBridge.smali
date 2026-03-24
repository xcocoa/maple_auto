.class public Lcom/cyjh/mq/sdk/MqBridge;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit()V
    .locals 0

    invoke-static {}, Lz2/ag;->OooO00o()V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V
    .locals 0

    invoke-static {p0, p4, p5, p6}, Lz2/ag;->OooO0O0(Landroid/app/Application;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    invoke-static {p3}, Lz2/ag;->OooO0OO(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lz2/le;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPaddleOcrV2Dir(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lz2/o00O0O00;->OooO0OO:Ljava/lang/String;

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object p0

    iget-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    if-nez v0, :cond_0

    new-instance v0, Lz2/oo0o0O0;

    invoke-direct {v0}, Lz2/oo0o0O0;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    :cond_0
    iget-object p0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    iget-object p0, p0, Lz2/oo0o0O0;->OooO00o:Lz2/oo0oOO0;

    invoke-interface {p0}, Lz2/oo0oOO0;->a()V

    return-void
.end method
