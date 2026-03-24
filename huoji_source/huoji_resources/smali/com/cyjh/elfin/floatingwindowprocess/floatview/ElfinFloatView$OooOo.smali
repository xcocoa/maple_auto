.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOo"
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0OO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "\u06ec\u06ec\u06e5\u06df\u06e7\u06e6\u06e0\u06da\u06d8\u06dc\u06d7\u06e8\u06e4\u06e4\u06e1\u06eb\u06d9\u06dc\u06ec\u06d8\u06e5\u06d6\u06db\u06d8\u06e7\u06d7\u06e5\u06d8\u06d8\u06e1\u06e8\u06e1\u06e6\u06dc\u06ec\u06db\u06e0\u06ec\u06e5\u06e1\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x160

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xae

    const/16 v2, 0xf1

    const v3, 0x5d1363e7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e2\u06da\u06e0\u06e2\u06e4\u06df\u06eb\u06ec\u06d9\u06db\u06d8\u06d8\u06e5\u06d6\u06e1\u06d8\u06df\u06e6\u06d7\u06d9\u06df\u06d6\u06e1\u06e1\u06d6\u06d8\u06da\u06eb\u06e6\u06d8\u06dc\u06ec\u06dc\u06d8\u06da\u06d9\u06d9\u06df\u06e5\u06d8\u06db\u06df\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e6\u06d8\u06d8\u06ec\u06e7\u06dc\u06d8\u06e2\u06e4\u06e6\u06d8\u06e8\u06dc\u06e8\u06df\u06e4\u06ec\u06dc\u06d8\u06d6\u06e5\u06db\u06ec\u06e8\u06e6\u06d8\u06ec\u06d7\u06e5\u06e5\u06e1\u06e1\u06d8\u06d7\u06e4\u06d8\u06e5"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5a1aaf24 -> :sswitch_1
        -0x479676c2 -> :sswitch_2
        -0x32de0564 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const-string v0, "\u06d9\u06d6\u06db\u06e7\u06ec\u06da\u06e6\u06e5\u06e8\u06d8\u06d9\u06d9\u06e8\u06e1\u06df\u06e5\u06d8\u06e1\u06dc\u06dc\u06d8\u06e0\u06e4\u06eb\u06da\u06e5\u06d8\u06d6\u06e7\u06d9\u06e7\u06ec\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3cb

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x6c

    const/16 v2, 0x38e

    const v3, 0x5bab5680

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e5\u06e5\u06e8\u06df\u06e1\u06d8\u06eb\u06eb\u06dc\u06d8\u06e2\u06e1\u06e0\u06d9\u06d8\u06d8\u06df\u06ec\u06d8\u06d8\u06d7\u06e1\u06d7\u06db\u06df\u06e6\u06d9\u06df\u06e7\u06e2\u06d6\u06e7\u06d8\u06e2\u06db\u06e7\u06df\u06e2\u06e7\u06db\u06ec\u06e0\u06ec\u06eb\u06dc\u06d6\u06d6\u06d8\u06d8\u06e5\u06ec\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06dc\u06e5\u06db\u06e0\u06d7\u06ec\u06d8\u06e0\u06e5\u06d6\u06e5\u06d8\u06e6\u06da\u06df\u06e4\u06e6\u06e5\u06d8\u06d6\u06e2\u06dc\u06d8\u06e4\u06e1\u06e4\u06e0\u06e5\u06e2\u06d8\u06d9\u06e1\u06e1\u06da\u06e7\u06e2\u06e2\u06dc\u06e2\u06da\u06d7\u06d7\u06d8\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06eb\u06e7\u06e7\u06dc\u06e8\u06e1\u06e0\u06e4\u06e0\u06e7\u06e0\u06e8\u06e4\u06d6\u06d8\u06ec\u06ec\u06e7\u06e5\u06e7\u06df\u06db\u06df\u06e8\u06d8\u06e6\u06e7\u06d8\u06e5\u06e0\u06e5"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e0\u06db\u06e4\u06e5\u06e7\u06e1\u06da\u06dc\u06d8\u06ec\u06e2\u06e0\u06eb\u06da\u06dc\u06db\u06e4\u06d8\u06e5\u06e0\u06e8\u06d8\u06db\u06d7\u06e6\u06d8\u06e4\u06d8\u06e8\u06d8\u06d7\u06e5\u06e0\u06d7\u06eb\u06d9\u06e8\u06e0\u06e7\u06e4\u06d9\u06e5\u06db\u06e5\u06db\u06e0\u06da\u06df\u06d9\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e5\u06d9\u06eb\u06dc\u06d9\u06e0\u06da\u06d8\u06e4\u06ec\u06e8\u06e8\u06e8\u06ec\u06d8\u06d6\u06e8\u06e0\u06df\u06dc\u06e2\u06da\u06e5\u06e5\u06d7\u06dc\u06d9\u06d6\u06ec\u06e0"

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e825334 -> :sswitch_3
        -0x360e7d87 -> :sswitch_4
        -0x1252bae2 -> :sswitch_5
        0x15dc4932 -> :sswitch_2
        0x50e31267 -> :sswitch_0
        0x7880fd1a -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "\u06e2\u06e4\u06e6\u06d8\u06d9\u06df\u06e2\u06e2\u06da\u06e5\u06d8\u06d7\u06d9\u06db\u06e1\u06e8\u06d7\u06df\u06dc\u06e0\u06da\u06e7\u06eb\u06d8\u06d6\u06e0\u06e7\u06e8\u06d8\u06ec\u06dc\u06e8\u06d7\u06d9\u06da\u06e5\u06da\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x72

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e6

    const/16 v2, 0x31d

    const v3, -0x4d85a49f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06df\u06e4\u06eb\u06d9\u06dc\u06d8\u06e8\u06e0\u06df\u06e8\u06e4\u06e8\u06d8\u06d6\u06e2\u06e0\u06d6\u06d8\u06d8\u06e8\u06e8\u06d6\u06d8\u06d8\u06e8\u06e4\u06e0\u06d7\u06e5\u06d8\u06d8\u06eb\u06d8\u06df\u06e7\u06dc\u06e5\u06e1\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06d9\u06e8\u06eb\u06da\u06e7\u06e7\u06ec\u06d9\u06e5\u06d6\u06e1\u06d8\u06da\u06dc\u06d8\u06dc\u06e4\u06da\u06d7\u06e6\u06e2\u06d6\u06ec\u06dc\u06e6\u06eb\u06d7\u06ec\u06d7\u06e6\u06e0\u06e0\u06d6\u06d6\u06e8\u06d8\u06df\u06e0\u06e5\u06dc\u06d7\u06e0\u06e1\u06dc\u06e7\u06da\u06dc\u06ec\u06e8\u06dc\u06db\u06d6\u06d8\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x658ce02 -> :sswitch_0
        0x8ad66af -> :sswitch_1
        0x1f571346 -> :sswitch_2
    .end sparse-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const-string v0, "\u06df\u06e0\u06eb\u06d8\u06e1\u06e5\u06d8\u06e8\u06e4\u06e8\u06df\u06eb\u06eb\u06e8\u06e6\u06e2\u06df\u06db\u06db\u06d7\u06d8\u06e1\u06d8\u06e6\u06dc\u06eb\u06e8\u06df\u06e6\u06d6\u06d8\u06e6\u06e0\u06e1\u06e8\u06e8\u06e8\u06e8\u06e8\u06d9\u06e5\u06e2\u06df\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f1

    const/16 v2, 0xd8

    const v3, 0x67e46fcd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06da\u06ec\u06e7\u06d8\u06e7\u06d8\u06e8\u06d8\u06e1\u06e2\u06e2\u06eb\u06dc\u06da\u06e1\u06d8\u06d9\u06ec\u06dc\u06d8\u06e6\u06d9\u06e7\u06da\u06ec\u06e1\u06dc\u06e5\u06d9\u06ec\u06df\u06e1\u06d8\u06e7\u06db\u06eb\u06ec\u06dc\u06e1\u06e7\u06e8\u06d7\u06e1\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06d7\u06e6\u06e2\u06e7\u06df\u06dc\u06e6\u06dc\u06d8\u06da\u06d9\u06e4\u06e6\u06ec\u06e1\u06d9\u06e5\u06e7\u06d8\u06e0\u06db\u06df\u06ec\u06d6\u06e1\u06d6\u06e1\u06e1\u06da\u06e8\u06d6\u06d9\u06d6\u06e5\u06e0\u06e4\u06e7\u06d6\u06da\u06e5\u06d8\u06dc\u06ec\u06e2\u06dc\u06d7\u06e6\u06d8\u06e6\u06da\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e8\u06d9\u06e5\u06d8\u06dc\u06d9\u06df\u06d9\u06d7\u06e8\u06e5\u06df\u06e6\u06d8\u06da\u06e5\u06e4\u06e1\u06e5\u06e4\u06d6\u06dc\u06e1\u06d8\u06e1\u06ec\u06da\u06e6\u06e1\u06d8\u06e4\u06e5\u06e5\u06d8\u06e8\u06e6\u06d6\u06e1\u06e5\u06d6"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d8\u06e8\u06e2\u06df\u06e7\u06e8\u06e5\u06db\u06e4\u06d9\u06e7\u06e7\u06eb\u06d8\u06e6\u06db\u06da\u06d7\u06df\u06e0\u06d6\u06e4\u06e8\u06d8\u06e4\u06e4\u06e8\u06d8\u06d7\u06d7\u06e1\u06d8\u06d9\u06d7\u06eb\u06df\u06da\u06e0\u06e1\u06d8\u06e2\u06e5\u06e7\u06dc\u06eb\u06e5\u06e2\u06d8\u06ec\u06e6\u06d6\u06d8\u06e8\u06df\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06d6\u06e1\u06d6\u06d8\u06e0\u06da\u06ec\u06dc\u06e2\u06e8\u06e8\u06e6\u06d8\u06d8\u06ec\u06d7\u06e2\u06e1\u06d6\u06e0\u06da\u06e1\u06e5\u06ec\u06df\u06d6\u06d8\u06df\u06eb\u06d9\u06e5\u06e0\u06e5\u06e1\u06e6\u06d8\u06d8\u06e0\u06e1\u06ec\u06e0\u06df\u06e2\u06e5\u06e1\u06d6\u06ec\u06e6\u06e4\u06e6\u06df\u06e0"

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d6779c -> :sswitch_4
        -0x54b9ae4d -> :sswitch_1
        -0x49e6ed25 -> :sswitch_3
        -0x1e07ade6 -> :sswitch_5
        0x2baf16a -> :sswitch_0
        0x20bff2d1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "\u06d7\u06d8\u06e5\u06d8\u06d8\u06e5\u06d6\u06d8\u06d7\u06e5\u06d6\u06da\u06e5\u06e1\u06e8\u06d7\u06e0\u06da\u06e5\u06e7\u06ec\u06e8\u06d7\u06ec\u06e8\u06ec\u06d8\u06e7\u06d7\u06df\u06da\u06eb\u06e6\u06eb\u06df\u06e4\u06da\u06d6\u06da\u06e2\u06e6\u06e8\u06e1\u06d8\u06e5\u06e6\u06e4\u06d7\u06e5\u06e7\u06e5\u06d7\u06e0\u06d6\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x342

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x19e

    const/16 v2, 0x322

    const v3, 0x5ef6d788

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e4\u06e6\u06d8\u06df\u06d6\u06d8\u06ec\u06e8\u06dc\u06dc\u06d9\u06da\u06e4\u06d6\u06e7\u06d8\u06e0\u06db\u06e8\u06e2\u06ec\u06e6\u06df\u06da\u06db\u06d7\u06e7\u06df\u06e6\u06e4\u06dc\u06e2\u06e2\u06e1\u06e7\u06e4\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06dc\u06e0\u06e8\u06d7\u06d7\u06eb\u06e2\u06dc\u06d8\u06dc\u06e1\u06e1\u06eb\u06e1\u06e8\u06e4\u06da\u06da\u06dc\u06dc\u06e5\u06d8\u06df\u06d8\u06e1\u06d8\u06e6\u06e6\u06eb\u06e7\u06e5\u06d8\u06d8\u06d8\u06df\u06d6\u06e7\u06db\u06db"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6943bcd2 -> :sswitch_1
        -0x583a5266 -> :sswitch_2
        -0x4bfb0eda -> :sswitch_0
    .end sparse-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "\u06d6\u06da\u06db\u06e7\u06d6\u06e2\u06e4\u06e5\u06e5\u06e4\u06e2\u06e0\u06e4\u06e2\u06e5\u06e4\u06e1\u06e8\u06e4\u06e5\u06e8\u06d8\u06da\u06d6\u06d8\u06d6\u06e7\u06d7\u06df\u06d8\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1b0

    const/16 v2, 0x21

    const v3, -0x64310658

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d8\u06db\u06e0\u06eb\u06d7\u06e2\u06d6\u06d6\u06d8\u06e4\u06d9\u06d8\u06d8\u06d8\u06d8\u06e1\u06d7\u06d7\u06e5\u06d8\u06da\u06e6\u06dc\u06d8\u06ec\u06e2\u06d7\u06e4\u06e4\u06db\u06ec\u06d7\u06ec\u06e1\u06e6\u06d6\u06d9\u06d8\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06ec\u06e4\u06d9\u06d7\u06d8\u06d8\u06d8\u06eb\u06dc\u06d8\u06dc\u06e0\u06e7\u06d6\u06d9\u06e5\u06e1\u06db\u06ec\u06d8\u06d9\u06df\u06eb\u06e0\u06d7\u06e2\u06e6\u06d6\u06d8\u06d8\u06dc\u06e7\u06e5\u06e6\u06ec\u06d7\u06db\u06d7\u06eb\u06ec\u06d7\u06d6\u06da\u06dc"

    goto :goto_0

    :sswitch_2
    const v1, 0x1d1e9ba3

    const-string v0, "\u06e2\u06df\u06e0\u06ec\u06eb\u06e1\u06d8\u06eb\u06e1\u06df\u06dc\u06e1\u06d7\u06d8\u06e7\u06e1\u06e7\u06e7\u06dc\u06e5\u06da\u06da\u06db\u06e1\u06d8\u06e8\u06eb\u06d6\u06d8\u06e0\u06d6\u06e1\u06d8\u06dc\u06e2\u06e0\u06e6\u06ec\u06eb"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d6\u06e8\u06e7\u06d8\u06db\u06df\u06e6\u06e2\u06e5\u06dc\u06d8\u06e6\u06e4\u06dc\u06e0\u06e1\u06e0\u06e8\u06e1\u06d8\u06e7\u06e0\u06e2\u06e1\u06d8\u06e7\u06e0\u06d8\u06e4\u06ec\u06d7\u06d6\u06d8\u06d8\u06e0\u06d9\u06d6"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e7\u06df\u06df\u06eb\u06e8\u06e8\u06d8\u06e5\u06e4\u06e2\u06e0\u06ec\u06db\u06d6\u06e4\u06e8\u06d8\u06d6\u06e4\u06e7\u06eb\u06db\u06ec\u06d9\u06d8\u06d6\u06e7\u06eb\u06d8\u06d8\u06d8\u06df\u06d8\u06e7\u06dc\u06db\u06e1\u06ec\u06e5\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, -0x647880b5

    const-string v0, "\u06e0\u06e6\u06e1\u06d8\u06d9\u06da\u06df\u06d6\u06db\u06e1\u06da\u06e5\u06d8\u06db\u06e8\u06d8\u06d6\u06e1\u06e1\u06e0\u06da\u06e8\u06d8\u06e4\u06d9\u06e1\u06d8\u06e5\u06d7\u06df\u06e2\u06e8\u06e1\u06d8\u06e1\u06dc\u06e1\u06e1\u06dc\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06da\u06d6\u06dc\u06e7\u06db\u06d6\u06e2\u06d6\u06e4\u06e5\u06d6\u06e2\u06d7\u06d6\u06d8\u06e0\u06d8\u06e1\u06d8\u06e4\u06eb\u06e5\u06d8\u06e6\u06e8\u06e2\u06d8\u06d6\u06eb\u06df\u06eb\u06e2\u06e2\u06d6\u06e8\u06d8\u06d6\u06da\u06e5\u06d8\u06d7\u06d8\u06dc\u06d8\u06dc\u06d9\u06e5\u06e4\u06e7\u06e8\u06e1\u06d6\u06e5\u06db\u06e5\u06df\u06e8\u06ec\u06d7"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d8\u06d9\u06e5\u06da\u06e1\u06d8\u06d9\u06d6\u06db\u06da\u06e1\u06d9\u06eb\u06df\u06db\u06e8\u06db\u06e6\u06d8\u06ec\u06e7\u06e6\u06e6\u06eb\u06e1\u06d8\u06d6\u06df\u06d7\u06d6\u06d7\u06e2"

    goto :goto_2

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOOOo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06d9\u06d9\u06e8\u06d8\u06dc\u06e8\u06d8\u06d9\u06e2\u06d6\u06e0\u06d9\u06eb\u06dc\u06e7\u06d6\u06dc\u06d9\u06d7\u06e4\u06dc\u06d8\u06d6\u06df\u06dc\u06d8\u06d9\u06d9\u06dc\u06d8\u06d9\u06db\u06e4\u06e4\u06e8\u06e7\u06d7\u06e6\u06e4\u06e4\u06d7\u06d8\u06d8\u06e8\u06e6\u06ec\u06e5\u06eb\u06d6\u06e8\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06e1\u06d9\u06e4\u06d6\u06ec\u06eb\u06e4\u06e4\u06e6\u06d9\u06e6\u06ec\u06e7\u06d9\u06ec\u06e0\u06db\u06dc\u06e1\u06d7\u06e8\u06e0\u06e5\u06d8\u06e0\u06ec\u06d8\u06d8\u06e1\u06ec\u06e1\u06da\u06e5\u06d7\u06e5\u06df\u06e0"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e6\u06e1\u06e1\u06d8\u06df\u06e7\u06e1\u06df\u06db\u06d6\u06d7\u06d8\u06d9\u06d7\u06e6\u06d8\u06d8\u06d6\u06e4\u06e6\u06d8\u06d6\u06e0\u06d6\u06e4\u06e6\u06d7\u06e2\u06d9\u06d8\u06d8\u06e4\u06da\u06e6\u06d8\u06db\u06d8\u06e7\u06e5\u06e4\u06d7\u06e5\u06db\u06dc\u06ec\u06e4\u06d9\u06db\u06e0\u06e2\u06e8\u06e5\u06db\u06db\u06d8\u06dc\u06d8\u06e8\u06df\u06e7"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOOOo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "\u06e8\u06e7\u06e1\u06df\u06ec\u06eb\u06e5\u06dc\u06d8\u06e8\u06e5\u06d6\u06dc\u06df\u06d6\u06e5\u06e2\u06db\u06e8\u06db\u06df\u06e7\u06e7\u06eb\u06e5\u06e1\u06d8\u06e1\u06d8\u06e6\u06d8\u06d9\u06d8\u06db\u06eb\u06d6\u06e7\u06d8\u06e5\u06e2\u06e8\u06d8\u06e5\u06d9\u06e5\u06d7\u06d7\u06e0\u06e4\u06d7\u06e2"

    goto :goto_0

    :sswitch_b
    const v1, 0x27c07ae3

    const-string v0, "\u06dc\u06e5\u06dc\u06e6\u06e0\u06ec\u06e4\u06da\u06df\u06e5\u06e2\u06e8\u06d8\u06dc\u06da\u06e2\u06e2\u06dc\u06df\u06ec\u06ec\u06d7\u06da\u06dc\u06d6\u06dc\u06e2\u06d7\u06d8\u06e0\u06ec\u06e7\u06e1\u06df\u06e6\u06e8\u06e5\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06eb\u06e6\u06e1\u06e4\u06d8\u06eb\u06e2\u06d7\u06e1\u06da\u06db\u06eb\u06d6\u06e4\u06d9\u06da\u06dc\u06d8\u06db\u06da\u06ec\u06e6\u06e4\u06e0\u06e7\u06e1\u06da\u06ec\u06e6\u06e6\u06e0\u06e7\u06e2\u06dc\u06da"

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e2\u06db\u06e8\u06e5\u06e6\u06eb\u06d7\u06e7\u06e1\u06e1\u06e7\u06e5\u06d8\u06eb\u06e2\u06da\u06e6\u06eb\u06e1\u06e7\u06d8\u06dc\u06d8\u06d7\u06d9\u06d7\u06e1\u06e1\u06eb\u06dc\u06e7\u06da\u06e4\u06d7\u06d8\u06d8\u06df\u06e4\u06e8\u06d8\u06d8\u06d6\u06d6\u06d8\u06df\u06dc\u06d6\u06e2\u06da\u06e1\u06d8\u06e8\u06db\u06dc\u06d8"

    goto :goto_3

    :sswitch_e
    const v2, 0x5f043c12

    const-string v0, "\u06d6\u06d7\u06dc\u06e5\u06e4\u06e8\u06d8\u06e8\u06e2\u06e1\u06df\u06db\u06d9\u06e1\u06e5\u06e1\u06e5\u06e8\u06d6\u06eb\u06dc\u06dc\u06d8\u06e4\u06d9\u06e0\u06e5\u06dc\u06e1\u06d8\u06e5\u06d6\u06e7\u06d8\u06e0\u06e4\u06d8\u06d8\u06ec\u06db\u06d9\u06e5\u06e1\u06d8\u06e6\u06dc\u06ec\u06e7\u06e1\u06e1\u06ec\u06e4\u06df"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06e8\u06da\u06d8\u06d8\u06d7\u06da\u06d7\u06d6\u06db\u06e8\u06d8\u06ec\u06db\u06d6\u06e4\u06e4\u06e1\u06d8\u06e1\u06d8\u06df\u06e7\u06e0\u06e7\u06df\u06eb\u06da\u06e2\u06ec\u06dc\u06d7\u06ec\u06e2\u06e4\u06e7\u06e7\u06d8\u06df\u06e4\u06d6\u06d6\u06e2\u06d7\u06e0\u06e5\u06e8\u06ec\u06db\u06d7\u06e1\u06e8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e1\u06e4\u06d8\u06d8\u06e7\u06eb\u06d6\u06d9\u06dc\u06db\u06e2\u06eb\u06e2\u06dc\u06e2\u06dc\u06d8\u06e5\u06d7\u06e4\u06e4\u06dc\u06e7\u06d8\u06e2\u06d6\u06d6\u06d8\u06d6\u06e5\u06dc\u06d8\u06d8\u06d8\u06e7\u06e8\u06dc\u06d9\u06e5\u06e4\u06d6\u06e5\u06e8\u06da\u06d6\u06d8\u06d8\u06db\u06d6\u06e2\u06d7\u06e4\u06db"

    goto :goto_4

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoo0(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06d7\u06d9\u06e8\u06d8\u06e0\u06d7\u06e0\u06df\u06d9\u06e6\u06d8\u06e7\u06e5\u06e0\u06e0\u06ec\u06db\u06db\u06e0\u06e5\u06d8\u06df\u06e1\u06e1\u06d8\u06e8\u06eb\u06e5\u06d8\u06e5\u06e5\u06e0\u06da\u06e8\u06e5\u06d8\u06e2\u06d8\u06dc\u06d8\u06e4\u06e0\u06d6\u06d8\u06d6\u06da\u06e6\u06d9\u06e2\u06dc\u06d8\u06eb\u06e2\u06d9\u06df\u06db\u06e1\u06d7\u06e8\u06e5\u06da\u06d8\u06df"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06da\u06db\u06da\u06df\u06d6\u06e5\u06ec\u06e6\u06dc\u06d8\u06e8\u06e2\u06da\u06d7\u06e0\u06e2\u06d8\u06e1\u06e5\u06da\u06df\u06e8\u06d8\u06d6\u06d8\u06eb\u06d7\u06df\u06e0\u06e7\u06d8\u06db\u06d9\u06ec\u06e6\u06da\u06d7\u06ec\u06e2\u06e7\u06e6\u06d6\u06e6\u06e6"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06eb\u06e1\u06e5\u06ec\u06d7\u06da\u06eb\u06e6\u06e6\u06e5\u06eb\u06d8\u06d8\u06ec\u06e8\u06d8\u06e7\u06e8\u06db\u06e8\u06eb\u06d7\u06d6\u06d7\u06dc\u06d8\u06e2\u06db\u06df\u06d8\u06e7\u06e1\u06df\u06da\u06e4\u06d9\u06e2\u06d8\u06df\u06e1\u06e8\u06d8\u06e1\u06d6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo00o(Z)V

    const-string v0, "\u06d6\u06e5\u06df\u06dc\u06e4\u06e5\u06d6\u06e1\u06dc\u06da\u06e6\u06e1\u06e7\u06d8\u06e0\u06da\u06d8\u06da\u06dc\u06d8\u06e6\u06d8\u06d6\u06e5\u06e7\u06d8\u06e1\u06d7\u06e8\u06d8\u06d8\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0, v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo00o(Z)V

    const-string v0, "\u06d8\u06e4\u06ec\u06d7\u06df\u06d6\u06d8\u06d6\u06df\u06e2\u06dc\u06e5\u06e2\u06e6\u06e5\u06e6\u06ec\u06d7\u06d6\u06da\u06e7\u06e1\u06ec\u06ec\u06d6\u06e8\u06e4\u06dc\u06eb\u06ec\u06d8\u06e7\u06e0\u06db\u06ec\u06df"

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOo;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOooO(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "\u06e4\u06db\u06d8\u06d8\u06d7\u06e2\u06d6\u06e4\u06d6\u06ec\u06e5\u06e5\u06ec\u06e6\u06df\u06dc\u06ec\u06ec\u06da\u06eb\u06e6\u06e4\u06da\u06e0\u06e2\u06e0\u06d8\u06db\u06dc\u06e1\u06d8\u06d8\u06e6\u06e0\u06e5\u06df\u06d6\u06db\u06e1\u06e1\u06d7\u06dc\u06eb\u06e4\u06ec\u06e5\u06d8\u06e8\u06e4\u06da\u06e8\u06e6\u06e4\u06d8\u06ec\u06d7"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06e8\u06e7\u06e1\u06df\u06ec\u06eb\u06e5\u06dc\u06d8\u06e8\u06e5\u06d6\u06dc\u06df\u06d6\u06e5\u06e2\u06db\u06e8\u06db\u06df\u06e7\u06e7\u06eb\u06e5\u06e1\u06d8\u06e1\u06d8\u06e6\u06d8\u06d9\u06d8\u06db\u06eb\u06d6\u06e7\u06d8\u06e5\u06e2\u06e8\u06d8\u06e5\u06d9\u06e5\u06d7\u06d7\u06e0\u06e4\u06d7\u06e2"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e0\u06eb\u06e8\u06d8\u06df\u06dc\u06e5\u06d8\u06df\u06eb\u06e8\u06d6\u06dc\u06e7\u06d8\u06e5\u06da\u06e6\u06d8\u06da\u06e6\u06d8\u06e0\u06e1\u06e5\u06ec\u06e1\u06e0\u06e7\u06d7\u06da\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06d8\u06e4\u06ec\u06d7\u06df\u06d6\u06d8\u06d6\u06df\u06e2\u06dc\u06e5\u06e2\u06e6\u06e5\u06e6\u06ec\u06d7\u06d6\u06da\u06e7\u06e1\u06ec\u06ec\u06d6\u06e8\u06e4\u06dc\u06eb\u06ec\u06d8\u06e7\u06e0\u06db\u06ec\u06df"

    goto/16 :goto_0

    :sswitch_19
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4408b274 -> :sswitch_14
        -0x26594a67 -> :sswitch_13
        -0x153b5434 -> :sswitch_b
        0x14fd1416 -> :sswitch_18
        0x2be17605 -> :sswitch_19
        0x2ce42ae0 -> :sswitch_15
        0x3804d25f -> :sswitch_a
        0x411768e0 -> :sswitch_2
        0x46de7959 -> :sswitch_1
        0x56269e1e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xf4b4d2c -> :sswitch_9
        0x1f8858ce -> :sswitch_16
        0x3ee65955 -> :sswitch_5
        0x5dd23cec -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7f30691b -> :sswitch_7
        -0x12c4e558 -> :sswitch_6
        0x3e293144 -> :sswitch_4
        0x53c0eea3 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6b9022d8 -> :sswitch_17
        -0x5c54769f -> :sswitch_c
        -0x4cf3c4c3 -> :sswitch_12
        -0x2621cc0f -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x74ff83b9 -> :sswitch_d
        -0x2d299fa6 -> :sswitch_10
        -0x187af033 -> :sswitch_f
        0x2b4c35cf -> :sswitch_11
    .end sparse-switch
.end method
