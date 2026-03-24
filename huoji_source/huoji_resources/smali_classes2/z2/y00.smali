.class public final Lz2/y00;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/y00$OooO0O0;,
        Lz2/y00$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:J

.field public final OooO0O0:Lz2/j00;

.field public OooO0OO:Z

.field public OooO0Oo:Z

.field private final OooO0o:Lz2/e10;

.field private final OooO0o0:Lz2/d10;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/y00;->OooO0O0:Lz2/j00;

    new-instance v0, Lz2/y00$OooO00o;

    invoke-direct {v0, p0}, Lz2/y00$OooO00o;-><init>(Lz2/y00;)V

    iput-object v0, p0, Lz2/y00;->OooO0o0:Lz2/d10;

    new-instance v0, Lz2/y00$OooO0O0;

    invoke-direct {v0, p0}, Lz2/y00$OooO0O0;-><init>(Lz2/y00;)V

    iput-object v0, p0, Lz2/y00;->OooO0o:Lz2/e10;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lz2/y00;->OooO00o:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final OooO00o()Lz2/d10;
    .locals 1

    iget-object v0, p0, Lz2/y00;->OooO0o0:Lz2/d10;

    return-object v0
.end method

.method public final OooO0O0()Lz2/e10;
    .locals 1

    iget-object v0, p0, Lz2/y00;->OooO0o:Lz2/e10;

    return-object v0
.end method
