.class public Lz2/c90$OooO0OO;
.super Lz2/c90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c90;->OooO0OO(Lz2/c90;)Lz2/c90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0O0:Lz2/c90;

.field public final synthetic OooO0OO:Lz2/c90;

.field public final synthetic OooO0Oo:Lz2/c90;


# direct methods
.method public constructor <init>(Lz2/c90;Lz2/c90;Lz2/c90;)V
    .locals 0

    iput-object p1, p0, Lz2/c90$OooO0OO;->OooO0Oo:Lz2/c90;

    iput-object p2, p0, Lz2/c90$OooO0OO;->OooO0O0:Lz2/c90;

    iput-object p3, p0, Lz2/c90$OooO0OO;->OooO0OO:Lz2/c90;

    invoke-direct {p0}, Lz2/c90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz2/c90$OooO0OO;->OooO0O0:Lz2/c90;

    invoke-virtual {v1}, Lz2/c90;->OooO0O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/c90$OooO0OO;->OooO0OO:Lz2/c90;

    invoke-virtual {v1}, Lz2/c90;->OooO0O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0(Lorg/junit/runner/Description;)Z
    .locals 1

    iget-object v0, p0, Lz2/c90$OooO0OO;->OooO0O0:Lz2/c90;

    invoke-virtual {v0, p1}, Lz2/c90;->OooO0o0(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/c90$OooO0OO;->OooO0OO:Lz2/c90;

    invoke-virtual {v0, p1}, Lz2/c90;->OooO0o0(Lorg/junit/runner/Description;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
