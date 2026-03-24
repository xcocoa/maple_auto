.class public Lcn/haorui/sdk/core/view/gif/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/view/gif/a$a;
    }
.end annotation


# static fields
.field public static final y:Ljava/lang/String; = "a"


# instance fields
.field public a:[I

.field public final b:[I

.field public c:Ljava/nio/ByteBuffer;

.field public d:[B

.field public e:[B

.field public f:I

.field public g:I

.field public h:Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

.field public i:[S

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[I

.field public n:I

.field public o:I

.field public p:Lcn/haorui/sdk/core/view/gif/GifHeader;

.field public q:Lcn/haorui/sdk/core/view/gif/a$a;

.field public r:Landroid/graphics/Bitmap;

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/view/gif/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/a;->f:I

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/a;->g:I

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    new-instance p1, Lcn/haorui/sdk/core/view/gif/GifHeader;

    invoke-direct {p1}, Lcn/haorui/sdk/core/view/gif/GifHeader;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I[B)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->h:Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

    if-nez v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

    invoke-direct {v0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->h:Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->h:Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

    invoke-virtual {v0, p2}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->setData([B)Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->parseHeader()Lcn/haorui/sdk/core/view/gif/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p1, :cond_3

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    const/4 v1, 0x0

    iput v1, p0, Lcn/haorui/sdk/core/view/gif/a;->t:I

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iput-boolean v1, p0, Lcn/haorui/sdk/core/view/gif/a;->x:Z

    const/4 v2, -0x1

    iput v2, p0, Lcn/haorui/sdk/core/view/gif/a;->n:I

    iput v1, p0, Lcn/haorui/sdk/core/view/gif/a;->o:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/core/view/gif/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcn/haorui/sdk/core/view/gif/a;->c:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v1, p0, Lcn/haorui/sdk/core/view/gif/a;->s:Z

    iget-object p2, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/view/gif/b;

    iget v1, v1, Lcn/haorui/sdk/core/view/gif/b;->g:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcn/haorui/sdk/core/view/gif/a;->s:Z

    :cond_2
    iput p1, p0, Lcn/haorui/sdk/core/view/gif/a;->u:I

    iget p2, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->width:I

    div-int v1, p2, p1

    iput v1, p0, Lcn/haorui/sdk/core/view/gif/a;->w:I

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->height:I

    div-int p1, v0, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/gif/a;->v:I

    iget-object p1, p0, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    mul-int p2, p2, v0

    check-cast p1, Lcn/haorui/sdk/core/view/gif/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, p2, [B

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    iget-object p1, p0, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    iget p2, p0, Lcn/haorui/sdk/core/view/gif/a;->w:I

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/a;->v:I

    mul-int p2, p2, v0

    check-cast p1, Lcn/haorui/sdk/core/view/gif/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, p2, [I

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/a;->m:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample size must be >=0, not: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0

    throw p1

    :cond_4
    :goto_0
    iget p1, p0, Lcn/haorui/sdk/core/view/gif/a;->t:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    iget v3, p0, Lcn/haorui/sdk/core/view/gif/a;->w:I

    iget v4, p0, Lcn/haorui/sdk/core/view/gif/a;->v:I

    check-cast v2, Lcn/haorui/sdk/core/view/gif/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public final a([ILcn/haorui/sdk/core/view/gif/b;I)V
    .locals 4

    iget v0, p2, Lcn/haorui/sdk/core/view/gif/b;->d:I

    iget v1, p0, Lcn/haorui/sdk/core/view/gif/a;->u:I

    div-int/2addr v0, v1

    iget v2, p2, Lcn/haorui/sdk/core/view/gif/b;->b:I

    div-int/2addr v2, v1

    iget v3, p2, Lcn/haorui/sdk/core/view/gif/b;->c:I

    div-int/2addr v3, v1

    iget p2, p2, Lcn/haorui/sdk/core/view/gif/b;->a:I

    div-int/2addr p2, v1

    iget v1, p0, Lcn/haorui/sdk/core/view/gif/a;->w:I

    mul-int v2, v2, v1

    add-int/2addr v2, p2

    mul-int v0, v0, v1

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_1

    add-int p2, v2, v3

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_0

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget p2, p0, Lcn/haorui/sdk/core/view/gif/a;->w:I

    add-int/2addr v2, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 30

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lez v0, :cond_0

    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcn/haorui/sdk/core/view/gif/a;->y:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to decode frame, frameCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v5, v5, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " framePointer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v3, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    :cond_2
    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3e

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    goto/16 :goto_1a

    :cond_3
    const/4 v6, 0x0

    iput v6, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    iget v7, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcn/haorui/sdk/core/view/gif/b;

    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    sub-int/2addr v0, v3

    if-ltz v0, :cond_4

    iget-object v8, v1, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v8, v8, Lcn/haorui/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/view/gif/b;

    goto :goto_0

    :cond_4
    move-object v0, v4

    :goto_0
    iget-object v8, v7, Lcn/haorui/sdk/core/view/gif/b;->k:[I

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    iget-object v8, v1, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v8, v8, Lcn/haorui/sdk/core/view/gif/GifHeader;->gct:[I

    :goto_1
    iput-object v8, v1, Lcn/haorui/sdk/core/view/gif/a;->a:[I

    if-nez v8, :cond_7

    sget-object v0, Lcn/haorui/sdk/core/view/gif/a;->y:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Valid Color Table for frame #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v3, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_7
    :try_start_1
    iget-boolean v4, v7, Lcn/haorui/sdk/core/view/gif/b;->f:Z

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcn/haorui/sdk/core/view/gif/a;->b:[I

    array-length v9, v8

    invoke-static {v8, v6, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v1, Lcn/haorui/sdk/core/view/gif/a;->b:[I

    iput-object v4, v1, Lcn/haorui/sdk/core/view/gif/a;->a:[I

    iget v8, v7, Lcn/haorui/sdk/core/view/gif/b;->h:I

    aput v6, v4, v8

    :cond_8
    iget-object v4, v1, Lcn/haorui/sdk/core/view/gif/a;->m:[I

    if-nez v0, :cond_9

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    :cond_9
    if-eqz v0, :cond_f

    iget v8, v0, Lcn/haorui/sdk/core/view/gif/b;->g:I

    if-lez v8, :cond_f

    if-ne v8, v5, :cond_d

    iget-boolean v8, v7, Lcn/haorui/sdk/core/view/gif/b;->f:Z

    if-nez v8, :cond_a

    iget-object v8, v1, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v9, v8, Lcn/haorui/sdk/core/view/gif/GifHeader;->bgColor:I

    iget-object v10, v7, Lcn/haorui/sdk/core/view/gif/b;->k:[I

    if-eqz v10, :cond_c

    iget v8, v8, Lcn/haorui/sdk/core/view/gif/GifHeader;->bgIndex:I

    iget v10, v7, Lcn/haorui/sdk/core/view/gif/b;->h:I

    if-ne v8, v10, :cond_c

    goto :goto_2

    :cond_a
    iget v8, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    if-nez v8, :cond_b

    iput-boolean v3, v1, Lcn/haorui/sdk/core/view/gif/a;->x:Z

    :cond_b
    :goto_2
    const/4 v9, 0x0

    :cond_c
    invoke-virtual {v1, v4, v0, v9}, Lcn/haorui/sdk/core/view/gif/a;->a([ILcn/haorui/sdk/core/view/gif/b;I)V

    goto :goto_3

    :cond_d
    if-ne v8, v2, :cond_f

    iget-object v9, v1, Lcn/haorui/sdk/core/view/gif/a;->r:Landroid/graphics/Bitmap;

    if-nez v9, :cond_e

    invoke-virtual {v1, v4, v0, v6}, Lcn/haorui/sdk/core/view/gif/a;->a([ILcn/haorui/sdk/core/view/gif/b;I)V

    goto :goto_3

    :cond_e
    iget v8, v0, Lcn/haorui/sdk/core/view/gif/b;->d:I

    iget v10, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    div-int v16, v8, v10

    iget v8, v0, Lcn/haorui/sdk/core/view/gif/b;->b:I

    div-int v14, v8, v10

    iget v8, v0, Lcn/haorui/sdk/core/view/gif/b;->c:I

    div-int v15, v8, v10

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/b;->a:I

    div-int v13, v0, v10

    iget v12, v1, Lcn/haorui/sdk/core/view/gif/a;->w:I

    mul-int v0, v14, v12

    add-int v11, v0, v13

    move-object v10, v4

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_f
    :goto_3
    iput v6, v1, Lcn/haorui/sdk/core/view/gif/a;->f:I

    iput v6, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->c:Ljava/nio/ByteBuffer;

    iget v8, v7, Lcn/haorui/sdk/core/view/gif/b;->j:I

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, v7, Lcn/haorui/sdk/core/view/gif/b;->c:I

    iget v8, v7, Lcn/haorui/sdk/core/view/gif/b;->d:I

    mul-int v8, v8, v0

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    if-eqz v0, :cond_10

    array-length v0, v0

    if-ge v0, v8, :cond_11

    :cond_10
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    check-cast v0, Lcn/haorui/sdk/core/view/gif/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v8, [B

    iput-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    :cond_11
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->i:[S

    const/16 v9, 0x1000

    if-nez v0, :cond_12

    new-array v0, v9, [S

    iput-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->i:[S

    :cond_12
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->j:[B

    if-nez v0, :cond_13

    new-array v0, v9, [B

    iput-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->j:[B

    :cond_13
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    if-nez v0, :cond_14

    const/16 v0, 0x1001

    new-array v0, v0, [B

    iput-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/core/view/gif/a;->c()I

    move-result v0

    shl-int v10, v3, v0

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v10, 0x2

    add-int/lit8 v13, v0, 0x1

    shl-int v0, v3, v13

    add-int/lit8 v14, v0, -0x1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_15

    iget-object v15, v1, Lcn/haorui/sdk/core/view/gif/a;->i:[S

    aput-short v6, v15, v0

    iget-object v15, v1, Lcn/haorui/sdk/core/view/gif/a;->j:[B

    int-to-byte v5, v0

    aput-byte v5, v15, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x2

    goto :goto_4

    :cond_15
    move/from16 v24, v12

    move/from16 v26, v13

    move/from16 v25, v14

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_5
    const/16 v27, 0x8

    const/16 v9, 0xff

    if-ge v15, v8, :cond_26

    if-nez v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/core/view/gif/a;->c()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v5, :cond_19

    :try_start_2
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->d:[B

    if-nez v0, :cond_16

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    check-cast v0, Lcn/haorui/sdk/core/view/gif/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v9, [B

    iput-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->d:[B

    :cond_16
    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->f:I

    iget v9, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    sub-int/2addr v0, v9

    if-lt v0, v5, :cond_17

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->d:[B

    invoke-static {v0, v9, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    add-int/2addr v0, v5

    goto :goto_6

    :cond_17
    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    if-lt v2, v5, :cond_18

    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    iget v9, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    iget-object v3, v1, Lcn/haorui/sdk/core/view/gif/a;->d:[B

    invoke-static {v2, v9, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcn/haorui/sdk/core/view/gif/a;->f:I

    iput v2, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/core/view/gif/a;->d()V

    sub-int v2, v5, v0

    iget-object v3, v1, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    iget-object v9, v1, Lcn/haorui/sdk/core/view/gif/a;->d:[B

    invoke-static {v3, v6, v9, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    add-int/2addr v0, v2

    :goto_6
    iput v0, v1, Lcn/haorui/sdk/core/view/gif/a;->g:I

    goto :goto_7

    :cond_18
    const/4 v2, 0x1

    iput v2, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcn/haorui/sdk/core/view/gif/a;->y:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    iput v2, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    :cond_19
    :goto_7
    if-gtz v5, :cond_1a

    const/4 v2, 0x3

    iput v2, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    goto/16 :goto_e

    :cond_1a
    move v0, v5

    const/16 v17, 0x0

    :cond_1b
    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->d:[B

    aget-byte v2, v2, v17

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int v2, v2, v18

    add-int v19, v19, v2

    add-int/lit8 v18, v18, 0x8

    add-int/lit8 v17, v17, 0x1

    const/4 v2, -0x1

    add-int/2addr v0, v2

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v5, v22

    move/from16 v9, v24

    move/from16 v6, v26

    :goto_8
    move/from16 v21, v0

    if-lt v2, v6, :cond_25

    and-int v0, v19, v25

    shr-int v19, v19, v6

    sub-int/2addr v2, v6

    if-ne v0, v10, :cond_1c

    move v9, v12

    move v6, v13

    move/from16 v25, v14

    move/from16 v0, v21

    const/4 v3, -0x1

    goto :goto_8

    :cond_1c
    if-le v0, v9, :cond_1d

    move/from16 v22, v2

    const/4 v2, 0x3

    iput v2, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    goto :goto_9

    :cond_1d
    move/from16 v22, v2

    if-ne v0, v11, :cond_1e

    :goto_9
    move/from16 v26, v6

    move/from16 v24, v9

    move/from16 v0, v21

    move/from16 v18, v22

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/16 v9, 0x1000

    move/from16 v21, v3

    move/from16 v22, v5

    goto/16 :goto_d

    :cond_1e
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1f

    iget-object v3, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    add-int/lit8 v5, v23, 0x1

    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->j:[B

    aget-byte v2, v2, v0

    aput-byte v2, v3, v23

    move v3, v0

    move/from16 v23, v5

    move/from16 v2, v22

    move v5, v3

    move/from16 v0, v21

    goto :goto_8

    :cond_1f
    if-lt v0, v9, :cond_20

    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    add-int/lit8 v24, v23, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v23

    move v2, v3

    move/from16 v23, v24

    goto :goto_a

    :cond_20
    move v2, v0

    :goto_a
    if-lt v2, v10, :cond_21

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    add-int/lit8 v24, v23, 0x1

    move/from16 v26, v0

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->j:[B

    aget-byte v0, v0, v2

    aput-byte v0, v5, v23

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->i:[S

    aget-short v2, v0, v2

    move/from16 v23, v24

    move/from16 v0, v26

    goto :goto_a

    :cond_21
    move/from16 v26, v0

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->j:[B

    aget-byte v2, v0, v2

    const/16 v5, 0xff

    and-int/2addr v2, v5

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    add-int/lit8 v24, v23, 0x1

    move/from16 v29, v10

    int-to-byte v10, v2

    aput-byte v10, v5, v23

    const/16 v5, 0x1000

    if-ge v9, v5, :cond_22

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->i:[S

    int-to-short v3, v3

    aput-short v3, v5, v9

    aput-byte v10, v0, v9

    add-int/lit8 v9, v9, 0x1

    and-int v0, v9, v25

    const/16 v10, 0x1000

    if-nez v0, :cond_23

    if-ge v9, v10, :cond_23

    add-int/lit8 v6, v6, 0x1

    add-int v25, v25, v9

    goto :goto_b

    :cond_22
    const/16 v10, 0x1000

    :cond_23
    :goto_b
    move/from16 v23, v24

    :goto_c
    if-lez v23, :cond_24

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    add-int/lit8 v3, v20, 0x1

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->k:[B

    add-int/lit8 v23, v23, -0x1

    aget-byte v5, v5, v23

    aput-byte v5, v0, v20

    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v3

    goto :goto_c

    :cond_24
    move v5, v2

    move/from16 v0, v21

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v10, v29

    goto/16 :goto_8

    :cond_25
    move/from16 v18, v2

    move/from16 v22, v5

    move/from16 v26, v6

    move/from16 v24, v9

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/16 v9, 0x1000

    move/from16 v21, v3

    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_26
    :goto_e
    move/from16 v0, v20

    :goto_f
    if-ge v0, v8, :cond_27

    iget-object v2, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_27
    const/4 v3, 0x0

    iget v0, v7, Lcn/haorui/sdk/core/view/gif/b;->d:I

    iget v2, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    div-int/2addr v0, v2

    iget v5, v7, Lcn/haorui/sdk/core/view/gif/b;->b:I

    div-int/2addr v5, v2

    iget v6, v7, Lcn/haorui/sdk/core/view/gif/b;->c:I

    div-int/2addr v6, v2

    iget v8, v7, Lcn/haorui/sdk/core/view/gif/b;->a:I

    div-int/2addr v8, v2

    iget v2, v1, Lcn/haorui/sdk/core/view/gif/a;->n:I

    if-nez v2, :cond_28

    const/4 v2, 0x1

    goto :goto_10

    :cond_28
    const/4 v2, 0x0

    :goto_10
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    :goto_11
    if-ge v11, v0, :cond_39

    iget-boolean v13, v7, Lcn/haorui/sdk/core/view/gif/b;->e:Z

    if-eqz v13, :cond_2d

    const/4 v13, 0x4

    if-lt v9, v0, :cond_2c

    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x2

    if-eq v10, v14, :cond_2b

    const/4 v15, 0x3

    if-eq v10, v15, :cond_2a

    if-eq v10, v13, :cond_29

    goto :goto_12

    :cond_29
    const/4 v9, 0x1

    const/4 v12, 0x2

    goto :goto_12

    :cond_2a
    const/4 v9, 0x2

    const/4 v12, 0x4

    goto :goto_12

    :cond_2b
    const/4 v9, 0x4

    goto :goto_12

    :cond_2c
    const/4 v14, 0x2

    :goto_12
    add-int v13, v9, v12

    goto :goto_13

    :cond_2d
    const/4 v14, 0x2

    move v13, v9

    move v9, v11

    :goto_13
    add-int/2addr v9, v5

    iget v15, v1, Lcn/haorui/sdk/core/view/gif/a;->v:I

    if-ge v9, v15, :cond_38

    iget v15, v1, Lcn/haorui/sdk/core/view/gif/a;->w:I

    mul-int v9, v9, v15

    add-int v16, v9, v8

    add-int v3, v16, v6

    add-int/2addr v9, v15

    if-ge v9, v3, :cond_2e

    move v3, v9

    :cond_2e
    iget v9, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    mul-int v15, v11, v9

    iget v14, v7, Lcn/haorui/sdk/core/view/gif/b;->c:I

    mul-int v15, v15, v14

    sub-int v14, v3, v16

    mul-int v14, v14, v9

    add-int/2addr v14, v15

    move/from16 v9, v16

    :goto_14
    if-ge v9, v3, :cond_38

    move/from16 v16, v0

    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    move/from16 v19, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2f

    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    aget-byte v0, v0, v15

    const/16 v3, 0xff

    and-int/2addr v0, v3

    iget-object v3, v1, Lcn/haorui/sdk/core/view/gif/a;->a:[I

    aget v0, v3, v0

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v28, v8

    const/16 v6, 0xff

    goto/16 :goto_18

    :cond_2f
    iget v0, v7, Lcn/haorui/sdk/core/view/gif/b;->c:I

    move/from16 v25, v5

    move v3, v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_15
    iget v5, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    add-int/2addr v5, v15

    if-ge v3, v5, :cond_31

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    move/from16 v26, v6

    array-length v6, v5

    if-ge v3, v6, :cond_32

    if-ge v3, v14, :cond_32

    aget-byte v5, v5, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    iget-object v6, v1, Lcn/haorui/sdk/core/view/gif/a;->a:[I

    aget v5, v6, v5

    if-eqz v5, :cond_30

    shr-int/lit8 v6, v5, 0x18

    move/from16 v28, v8

    const/16 v8, 0xff

    and-int/2addr v6, v8

    add-int v23, v23, v6

    shr-int/lit8 v6, v5, 0x10

    and-int/2addr v6, v8

    add-int v22, v22, v6

    shr-int/lit8 v6, v5, 0x8

    and-int/2addr v6, v8

    add-int v21, v21, v6

    and-int/lit16 v5, v5, 0xff

    add-int v20, v20, v5

    add-int/lit8 v24, v24, 0x1

    goto :goto_16

    :cond_30
    move/from16 v28, v8

    :goto_16
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v26

    move/from16 v8, v28

    goto :goto_15

    :cond_31
    move/from16 v26, v6

    :cond_32
    move/from16 v28, v8

    add-int/2addr v0, v15

    move v3, v0

    :goto_17
    iget v5, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    add-int/2addr v5, v0

    if-ge v3, v5, :cond_34

    iget-object v5, v1, Lcn/haorui/sdk/core/view/gif/a;->l:[B

    array-length v6, v5

    if-ge v3, v6, :cond_34

    if-ge v3, v14, :cond_34

    aget-byte v5, v5, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    iget-object v8, v1, Lcn/haorui/sdk/core/view/gif/a;->a:[I

    aget v5, v8, v5

    if-eqz v5, :cond_33

    shr-int/lit8 v8, v5, 0x18

    and-int/2addr v8, v6

    add-int v23, v23, v8

    shr-int/lit8 v8, v5, 0x10

    and-int/2addr v8, v6

    add-int v22, v22, v8

    shr-int/lit8 v8, v5, 0x8

    and-int/2addr v8, v6

    add-int v21, v21, v8

    and-int/lit16 v5, v5, 0xff

    add-int v20, v20, v5

    add-int/lit8 v24, v24, 0x1

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_34
    const/16 v6, 0xff

    if-nez v24, :cond_35

    const/4 v0, 0x0

    goto :goto_18

    :cond_35
    div-int v23, v23, v24

    shl-int/lit8 v0, v23, 0x18

    div-int v22, v22, v24

    shl-int/lit8 v3, v22, 0x10

    or-int/2addr v0, v3

    div-int v21, v21, v24

    shl-int/lit8 v3, v21, 0x8

    or-int/2addr v0, v3

    div-int v20, v20, v24

    or-int v0, v0, v20

    :goto_18
    if-eqz v0, :cond_36

    aput v0, v4, v9

    goto :goto_19

    :cond_36
    iget-boolean v0, v1, Lcn/haorui/sdk/core/view/gif/a;->x:Z

    if-nez v0, :cond_37

    if-eqz v2, :cond_37

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcn/haorui/sdk/core/view/gif/a;->x:Z

    :cond_37
    :goto_19
    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->u:I

    add-int/2addr v15, v0

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v16

    move/from16 v3, v19

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v8, v28

    goto/16 :goto_14

    :cond_38
    move/from16 v16, v0

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v28, v8

    const/16 v6, 0xff

    add-int/lit8 v11, v11, 0x1

    move v9, v13

    move/from16 v0, v16

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v8, v28

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_39
    iget-boolean v0, v1, Lcn/haorui/sdk/core/view/gif/a;->s:Z

    if-eqz v0, :cond_3c

    iget v0, v7, Lcn/haorui/sdk/core/view/gif/b;->g:I

    if-eqz v0, :cond_3a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3c

    :cond_3a
    iget-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/core/view/gif/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcn/haorui/sdk/core/view/gif/a;->r:Landroid/graphics/Bitmap;

    :cond_3b
    iget-object v9, v1, Lcn/haorui/sdk/core/view/gif/a;->r:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3c

    iget v15, v1, Lcn/haorui/sdk/core/view/gif/a;->w:I

    iget v0, v1, Lcn/haorui/sdk/core/view/gif/a;->v:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v4

    move v12, v15

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/core/view/gif/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget v15, v1, Lcn/haorui/sdk/core/view/gif/a;->w:I

    iget v2, v1, Lcn/haorui/sdk/core/view/gif/a;->v:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    move-object v10, v4

    move v12, v15

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3d
    monitor-exit p0

    return-object v0

    :cond_3e
    :goto_1a
    :try_start_4
    sget-object v0, Lcn/haorui/sdk/core/view/gif/a;->y:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcn/haorui/sdk/core/view/gif/a;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3f
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcn/haorui/sdk/core/view/gif/a;->d()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    iget v1, p0, Lcn/haorui/sdk/core/view/gif/a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/haorui/sdk/core/view/gif/a;->g:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/a;->t:I

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 4

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/a;->f:I

    iget v1, p0, Lcn/haorui/sdk/core/view/gif/a;->g:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->q:Lcn/haorui/sdk/core/view/gif/a$a;

    check-cast v0, Lcn/haorui/sdk/core/view/gif/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v1, [B

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/a;->g:I

    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/core/view/gif/a;->f:I

    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/a;->c:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/a;->e:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
