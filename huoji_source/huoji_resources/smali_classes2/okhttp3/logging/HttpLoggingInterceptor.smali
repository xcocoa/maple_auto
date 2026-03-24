.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;,
        Lokhttp3/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final OooO0OO:Ljava/nio/charset/Charset;


# instance fields
.field private final OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

.field private volatile OooO0O0:Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0OO:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0O0:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    return-void
.end method

.method private OooO00o(Lz2/jx;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "identity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static OooO0OO(Lz2/j00;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lz2/j00;

    invoke-direct {v7}, Lz2/j00;-><init>()V

    invoke-virtual {p0}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lz2/j00;->o0OoOo0(Lz2/j00;JJ)Lz2/j00;

    const/4 p0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    invoke-virtual {v7}, Lz2/j00;->OooOOO()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lz2/j00;->OooOoo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public OooO0O0()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0O0:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public OooO0Oo(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0O0:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public intercept(Lz2/lx$OooO00o;)Lz2/sx;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0O0:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-interface/range {p1 .. p1}, Lz2/lx$OooO00o;->request()Lz2/qx;

    move-result-object v3

    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_0

    invoke-interface {v0, v3}, Lz2/lx$OooO00o;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    sget-object v7, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3}, Lz2/qx;->OooO00o()Lz2/rx;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Lz2/lx$OooO00o;->OooO0o()Lz2/yw;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lz2/yw;->OooO00o()Lokhttp3/Protocol;

    move-result-object v8

    goto :goto_4

    :cond_5
    sget-object v8, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v11, " ("

    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lz2/rx;->contentLength()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    iget-object v12, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v12, v8}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    const-string v8, "-byte body omitted)"

    const-string v12, ": "

    const-string v15, ""

    if-eqz v2, :cond_10

    if-eqz v5, :cond_8

    invoke-virtual {v7}, Lz2/rx;->contentType()Lz2/mx;

    move-result-object v16

    if-eqz v16, :cond_7

    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Type: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lz2/rx;->contentType()Lz2/mx;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v7}, Lz2/rx;->contentLength()J

    move-result-wide v13

    const-wide/16 v17, -0x1

    cmp-long v6, v13, v17

    if-eqz v6, :cond_8

    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Length: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lz2/rx;->contentLength()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object v6

    invoke-virtual {v6}, Lz2/jx;->OooOO0o()I

    move-result v10

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v10, :cond_a

    invoke-virtual {v6, v13}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v10

    const-string v10, "Content-Type"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "Content-Length"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    move/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move/from16 v20, v2

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v19

    move/from16 v2, v20

    goto :goto_5

    :cond_a
    move/from16 v20, v2

    const-string v2, "--> END "

    if-eqz v4, :cond_f

    if-nez v5, :cond_b

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v3}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object v5

    invoke-direct {v1, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o(Lz2/jx;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    goto :goto_8

    :cond_c
    new-instance v5, Lz2/j00;

    invoke-direct {v5}, Lz2/j00;-><init>()V

    invoke-virtual {v7, v5}, Lz2/rx;->writeTo(Lz2/k00;)V

    sget-object v6, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0OO:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Lz2/rx;->contentType()Lz2/mx;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10, v6}, Lz2/mx;->OooO0O0(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    :cond_d
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v10, v15}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    invoke-static {v5}, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0OO(Lz2/j00;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-virtual {v5, v6}, Lz2/j00;->OooOoOO(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lz2/rx;->contentLength()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lz2/rx;->contentLength()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    :goto_7
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    move/from16 v20, v2

    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :try_start_0
    invoke-interface {v0, v3}, Lz2/lx$OooO00o;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v5

    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v5

    invoke-virtual {v5}, Lz2/tx;->contentLength()J

    move-result-wide v6

    const-wide/16 v13, -0x1

    cmp-long v10, v6, v13

    if-eqz v10, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-byte"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_11
    const-string v10, "unknown-length"

    :goto_b
    iget-object v13, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    const-string v9, "<-- "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lz2/sx;->OoooooO()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v6

    invoke-virtual {v0}, Lz2/sx;->o00ooo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v6

    invoke-virtual {v6}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v20, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_12
    move-object v2, v15

    :goto_c
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    if-eqz v20, :cond_1a

    invoke-virtual {v0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v2

    invoke-virtual {v2}, Lz2/jx;->OooOO0o()I

    move-result v3

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v3, :cond_13

    iget-object v7, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_13
    const-string v2, "<-- END HTTP"

    if-eqz v4, :cond_19

    invoke-static {v0}, Lz2/uy;->OooO0OO(Lz2/sx;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_10

    :cond_14
    invoke-virtual {v0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v3

    invoke-direct {v1, v3}, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o(Lz2/jx;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    :goto_e
    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_15
    invoke-virtual {v5}, Lz2/tx;->source()Lz2/l00;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v3, v6, v7}, Lz2/l00;->request(J)Z

    invoke-interface {v3}, Lz2/l00;->OooO00o()Lz2/j00;

    move-result-object v3

    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0OO:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Lz2/tx;->contentType()Lz2/mx;

    move-result-object v5

    if-eqz v5, :cond_16

    :try_start_1
    invoke-virtual {v5, v4}, Lz2/mx;->OooO0O0(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :catch_0
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v3, v15}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    const-string v4, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-interface {v3, v4}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    return-object v0

    :cond_16
    :goto_f
    invoke-static {v3}, Lokhttp3/logging/HttpLoggingInterceptor;->OooO0OO(Lz2/j00;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v2, v15}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP (binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/j00;->o00000O0()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    return-object v0

    :cond_17
    const-wide/16 v5, 0x0

    cmp-long v2, v18, v5

    if-eqz v2, :cond_18

    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v2, v15}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-virtual {v3}, Lz2/j00;->Oooooo0()Lz2/j00;

    move-result-object v5

    invoke-virtual {v5, v4}, Lz2/j00;->OooOoOO(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    :cond_18
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/j00;->o00000O0()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e

    :cond_19
    :goto_10
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    invoke-interface {v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    :cond_1a
    :goto_11
    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->OooO00o:Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lokhttp3/logging/HttpLoggingInterceptor$OooO00o;->OooO00o(Ljava/lang/String;)V

    throw v2
.end method
