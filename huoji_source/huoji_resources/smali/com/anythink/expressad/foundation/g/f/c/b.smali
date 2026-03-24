.class public final Lcom/anythink/expressad/foundation/g/f/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[B

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/File;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->b:Ljava/io/InputStream;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->d:J

    iput-object p5, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->f:Ljava/lang/String;

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->b:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->d:J

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->c:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->a:[B

    iput-wide p3, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->d:J

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->d:J

    return-wide v0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->c:Ljava/io/File;

    return-object v0
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->a:[B

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/c/b;->g:Ljava/lang/String;

    return-object v0
.end method
