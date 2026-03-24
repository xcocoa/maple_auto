.class public final Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:J

.field public final synthetic Ooooo00:Ljava/lang/String;

.field public final synthetic Ooooo0o:Ljava/lang/String;

.field public final synthetic OooooO0:Ljava/lang/String;

.field public final synthetic OooooOO:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OooooOO:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OoooOoO:Ljava/lang/String;

    iput-wide p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OoooOoo:J

    iput-object p5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->Ooooo00:Ljava/lang/String;

    iput-object p6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->Ooooo0o:Ljava/lang/String;

    iput-object p7, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OooooO0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0OO(Z)Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OooooOO:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO00o(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;)Lcom/cyjh/mqm/MQUipStub;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OoooOoO:Ljava/lang/String;

    iget-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OoooOoo:J

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->Ooooo00:Ljava/lang/String;

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->Ooooo0o:Ljava/lang/String;

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;->OooooO0:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/cyjh/mqm/MQUipStub;->StartLoop(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0OO(Z)Z

    return-void
.end method
