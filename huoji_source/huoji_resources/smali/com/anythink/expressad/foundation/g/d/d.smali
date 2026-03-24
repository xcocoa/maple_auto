.class public final Lcom/anythink/expressad/foundation/g/d/d;
.super Lcom/anythink/expressad/foundation/g/g/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/g/d/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImageWorker"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/anythink/expressad/foundation/g/d/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/g/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->h:Z

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/d/d;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/foundation/g/d/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/foundation/g/d/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/foundation/g/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->i:Lcom/anythink/expressad/foundation/g/d/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/foundation/g/d/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/foundation/g/d/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->i:Lcom/anythink/expressad/foundation/g/d/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/foundation/g/d/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->h:Z

    return v0
.end method

.method private l()Lcom/anythink/expressad/foundation/g/d/d$a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->i:Lcom/anythink/expressad/foundation/g/d/d$a;

    return-object v0
.end method

.method private static m()V
    .locals 0

    return-void
.end method

.method private n()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/foundation/g/d/d$1;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/foundation/g/d/d$1;-><init>(Lcom/anythink/expressad/foundation/g/d/d;)V

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/f/h/a;->a(Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/anythink/expressad/foundation/g/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    const-string v1, "save path is null."

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/foundation/g/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/g/d/d;->d()V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/d/d;->n()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/d/d;->n()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/d/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/d/d;->i:Lcom/anythink/expressad/foundation/g/d/d$a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/g/d/d;->h:Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/foundation/g/d/d;->i:Lcom/anythink/expressad/foundation/g/d/d$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/anythink/expressad/foundation/g/d/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load image faild.because file["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/d;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/anythink/expressad/foundation/g/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
