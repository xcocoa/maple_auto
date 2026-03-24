.class public Lz2/a50;
.super Lz2/y40;
.source ""


# instance fields
.field private final OooO0Oo:I

.field private final OooO0o:Ljava/lang/Object;

.field private final OooO0o0:Lorg/jdeferred/Promise;


# direct methods
.method public constructor <init>(IIIILorg/jdeferred/Promise;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/y40;-><init>(III)V

    iput p4, p0, Lz2/a50;->OooO0Oo:I

    iput-object p5, p0, Lz2/a50;->OooO0o0:Lorg/jdeferred/Promise;

    iput-object p6, p0, Lz2/a50;->OooO0o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/a50;->OooO0Oo:I

    return v0
.end method

.method public OooO0o()Lorg/jdeferred/Promise;
    .locals 1

    iget-object v0, p0, Lz2/a50;->OooO0o0:Lorg/jdeferred/Promise;

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/a50;->OooO0o:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneProgress [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/a50;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", promise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/a50;->OooO0o0:Lorg/jdeferred/Promise;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/a50;->OooO0o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getDone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/y40;->OooO00o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFail()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/y40;->OooO0O0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getTotal()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/y40;->OooO0OO()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
