.class public Lz2/ce$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/uw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ce;->OooO0oO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ce$OooO0OO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ce$OooO0OO;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Lz2/ce;


# direct methods
.method public constructor <init>(Lz2/ce;Lz2/ce$OooO0OO;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/ce$OooO00o;->OooO0Oo:Lz2/ce;

    iput-object p2, p0, Lz2/ce$OooO00o;->OooO00o:Lz2/ce$OooO0OO;

    iput-object p3, p0, Lz2/ce$OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p4, p0, Lz2/ce$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lz2/tw;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lz2/ce$OooO00o;->OooO00o:Lz2/ce$OooO0OO;

    invoke-interface {p1, p2}, Lz2/ce$OooO0OO;->OooO0O0(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lz2/tw;Lz2/sx;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "download 3 --> downLoadLength="

    const/16 v0, 0x800

    new-array v0, v0, [B

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lz2/ce$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lz2/ce$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v5

    invoke-virtual {v5}, Lz2/tx;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v6

    invoke-virtual {v6}, Lz2/tx;->contentLength()J

    move-result-wide v13

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v7, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v3, v9, :cond_1

    invoke-virtual {v6, v0, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v3

    add-long v10, v7, v9

    iget-object v7, v1, Lz2/ce$OooO00o;->OooO0Oo:Lz2/ce;

    invoke-static {v7, v3}, Lz2/ce;->OooO0OO(Lz2/ce;I)I

    long-to-float v3, v10

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v3, v3, v7

    long-to-float v7, v13

    div-float/2addr v3, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v3, v3, v7

    float-to-int v12, v3

    iget-object v7, v1, Lz2/ce$OooO00o;->OooO00o:Lz2/ce$OooO0OO;

    move-wide v8, v13

    move-wide v15, v10

    invoke-interface/range {v7 .. v12}, Lz2/ce$OooO0OO;->OooO00o(JJI)V

    move-wide v7, v15

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, v1, Lz2/ce$OooO00o;->OooO00o:Lz2/ce$OooO0OO;

    invoke-interface {v0, v4}, Lz2/ce$OooO0OO;->OooO0OO(Ljava/io/File;)V

    iget-object v0, v1, Lz2/ce$OooO00o;->OooO0Oo:Lz2/ce;

    invoke-static {v0, v10}, Lz2/ce;->OooO0O0(Lz2/ce;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lz2/ce;->OooO0Oo()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lz2/ce$OooO00o;->OooO0Oo:Lz2/ce;

    invoke-static {v2}, Lz2/ce;->OooO00o(Lz2/ce;)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v3

    :goto_2
    move-object v3, v5

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v3

    :goto_3
    move-object v3, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v6, v3

    :goto_4
    :try_start_4
    iget-object v4, v1, Lz2/ce$OooO00o;->OooO00o:Lz2/ce$OooO0OO;

    invoke-interface {v4, v0}, Lz2/ce$OooO0OO;->OooO0O0(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    invoke-static {}, Lz2/ce;->OooO0Oo()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lz2/ce$OooO00o;->OooO0Oo:Lz2/ce;

    invoke-static {v2}, Lz2/ce;->OooO00o(Lz2/ce;)I

    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    :goto_5
    return-void

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    invoke-static {}, Lz2/ce;->OooO0Oo()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lz2/ce$OooO00o;->OooO0Oo:Lz2/ce;

    invoke-static {v2}, Lz2/ce;->OooO00o(Lz2/ce;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    throw v0
.end method
