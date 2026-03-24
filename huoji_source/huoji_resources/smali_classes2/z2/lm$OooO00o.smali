.class public final Lz2/lm$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/lm$OooO00o;->OooO00o:I

    iput p2, p0, Lz2/lm$OooO00o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    iget v0, p0, Lz2/lm$OooO00o;->OooO00o:I

    return v0
.end method

.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/lm$OooO00o;->OooO0O0:I

    return v0
.end method

.method public final OooO0OO()Lz2/fm;
    .locals 3

    new-instance v0, Lz2/fm;

    invoke-virtual {p0}, Lz2/lm$OooO00o;->OooO00o()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lz2/lm$OooO00o;->OooO0O0()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lz2/fm;-><init>(FF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lz2/lm$OooO00o;->OooO00o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/lm$OooO00o;->OooO0O0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
