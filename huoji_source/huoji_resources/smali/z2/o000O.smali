.class public Lz2/o000O;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooOOoo:I = 0x1

.field public static final OooOo:I = -0x65

.field public static final OooOo0:I = 0x3

.field public static final OooOo00:I = 0x2

.field public static final OooOo0O:I = 0x4

.field public static final OooOo0o:I = 0x5

.field public static final OooOoO:I = -0x67

.field public static final OooOoO0:I = -0x66


# instance fields
.field private OooO:J

.field private OooO00o:I

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:[B

.field private OooO0o:Ljava/util/Date;

.field private OooO0o0:Ljava/io/File;

.field private OooO0oO:Z

.field private OooO0oo:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private OooOO0:I

.field private OooOO0O:J

.field private OooOO0o:Z

.field private OooOOO:Z

.field private OooOOO0:Z

.field private OooOOOO:Ljava/lang/String;

.field private OooOOOo:Lorg/apache/http/protocol/HttpContext;

.field private OooOOo:Ljava/io/Closeable;

.field private OooOOo0:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lz2/o000O;->OooO00o:I

    const-string v0, "OK"

    iput-object v0, p0, Lz2/o000O;->OooO0O0:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lz2/o000O;->OooO0o:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lz2/o000O;->OooOO0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/o000O;->OooOO0O:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lz2/o000O;->OooO00o:I

    const-string v0, "OK"

    iput-object v0, p0, Lz2/o000O;->OooO0O0:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lz2/o000O;->OooO0o:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lz2/o000O;->OooOO0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/o000O;->OooOO0O:J

    iput p1, p0, Lz2/o000O;->OooO00o:I

    iput-object p2, p0, Lz2/o000O;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO(J)Z
    .locals 4

    iget-object v0, p0, Lz2/o000O;->OooO0o:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lz2/o000O;->OooOoO()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o(Lorg/apache/http/impl/client/DefaultHttpClient;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooO0oo:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object p0
.end method

.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooOOo:Ljava/io/Closeable;

    invoke-static {v0}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O;->OooOOo:Ljava/io/Closeable;

    return-void
.end method

.method public OooO0OO(Ljava/io/Closeable;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooOOo:Ljava/io/Closeable;

    return-void
.end method

.method public OooO0Oo(I)Lz2/o000O;
    .locals 0

    iput p1, p0, Lz2/o000O;->OooO00o:I

    return-object p0
.end method

.method public OooO0o([B)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooO0Oo:[B

    return-object p0
.end method

.method public OooO0o0(Lorg/apache/http/protocol/HttpContext;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooOOOo:Lorg/apache/http/protocol/HttpContext;

    return-object p0
.end method

.method public OooO0oO()Lz2/o000O;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lz2/o000O;->OooOO0O:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lz2/o000O;->OooO:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o000O;->OooOO0o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/o000O;->OooOOO:Z

    return-object p0
.end method

.method public OooO0oo(Ljava/lang/String;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooOOOO:Ljava/lang/String;

    return-object p0
.end method

.method public OooOO0(Ljava/io/File;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooO0o0:Ljava/io/File;

    return-object p0
.end method

.method public OooOO0O()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooO0oo:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public OooOO0o()I
    .locals 1

    iget v0, p0, Lz2/o000O;->OooO00o:I

    return v0
.end method

.method public OooOOO()[B
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooO0Oo:[B

    return-object v0
.end method

.method public OooOOO0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O;->OooOOOo:Lorg/apache/http/protocol/HttpContext;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o000O;->OooOO0o:Z

    return v0
.end method

.method public OooOOOo()J
    .locals 2

    iget-wide v0, p0, Lz2/o000O;->OooO:J

    return-wide v0
.end method

.method public OooOOo()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooO0o0:Ljava/io/File;

    return-object v0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooOOOO:Ljava/lang/String;

    return-object v0
.end method

.method public OooOOoo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lz2/o000O;->OooOOo0:[Lorg/apache/http/Header;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lz2/o000O;->OooOOo0:[Lorg/apache/http/Header;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    return-object v1

    :cond_1
    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lz2/o000O;->OooOOo0:[Lorg/apache/http/Header;

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public OooOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooOo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o000O;->OooOOO0:Z

    return v0
.end method

.method public OooOo00()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O;->OooOOo0:[Lorg/apache/http/Header;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public OooOo0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooOo0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o000O;->OooOOO:Z

    return v0
.end method

.method public OooOoO()I
    .locals 1

    iget v0, p0, Lz2/o000O;->OooOO0:I

    return v0
.end method

.method public OooOoO0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o000O;->OooO0oO:Z

    return v0
.end method

.method public OooOoOO()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lz2/o000O;->OooO0o:Ljava/util/Date;

    return-object v0
.end method

.method public OooOoo()Lz2/o000O;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o000O;->OooOOO0:Z

    return-object p0
.end method

.method public OooOoo0([Lorg/apache/http/Header;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooOOo0:[Lorg/apache/http/Header;

    return-object p0
.end method

.method public OooOooO(Ljava/lang/String;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooO0O0:Ljava/lang/String;

    return-object p0
.end method

.method public OooOooo(Z)Lz2/o000O;
    .locals 0

    iput-boolean p1, p0, Lz2/o000O;->OooOOO:Z

    return-object p0
.end method

.method public Oooo0(I)Lz2/o000O;
    .locals 0

    iput p1, p0, Lz2/o000O;->OooOO0:I

    return-object p0
.end method

.method public Oooo000(Ljava/lang/String;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooO0OO:Ljava/lang/String;

    return-object p0
.end method

.method public Oooo00O(Z)Lz2/o000O;
    .locals 0

    iput-boolean p1, p0, Lz2/o000O;->OooO0oO:Z

    return-object p0
.end method

.method public Oooo00o()Lz2/o000O;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lz2/o000O;->OooOO0O:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lz2/o000O;->OooO:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/o000O;->OooOO0o:Z

    invoke-virtual {p0}, Lz2/o000O;->OooO0O0()V

    return-object p0
.end method

.method public Oooo0O0(Ljava/util/Date;)Lz2/o000O;
    .locals 0

    iput-object p1, p0, Lz2/o000O;->OooO0o:Ljava/util/Date;

    return-object p0
.end method
