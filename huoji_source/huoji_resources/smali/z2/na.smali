.class public Lz2/na;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""

# interfaces
.implements Lz2/hd;


# static fields
.field private static final Ooooooo:Ljava/lang/String; = "z2.na"

.field public static final o00O0O:I = 0x3f0

.field public static final o0OoOo0:I = 0x3ee

.field public static final ooOO:I = 0x3ef


# instance fields
.field private OoooOoO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private OoooOoo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo0o:Ljava/util/concurrent/ScheduledExecutorService;

.field private OooooO0:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private OooooOO:Lz2/wc;

.field private OooooOo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/VersionUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private Oooooo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Oooooo0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private OoooooO:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
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
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/na;->Ooooo00:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lz2/na;->Ooooo0o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/na;->OooooOo:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/na;->Oooooo0:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/na;->Oooooo:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/na;->OoooooO:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lz2/wc;

    invoke-direct {p1, p0}, Lz2/wc;-><init>(Lz2/hd;)V

    iput-object p1, p0, Lz2/na;->OooooOO:Lz2/wc;

    return-void
.end method

.method public static synthetic OooOo(Lz2/na;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/na;->Oooo00o(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic OooOo0(Lz2/na;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lz2/na;->OooooOo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic OooOo00(Lz2/na;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/na;->Oooo0oO(J)V

    return-void
.end method

.method public static synthetic OooOo0O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/na;->Ooooooo:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooOo0o(Lz2/na;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lz2/na;->Oooooo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic OooOoO0(Lz2/na;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lz2/na;->OoooooO:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private Oooo(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lz2/z8;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVersionRequest --> 1 ScriptId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    new-instance v1, Lz2/na$OooO0OO;

    invoke-direct {v1, p0}, Lz2/na$OooO0OO;-><init>(Lz2/na;)V

    invoke-virtual {v0, v1}, Lz2/kc;->OooOo0O(Lz2/kc$OooO00o;)Lz2/kc;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lz2/kc;->OooOo(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method private Oooo0()V
    .locals 3

    iget-object v0, p0, Lz2/na;->Oooooo0:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "red_dot_flag"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lz2/k6;->OooO0Oo()Lz2/k6;

    move-result-object v0

    iget-object v1, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lz2/k6;->OooO0o0(Ljava/util/List;)V

    return-void
.end method

.method private Oooo00o(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lz2/na;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/NotifyMsgBean;

    iget-object v1, p0, Lz2/na;->Ooooo00:Ljava/util/List;

    iget-object v0, v0, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Oooo0oO(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/na;->OooooO0:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/na;->OooooO0:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x48a8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-object v0, p0, Lz2/na;->Ooooo0o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lz2/na$OooO0O0;

    invoke-direct {v1, p0}, Lz2/na$OooO0O0;-><init>(Lz2/na;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lz2/na;->OooooO0:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public OooO0o0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lz2/na;->Ooooo00:Ljava/util/List;

    iget-object v0, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/NotifyMsgBean;

    iget-object v0, v0, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    iget-object v0, p0, Lz2/na;->OoooOoo:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0}, Lz2/na;->Oooo0()V

    :cond_0
    return-void
.end method

.method public OooOoO()V
    .locals 2

    iget-object v0, p0, Lz2/na;->OoooooO:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v0, Lz2/na$OooOO0;

    invoke-direct {v0, p0}, Lz2/na$OooOO0;-><init>(Lz2/na;)V

    invoke-static {v0}, Lz2/h7;->OooO0o(Lz2/r3;)V

    return-void
.end method

.method public OooOoOO()V
    .locals 1

    iget-object v0, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lz2/k6;->OooO0Oo()Lz2/k6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/k6;->OooO0OO()V

    return-void
.end method

.method public OooOoo()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->Oooooo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public OooOoo0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->OoooooO:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public OooOooO()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->OoooOoO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public OooOooo()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->Oooooo0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public Oooo000()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/VersionUpdateInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/na;->OooooOo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public Oooo00O()V
    .locals 2

    iget-object v0, p0, Lz2/na;->OooooOO:Lz2/wc;

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/wc;->OooO0OO(Landroid/content/Context;)V

    return-void
.end method

.method public Oooo0O0()V
    .locals 2

    invoke-static {}, Lz2/k6;->OooO0Oo()Lz2/k6;

    move-result-object v0

    new-instance v1, Lz2/na$OooO0o;

    invoke-direct {v1, p0}, Lz2/na$OooO0o;-><init>(Lz2/na;)V

    invoke-virtual {v0, v1}, Lz2/k6;->OooO0o(Lz2/r3;)V

    return-void
.end method

.method public Oooo0OO()V
    .locals 2

    invoke-static {}, Lz2/rb;->OooO00o()Lz2/qb;

    move-result-object v0

    new-instance v1, Lz2/na$OooO;

    invoke-direct {v1, p0}, Lz2/na$OooO;-><init>(Lz2/na;)V

    invoke-virtual {v0, v1}, Lz2/qb;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Oooo0o()V
    .locals 2

    invoke-static {}, Lz2/rb;->OooO00o()Lz2/qb;

    move-result-object v0

    new-instance v1, Lz2/na$OooO00o;

    invoke-direct {v1, p0}, Lz2/na$OooO00o;-><init>(Lz2/na;)V

    invoke-virtual {v0, v1}, Lz2/qb;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Oooo0o0()V
    .locals 0

    return-void
.end method

.method public Oooo0oo()V
    .locals 6

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lz2/mc;->OooO(Landroid/content/Context;IIJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v4, "yyyy-MM-dd"

    invoke-static {v0, v1, v4}, Lz2/ae;->Oooo0(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz2/ae;->Oooo0O0(Ljava/lang/String;)J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    invoke-direct {p0, v4, v5}, Lz2/na;->Oooo0oO(J)V

    return-void
.end method

.method public OoooO00()V
    .locals 2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/na;->Oooo(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u65e0\u6cd5\u8bbf\u95ee\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u2026\u2026"

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lz2/na;->OooooOO:Lz2/wc;

    invoke-virtual {v0}, Lz2/wc;->OooO0o()V

    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kc;->OooOo0()V

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/mc;->OooO0o()V

    iget-object v0, p0, Lz2/na;->OooooO0:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
