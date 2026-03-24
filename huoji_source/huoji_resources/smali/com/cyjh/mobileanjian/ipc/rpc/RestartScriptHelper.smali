.class public Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->OooO00o:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNeedRestart()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->OooO00o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setNeedRestart()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->OooO00o:Ljava/lang/Boolean;

    return-void
.end method

.method public static setNeedRestartValue(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->OooO00o:Ljava/lang/Boolean;

    return-void
.end method
