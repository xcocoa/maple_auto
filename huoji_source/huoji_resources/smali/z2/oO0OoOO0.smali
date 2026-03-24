.class public final Lz2/oO0OoOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0O0Oo;


# static fields
.field private static final OooOO0O:Lz2/o2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o2<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO:Lz2/o0O0OOO0;

.field private final OooO0OO:Lz2/oO0OOo0o;

.field private final OooO0Oo:Lz2/o0O0O0Oo;

.field private final OooO0o:I

.field private final OooO0o0:Lz2/o0O0O0Oo;

.field private final OooO0oO:I

.field private final OooO0oo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooOO0:Lz2/o0O0o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o000<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz2/o2;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lz2/o2;-><init>(J)V

    sput-object v0, Lz2/oO0OoOO0;->OooOO0O:Lz2/o2;

    return-void
.end method

.method public constructor <init>(Lz2/oO0OOo0o;Lz2/o0O0O0Oo;Lz2/o0O0O0Oo;IILz2/o0O0o000;Ljava/lang/Class;Lz2/o0O0OOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0OOo0o;",
            "Lz2/o0O0O0Oo;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Lz2/o0O0o000<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0OOO0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0OoOO0;->OooO0OO:Lz2/oO0OOo0o;

    iput-object p2, p0, Lz2/oO0OoOO0;->OooO0Oo:Lz2/o0O0O0Oo;

    iput-object p3, p0, Lz2/oO0OoOO0;->OooO0o0:Lz2/o0O0O0Oo;

    iput p4, p0, Lz2/oO0OoOO0;->OooO0o:I

    iput p5, p0, Lz2/oO0OoOO0;->OooO0oO:I

    iput-object p6, p0, Lz2/oO0OoOO0;->OooOO0:Lz2/o0O0o000;

    iput-object p7, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    iput-object p8, p0, Lz2/oO0OoOO0;->OooO:Lz2/o0O0OOO0;

    return-void
.end method

.method private OooO0OO()[B
    .locals 3

    sget-object v0, Lz2/oO0OoOO0;->OooOO0O:Lz2/o2;

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lz2/o2;->OooOO0O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lz2/o0O0O0Oo;->OooO0O0:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lz2/o2;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/oO0OoOO0;->OooO0OO:Lz2/oO0OOo0o;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lz2/oO0OOo0o;->OooO0OO(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lz2/oO0OoOO0;->OooO0o:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lz2/oO0OoOO0;->OooO0oO:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0o0:Lz2/o0O0O0Oo;

    invoke-interface {v1, p1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0Oo:Lz2/o0O0O0Oo;

    invoke-interface {v1, p1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lz2/oO0OoOO0;->OooOO0:Lz2/o0O0o000;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v1, p0, Lz2/oO0OoOO0;->OooO:Lz2/o0O0OOO0;

    invoke-virtual {v1, p1}, Lz2/o0O0OOO0;->OooO00o(Ljava/security/MessageDigest;)V

    invoke-direct {p0}, Lz2/oO0OoOO0;->OooO0OO()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lz2/oO0OoOO0;->OooO0OO:Lz2/oO0OOo0o;

    invoke-interface {p1, v0}, Lz2/oO0OOo0o;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/oO0OoOO0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO0OoOO0;

    iget v0, p0, Lz2/oO0OoOO0;->OooO0oO:I

    iget v2, p1, Lz2/oO0OoOO0;->OooO0oO:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lz2/oO0OoOO0;->OooO0o:I

    iget v2, p1, Lz2/oO0OoOO0;->OooO0o:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/oO0OoOO0;->OooOO0:Lz2/o0O0o000;

    iget-object v2, p1, Lz2/oO0OoOO0;->OooOO0:Lz2/o0O0o000;

    invoke-static {v0, v2}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    iget-object v2, p1, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0OoOO0;->OooO0Oo:Lz2/o0O0O0Oo;

    iget-object v2, p1, Lz2/oO0OoOO0;->OooO0Oo:Lz2/o0O0O0Oo;

    invoke-interface {v0, v2}, Lz2/o0O0O0Oo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0OoOO0;->OooO0o0:Lz2/o0O0O0Oo;

    iget-object v2, p1, Lz2/oO0OoOO0;->OooO0o0:Lz2/o0O0O0Oo;

    invoke-interface {v0, v2}, Lz2/o0O0O0Oo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0OoOO0;->OooO:Lz2/o0O0OOO0;

    iget-object p1, p1, Lz2/oO0OoOO0;->OooO:Lz2/o0O0OOO0;

    invoke-virtual {v0, p1}, Lz2/o0O0OOO0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lz2/oO0OoOO0;->OooO0Oo:Lz2/o0O0O0Oo;

    invoke-interface {v0}, Lz2/o0O0O0Oo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0o0:Lz2/o0O0O0Oo;

    invoke-interface {v1}, Lz2/o0O0O0Oo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/oO0OoOO0;->OooO0o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/oO0OoOO0;->OooO0oO:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lz2/oO0OoOO0;->OooOO0:Lz2/o0O0o000;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO:Lz2/o0O0OOO0;

    invoke-virtual {v1}, Lz2/o0O0OOO0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0Oo:Lz2/o0O0O0Oo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0o0:Lz2/o0O0O0Oo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO0OoOO0;->OooO0o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO0OoOO0;->OooO0oO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO0oo:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0OoOO0;->OooOO0:Lz2/o0O0o000;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0OoOO0;->OooO:Lz2/o0O0OOO0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
