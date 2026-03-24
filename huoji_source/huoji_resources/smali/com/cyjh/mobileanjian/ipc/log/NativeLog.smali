.class public Lcom/cyjh/mobileanjian/ipc/log/NativeLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->OooO00o:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLog(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->OooO00o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->OooO00o:Ljava/lang/StringBuffer;

    const-string v1, "@_@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->OooO00o:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getExtraLog()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->OooO00o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->OooO00o:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method
