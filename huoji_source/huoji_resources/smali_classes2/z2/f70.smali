.class public Lz2/f70;
.super Lz2/w20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Lz2/w20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final Ooooo00:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/r20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/w20;-><init>()V

    iput-object p1, p0, Lz2/f70;->Ooooo00:Lz2/r20;

    return-void
.end method

.method public static OooO0oO(Lz2/r20;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Lz2/r20<",
            "TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/f70;

    invoke-direct {v0, p0}, Lz2/f70;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method public static OooO0oo(Lz2/r20;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lz2/r20<",
            "TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/f70;

    invoke-direct {v0, p0}, Lz2/f70;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method private OooOO0(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/f70;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic OooO0Oo(Ljava/lang/Object;Lz2/n20;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lz2/f70;->OooO0o(Ljava/lang/Throwable;Lz2/n20;)V

    return-void
.end method

.method public OooO0o(Ljava/lang/Throwable;Lz2/n20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/n20;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lz2/f70;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const-string v0, "\nStacktrace was: "

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    invoke-direct {p0, p1}, Lz2/f70;->OooOO0(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    return-void
.end method

.method public bridge synthetic OooO0o0(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lz2/f70;->OooO(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/f70;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1}, Lz2/t20;->describeTo(Lz2/n20;)V

    return-void
.end method
