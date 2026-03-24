.class public Lz2/h7$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/mc$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h7;->OooO0OO(Lz2/h7$OooOO0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/h7$OooOO0;


# direct methods
.method public constructor <init>(Lz2/h7$OooOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/h7$OooO0O0;->OooO00o:Lz2/h7$OooOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "runScriptOperate --> \u51c6\u5907\u542f\u52a8\u5f15\u64ce1"

    invoke-static {v0, v1}, Lz2/a5;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runScriptOperate --> onCallbackSuc2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz2/m7;->OooOO0(Ljava/lang/String;)V

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz2/m7;->OooOO0O(Ljava/lang/String;)V

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/m7;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->Oooooo0:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/y8;->OooO0oO(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->Oooooo:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->SecKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/y8;->OooO(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ExpireTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ExpireTime:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz2/q7;->OooOO0o(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    iget p1, p1, Lz2/b7;->OooO0OO:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->Oooo0()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, v1}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    iget p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v0, 0x579

    if-eq p1, v0, :cond_5

    const/16 v0, 0x578

    if-ne v0, p1, :cond_8

    :cond_5
    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lz2/q7;->OooOOO0(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "regCodeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/j3;->OooO0o()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/ae;->OooO0OO(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f100197

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f100196

    :goto_1
    invoke-static {p1, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    :cond_8
    :goto_2
    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object p1

    invoke-virtual {p1}, Lz2/mc;->OooO0oO()V

    iget-object p1, p0, Lz2/h7$OooO0O0;->OooO00o:Lz2/h7$OooOO0;

    if-eqz p1, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lz2/h7$OooOO0;->OooO00o(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public OooO0O0()V
    .locals 2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "runScriptOperate --> \u51c6\u5907\u5de5\u4f5c\u5931\u8d25"

    invoke-static {v0, v1}, Lz2/a5;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/h7$OooO0O0;->OooO00o:Lz2/h7$OooOO0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/h7$OooOO0;->OooO0O0()V

    :cond_0
    return-void
.end method
