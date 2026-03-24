.class public Lz2/bc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/String; = "bc"

.field private static OooO0O0:Lz2/bc;


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

.method public static OooO00o()Lz2/bc;
    .locals 2

    sget-object v0, Lz2/bc;->OooO0O0:Lz2/bc;

    if-nez v0, :cond_1

    const-class v0, Lz2/bc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/bc;->OooO0O0:Lz2/bc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/bc;

    invoke-direct {v1}, Lz2/bc;-><init>()V

    sput-object v1, Lz2/bc;->OooO0O0:Lz2/bc;

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
    sget-object v0, Lz2/bc;->OooO0O0:Lz2/bc;

    return-object v0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 3

    const-string v0, "getprop phone.id"

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    iget-object v0, v0, Lz2/y4$OooO00o;->OooO0O0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
