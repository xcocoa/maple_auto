.class public abstract Lz2/cz$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OoooOoO:Lz2/q00;

.field public OoooOoo:Z

.field public Ooooo00:J

.field public final synthetic Ooooo0o:Lz2/cz;


# direct methods
.method private constructor <init>(Lz2/cz;)V
    .locals 2

    iput-object p1, p0, Lz2/cz$OooO0O0;->Ooooo0o:Lz2/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/q00;

    iget-object p1, p1, Lz2/cz;->OooO0Oo:Lz2/l00;

    invoke-interface {p1}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/q00;-><init>(Lz2/f10;)V

    iput-object v0, p0, Lz2/cz$OooO0O0;->OoooOoO:Lz2/q00;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/cz$OooO0O0;->Ooooo00:J

    return-void
.end method

.method public synthetic constructor <init>(Lz2/cz;Lz2/cz$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/cz$OooO0O0;-><init>(Lz2/cz;)V

    return-void
.end method


# virtual methods
.method public final OooOO0(ZLjava/io/IOException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cz$OooO0O0;->Ooooo0o:Lz2/cz;

    iget v1, v0, Lz2/cz;->OooO0o:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lz2/cz$OooO0O0;->OoooOoO:Lz2/q00;

    invoke-virtual {v0, v1}, Lz2/cz;->OooO0oO(Lz2/q00;)V

    iget-object v5, p0, Lz2/cz$OooO0O0;->Ooooo0o:Lz2/cz;

    iput v2, v5, Lz2/cz;->OooO0o:I

    iget-object v3, v5, Lz2/cz;->OooO0OO:Lz2/py;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, Lz2/cz$OooO0O0;->Ooooo00:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lz2/py;->OooOOo(ZLz2/sy;JLjava/io/IOException;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz2/cz$OooO0O0;->Ooooo0o:Lz2/cz;

    iget v0, v0, Lz2/cz;->OooO0o:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lz2/j00;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/cz$OooO0O0;->Ooooo0o:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0Oo:Lz2/l00;

    invoke-interface {v0, p1, p2, p3}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lz2/cz$OooO0O0;->Ooooo00:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lz2/cz$OooO0O0;->Ooooo00:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lz2/cz$OooO0O0;->OooOO0(ZLjava/io/IOException;)V

    throw p1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/cz$OooO0O0;->OoooOoO:Lz2/q00;

    return-object v0
.end method
