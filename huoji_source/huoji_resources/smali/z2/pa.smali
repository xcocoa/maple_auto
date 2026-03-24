.class public Lz2/pa;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/pa$OooO0O0;
    }
.end annotation


# instance fields
.field private OooO00o:Lz2/pa$OooO0O0;

.field private OooO0O0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
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

    iput-object p1, p0, Lz2/pa;->OooO0O0:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public OooOo()V
    .locals 7

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/m7;->OooO0o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/m7;->OooO0oO()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v4

    iget-wide v4, v4, Lz2/b7;->OooO0Oo:J

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v6

    invoke-virtual {v6}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lz2/i7;->Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0}, Lz2/pa;->OooOo00()V

    invoke-static {}, Lz2/n7;->OooO00o()Lz2/n7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/n7;->OooO0OO(Z)V

    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ih;->OooOO0O()V

    const-class v0, Lz2/ja;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public OooOo0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/pa;->OooO0O0:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public OooOo00()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScriptDataManager.getInstance().isUseSdcardScript1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    iget-boolean v1, v1, Lz2/b7;->OooO0O0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public OooOo0O()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/pa;->OooO0O0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public OooOo0o()V
    .locals 1

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o0()V

    const-class v0, Lz2/ja;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public OooOoO0()V
    .locals 2

    new-instance v0, Lz2/pa$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/pa$OooO0O0;-><init>(Lz2/pa;Lz2/pa$OooO00o;)V

    iput-object v0, p0, Lz2/pa;->OooO00o:Lz2/pa$OooO0O0;

    invoke-static {}, Lz2/rb;->OooO00o()Lz2/qb;

    move-result-object v0

    iget-object v1, p0, Lz2/pa;->OooO00o:Lz2/pa$OooO0O0;

    invoke-virtual {v0, v1}, Lz2/qb;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lz2/pa;->OooO00o:Lz2/pa$OooO0O0;

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/rb;->OooO00o()Lz2/qb;

    move-result-object v0

    iget-object v1, p0, Lz2/pa;->OooO00o:Lz2/pa$OooO0O0;

    invoke-virtual {v0, v1}, Lz2/qb;->OooO0OO(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
