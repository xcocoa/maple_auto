.class public Lz2/h7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/h7$OooOO0;
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "z2.h7"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/h7;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0O0()V
    .locals 5

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lz2/h7$OooO0o;

    invoke-direct {v1}, Lz2/h7$OooO0o;-><init>()V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO(Lz2/mc$OooO0O0;)Lz2/mc;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreStart"

    invoke-virtual {v0, v1, v2, v3, v4}, Lz2/mc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0OO(Lz2/h7$OooOO0;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preStart  --  start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lz2/h7$OooO0O0;

    invoke-direct {v1, p0}, Lz2/h7$OooO0O0;-><init>(Lz2/h7$OooOO0;)V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO(Lz2/mc$OooO0O0;)Lz2/mc;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreStart"

    invoke-virtual {p0, v0, v1, v2, v3}, Lz2/mc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0Oo(Lz2/h7$OooOO0;Z)V
    .locals 3

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lz2/h7$OooO0OO;

    invoke-direct {v1, p1, p0}, Lz2/h7$OooO0OO;-><init>(ZLz2/h7$OooOO0;)V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO(Lz2/mc$OooO0O0;)Lz2/mc;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreStart"

    invoke-virtual {p0, p1, v0, v1, v2}, Lz2/mc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0o(Lz2/r3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lz2/h7$OooO;

    invoke-direct {v1, p0}, Lz2/h7$OooO;-><init>(Lz2/r3;)V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO(Lz2/mc$OooO0O0;)Lz2/mc;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Start"

    invoke-virtual {p0, v0, v1, v2, v3}, Lz2/mc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0o0(Lz2/h7$OooOO0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lz2/h7;->OooO0oo(ZLz2/h7$OooOO0;)V

    return-void
.end method

.method public static OooO0oO(Lz2/mc$OooO00o;)V
    .locals 2

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/mc;->OooOOO0(Lz2/mc$OooO00o;)Lz2/mc;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooOO0:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->RunGuid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lz2/mc;->OooOO0O(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static OooO0oo(ZLz2/h7$OooOO0;)V
    .locals 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lz2/z8;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lz2/a4;->OooOO0O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const/4 v0, 0x1

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    invoke-static {}, Lz2/a4;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    new-instance v1, Lz2/h7$OooO00o;

    invoke-direct {v1, p1}, Lz2/h7$OooO00o;-><init>(Lz2/h7$OooOO0;)V

    invoke-virtual {v0, v1}, Lz2/kc;->OooOo0O(Lz2/kc$OooO00o;)Lz2/kc;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v2}, Lz2/kc;->OooOo(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method
