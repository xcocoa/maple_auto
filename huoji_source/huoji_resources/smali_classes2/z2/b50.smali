.class public Lz2/b50;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:Lorg/jdeferred/Promise;

.field private final OooO0OO:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILorg/jdeferred/Promise;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/b50;->OooO00o:I

    iput-object p2, p0, Lz2/b50;->OooO0O0:Lorg/jdeferred/Promise;

    iput-object p3, p0, Lz2/b50;->OooO0OO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget v0, p0, Lz2/b50;->OooO00o:I

    return v0
.end method

.method public OooO0O0()Lorg/jdeferred/Promise;
    .locals 1

    iget-object v0, p0, Lz2/b50;->OooO0O0:Lorg/jdeferred/Promise;

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/b50;->OooO0OO:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneReject [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/b50;->OooO00o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", promise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/b50;->OooO0O0:Lorg/jdeferred/Promise;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/b50;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
