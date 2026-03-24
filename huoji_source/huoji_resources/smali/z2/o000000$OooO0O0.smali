.class public Lz2/o000000$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:J

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;

.field public OooO0Oo:J

.field public OooO0o:J

.field public OooO0o0:J

.field public OooO0oO:J

.field public OooO0oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/OooOo$OooO00o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o000000$OooO0O0;->OooO0O0:Ljava/lang/String;

    iget-object p1, p2, Lz2/OooOo$OooO00o;->OooO00o:[B

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lz2/o000000$OooO0O0;->OooO00o:J

    iget-object p1, p2, Lz2/OooOo$OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p1, p0, Lz2/o000000$OooO0O0;->OooO0OO:Ljava/lang/String;

    iget-wide v0, p2, Lz2/OooOo$OooO00o;->OooO0OO:J

    iput-wide v0, p0, Lz2/o000000$OooO0O0;->OooO0Oo:J

    iget-wide v0, p2, Lz2/OooOo$OooO00o;->OooO0Oo:J

    iput-wide v0, p0, Lz2/o000000$OooO0O0;->OooO0o0:J

    iget-wide v0, p2, Lz2/OooOo$OooO00o;->OooO0o0:J

    iput-wide v0, p0, Lz2/o000000$OooO0O0;->OooO0o:J

    iget-wide v0, p2, Lz2/OooOo$OooO00o;->OooO0o:J

    iput-wide v0, p0, Lz2/o000000$OooO0O0;->OooO0oO:J

    iget-object p1, p2, Lz2/OooOo$OooO00o;->OooO0oO:Ljava/util/Map;

    iput-object p1, p0, Lz2/o000000$OooO0O0;->OooO0oo:Ljava/util/Map;

    return-void
.end method

.method public static OooO00o(Ljava/io/InputStream;)Lz2/o000000$OooO0O0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/o000000$OooO0O0;

    invoke-direct {v0}, Lz2/o000000$OooO0O0;-><init>()V

    invoke-static {p0}, Lz2/o000000;->OooO(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20150513

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lz2/o000000;->OooOO0O(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lz2/o000000$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {p0}, Lz2/o000000;->OooOO0O(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lz2/o000000$OooO0O0;->OooO0OO:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lz2/o000000$OooO0O0;->OooO0OO:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lz2/o000000;->OooOO0(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lz2/o000000$OooO0O0;->OooO0Oo:J

    invoke-static {p0}, Lz2/o000000;->OooOO0(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lz2/o000000$OooO0O0;->OooO0o0:J

    invoke-static {p0}, Lz2/o000000;->OooOO0(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lz2/o000000$OooO0O0;->OooO0o:J

    invoke-static {p0}, Lz2/o000000;->OooOO0(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lz2/o000000$OooO0O0;->OooO0oO:J

    invoke-static {p0}, Lz2/o000000;->OooOO0o(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lz2/o000000$OooO0O0;->OooO0oo:Ljava/util/Map;

    return-object v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public OooO0O0([B)Lz2/OooOo$OooO00o;
    .locals 3

    new-instance v0, Lz2/OooOo$OooO00o;

    invoke-direct {v0}, Lz2/OooOo$OooO00o;-><init>()V

    iput-object p1, v0, Lz2/OooOo$OooO00o;->OooO00o:[B

    iget-object p1, p0, Lz2/o000000$OooO0O0;->OooO0OO:Ljava/lang/String;

    iput-object p1, v0, Lz2/OooOo$OooO00o;->OooO0O0:Ljava/lang/String;

    iget-wide v1, p0, Lz2/o000000$OooO0O0;->OooO0Oo:J

    iput-wide v1, v0, Lz2/OooOo$OooO00o;->OooO0OO:J

    iget-wide v1, p0, Lz2/o000000$OooO0O0;->OooO0o0:J

    iput-wide v1, v0, Lz2/OooOo$OooO00o;->OooO0Oo:J

    iget-wide v1, p0, Lz2/o000000$OooO0O0;->OooO0o:J

    iput-wide v1, v0, Lz2/OooOo$OooO00o;->OooO0o0:J

    iget-wide v1, p0, Lz2/o000000$OooO0O0;->OooO0oO:J

    iput-wide v1, v0, Lz2/OooOo$OooO00o;->OooO0o:J

    iget-object p1, p0, Lz2/o000000$OooO0O0;->OooO0oo:Ljava/util/Map;

    iput-object p1, v0, Lz2/OooOo$OooO00o;->OooO0oO:Ljava/util/Map;

    return-object v0
.end method

.method public OooO0OO(Ljava/io/OutputStream;)Z
    .locals 4

    const v0, 0x20150513

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lz2/o000000;->OooOOOO(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lz2/o000000$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {p1, v0}, Lz2/o000000;->OooOOo0(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o000000$OooO0O0;->OooO0OO:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p1, v0}, Lz2/o000000;->OooOOo0(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v2, p0, Lz2/o000000$OooO0O0;->OooO0Oo:J

    invoke-static {p1, v2, v3}, Lz2/o000000;->OooOOOo(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lz2/o000000$OooO0O0;->OooO0o0:J

    invoke-static {p1, v2, v3}, Lz2/o000000;->OooOOOo(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lz2/o000000$OooO0O0;->OooO0o:J

    invoke-static {p1, v2, v3}, Lz2/o000000;->OooOOOo(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lz2/o000000$OooO0O0;->OooO0oO:J

    invoke-static {p1, v2, v3}, Lz2/o000000;->OooOOOo(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lz2/o000000$OooO0O0;->OooO0oo:Ljava/util/Map;

    invoke-static {v0, p1}, Lz2/o000000;->OooOOo(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lz2/o0OOO0o;->OooO0O0(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
