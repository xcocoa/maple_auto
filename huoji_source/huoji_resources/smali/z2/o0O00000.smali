.class public abstract Lz2/o0O00000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lz2/o0O00000<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private OoooOoO:Lz2/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/y1<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lz2/w1;->OooO0OO()Lz2/y1;

    move-result-object v0

    iput-object v0, p0, Lz2/o0O00000;->OoooOoO:Lz2/y1;

    return-void
.end method

.method private OooO0Oo()Lz2/o0O00000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final OooO00o()Lz2/o0O00000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00000;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final OooO0O0()Lz2/o0O00000;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {}, Lz2/w1;->OooO0OO()Lz2/y1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/o0O00000;->OooO0o(Lz2/y1;)Lz2/o0O00000;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0OO()Lz2/y1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/y1<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00000;->OoooOoO:Lz2/y1;

    return-object v0
.end method

.method public final OooO0o(Lz2/y1;)Lz2/o0O00000;
    .locals 0
    .param p1    # Lz2/y1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y1<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/y1;

    iput-object p1, p0, Lz2/o0O00000;->OoooOoO:Lz2/y1;

    invoke-direct {p0}, Lz2/o0O00000;->OooO0Oo()Lz2/o0O00000;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0o0(I)Lz2/o0O00000;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lz2/z1;

    invoke-direct {v0, p1}, Lz2/z1;-><init>(I)V

    invoke-virtual {p0, v0}, Lz2/o0O00000;->OooO0o(Lz2/y1;)Lz2/o0O00000;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0oO(Lz2/b2$OooO00o;)Lz2/o0O00000;
    .locals 1
    .param p1    # Lz2/b2$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/b2$OooO00o;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lz2/a2;

    invoke-direct {v0, p1}, Lz2/a2;-><init>(Lz2/b2$OooO00o;)V

    invoke-virtual {p0, v0}, Lz2/o0O00000;->OooO0o(Lz2/y1;)Lz2/o0O00000;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o0O00000;->OooO00o()Lz2/o0O00000;

    move-result-object v0

    return-object v0
.end method
