.class public Lz2/dc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0O0:Ljava/lang/String; = "dc"

.field public static OooO0OO:I = 0x1

.field public static OooO0Oo:I = 0x2

.field public static OooO0o:I = 0x0

.field public static OooO0o0:I = 0x1

.field private static OooO0oO:Lz2/dc;


# instance fields
.field private OooO00o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()Lz2/dc;
    .locals 2

    sget-object v0, Lz2/dc;->OooO0oO:Lz2/dc;

    if-nez v0, :cond_1

    const-class v0, Lz2/dc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/dc;->OooO0oO:Lz2/dc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/dc;

    invoke-direct {v1}, Lz2/dc;-><init>()V

    sput-object v1, Lz2/dc;->OooO0oO:Lz2/dc;

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
    sget-object v0, Lz2/dc;->OooO0oO:Lz2/dc;

    return-object v0
.end method

.method private OooO0OO(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageArr --> packageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private OooO0Oo(Landroid/content/Context;I[Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecognitionResult --> mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    array-length v1, p3

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v5, p3, v0

    invoke-static {p1, v5}, Lz2/ae;->OooOooo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRecognitionResult --> packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isInstall="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget v5, Lz2/dc;->OooO0OO:I

    if-ne p2, v5, :cond_0

    and-int v3, v4, v6

    move v4, v3

    goto :goto_1

    :cond_0
    sget v5, Lz2/dc;->OooO0Oo:I

    if-ne p2, v5, :cond_1

    or-int/2addr v2, v6

    move v3, v2

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    :goto_2
    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    move v0, v3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getRecognitionResult --> result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method


# virtual methods
.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/dc;->OooO00o:I

    return v0
.end method

.method public OooO0o0(Landroid/content/Context;Ljava/util/List;)Lcom/cyjh/http/bean/response/PhoneConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;)",
            "Lcom/cyjh/http/bean/response/PhoneConfig;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/PhoneConfig;

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getJudgeMode()I

    move-result v1

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lz2/dc;->OooO0OO(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lz2/dc;->OooO0Oo(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init --> recognitionResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getCloudPhoneType()I

    move-result p1

    iput p1, p0, Lz2/dc;->OooO00o:I

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getActive()I

    move-result p1

    sget p2, Lz2/dc;->OooO0o:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
