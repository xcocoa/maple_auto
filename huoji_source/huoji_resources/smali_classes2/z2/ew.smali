.class public Lz2/ew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/gw;
.implements Lz2/w80;


# instance fields
.field private final OooO00o:Lorg/junit/runner/Description;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ew;->OooO00o:Lorg/junit/runner/Description;

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO0O0(Lz2/kw;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This test stub created only for informational purposes."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    iget-object v0, p0, Lz2/ew;->OooO00o:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/ew;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
