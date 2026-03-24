.class public final Lz2/oO00Oo00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00OOOo;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO00Oo00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO00Oo00$OooO0O0;

.field public OooO0O0:I


# direct methods
.method public constructor <init>(Lz2/oO00Oo00$OooO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO00Oo00$OooO00o;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/oO00Oo00$OooO00o;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    invoke-virtual {v0, p0}, Lz2/oO000Oo;->OooO0OO(Lz2/oO00OOOo;)V

    return-void
.end method

.method public OooO0O0(I)V
    .locals 0

    iput p1, p0, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lz2/oO00Oo00$OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO00Oo00$OooO00o;

    iget v0, p0, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    iget p1, p1, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    invoke-static {v0}, Lz2/oO00Oo00;->OooO0oO(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
