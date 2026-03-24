.class public final Lz2/un;
.super Lz2/jn;
.source ""


# static fields
.field private static final OooO0Oo:Ljava/util/regex/Pattern;


# instance fields
.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ":/*([^/@]+)@[^/]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/un;->OooO0Oo:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    invoke-static {p1}, Lz2/un;->OooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/un;->OooO0O0:Ljava/lang/String;

    iput-object p2, p0, Lz2/un;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method private static OooO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0, v0}, Lz2/un;->OooO0oO(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static OooO0oO(Ljava/lang/String;I)Z
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lz2/mn;->OooO0o0(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final OooO00o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/un;->OooO0OO:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/un;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/un;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/un;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()Z
    .locals 2

    sget-object v0, Lz2/un;->OooO0Oo:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lz2/un;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
