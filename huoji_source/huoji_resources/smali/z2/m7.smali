.class public Lz2/m7;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooOOOO:Lz2/m7;


# instance fields
.field public OooO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO00o:Lcom/cyjh/elfin/base/AppContext;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o0:Ljava/lang/String;

.field public OooO0oO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/FlySettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/RecommendSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

.field private OooOO0O:Ljava/lang/String;

.field private OooOO0o:Ljava/lang/String;

.field private OooOOO:Ljava/lang/String;

.field public OooOOO0:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OooO00o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/m7;->OooO0oO:Ljava/util/List;

    iput-object v0, p0, Lz2/m7;->OooO:Ljava/util/List;

    iput-object v0, p0, Lz2/m7;->OooO0oo:Ljava/util/List;

    return-void
.end method

.method public static OooO0o0()Lz2/m7;
    .locals 2

    sget-object v0, Lz2/m7;->OooOOOO:Lz2/m7;

    if-nez v0, :cond_1

    const-class v0, Lz2/m7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/m7;->OooOOOO:Lz2/m7;

    if-nez v1, :cond_0

    new-instance v1, Lz2/m7;

    invoke-direct {v1}, Lz2/m7;-><init>()V

    sput-object v1, Lz2/m7;->OooOOOO:Lz2/m7;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/m7;->OooOOOO:Lz2/m7;

    return-object v0
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/m7;->OooOOO:Ljava/lang/String;

    return-void
.end method

.method public OooO0O0()V
    .locals 1

    invoke-direct {p0}, Lz2/m7;->OooO00o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/m7;->OooO00o:Lcom/cyjh/elfin/base/AppContext;

    sput-object v0, Lz2/m7;->OooOOOO:Lz2/m7;

    return-void
.end method

.method public OooO0OO()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/m7;->OooO0o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/m7;->OooO0oO:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/m7;->OooO0oo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/m7;->OooO:Ljava/util/List;

    return-void
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/m7;->OooOOO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/m7;->OooOO0O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/m7;->OooOO0O:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/m7;->OooOO0o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/m7;->OooOO0o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0oo(Lcom/cyjh/elfin/base/AppContext;)V
    .locals 0

    iput-object p1, p0, Lz2/m7;->OooO00o:Lcom/cyjh/elfin/base/AppContext;

    return-void
.end method

.method public OooOO0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/m7;->OooOO0O:Ljava/lang/String;

    return-void
.end method

.method public OooOO0O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/m7;->OooOO0o:Ljava/lang/String;

    return-void
.end method
