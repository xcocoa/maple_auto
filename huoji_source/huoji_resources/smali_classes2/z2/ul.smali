.class public abstract Lz2/ul;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/yl;


# direct methods
.method public constructor <init>(Lz2/yl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ul;->OooO00o:Lz2/yl;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Lz2/yl;)Lz2/ul;
.end method

.method public abstract OooO0O0()Lz2/eo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract OooO0OO(ILz2/do;)Lz2/do;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public final OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/ul;->OooO00o:Lz2/yl;

    invoke-virtual {v0}, Lz2/yl;->OooO0O0()I

    move-result v0

    return v0
.end method

.method public final OooO0o()I
    .locals 1

    iget-object v0, p0, Lz2/ul;->OooO00o:Lz2/yl;

    invoke-virtual {v0}, Lz2/yl;->OooO0o0()I

    move-result v0

    return v0
.end method

.method public final OooO0o0()Lz2/yl;
    .locals 1

    iget-object v0, p0, Lz2/ul;->OooO00o:Lz2/yl;

    return-object v0
.end method
