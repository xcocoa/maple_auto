.class public Lz2/oO00000o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0O0Oo;


# instance fields
.field private final OooO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Ljava/lang/Object;

.field private final OooO0Oo:I

.field private final OooO0o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooO0o0:I

.field private final OooO0oO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooO0oo:Lz2/o0O0O0Oo;

.field private final OooOO0:Lz2/o0O0OOO0;

.field private OooOO0O:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lz2/o0O0O0Oo;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0OOO0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz2/oO00000o;->OooO0OO:Ljava/lang/Object;

    const-string p1, "Signature must not be null"

    invoke-static {p2, p1}, Lz2/r2;->OooO0o0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0O0Oo;

    iput-object p1, p0, Lz2/oO00000o;->OooO0oo:Lz2/o0O0O0Oo;

    iput p3, p0, Lz2/oO00000o;->OooO0Oo:I

    iput p4, p0, Lz2/oO00000o;->OooO0o0:I

    invoke-static {p5}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lz2/oO00000o;->OooO:Ljava/util/Map;

    const-string p1, "Resource class must not be null"

    invoke-static {p6, p1}, Lz2/r2;->OooO0o0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lz2/oO00000o;->OooO0o:Ljava/lang/Class;

    const-string p1, "Transcode class must not be null"

    invoke-static {p7, p1}, Lz2/r2;->OooO0o0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lz2/oO00000o;->OooO0oO:Ljava/lang/Class;

    invoke-static {p8}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0OOO0;

    iput-object p1, p0, Lz2/oO00000o;->OooOO0:Lz2/o0O0OOO0;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/oO00000o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO00000o;

    iget-object v0, p0, Lz2/oO00000o;->OooO0OO:Ljava/lang/Object;

    iget-object v2, p1, Lz2/oO00000o;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO00000o;->OooO0oo:Lz2/o0O0O0Oo;

    iget-object v2, p1, Lz2/oO00000o;->OooO0oo:Lz2/o0O0O0Oo;

    invoke-interface {v0, v2}, Lz2/o0O0O0Oo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lz2/oO00000o;->OooO0o0:I

    iget v2, p1, Lz2/oO00000o;->OooO0o0:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lz2/oO00000o;->OooO0Oo:I

    iget v2, p1, Lz2/oO00000o;->OooO0Oo:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/oO00000o;->OooO:Ljava/util/Map;

    iget-object v2, p1, Lz2/oO00000o;->OooO:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO00000o;->OooO0o:Ljava/lang/Class;

    iget-object v2, p1, Lz2/oO00000o;->OooO0o:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO00000o;->OooO0oO:Ljava/lang/Class;

    iget-object v2, p1, Lz2/oO00000o;->OooO0oO:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO00000o;->OooOO0:Lz2/o0O0OOO0;

    iget-object p1, p1, Lz2/oO00000o;->OooOO0:Lz2/o0O0OOO0;

    invoke-virtual {v0, p1}, Lz2/o0O0OOO0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/oO00000o;->OooOO0O:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/oO00000o;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00000o;->OooO0oo:Lz2/o0O0O0Oo;

    invoke-interface {v1}, Lz2/o0O0O0Oo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/oO00000o;->OooO0Oo:I

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/oO00000o;->OooO0o0:I

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00000o;->OooO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00000o;->OooO0o:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00000o;->OooO0oO:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00000o;->OooOO0:Lz2/o0O0OOO0;

    invoke-virtual {v1}, Lz2/o0O0OOO0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oO00000o;->OooOO0O:I

    :cond_0
    iget v0, p0, Lz2/oO00000o;->OooOO0O:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00000o;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO00000o;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO00000o;->OooO0o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00000o;->OooO0o:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00000o;->OooO0oO:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00000o;->OooO0oo:Lz2/o0O0O0Oo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO00000o;->OooOO0O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00000o;->OooO:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00000o;->OooOO0:Lz2/o0O0OOO0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
