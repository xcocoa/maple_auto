.class public abstract Lz2/jn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/result/ParsedResultType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/jn;->OooO00o:Lcom/google/zxing/client/result/ParsedResultType;

    return-void
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract OooO00o()Ljava/lang/String;
.end method

.method public final OooO0O0()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    iget-object v0, p0, Lz2/jn;->OooO00o:Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/jn;->OooO00o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
