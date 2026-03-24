.class public final Lz2/oO00O0oO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00OOOo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO00O0oO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO00O0oO$OooO0O0;

.field public OooO0O0:I

.field private OooO0OO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO00O0oO$OooO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO00O0oO$OooO00o;->OooO00o:Lz2/oO00O0oO$OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/oO00O0oO$OooO00o;->OooO00o:Lz2/oO00O0oO$OooO0O0;

    invoke-virtual {v0, p0}, Lz2/oO000Oo;->OooO0OO(Lz2/oO00OOOo;)V

    return-void
.end method

.method public OooO0O0(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput p1, p0, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    iput-object p2, p0, Lz2/oO00O0oO$OooO00o;->OooO0OO:Ljava/lang/Class;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/oO00O0oO$OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO00O0oO$OooO00o;

    iget v0, p0, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    iget v2, p1, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/oO00O0oO$OooO00o;->OooO0OO:Ljava/lang/Class;

    iget-object p1, p1, Lz2/oO00O0oO$OooO00o;->OooO0OO:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00O0oO$OooO00o;->OooO0OO:Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00O0oO$OooO00o;->OooO0OO:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
