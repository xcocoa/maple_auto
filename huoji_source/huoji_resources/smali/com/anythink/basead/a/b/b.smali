.class public Lcom/anythink/basead/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/b/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/b/b$a;,
        Lcom/anythink/basead/a/b/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "b"


# instance fields
.field public b:Lcom/anythink/core/common/f/l;

.field public c:Lcom/anythink/core/common/f/n;

.field public d:Lcom/anythink/core/common/f/m;

.field public e:Lcom/anythink/core/common/m/b;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/anythink/basead/a/b/b$b;

.field private l:Lcom/anythink/basead/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/basead/a/a/c<",
            "Ljava/lang/Void;",
            "Lcom/anythink/basead/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/anythink/basead/mraid/MraidWebView;

.field private volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/basead/a/b/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/a/b/b$1;-><init>(Lcom/anythink/basead/a/b/b;)V

    iput-object v0, p0, Lcom/anythink/basead/a/b/b;->e:Lcom/anythink/core/common/m/b;

    iput-object p1, p0, Lcom/anythink/basead/a/b/b;->f:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/anythink/basead/a/b/b;->g:Z

    iput-object p3, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iput-object p4, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object p1, p4, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    iput-object p1, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->s()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/a/b/b;->h:I

    new-instance p1, Lcom/anythink/basead/a/b/a;

    invoke-direct {p1}, Lcom/anythink/basead/a/b/a;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    new-instance p2, Lcom/anythink/basead/a/b/b$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/anythink/basead/a/b/b$a;-><init>(Lcom/anythink/basead/a/b/b;B)V

    invoke-interface {p1, p2}, Lcom/anythink/basead/a/a/c;->a(Lcom/anythink/basead/a/a/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b/b;Lcom/anythink/basead/mraid/MraidWebView;)Lcom/anythink/basead/mraid/MraidWebView;
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b/b;->m:Lcom/anythink/basead/mraid/MraidWebView;

    return-object p1
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/l;->b(Lcom/anythink/core/common/f/n;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "30003"

    const-string v2, "Incomplete resource allocation! MissResource: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/l;->E(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v6, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-static {v5, v6}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "videoInfo:video file is not ready to play -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",need readyRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/n;->W()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/anythink/basead/a/b/c;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), all files have already exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_5
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/anythink/basead/a/b/d;->a(Lcom/anythink/basead/a/b/d$a;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_a

    iget-object v3, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4, v3}, Lcom/anythink/core/common/f/l;->E(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->W()I

    move-result v5

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v6, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-static {v4, v6}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Video file ready -> "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",videoNeedReadyRate:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Lcom/anythink/basead/a/b/d;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Video file not exis -> "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",videoNeedReadyRate:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/anythink/basead/a/b/f;

    iget-object v4, p0, Lcom/anythink/basead/a/b/b;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v6, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-direct {v3, v4, v5, v6}, Lcom/anythink/basead/a/b/f;-><init>(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    invoke-virtual {v3}, Lcom/anythink/basead/a/b/f;->a()V

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lcom/anythink/basead/a/b/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v3}, Lcom/anythink/basead/a/b/c;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/anythink/basead/a/b/c;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/anythink/basead/a/b/d;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    invoke-static {v3, v2}, Lcom/anythink/basead/a/b/c;->a(Ljava/lang/String;I)V

    new-instance v4, Lcom/anythink/basead/a/b/e;

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/anythink/basead/a/b/b;->g:Z

    iget-object v7, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/anythink/basead/a/b/e;-><init>(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/anythink/core/common/res/image/b;->d()V

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b/b;Lcom/anythink/basead/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b/b;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getImageDimensions, width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    const/4 v3, 0x0

    :goto_0
    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception v4

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getImageDimensions, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \n error: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    move v0, v2

    :cond_1
    :goto_4
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-gez v3, :cond_3

    goto :goto_5

    :cond_3
    move v1, v3

    :goto_5
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/l;->m(I)V

    iget-object p0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->n(I)V

    return-void

    :goto_6
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    throw p0
.end method

.method private a(Lcom/anythink/basead/c/e;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b/b;->n:Z

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/a/a/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getImageDimensions, width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    const/4 v3, 0x0

    :goto_0
    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception v4

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getImageDimensions, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \n error: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    move v0, v2

    :cond_1
    :goto_4
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-gez v3, :cond_3

    goto :goto_5

    :cond_3
    move v1, v3

    :goto_5
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/l;->m(I)V

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/l;->n(I)V

    return-void

    :goto_6
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    throw p1
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/basead/mraid/d;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Incomplete resource allocation!"

    const-string v0, "Mraid Html or url is empty."

    invoke-static {p1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1}, Lcom/anythink/basead/a/b/c;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/a/b/b$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/anythink/basead/a/b/b$3;-><init>(Lcom/anythink/basead/a/b/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/mraid/MraidWebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/b;->m:Lcom/anythink/basead/mraid/MraidWebView;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-boolean v1, v0, Lcom/anythink/core/common/f/m;->p:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_0
    iget v0, v0, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/j;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-boolean v0, v0, Lcom/anythink/core/common/f/m;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_4
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/a/b/b$2;

    invoke-direct {v2, p0, v0}, Lcom/anythink/basead/a/b/b$2;-><init>(Lcom/anythink/basead/a/b/b;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/b;->k:Lcom/anythink/basead/a/b/b$b;

    return-object p0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/a/a/c;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/a/b/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/basead/a/b/d;->b(Lcom/anythink/basead/a/b/d$a;)V

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->e:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->e:Lcom/anythink/core/common/m/b;

    iget v2, p0, Lcom/anythink/basead/a/b/b;->h:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/basead/a/b/b;)V
    .locals 1

    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/basead/a/b/d;->b(Lcom/anythink/basead/a/b/d$a;)V

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object p0, p0, Lcom/anythink/basead/a/b/b;->e:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, p0}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method private f()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v1, v3, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v3, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget v3, v3, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->I()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/n;->aj()I

    move-result v3

    if-eq v3, v4, :cond_4

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v3

    iget-object v7, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v7, v7, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v7

    if-eq v7, v2, :cond_2

    if-eq v7, v6, :cond_1

    const/4 v2, 0x5

    if-eq v7, v2, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/anythink/core/d/a;->i()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/anythink/core/d/a;->j()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/anythink/core/d/a;->h()Ljava/util/List;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v3, v6}, Lcom/anythink/basead/a/b/c;->b(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v7

    new-instance v8, Lcom/anythink/core/common/res/e;

    invoke-direct {v8, v6, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v8, v1, v1, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->Q()I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v2, Lcom/anythink/core/common/res/e;

    iget-object v3, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1, v1, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/a/b/b$b;)V
    .locals 11

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/b/b;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/basead/a/b/b;->k:Lcom/anythink/basead/a/b/b$b;

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    const-string v0, "1"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget v5, v5, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->I()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v5, v5, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->aj()I

    move-result v5

    if-eq v5, v3, :cond_5

    invoke-static {p1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v8

    invoke-virtual {v8}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v5

    iget-object v8, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v8, v8, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v8

    if-eq v8, v1, :cond_3

    if-eq v8, v7, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/anythink/core/d/a;->i()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/anythink/core/d/a;->j()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/anythink/core/d/a;->h()Ljava/util/List;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v8, v7}, Lcom/anythink/basead/a/b/c;->b(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v9

    new-instance v10, Lcom/anythink/core/common/res/e;

    invoke-direct {v10, v7, v8}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v10, v4, v4, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v5, v5, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->Q()I

    move-result v5

    if-ne v5, v3, :cond_6

    iget-object v5, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v5, v5, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object p1

    new-instance v5, Lcom/anythink/core/common/res/e;

    iget-object v8, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v8, v8, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/n;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v5, v4, v4, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    :cond_6
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object p1

    iget-object v4, p0, Lcom/anythink/basead/a/b/b;->e:Lcom/anythink/core/common/m/b;

    iget v5, p0, Lcom/anythink/basead/a/b/b;->h:I

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->k()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    invoke-interface {p1, v1}, Lcom/anythink/basead/a/a/c;->a(I)V

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-boolean v0, p1, Lcom/anythink/core/common/f/m;->p:Z

    if-nez v0, :cond_7

    :goto_3
    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    goto :goto_4

    :cond_7
    iget p1, p1, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    instance-of v0, p1, Lcom/anythink/core/common/f/j;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/anythink/core/common/f/j;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-boolean p1, p1, Lcom/anythink/core/common/f/m;->o:Z

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/a/b/b$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/a/b/b$2;-><init>(Lcom/anythink/basead/a/b/b;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, v1, p1, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    :goto_4
    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->a()V

    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/anythink/basead/a/b/b;->n:Z

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    const/4 v2, 0x1

    :cond_e
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    invoke-interface {p1, v3}, Lcom/anythink/basead/a/a/c;->a(I)V

    if-eqz v2, :cond_f

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->l:Lcom/anythink/basead/a/a/c;

    invoke-interface {p1, v1}, Lcom/anythink/basead/a/a/c;->a(I)V

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->a()V

    :cond_f
    iget-boolean p1, p0, Lcom/anythink/basead/a/b/b;->n:Z

    if-eqz p1, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->Z()Z

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/basead/mraid/d;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string p1, "Incomplete resource allocation!"

    const-string v0, "Mraid Html or url is empty."

    :goto_5
    invoke-static {p1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_11
    if-nez p1, :cond_12

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    return-void

    :cond_12
    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1}, Lcom/anythink/basead/a/b/c;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/a/b/b$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/anythink/basead/a/b/b$3;-><init>(Lcom/anythink/basead/a/b/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_13
    return-void

    :cond_14
    :goto_6
    const-string p1, "-9999"

    const-string v0, "mraid params error!"

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/anythink/basead/a/b/c;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/l;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->W()I

    move-result v0

    if-gt v0, p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/f/l;->E(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->c:Lcom/anythink/core/common/f/n;

    invoke-static {p2, v0}, Lcom/anythink/basead/a/b/g;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    :cond_1
    iget-object p2, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/basead/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onResourceLoadSuccess -> resourceUrl:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",curmUrlList.size():"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/a/b/b;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/anythink/basead/a/b/b;->c()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/basead/c/e;)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/anythink/basead/a/b/c;->a(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/c/e;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
