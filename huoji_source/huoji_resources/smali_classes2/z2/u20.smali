.class public Lz2/u20;
.super Lz2/h20;
.source ""


# instance fields
.field private final OooO0O0:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lz2/u20;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    invoke-direct {p0}, Lz2/h20;-><init>()V

    iput-object p1, p0, Lz2/u20;->OooO0O0:Ljava/lang/Appendable;

    return-void
.end method

.method public static OooOOO(Lz2/t20;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lz2/u20;->OooOOOO(Lz2/t20;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOOO(Lz2/t20;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lz2/u20;

    invoke-direct {v0}, Lz2/u20;-><init>()V

    invoke-virtual {v0, p0}, Lz2/h20;->OooO0O0(Lz2/t20;)Lz2/n20;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO0oO(C)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz2/u20;->OooO0O0:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not write description"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz2/u20;->OooO0O0:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not write description"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/u20;->OooO0O0:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
