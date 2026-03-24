.class public Lz2/oa;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""

# interfaces
.implements Lz2/dd;
.implements Lz2/id;


# static fields
.field private static final OooooOO:Ljava/lang/String; = "z2.oa"


# instance fields
.field private OoooOoO:Lz2/oc;

.field private OoooOoo:Lz2/xc;

.field private Ooooo00:Ljava/lang/String;

.field private Ooooo0o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/BaseResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private OooooO0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/oa;->Ooooo0o:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/oa;->OooooO0:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic OooOo0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/oa;->OooooOO:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooOo00(Lz2/oa;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/oa;->Ooooo00:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic OooOoO0()V
    .locals 2

    new-instance v0, Lz2/oa$OooO0O0;

    invoke-direct {v0, p0}, Lz2/oa$OooO0O0;-><init>(Lz2/oa;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/h7;->OooO0Oo(Lz2/h7$OooOO0;Z)V

    return-void
.end method


# virtual methods
.method public OooO0oo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/oa;->OooooO0:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOOOO(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V
    .locals 3

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lz2/q7;->OooOO0o(J)V

    const-string v0, ""

    iput-object v0, p0, Lz2/oa;->Ooooo00:Ljava/lang/String;

    iget-object v0, p0, Lz2/oa;->Ooooo0o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOOOo(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .locals 1

    iget-object v0, p0, Lz2/oa;->OooooO0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOOoo(Lcom/cyjh/http/bean/response/BindRegCodeResponse;)V
    .locals 9

    iget v0, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    iget-object v0, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Data:Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

    iget-wide v1, v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    iget-wide v3, v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lz2/q7;->OooOO0o(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindSuc --> expireTime="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",serverTimestamp="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",dueTime="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/rb;->OooO00o()Lz2/qb;

    move-result-object v0

    new-instance v3, Lz2/oa$OooO00o;

    invoke-direct {v3, p0}, Lz2/oa$OooO00o;-><init>(Lz2/oa;)V

    invoke-virtual {v0, v3}, Lz2/qb;->OooO00o(Ljava/lang/Runnable;)V

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    iget-object v3, p0, Lz2/oa;->Ooooo00:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lz2/q7;->OooOOO0(Ljava/lang/String;)V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;

    invoke-direct {v3, v1, v2}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;-><init>(J)V

    invoke-virtual {v0, v3}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/oa;->Ooooo0o:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    iget v2, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    iget-object p1, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lz2/ma;

    invoke-direct {v0, p0}, Lz2/ma;-><init>(Lz2/oa;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    iget v1, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    iget-object v2, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lz2/oa;->OooOOOO(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    iget p1, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    const/16 v0, 0x579

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lz2/oa;->Ooooo00:Ljava/lang/String;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lz2/oa;->Ooooo00:Ljava/lang/String;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/q7;->OooOOO0(Ljava/lang/String;)V

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/ii;->OooOOO(Ljava/lang/String;)V

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

    :cond_1
    :goto_0
    return-void
.end method

.method public OooOo()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oa;->OooooO0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public OooOo0O(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lz2/oa;->OoooOoO:Lz2/oc;

    if-nez v0, :cond_0

    new-instance v0, Lz2/oc;

    invoke-direct {v0, p0}, Lz2/oc;-><init>(Lz2/dd;)V

    iput-object v0, p0, Lz2/oa;->OoooOoO:Lz2/oc;

    :cond_0
    iput-object p1, p0, Lz2/oa;->Ooooo00:Ljava/lang/String;

    iget-object v0, p0, Lz2/oa;->OoooOoO:Lz2/oc;

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lz2/oc;->OooO0OO(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public OooOo0o()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/BaseResponseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oa;->Ooooo0o:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic OooOoO()V
    .locals 0

    invoke-direct {p0}, Lz2/oa;->OooOoO0()V

    return-void
.end method

.method public OooOoOO(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/oa;->OoooOoo:Lz2/xc;

    if-nez v0, :cond_0

    new-instance v0, Lz2/xc;

    invoke-direct {v0, p0}, Lz2/xc;-><init>(Lz2/id;)V

    iput-object v0, p0, Lz2/oa;->OoooOoo:Lz2/xc;

    :cond_0
    iget-object v0, p0, Lz2/oa;->OoooOoo:Lz2/xc;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lz2/xc;->OooO0o(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lz2/oa;->OoooOoO:Lz2/oc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/oc;->OooO0o()V

    :cond_0
    iget-object v0, p0, Lz2/oa;->OoooOoo:Lz2/xc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/xc;->OooO0OO()V

    :cond_1
    return-void
.end method
