.class public final Lz2/v10;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final OooO00o:Ljava/lang/Object;

.field public final OooO0O0:Lz2/t10;

.field public volatile OooO0OO:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lz2/t10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/v10;->OooO00o:Ljava/lang/Object;

    iput-object p2, p0, Lz2/v10;->OooO0O0:Lz2/t10;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/v10;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/v10;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/v10;

    iget-object v0, p0, Lz2/v10;->OooO00o:Ljava/lang/Object;

    iget-object v2, p1, Lz2/v10;->OooO00o:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/v10;->OooO0O0:Lz2/t10;

    iget-object p1, p1, Lz2/v10;->OooO0O0:Lz2/t10;

    invoke-virtual {v0, p1}, Lz2/t10;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lz2/v10;->OooO00o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lz2/v10;->OooO0O0:Lz2/t10;

    iget-object v1, v1, Lz2/t10;->OooO0o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
