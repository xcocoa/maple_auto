.class public Lz2/ey$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private OooO:J

.field public final OooO00o:J

.field public final OooO0O0:Lz2/qx;

.field public final OooO0OO:Lz2/sx;

.field private OooO0Oo:Ljava/util/Date;

.field private OooO0o:Ljava/util/Date;

.field private OooO0o0:Ljava/lang/String;

.field private OooO0oO:Ljava/lang/String;

.field private OooO0oo:Ljava/util/Date;

.field private OooOO0:J

.field private OooOO0O:Ljava/lang/String;

.field private OooOO0o:I


# direct methods
.method public constructor <init>(JLz2/qx;Lz2/sx;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/ey$OooO00o;->OooOO0o:I

    iput-wide p1, p0, Lz2/ey$OooO00o;->OooO00o:J

    iput-object p3, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    iput-object p4, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lz2/sx;->o0Oo0oo()J

    move-result-wide p1

    iput-wide p1, p0, Lz2/ey$OooO00o;->OooO:J

    invoke-virtual {p4}, Lz2/sx;->o0ooOoO()J

    move-result-wide p1

    iput-wide p1, p0, Lz2/ey$OooO00o;->OooOO0:J

    invoke-virtual {p4}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Lz2/jx;->OooOO0o()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lz2/ty;->OooO0O0(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lz2/ey$OooO00o;->OooO0Oo:Ljava/util/Date;

    iput-object v1, p0, Lz2/ey$OooO00o;->OooO0o0:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lz2/ty;->OooO0O0(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lz2/ey$OooO00o;->OooO0oo:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lz2/ty;->OooO0O0(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lz2/ey$OooO00o;->OooO0o:Ljava/util/Date;

    iput-object v1, p0, Lz2/ey$OooO00o;->OooO0oO:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lz2/ey$OooO00o;->OooOO0O:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {v1, v0}, Lz2/uy;->OooO0oo(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lz2/ey$OooO00o;->OooOO0o:I

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private OooO00o()J
    .locals 9

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0Oo:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lz2/ey$OooO00o;->OooOO0:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    iget v0, p0, Lz2/ey$OooO00o;->OooOO0o:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p0, Lz2/ey$OooO00o;->OooOO0:J

    iget-wide v5, p0, Lz2/ey$OooO00o;->OooO:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lz2/ey$OooO00o;->OooO00o:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private OooO0O0()J
    .locals 7

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-virtual {v0}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw;->OooO0o0()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lz2/sw;->OooO0o0()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0oo:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0Oo:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lz2/ey$OooO00o;->OooOO0:J

    :goto_0
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0oo:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    move-wide v1, v5

    :cond_2
    return-wide v1

    :cond_3
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0o:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-virtual {v0}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->Oooo000()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0Oo:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lz2/ey$OooO00o;->OooO:J

    :goto_1
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0o:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method

.method private OooO0Oo()Lz2/ey;
    .locals 13

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lz2/ey;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-direct {v0, v2, v1}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-virtual {v0}, Lz2/qx;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-virtual {v0}, Lz2/sx;->Ooooooo()Lz2/ix;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lz2/ey;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-direct {v0, v2, v1}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-static {v0, v2}, Lz2/ey;->OooO00o(Lz2/sx;Lz2/qx;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lz2/ey;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-direct {v0, v2, v1}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-virtual {v0}, Lz2/qx;->OooO0O0()Lz2/sw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw;->OooO()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-static {v2}, Lz2/ey$OooO00o;->OooO0o0(Lz2/qx;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-virtual {v2}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object v2

    invoke-direct {p0}, Lz2/ey$OooO00o;->OooO00o()J

    move-result-wide v3

    invoke-direct {p0}, Lz2/ey$OooO00o;->OooO0O0()J

    move-result-wide v5

    invoke-virtual {v0}, Lz2/sw;->OooO0o0()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lz2/sw;->OooO0o0()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_4
    invoke-virtual {v0}, Lz2/sw;->OooO0oO()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lz2/sw;->OooO0oO()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_5
    move-wide v11, v9

    :goto_0
    invoke-virtual {v2}, Lz2/sw;->OooO0oo()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lz2/sw;->OooO0o()I

    move-result v7

    if-eq v7, v8, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lz2/sw;->OooO0o()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_6
    invoke-virtual {v2}, Lz2/sw;->OooO()Z

    move-result v0

    if-nez v0, :cond_9

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_9

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-virtual {v0}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_7

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v2, v5}, Lz2/sx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/sx$OooO00o;

    :cond_7
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    invoke-direct {p0}, Lz2/ey$OooO00o;->OooO0o()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v2, v3}, Lz2/sx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/sx$OooO00o;

    :cond_8
    new-instance v2, Lz2/ey;

    invoke-virtual {v0}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v2

    :cond_9
    iget-object v0, p0, Lz2/ey$OooO00o;->OooOO0O:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_a

    const-string v2, "If-None-Match"

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0o:Ljava/util/Date;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0oO:Ljava/lang/String;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0Oo:Ljava/util/Date;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0o0:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-virtual {v1}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/jx;->OooO()Lz2/jx$OooO00o;

    move-result-object v1

    sget-object v3, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {v3, v1, v2, v0}, Lz2/xx;->OooO0O0(Lz2/jx$OooO00o;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-virtual {v0}, Lz2/qx;->OooO0oo()Lz2/qx$OooO00o;

    move-result-object v0

    invoke-virtual {v1}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/qx$OooO00o;->OooO(Lz2/jx;)Lz2/qx$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v0

    new-instance v1, Lz2/ey;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-direct {v1, v0, v2}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v1

    :cond_c
    new-instance v0, Lz2/ey;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-direct {v0, v2, v1}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v0

    :cond_d
    :goto_2
    new-instance v0, Lz2/ey;

    iget-object v2, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-direct {v0, v2, v1}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    return-object v0
.end method

.method private OooO0o()Z
    .locals 2

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0OO:Lz2/sx;

    invoke-virtual {v0}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw;->OooO0o0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/ey$OooO00o;->OooO0oo:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static OooO0o0(Lz2/qx;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public OooO0OO()Lz2/ey;
    .locals 2

    invoke-direct {p0}, Lz2/ey$OooO00o;->OooO0Oo()Lz2/ey;

    move-result-object v0

    iget-object v1, v0, Lz2/ey;->OooO00o:Lz2/qx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/ey$OooO00o;->OooO0O0:Lz2/qx;

    invoke-virtual {v1}, Lz2/qx;->OooO0O0()Lz2/sw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/sw;->OooOO0o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lz2/ey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lz2/ey;-><init>(Lz2/qx;Lz2/sx;)V

    :cond_0
    return-object v0
.end method
