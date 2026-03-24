.class public Lz2/h60$OooO0O0;
.super Lorg/junit/experimental/theories/PotentialAssignment;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/h60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:Lz2/s90;


# direct methods
.method private constructor <init>(Lz2/s90;)V
    .locals 0

    invoke-direct {p0}, Lorg/junit/experimental/theories/PotentialAssignment;-><init>()V

    iput-object p1, p0, Lz2/h60$OooO0O0;->OooO00o:Lz2/s90;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/s90;Lz2/h60$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/h60$OooO0O0;-><init>(Lz2/s90;)V

    return-void
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    iget-object v0, p0, Lz2/h60$OooO0O0;->OooO00o:Lz2/s90;

    invoke-virtual {v0}, Lz2/s90;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/h60$OooO0O0;->OooO00o:Lz2/s90;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lz2/s90;->OooOOOO(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lz2/h60$OooO0O0;->OooO00o:Lz2/s90;

    const-class v3, Lz2/z50;

    invoke-virtual {v2, v3}, Lz2/s90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lz2/z50;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lz2/z50;->ignoredExceptions()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lz2/h60;->OooO0O0([Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lz2/g50;->OooO(Z)V

    new-instance v0, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;

    invoke-direct {v0, v1}, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected: getMethods returned an inaccessible method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected: argument length is checked"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
