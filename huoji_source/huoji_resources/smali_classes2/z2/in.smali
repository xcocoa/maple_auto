.class public final Lz2/in;
.super Lz2/mn;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/mn;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic OooOO0O(Lz2/em;)Lz2/jn;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/in;->OooOOo0(Lz2/em;)Lz2/hn;

    move-result-object p1

    return-object p1
.end method

.method public final OooOOo0(Lz2/em;)Lz2/hn;
    .locals 3

    invoke-virtual {p1}, Lz2/em;->OooO0O0()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1}, Lz2/mn;->OooO0OO(Lz2/em;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const-string v0, "978"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "979"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lz2/hn;

    invoke-direct {v0, p1}, Lz2/hn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
