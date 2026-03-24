.class public Lz2/h7$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/mc$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h7;->OooO0Oo(Lz2/h7$OooOO0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lz2/h7$OooOO0;


# direct methods
.method public constructor <init>(ZLz2/h7$OooOO0;)V
    .locals 0

    iput-boolean p1, p0, Lz2/h7$OooO0OO;->OooO00o:Z

    iput-object p2, p0, Lz2/h7$OooO0OO;->OooO0O0:Lz2/h7$OooOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lz2/h7;->OooO00o()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runScriptOperate --> onCallbackSuc1 -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {v0, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v2, v2, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lz2/m7;->OooOO0(Ljava/lang/String;)V

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v2, v2, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lz2/m7;->OooOO0O(Ljava/lang/String;)V

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/m7;->OooO0oO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v2, v2, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lz2/h7$OooO0OO;->OooO00o:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v2, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-static {v2, v1}, Lz2/y8;->OooO0oO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/y8;->OooO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/y8;->OooOO0()V

    :cond_1
    iget-object v0, p0, Lz2/h7$OooO0OO;->OooO0O0:Lz2/h7$OooOO0;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lz2/h7$OooOO0;->OooO00o(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object p1

    invoke-virtual {p1}, Lz2/mc;->OooO0oO()V

    return-void
.end method

.method public OooO0O0()V
    .locals 1

    invoke-static {}, Lz2/h7;->OooO00o()Ljava/lang/String;

    iget-object v0, p0, Lz2/h7$OooO0OO;->OooO0O0:Lz2/h7$OooOO0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/h7$OooOO0;->OooO0O0()V

    :cond_0
    return-void
.end method
