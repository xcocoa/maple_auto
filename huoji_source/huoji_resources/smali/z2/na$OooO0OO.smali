.class public Lz2/na$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/kc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na;->Oooo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/na;


# direct methods
.method public constructor <init>(Lz2/na;)V
    .locals 0

    iput-object p1, p0, Lz2/na$OooO0OO;->OooO00o:Lz2/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 2

    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectStudioSocket IS_SERVICE_START:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/dh;->OooOOO0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/dh;->OooOOO0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->StudioProjectKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0, p1}, Lz2/a4;->Oooo00o(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object p1, p0, Lz2/na$OooO0OO;->OooO00o:Lz2/na;

    invoke-static {p1}, Lz2/na;->OooOo0o(Lz2/na;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 0

    iget p1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->InstanceDataUploadInterval:I

    if-eqz p1, :cond_0

    sput p1, Lz2/g6;->o0OO00O:I

    :cond_0
    return-void
.end method

.method public OooO0OO(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/na$OooO0OO;->OooO00o:Lz2/na;

    invoke-static {p1}, Lz2/na;->OooOo0(Lz2/na;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/na$OooO0OO;->OooO00o:Lz2/na;

    invoke-static {v0}, Lz2/na;->OooOo0(Lz2/na;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
