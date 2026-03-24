.class public final Lz2/nx;
.super Lz2/rx;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/nx$OooO00o;,
        Lz2/nx$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO:Lz2/mx;

.field public static final OooO0o:Lz2/mx;

.field public static final OooO0oO:Lz2/mx;

.field public static final OooO0oo:Lz2/mx;

.field public static final OooOO0:Lz2/mx;

.field private static final OooOO0O:[B

.field private static final OooOO0o:[B

.field private static final OooOOO0:[B


# instance fields
.field private final OooO00o:Lokio/ByteString;

.field private final OooO0O0:Lz2/mx;

.field private final OooO0OO:Lz2/mx;

.field private final OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/nx$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0o0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lz2/nx;->OooO0o:Lz2/mx;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lz2/nx;->OooO0oO:Lz2/mx;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lz2/nx;->OooO0oo:Lz2/mx;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lz2/nx;->OooO:Lz2/mx;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lz2/nx;->OooOO0:Lz2/mx;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lz2/nx;->OooOO0O:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lz2/nx;->OooOO0o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lz2/nx;->OooOOO0:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lokio/ByteString;Lz2/mx;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lz2/mx;",
            "Ljava/util/List<",
            "Lz2/nx$OooO0O0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/rx;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lz2/nx;->OooO0o0:J

    iput-object p1, p0, Lz2/nx;->OooO00o:Lokio/ByteString;

    iput-object p2, p0, Lz2/nx;->OooO0O0:Lz2/mx;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object p1

    iput-object p1, p0, Lz2/nx;->OooO0OO:Lz2/mx;

    invoke-static {p3}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/nx;->OooO0Oo:Ljava/util/List;

    return-void
.end method

.method public static OooO00o(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v3, "%22"

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private OooO0oO(Lz2/k00;Z)J
    .locals 12
    .param p1    # Lz2/k00;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p1, Lz2/j00;

    invoke-direct {p1}, Lz2/j00;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz2/nx;->OooO0Oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Lz2/nx;->OooO0Oo:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz2/nx$OooO0O0;

    iget-object v7, v6, Lz2/nx$OooO0O0;->OooO00o:Lz2/jx;

    iget-object v6, v6, Lz2/nx$OooO0O0;->OooO0O0:Lz2/rx;

    sget-object v8, Lz2/nx;->OooOOO0:[B

    invoke-interface {p1, v8}, Lz2/k00;->Oooo([B)Lz2/k00;

    iget-object v8, p0, Lz2/nx;->OooO00o:Lokio/ByteString;

    invoke-interface {p1, v8}, Lz2/k00;->OoooO0(Lokio/ByteString;)Lz2/k00;

    sget-object v8, Lz2/nx;->OooOO0o:[B

    invoke-interface {p1, v8}, Lz2/k00;->Oooo([B)Lz2/k00;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lz2/jx;->OooOO0o()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v10

    sget-object v11, Lz2/nx;->OooOO0O:[B

    invoke-interface {v10, v11}, Lz2/k00;->Oooo([B)Lz2/k00;

    move-result-object v10

    invoke-virtual {v7, v9}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v10

    sget-object v11, Lz2/nx;->OooOO0o:[B

    invoke-interface {v10, v11}, Lz2/k00;->Oooo([B)Lz2/k00;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lz2/rx;->contentType()Lz2/mx;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v8

    invoke-virtual {v7}, Lz2/mx;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v7

    sget-object v8, Lz2/nx;->OooOO0o:[B

    invoke-interface {v7, v8}, Lz2/k00;->Oooo([B)Lz2/k00;

    :cond_2
    invoke-virtual {v6}, Lz2/rx;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v9

    sget-object v10, Lz2/nx;->OooOO0o:[B

    invoke-interface {v9, v10}, Lz2/k00;->Oooo([B)Lz2/k00;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lz2/j00;->OooooOo()V

    return-wide v9

    :cond_4
    :goto_3
    sget-object v9, Lz2/nx;->OooOO0o:[B

    invoke-interface {p1, v9}, Lz2/k00;->Oooo([B)Lz2/k00;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v6, p1}, Lz2/rx;->writeTo(Lz2/k00;)V

    :goto_4
    invoke-interface {p1, v9}, Lz2/k00;->Oooo([B)Lz2/k00;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lz2/nx;->OooOOO0:[B

    invoke-interface {p1, v1}, Lz2/k00;->Oooo([B)Lz2/k00;

    iget-object v2, p0, Lz2/nx;->OooO00o:Lokio/ByteString;

    invoke-interface {p1, v2}, Lz2/k00;->OoooO0(Lokio/ByteString;)Lz2/k00;

    invoke-interface {p1, v1}, Lz2/k00;->Oooo([B)Lz2/k00;

    sget-object v1, Lz2/nx;->OooOO0o:[B

    invoke-interface {p1, v1}, Lz2/k00;->Oooo([B)Lz2/k00;

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide p1

    add-long/2addr v3, p1

    invoke-virtual {v0}, Lz2/j00;->OooooOo()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/nx;->OooO00o:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO(I)Lz2/nx$OooO0O0;
    .locals 1

    iget-object v0, p0, Lz2/nx;->OooO0Oo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/nx$OooO0O0;

    return-object p1
.end method

.method public OooO0Oo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/nx$OooO0O0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/nx;->OooO0Oo:Ljava/util/List;

    return-object v0
.end method

.method public OooO0o()Lz2/mx;
    .locals 1

    iget-object v0, p0, Lz2/nx;->OooO0O0:Lz2/mx;

    return-object v0
.end method

.method public OooO0o0()I
    .locals 1

    iget-object v0, p0, Lz2/nx;->OooO0Oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public contentLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lz2/nx;->OooO0o0:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lz2/nx;->OooO0oO(Lz2/k00;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lz2/nx;->OooO0o0:J

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1

    iget-object v0, p0, Lz2/nx;->OooO0OO:Lz2/mx;

    return-object v0
.end method

.method public writeTo(Lz2/k00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/nx;->OooO0oO(Lz2/k00;Z)J

    return-void
.end method
