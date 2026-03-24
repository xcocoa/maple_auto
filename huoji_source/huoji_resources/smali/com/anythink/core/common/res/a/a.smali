.class public Lcom/anythink/core/common/res/a/a;
.super Lcom/anythink/core/common/res/image/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/res/a/a$b;,
        Lcom/anythink/core/common/res/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/anythink/core/common/res/a/b;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/res/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/anythink/core/common/res/a/a$b;

.field public l:I

.field private final m:I

.field private final n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/image/b;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/anythink/core/common/res/a/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/res/a/a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/common/res/a/a;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/res/a/a;->n:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/common/res/a/a;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/res/a/a;->j:Ljava/util/List;

    new-instance v0, Lcom/anythink/core/common/res/a/b;

    invoke-direct {v0}, Lcom/anythink/core/common/res/a/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/res/a/a;->b:Lcom/anythink/core/common/res/a/b;

    iput p1, p0, Lcom/anythink/core/common/res/a/a;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/common/res/a/a;->q:J

    iput-boolean p1, p0, Lcom/anythink/core/common/res/a/a;->s:Z

    iput p1, p0, Lcom/anythink/core/common/res/a/a;->o:I

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/res/a/a;->o:I

    return-void
.end method

.method private declared-synchronized a(IJ)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/anythink/core/common/res/a/a;->l:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notifyDownloadProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iput p1, p0, Lcom/anythink/core/common/res/a/a;->l:I

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/anythink/core/common/res/a/a$a;

    iget-wide v7, p0, Lcom/anythink/core/common/res/image/b;->i:J

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/anythink/core/common/res/a/a$a;->a(IJJ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_2

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    iget-wide v5, p0, Lcom/anythink/core/common/res/image/b;->i:J

    move-wide v7, p2

    move v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/anythink/core/common/a/l;->a(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/res/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/a/a;->k:Lcom/anythink/core/common/res/a/a$b;

    return-void
.end method

.method private b(IJ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v8, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notifyDownloadFinish: downloadRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    if-ne v8, v1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    iget-wide v4, v0, Lcom/anythink/core/common/res/image/b;->i:J

    const/4 v9, 0x1

    move-wide/from16 v6, p2

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/anythink/core/common/a/l;->a(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    iget-object v10, v0, Lcom/anythink/core/common/res/a/a;->k:Lcom/anythink/core/common/res/a/a$b;

    if-eqz v10, :cond_0

    iget-wide v11, v0, Lcom/anythink/core/common/res/image/b;->i:J

    iget-wide v13, v0, Lcom/anythink/core/common/res/image/b;->e:J

    iget-wide v1, v0, Lcom/anythink/core/common/res/image/b;->g:J

    iget-wide v3, v0, Lcom/anythink/core/common/res/image/b;->f:J

    iget-wide v5, v0, Lcom/anythink/core/common/res/image/b;->h:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    invoke-virtual/range {v10 .. v20}, Lcom/anythink/core/common/res/a/a$b;->a(JJJJJ)V

    :cond_0
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notifyLoadFailed: errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/res/a/a;->o:I

    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/res/a/a$a;

    invoke-virtual {v1, p1, p2}, Lcom/anythink/core/common/res/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->j()V

    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->k:Lcom/anythink/core/common/res/a/a$b;

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/anythink/core/common/res/image/b;->i:J

    iget-wide v5, p0, Lcom/anythink/core/common/res/image/b;->e:J

    iget-wide v7, p0, Lcom/anythink/core/common/res/image/b;->f:J

    iget-wide v9, p0, Lcom/anythink/core/common/res/image/b;->h:J

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/anythink/core/common/res/a/a$b;->a(Ljava/lang/String;Ljava/lang/String;JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/res/a/a;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->b:Lcom/anythink/core/common/res/a/b;

    iget v2, v0, Lcom/anythink/core/common/res/a/b;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v0, v0, Lcom/anythink/core/common/res/a/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private g()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/res/a/a;->o:I

    return v0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    const-string v1, "without saveDirectory"

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/res/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/res/d;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/res/a/a;->q:J

    :cond_2
    return-void
.end method

.method private i()Z
    .locals 4

    iget v0, p0, Lcom/anythink/core/common/res/a/a;->p:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/anythink/core/common/res/a/a;->q:J

    invoke-direct {p0, v0, v2, v3}, Lcom/anythink/core/common/res/a/a;->a(IJ)V

    iget v0, p0, Lcom/anythink/core/common/res/a/a;->p:I

    iget-wide v2, p0, Lcom/anythink/core/common/res/a/a;->q:J

    invoke-direct {p0, v0, v2, v3}, Lcom/anythink/core/common/res/a/a;->b(IJ)V

    return v1

    :cond_0
    iget v3, p0, Lcom/anythink/core/common/res/a/a;->o:I

    if-nez v3, :cond_1

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/o/b/d;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/res/a/a$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/res/a/b;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setVideoUrlLoaderConfig: mReadyRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/anythink/core/common/res/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mVideoCtnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/anythink/core/common/res/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/core/common/res/a/a;->b:Lcom/anythink/core/common/res/a/b;

    iget v1, v0, Lcom/anythink/core/common/res/a/b;->a:I

    iget v2, p1, Lcom/anythink/core/common/res/a/b;->a:I

    if-ge v1, v2, :cond_0

    iput v2, v0, Lcom/anythink/core/common/res/a/b;->a:I

    :cond_0
    iget v1, v0, Lcom/anythink/core/common/res/a/b;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget p1, p1, Lcom/anythink/core/common/res/a/b;->c:I

    iput p1, v0, Lcom/anythink/core/common/res/a/b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    :catchall_0
    :cond_0
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-wide v5, v1, Lcom/anythink/core/common/res/a/a;->q:J

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmp-long v13, v5, v7

    if-lez v13, :cond_2

    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v1, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-wide v6, v1, Lcom/anythink/core/common/res/a/a;->q:J

    long-to-double v13, v6

    mul-double v13, v13, v11

    iget-wide v11, v1, Lcom/anythink/core/common/res/image/b;->i:J

    long-to-double v11, v11

    div-double/2addr v13, v11

    mul-double v13, v13, v9

    double-to-int v2, v13

    iput v2, v1, Lcom/anythink/core/common/res/a/a;->p:I

    invoke-direct {p0, v2, v6, v7}, Lcom/anythink/core/common/res/a/a;->a(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v1, Lcom/anythink/core/common/res/a/a;->r:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iput v4, v1, Lcom/anythink/core/common/res/a/a;->p:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    move-object v2, v5

    const/16 v5, 0x800

    :try_start_4
    new-array v5, v5, [B

    :goto_2
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget v7, v1, Lcom/anythink/core/common/res/a/a;->p:I

    invoke-direct {p0, v7}, Lcom/anythink/core/common/res/a/a;->b(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v5, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v7, v1, Lcom/anythink/core/common/res/a/a;->q:J

    int-to-long v11, v6

    add-long/2addr v7, v11

    iput-wide v7, v1, Lcom/anythink/core/common/res/a/a;->q:J

    long-to-double v11, v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v13

    iget-wide v3, v1, Lcom/anythink/core/common/res/image/b;->i:J

    long-to-double v3, v3

    div-double/2addr v11, v3

    mul-double v11, v11, v9

    double-to-int v3, v11

    iput v3, v1, Lcom/anythink/core/common/res/a/a;->p:I

    invoke-direct {p0, v3, v7, v8}, Lcom/anythink/core/common/res/a/a;->a(IJ)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    const/4 v3, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :goto_4
    iget v0, v1, Lcom/anythink/core/common/res/a/a;->p:I

    iget-wide v4, v1, Lcom/anythink/core/common/res/a/a;->q:J

    invoke-direct {p0, v0, v4, v5}, Lcom/anythink/core/common/res/a/a;->b(IJ)V

    return v3

    :catchall_4
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :cond_4
    throw v3
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/res/a/a;->o:I

    return-void
.end method

.method public final e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startRequest: canStartLoader():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->h()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/res/a/a;->o:I

    invoke-virtual {p0}, Lcom/anythink/core/common/res/image/b;->d()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startRequest: resumeRequest():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/res/a/a;->s:Z

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a;->h()V

    iput v0, p0, Lcom/anythink/core/common/res/a/a;->o:I

    invoke-virtual {p0}, Lcom/anythink/core/common/res/image/b;->d()V

    :cond_0
    return-void
.end method
