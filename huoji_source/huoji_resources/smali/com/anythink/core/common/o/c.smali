.class public final Lcom/anythink/core/common/o/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/o/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gtz p2, :cond_0

    if-gtz p3, :cond_0

    return v0

    :cond_0
    :goto_0
    div-int v1, p0, v0

    if-le v1, p2, :cond_1

    div-int v1, p1, v0

    if-le v1, p3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p2, p3}, Lcom/anythink/core/common/o/c;->a(IIII)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Error"

    const-string v0, "Error, cannot access an invalid/free\'d bitmap here!"

    invoke-static {p1, v0, p0}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/high16 v4, 0x41c80000    # 25.0f

    :try_start_4
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, 0x33000000

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v1

    move-object v3, p1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p1, v1

    goto :goto_4

    :cond_1
    :try_start_5
    invoke-static {v0}, Lcom/anythink/core/common/o/c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    nop

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    nop

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    :try_start_8
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_3

    :catchall_6
    nop

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    :cond_5
    return-object v0

    :catchall_8
    move-exception v0

    move-object p0, v1

    move-object p1, p0

    :goto_4
    move-object v2, p1

    move-object v3, v2

    :goto_5
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    if-eqz p0, :cond_6

    :try_start_b
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_6

    :catchall_9
    nop

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_7

    :catchall_a
    nop

    :cond_7
    :goto_7
    if-eqz p1, :cond_8

    :try_start_d
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_8

    :catchall_b
    nop

    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    :try_start_e
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    :catchall_c
    :cond_9
    return-object v1

    :catchall_d
    move-exception v0

    if-eqz p0, :cond_a

    :try_start_f
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_9

    :catchall_e
    nop

    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    :try_start_10
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    goto :goto_a

    :catchall_f
    nop

    :cond_b
    :goto_a
    if-eqz p1, :cond_c

    :try_start_11
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    goto :goto_b

    :catchall_10
    nop

    :cond_c
    :goto_b
    if-eqz v3, :cond_d

    :try_start_12
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    :catchall_11
    :cond_d
    throw v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 33

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v0, v8, -0x1

    add-int/lit8 v1, v9, -0x1

    new-array v2, v10, [I

    new-array v3, v10, [I

    new-array v4, v10, [I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    const v6, 0x2a400

    new-array v7, v6, [I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_0

    div-int/lit16 v13, v12, 0x2a4

    aput v13, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    new-array v12, v6, [I

    fill-array-data v12, :array_0

    const-class v13, I

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/16 v16, -0x19

    const/16 v6, 0x19

    const/16 v18, 0x1

    if-ge v13, v9, :cond_5

    const/16 v10, -0x19

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_2
    const v28, 0xff00

    const/high16 v29, 0xff0000

    move/from16 v31, v9

    if-gt v10, v6, :cond_2

    const/4 v6, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v14

    aget v9, v11, v9

    add-int/lit8 v19, v10, 0x19

    aget-object v32, v12, v19

    and-int v19, v9, v29

    shr-int/lit8 v19, v19, 0x10

    aput v19, v32, v6

    and-int v19, v9, v28

    shr-int/lit8 v19, v19, 0x8

    aput v19, v32, v18

    and-int/lit16 v9, v9, 0xff

    const/16 v17, 0x2

    aput v9, v32, v17

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x1a

    aget v19, v32, v6

    mul-int v19, v19, v9

    add-int v16, v16, v19

    aget v19, v32, v18

    mul-int v19, v19, v9

    add-int v20, v20, v19

    aget v19, v32, v17

    mul-int v19, v19, v9

    add-int v21, v21, v19

    if-lez v10, :cond_1

    aget v9, v32, v6

    add-int v25, v25, v9

    aget v9, v32, v18

    add-int v26, v26, v9

    aget v9, v32, v17

    add-int v27, v27, v9

    goto :goto_3

    :cond_1
    aget v9, v32, v6

    add-int v22, v22, v9

    aget v6, v32, v18

    add-int v23, v23, v6

    aget v6, v32, v17

    add-int v24, v24, v6

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v31

    const/16 v6, 0x19

    goto :goto_2

    :cond_2
    const/16 v6, 0x19

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_4

    aget v10, v7, v16

    aput v10, v2, v14

    aget v10, v7, v20

    aput v10, v3, v14

    aget v10, v7, v21

    aput v10, v4, v14

    sub-int v16, v16, v22

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    add-int/lit8 v10, v6, -0x19

    add-int/lit8 v10, v10, 0x33

    rem-int/lit8 v10, v10, 0x33

    aget-object v10, v12, v10

    const/16 v19, 0x0

    aget v30, v10, v19

    sub-int v22, v22, v30

    aget v30, v10, v18

    sub-int v23, v23, v30

    const/16 v17, 0x2

    aget v30, v10, v17

    sub-int v24, v24, v30

    if-nez v13, :cond_3

    add-int/lit8 v30, v9, 0x19

    move-object/from16 v32, v7

    add-int/lit8 v7, v30, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v5, v9

    goto :goto_5

    :cond_3
    move-object/from16 v32, v7

    :goto_5
    aget v7, v5, v9

    add-int/2addr v7, v15

    aget v7, v11, v7

    and-int v30, v7, v29

    shr-int/lit8 v30, v30, 0x10

    const/16 v19, 0x0

    aput v30, v10, v19

    and-int v30, v7, v28

    shr-int/lit8 v30, v30, 0x8

    aput v30, v10, v18

    and-int/lit16 v7, v7, 0xff

    const/16 v17, 0x2

    aput v7, v10, v17

    aget v7, v10, v19

    add-int v25, v25, v7

    aget v7, v10, v18

    add-int v26, v26, v7

    aget v7, v10, v17

    add-int v27, v27, v7

    add-int v16, v16, v25

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x33

    rem-int/lit8 v7, v6, 0x33

    aget-object v7, v12, v7

    const/4 v10, 0x0

    aget v19, v7, v10

    add-int v22, v22, v19

    aget v19, v7, v18

    add-int v23, v23, v19

    const/16 v17, 0x2

    aget v19, v7, v17

    add-int v24, v24, v19

    aget v30, v7, v10

    sub-int v25, v25, v30

    aget v10, v7, v18

    sub-int v26, v26, v10

    aget v7, v7, v17

    sub-int v27, v27, v7

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v32

    goto/16 :goto_4

    :cond_4
    move-object/from16 v32, v7

    add-int/2addr v15, v8

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v31

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v32, v7

    move/from16 v31, v9

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v8, :cond_b

    mul-int/lit8 v0, v8, -0x19

    move-object/from16 v23, v5

    move-object/from16 v24, v11

    const/16 v5, -0x19

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x19

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_7
    if-gt v5, v11, :cond_8

    const/4 v11, 0x0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v25, v19, v6

    add-int/lit8 v19, v5, 0x19

    aget-object v26, v12, v19

    aget v19, v2, v25

    aput v19, v26, v11

    aget v11, v3, v25

    aput v11, v26, v18

    aget v11, v4, v25

    const/16 v17, 0x2

    aput v11, v26, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x1a

    aget v27, v2, v25

    mul-int v27, v27, v11

    add-int v7, v7, v27

    aget v27, v3, v25

    mul-int v27, v27, v11

    add-int v9, v9, v27

    aget v25, v4, v25

    mul-int v25, v25, v11

    add-int v10, v10, v25

    const/4 v11, 0x0

    if-lez v5, :cond_6

    aget v19, v26, v11

    add-int v20, v20, v19

    aget v19, v26, v18

    add-int v21, v21, v19

    const/16 v17, 0x2

    aget v19, v26, v17

    add-int v22, v22, v19

    goto :goto_8

    :cond_6
    const/16 v17, 0x2

    aget v25, v26, v11

    add-int v13, v13, v25

    aget v11, v26, v18

    add-int/2addr v14, v11

    aget v11, v26, v17

    add-int/2addr v15, v11

    :goto_8
    if-ge v5, v1, :cond_7

    add-int/2addr v0, v8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0x19

    goto :goto_7

    :cond_8
    move v5, v6

    move/from16 v11, v31

    const/4 v0, 0x0

    const/16 v25, 0x19

    :goto_9
    if-ge v0, v11, :cond_a

    const/high16 v26, -0x1000000

    aget v27, v24, v5

    and-int v26, v27, v26

    aget v27, v32, v7

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v32, v9

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v32, v10

    or-int v26, v26, v27

    aput v26, v24, v5

    sub-int/2addr v7, v13

    sub-int/2addr v9, v14

    sub-int/2addr v10, v15

    add-int/lit8 v26, v25, -0x19

    add-int/lit8 v26, v26, 0x33

    rem-int/lit8 v26, v26, 0x33

    aget-object v26, v12, v26

    const/16 v19, 0x0

    aget v27, v26, v19

    sub-int v13, v13, v27

    aget v27, v26, v18

    sub-int v14, v14, v27

    const/16 v17, 0x2

    aget v27, v26, v17

    sub-int v15, v15, v27

    if-nez v6, :cond_9

    move/from16 v31, v11

    add-int/lit8 v11, v0, 0x1a

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    mul-int v11, v11, v8

    aput v11, v23, v0

    goto :goto_a

    :cond_9
    move/from16 v31, v11

    :goto_a
    aget v11, v23, v0

    add-int/2addr v11, v6

    aget v27, v2, v11

    const/16 v19, 0x0

    aput v27, v26, v19

    aget v27, v3, v11

    aput v27, v26, v18

    aget v11, v4, v11

    const/16 v17, 0x2

    aput v11, v26, v17

    aget v11, v26, v19

    add-int v20, v20, v11

    aget v11, v26, v18

    add-int v21, v21, v11

    aget v11, v26, v17

    add-int v22, v22, v11

    add-int v7, v7, v20

    add-int v9, v9, v21

    add-int v10, v10, v22

    add-int/lit8 v25, v25, 0x1

    rem-int/lit8 v25, v25, 0x33

    aget-object v11, v12, v25

    const/16 v19, 0x0

    aget v26, v11, v19

    add-int v13, v13, v26

    aget v26, v11, v18

    add-int v14, v14, v26

    const/16 v17, 0x2

    aget v26, v11, v17

    add-int v15, v15, v26

    aget v26, v11, v19

    sub-int v20, v20, v26

    aget v26, v11, v18

    sub-int v21, v21, v26

    aget v11, v11, v17

    sub-int v22, v22, v11

    add-int/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v31

    goto/16 :goto_9

    :cond_a
    move/from16 v31, v11

    const/16 v17, 0x2

    const/16 v19, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v23

    move-object/from16 v11, v24

    goto/16 :goto_6

    :cond_b
    move-object/from16 v24, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v3, v8

    move v6, v8

    move/from16 v7, v31

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0

    :array_0
    .array-data 4
        0x33
        0x3
    .end array-data
.end method

.method public static a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p1, p2}, Lcom/anythink/core/common/o/c;->a(IIII)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1, p2}, Lcom/anythink/core/common/o/c;->a(IIII)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    new-instance v0, Lcom/anythink/core/common/o/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/core/common/o/c$1;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 4

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p0, v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, p0, v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method
