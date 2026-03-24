.class public final Lz2/dp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ip;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO0OO(CI)C
    .locals 1

    mul-int/lit16 p1, p1, 0x95

    const/16 v0, 0xff

    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit16 p0, p0, -0x100

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final OooO0O0(Lz2/jp;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lz2/jp;->OooOO0()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lz2/jp;->OooO0Oo()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lz2/jp;->OooO0o:I

    add-int/2addr v2, v3

    iput v2, p1, Lz2/jp;->OooO0o:I

    invoke-virtual {p1}, Lz2/jp;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lz2/jp;->OooO0o:I

    invoke-virtual {p0}, Lz2/dp;->OooO00o()I

    move-result v5

    invoke-static {v2, v4, v5}, Lz2/lp;->OooOOOO(Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-virtual {p0}, Lz2/dp;->OooO00o()I

    move-result v4

    if-eq v2, v4, :cond_0

    invoke-virtual {p1, v1}, Lz2/jp;->OooOOOo(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lz2/jp;->OooO00o()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lz2/jp;->OooOOo(I)V

    invoke-virtual {p1}, Lz2/jp;->OooO0oo()Lz2/mp;

    move-result-object v5

    invoke-virtual {v5}, Lz2/mp;->OooO0O0()I

    move-result v5

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lz2/jp;->OooOO0()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_4

    int-to-char v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x613

    if-gt v2, v5, :cond_7

    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Lz2/jp;->OooO00o()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Lz2/dp;->OooO0OO(CI)C

    move-result v4

    invoke-virtual {p1, v4}, Lz2/jp;->OooOOoo(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message length not in valid ranges: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
