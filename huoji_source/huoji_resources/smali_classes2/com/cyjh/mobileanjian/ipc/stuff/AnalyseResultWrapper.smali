.class public Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Landroid/content/Context;

.field private static OooO0O0:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$OooO00o;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$OooO00o;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->OooO0O0:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->OooO00o:Landroid/content/Context;

    return-object v0
.end method

.method private static OooO0O0(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->OooO0O0:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "status"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
