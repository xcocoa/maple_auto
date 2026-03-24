.class public final Lz2/ym;
.super Lz2/tm;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/tm;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic OooOO0O(Lz2/em;)Lz2/jn;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/ym;->OooOOoo(Lz2/em;)Lz2/un;

    move-result-object p1

    return-object p1
.end method

.method public final OooOOoo(Lz2/em;)Lz2/un;
    .locals 4

    invoke-virtual {p1}, Lz2/em;->OooO0oO()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MEBKM:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "TITLE:"

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lz2/tm;->OooOOo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "URL:"

    invoke-static {v3, p1, v2}, Lz2/tm;->OooOOo0(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-static {p1}, Lz2/vn;->OooOOo0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lz2/un;

    invoke-direct {v1, p1, v0}, Lz2/un;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method
