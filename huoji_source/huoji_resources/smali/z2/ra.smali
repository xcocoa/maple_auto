.class public Lz2/ra;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""

# interfaces
.implements Lz2/kd;


# instance fields
.field private OoooOoO:Lz2/yc;

.field private OoooOoo:Ljava/lang/String;

.field private Ooooo00:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/ra;->Ooooo00:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public OooO(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .locals 5

    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/ra;->OoooOoo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;-><init>(J)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    new-instance v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->status:I

    iget-object v1, p0, Lz2/ra;->OoooOoo:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regCodeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/j3;->OooO0o()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lz2/ae;->Oooo0o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lz2/ra;->Ooooo00:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0Oo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/ra;->Ooooo00:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOo0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/ra;->OoooOoO:Lz2/yc;

    if-nez v0, :cond_0

    new-instance v0, Lz2/yc;

    invoke-direct {v0, p0}, Lz2/yc;-><init>(Lz2/kd;)V

    iput-object v0, p0, Lz2/ra;->OoooOoO:Lz2/yc;

    :cond_0
    iput-object p1, p0, Lz2/ra;->OoooOoo:Ljava/lang/String;

    iget-object v0, p0, Lz2/ra;->OoooOoO:Lz2/yc;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lz2/yc;->OooO0o(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public OooOo00()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ra;->Ooooo00:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lz2/ra;->OoooOoO:Lz2/yc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/yc;->OooO0OO()V

    :cond_0
    return-void
.end method
