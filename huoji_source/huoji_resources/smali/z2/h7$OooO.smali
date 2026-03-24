.class public Lz2/h7$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/mc$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h7;->OooO0o(Lz2/r3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/r3;


# direct methods
.method public constructor <init>(Lz2/r3;)V
    .locals 0

    iput-object p1, p0, Lz2/h7$OooO;->OooO00o:Lz2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lz2/h7;->OooO00o()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRunStatistics --> onCallbackSuc\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {p1, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    iget v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lz2/h7$OooO;->OooO00o:Lz2/r3;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lz2/r3;->OooO00o(Ljava/lang/Object;)V

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iput-object p1, v0, Lz2/m7;->OooOO0:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lz2/h7$OooO;->OooO00o:Lz2/r3;

    invoke-interface {v1, v0}, Lz2/r3;->OooO00o(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    iget v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppContext--onStartScript message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v2, 0x44c

    if-eq v2, v0, :cond_3

    const/16 v2, 0x4b0

    if-eq v2, v0, :cond_3

    const/16 v2, 0x4b1

    if-eq v2, v0, :cond_3

    const/16 v2, 0x4b2

    if-eq v2, v0, :cond_3

    const/16 v2, 0x4b3

    if-eq v2, v0, :cond_3

    const/16 v2, 0x514

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5e0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->Oooo()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-boolean p1, Lz2/ba;->Ooooo0o:Z

    if-eqz p1, :cond_4

    sget-boolean p1, Lz2/ba;->OooooO0:Z

    if-nez p1, :cond_4

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v2, 0x3ed

    invoke-direct {v0, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :cond_4
    sget-boolean p1, Lz2/ba;->Ooooo0o:Z

    if-nez p1, :cond_5

    new-instance p1, Lz2/ba;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lz2/ba;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    new-instance v0, Lz2/h7$OooO$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/h7$OooO$OooO00o;-><init>(Lz2/h7$OooO;Lz2/ba;)V

    invoke-virtual {p1, v0}, Lz2/ba;->OooO0O0(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lz2/ba;->show()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f100197

    invoke-static {p1, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    :goto_1
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->OooOOO()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "EnginSdk"

    const-string v0, "start stop 111"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lz2/h7$OooO;->OooO00o:Lz2/r3;

    invoke-interface {p1, v0}, Lz2/r3;->OooO00o(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f100196

    invoke-static {p1, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    :goto_2
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->Oooo0o0()V

    :cond_8
    :goto_3
    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object p1

    invoke-virtual {p1}, Lz2/mc;->OooO0oO()V

    return-void
.end method

.method public OooO0O0()V
    .locals 0

    invoke-static {}, Lz2/h7;->OooO00o()Ljava/lang/String;

    return-void
.end method
