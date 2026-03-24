.class public Lz2/iw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:Lz2/gw;

.field public OooO0O0:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lz2/gw;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/iw;->OooO00o:Lz2/gw;

    iput-object p2, p0, Lz2/iw;->OooO0O0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/iw;->OooO0Oo()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()Lz2/gw;
    .locals 1

    iget-object v0, p0, Lz2/iw;->OooO00o:Lz2/gw;

    return-object v0
.end method

.method public OooO0OO()Z
    .locals 1

    invoke-virtual {p0}, Lz2/iw;->OooO0Oo()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljunit/framework/AssertionFailedError;

    return v0
.end method

.method public OooO0Oo()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lz2/iw;->OooO0O0:Ljava/lang/Throwable;

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lz2/iw;->OooO0Oo()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz2/iw;->OooO00o:Lz2/gw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/iw;->OooO0O0:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
