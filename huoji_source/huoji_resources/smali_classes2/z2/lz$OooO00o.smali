.class public final Lz2/lz$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:[Lz2/lz$OooO00o;

.field public final OooO0O0:I

.field public final OooO0OO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lz2/lz$OooO00o;

    iput-object v0, p0, Lz2/lz$OooO00o;->OooO00o:[Lz2/lz$OooO00o;

    const/4 v0, 0x0

    iput v0, p0, Lz2/lz$OooO00o;->OooO0O0:I

    iput v0, p0, Lz2/lz$OooO00o;->OooO0OO:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/lz$OooO00o;->OooO00o:[Lz2/lz$OooO00o;

    iput p1, p0, Lz2/lz$OooO00o;->OooO0O0:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    iput p1, p0, Lz2/lz$OooO00o;->OooO0OO:I

    return-void
.end method
