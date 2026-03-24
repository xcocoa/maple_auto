.class public final Lz2/mv;
.super Landroid/os/Handler;
.source ""


# instance fields
.field public OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iput-object p1, p0, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    return-void
.end method

.method private OooO00o([BII)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v11, p2

    move/from16 v12, p3

    array-length v2, v0

    new-array v13, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v12, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v11, :cond_0

    mul-int v5, v4, v12

    add-int/2addr v5, v12

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    mul-int v6, v3, v11

    add-int/2addr v6, v4

    aget-byte v6, v0, v6

    aput-byte v6, v13, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/zbar/lib/ZbarManager;

    invoke-direct {v2}, Lcom/zbar/lib/ZbarManager;-><init>()V

    const/4 v6, 0x1

    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOO0()I

    move-result v7

    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOO0O()I

    move-result v8

    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO0oo()I

    move-result v9

    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO0oO()I

    move-result v10

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v10}, Lcom/zbar/lib/ZbarManager;->decode([BIIZIIII)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    if-eqz v14, :cond_5

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOOo()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lz2/sv;

    iget-object v2, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOO0()I

    move-result v6

    iget-object v2, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOO0O()I

    move-result v7

    iget-object v2, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO0oo()I

    move-result v8

    iget-object v2, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO0oO()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-direct/range {v2 .. v10}, Lz2/sv;-><init>([BIIIIIIZ)V

    invoke-virtual {v0}, Lz2/sv;->OooOOO0()[I

    move-result-object v15

    invoke-virtual {v0}, Lz2/sv;->OooOO0o()I

    move-result v18

    invoke-virtual {v0}, Lz2/sv;->OooOO0O()I

    move-result v19

    const/16 v16, 0x0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v17, v18

    invoke-static/range {v15 .. v20}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Qrcode/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Qrcode.jpg"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v2, 0x7f090269

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lz2/mv;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooO()Landroid/os/Handler;

    move-result-object v0

    const v2, 0x7f090268

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090267

    if-eq v0, v1, :cond_1

    const p1, 0x7f0903ac

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lz2/mv;->OooO00o([BII)V

    :goto_0
    return-void
.end method
