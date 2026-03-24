.class public Lmobi/oneway/export/d/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lmobi/oneway/export/d/f;

.field private b:I

.field private c:[B

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;

.field private f:J

.field private g:Ljava/io/File;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmobi/oneway/export/d/b;->a(Lmobi/oneway/export/d/f;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmobi/oneway/export/d/b;->h()Lmobi/oneway/export/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/f;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/d/b;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a(Ljava/lang/Throwable;)Lmobi/oneway/export/d/b;
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/d/b;->e:Ljava/lang/Throwable;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/d/b;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lmobi/oneway/export/d/b;->f:J

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/d/b;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lmobi/oneway/export/d/b;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Lmobi/oneway/export/d/f;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/d/b;->a:Lmobi/oneway/export/d/f;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/d/b;->c:[B

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/b;->e:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/b;->c:[B

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/d/b;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmobi/oneway/export/d/b;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmobi/oneway/export/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/d/b;->c:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/d/b;->g:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public h()Lmobi/oneway/export/d/f;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/b;->a:Lmobi/oneway/export/d/f;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmobi/oneway/export/d/b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lmobi/oneway/export/d/b;->f:J

    return-wide v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/b;->a:Lmobi/oneway/export/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmobi/oneway/export/d/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/d/b;->b:I

    return v0
.end method

.method public m()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/b;->e:Ljava/lang/Throwable;

    return-object v0
.end method
