.class public Lz2/fc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0O0:Ljava/lang/String; = "fc"

.field private static OooO0OO:Lz2/fc;


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

.method public static OooO00o()Lz2/fc;
    .locals 2

    sget-object v0, Lz2/fc;->OooO0OO:Lz2/fc;

    if-nez v0, :cond_1

    const-class v0, Lz2/fc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/fc;->OooO0OO:Lz2/fc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/fc;

    invoke-direct {v1}, Lz2/fc;-><init>()V

    sput-object v1, Lz2/fc;->OooO0OO:Lz2/fc;

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
    sget-object v0, Lz2/fc;->OooO0OO:Lz2/fc;

    return-object v0
.end method


# virtual methods
.method public OooO0O0(I)Lz2/fc;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init --> redFingerSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput p1, p0, Lz2/fc;->OooO00o:I

    return-object p0
.end method

.method public OooO0OO(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.redfinger.appstore"

    invoke-static {p1, v0}, Lz2/ae;->OooOooo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lz2/fc;->OooO00o:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
