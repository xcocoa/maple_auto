.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$Oooo000;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Oooo000"
.end annotation


# instance fields
.field private OooO00o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$Oooo000;->OooO00o:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0OO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$Oooo000;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06e5\u06ec\u06dc\u06e6\u06dc\u06d8\u06e6\u06e7\u06e1\u06d8\u06e1\u06e2\u06e5\u06d9\u06d6\u06d7\u06ec\u06eb\u06db\u06eb\u06dc\u06e6\u06d8\u06d8\u06ec\u06e1\u06d8\u06e1\u06d6\u06d9\u06e8\u06d9\u06d6\u06d8"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x3b3

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x2fd

    const/16 v4, 0x3c1

    const v5, 0x1af0f903

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e5\u06e5\u06e2\u06df\u06dc\u06d8\u06df\u06e8\u06e7\u06dc\u06e1\u06dc\u06e0\u06ec\u06e5\u06e4\u06e6\u06e6\u06dc\u06db\u06e8\u06e0\u06e8\u06d7\u06d6\u06db\u06e4\u06e7\u06df\u06eb\u06e2\u06d6\u06ec\u06eb\u06eb\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06db\u06e6\u06d8\u06ec\u06dc\u06e6\u06ec\u06e6\u06d6\u06ec\u06df\u06e0\u06e1\u06d9\u06da\u06d6\u06d8\u06e1\u06d8\u06dc\u06d8\u06e8\u06eb\u06e5\u06eb\u06e7\u06e0\u06d6\u06e2\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "\u06db\u06d9\u06d6\u06eb\u06e6\u06dc\u06d8\u06d9\u06ec\u06d6\u06e0\u06e7\u06dc\u06d8\u06da\u06eb\u06df\u06e1\u06e4\u06e8\u06d8\u06e4\u06da\u06d8\u06e5\u06e1\u06d6\u06d8\u06e7\u06e6\u06d6\u06d8\u06e6\u06da\u06d8\u06d8\u06e5\u06db\u06ec\u06eb\u06d9\u06d6\u06e4\u06da\u06e1\u06dc\u06e7\u06d8\u06d8\u06e1\u06e0\u06e6\u06e2\u06db\u06dc\u06d8\u06e0\u06ec\u06e7\u06db\u06e7\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$Oooo000;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const-string v1, "\u06d9\u06d7\u06d6\u06ec\u06e7\u06e5\u06d8\u06db\u06d6\u06dc\u06d8\u06db\u06d6\u06d9\u06d9\u06eb\u06d7\u06dc\u06df\u06dc\u06d8\u06df\u06e4\u06e5\u06eb\u06d7\u06e1\u06d8\u06d7\u06d9\u06e5\u06da\u06d6\u06da"

    move-object v3, v0

    goto :goto_0

    :sswitch_4
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v0, "\u06e5\u06e6\u06e5\u06d8\u06db\u06e1\u06d7\u06db\u06d7\u06db\u06d7\u06e7\u06df\u06eb\u06e6\u06d7\u06eb\u06d6\u06eb\u06e8\u06d9\u06e5\u06e5\u06dc\u06e1\u06e5\u06db\u06d8\u06e2\u06db\u06e4\u06e4\u06d6\u06d7\u06dc\u06d8\u06e6\u06db\u06e5\u06d7\u06db\u06e2\u06e1\u06d8\u06dc\u06d8\u06db\u06e2\u06e5\u06d8\u06d7\u06e7\u06e6\u06e4\u06da\u06e8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v1, 0x4760cef5

    const-string v0, "\u06e2\u06e5\u06d7\u06ec\u06eb\u06e8\u06e6\u06d8\u06dc\u06eb\u06df\u06d7\u06e5\u06d8\u06e4\u06e5\u06e6\u06da\u06ec\u06d7\u06d8\u06df\u06e6\u06dc\u06dc\u06e0\u06e6\u06e1\u06d6\u06ec\u06db\u06e1\u06da\u06e5\u06e0\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v1

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e5\u06e7\u06da\u06da\u06da\u06eb\u06dc\u06da\u06ec\u06e8\u06ec\u06dc\u06d8\u06e6\u06d8\u06dc\u06e2\u06ec\u06e7\u06e0\u06e1\u06d6\u06e8\u06eb\u06e4\u06da\u06df\u06e1\u06ec\u06dc\u06d8\u06e7\u06d6\u06d7\u06e2\u06e0\u06d6\u06d8\u06e2\u06ec\u06df\u06dc\u06e1\u06e6\u06d8\u06d7\u06e2\u06d8\u06df\u06eb\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06d6\u06e6\u06d6\u06d8\u06dc\u06d7\u06e8\u06e8\u06d9\u06e6\u06ec\u06e0\u06e8\u06d8\u06e8\u06dc\u06dc\u06d8\u06e0\u06e5\u06d7\u06d6\u06eb\u06d9\u06e1\u06eb\u06e7\u06eb\u06e1\u06e8\u06d8\u06e4\u06df\u06dc\u06d8\u06d8\u06dc\u06e6\u06dc\u06e5\u06dc\u06e4\u06d6\u06d9\u06eb\u06db\u06dc\u06d8"

    goto :goto_1

    :sswitch_8
    const v4, 0x3332b4ce

    const-string v0, "\u06e7\u06d6\u06df\u06ec\u06e8\u06d7\u06e5\u06e7\u06d6\u06da\u06dc\u06e6\u06ec\u06e5\u06e6\u06d8\u06e4\u06d7\u06e8\u06d8\u06df\u06e1\u06db\u06e0\u06db\u06e6\u06e0\u06dc\u06da\u06e8\u06eb\u06e8\u06d8\u06e4\u06d8\u06dc\u06e1\u06e5\u06e8\u06d8\u06e6\u06e8\u06e6\u06e2\u06d8\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06da\u06d6\u06e8\u06d8\u06ec\u06db\u06e0\u06df\u06d9\u06e7\u06e7\u06dc\u06e4\u06ec\u06e6\u06d8\u06e2\u06eb\u06e5\u06d7\u06d7\u06e4\u06e0\u06d9\u06e0\u06e4\u06d6\u06e7\u06e5\u06db\u06e1\u06e8\u06e1\u06e5\u06e8\u06e6\u06eb"

    goto :goto_1

    :cond_0
    const-string v0, "\u06da\u06d7\u06d8\u06e0\u06d9\u06d8\u06d8\u06df\u06e2\u06e8\u06d8\u06eb\u06e8\u06d6\u06d8\u06eb\u06d6\u06d6\u06d8\u06e7\u06e4\u06db\u06e0\u06e7\u06e6\u06d8\u06e8\u06d7\u06e7\u06da\u06e2\u06e7\u06db\u06e5\u06e7\u06d8\u06e5\u06e7\u06e8\u06d8\u06e6\u06da\u06d6\u06d8\u06dc\u06e5\u06e0\u06dc\u06d7\u06dc\u06d8\u06e7\u06e7\u06e5\u06e0\u06d6\u06da"

    goto :goto_2

    :sswitch_a
    const/16 v0, 0x3e8

    if-eq v2, v0, :cond_0

    const-string v0, "\u06df\u06d9\u06d7\u06d8\u06db\u06d9\u06e6\u06da\u06da\u06e7\u06e4\u06da\u06e4\u06e5\u06e1\u06d9\u06da\u06d9\u06eb\u06ec\u06dc\u06d8\u06e5\u06e1\u06e6\u06e0\u06eb\u06d6\u06e7\u06dc\u06db\u06d7\u06e1\u06e6\u06e5\u06e2\u06da"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e7\u06e4\u06eb\u06e8\u06df\u06df\u06d9\u06d6\u06d9\u06d9\u06e2\u06e4\u06e6\u06db\u06e6\u06d9\u06ec\u06da\u06d9\u06e8\u06e8\u06df\u06e4\u06d6\u06dc\u06e6\u06da\u06e7\u06e8\u06d8\u06da\u06ec\u06e5\u06e1\u06e0\u06db\u06db\u06e4\u06e4\u06d8\u06e0\u06e2\u06ec\u06e6\u06e7\u06d8\u06e2\u06ec\u06e1\u06da\u06d6\u06e5\u06d8\u06e4\u06e8"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06d9\u06d8\u06d8\u06e4\u06e0\u06db\u06e5\u06d9\u06e5\u06df\u06df\u06e1\u06d8\u06da\u06ec\u06e1\u06d8\u06d9\u06e0\u06dc\u06df\u06e0\u06ec\u06d7\u06da\u06da\u06df\u06e2\u06e4\u06d9\u06e8\u06e7\u06d8\u06d9\u06e5\u06d7\u06e4\u06d6\u06e7\u06d8\u06db\u06d6\u06e6\u06d7\u06da\u06d9\u06d7\u06e7\u06e5\u06e0\u06e8\u06d8"

    goto :goto_1

    :sswitch_d
    const v1, -0xf0a04e3

    const-string v0, "\u06e0\u06da\u06e5\u06d8\u06e7\u06eb\u06e4\u06e1\u06d7\u06d8\u06ec\u06e6\u06e0\u06da\u06e6\u06e1\u06d8\u06d6\u06db\u06dc\u06d8\u06e1\u06e2\u06dc\u06d8\u06df\u06e4\u06e6\u06d8\u06d7\u06e2\u06e5\u06dc\u06e7\u06d7\u06d9\u06e1\u06e5\u06d8\u06e5\u06eb\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v1

    sparse-switch v4, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06ec\u06da\u06e4\u06eb\u06d9\u06e7\u06d9\u06e7\u06d9\u06e4\u06da\u06eb\u06d9\u06d8\u06df\u06d7\u06e5\u06eb\u06e5\u06d7\u06ec\u06d9\u06d6\u06d6\u06e5\u06e0\u06db\u06e1\u06e6\u06e2\u06e8\u06db\u06e6\u06e2\u06d9\u06eb\u06d8\u06eb\u06e2\u06da\u06d6\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06eb\u06e1\u06e6\u06d8\u06e0\u06e8\u06e7\u06dc\u06e8\u06d8\u06e8\u06eb\u06e2\u06e0\u06e1\u06d9\u06da\u06e1\u06e6\u06d8\u06e2\u06dc\u06e7\u06d8\u06df\u06e0\u06e8\u06d8\u06eb\u06d9\u06e5\u06da\u06d7\u06d7\u06da\u06dc\u06e7\u06e8\u06eb\u06d9"

    goto :goto_3

    :sswitch_10
    const v4, 0x14aded68

    const-string v0, "\u06e6\u06e1\u06df\u06e0\u06ec\u06df\u06eb\u06e6\u06e8\u06d8\u06ec\u06d7\u06d6\u06df\u06e8\u06d8\u06dc\u06eb\u06d9\u06d8\u06da\u06dc\u06d8\u06e1\u06dc\u06e4\u06eb\u06e4\u06eb\u06e5\u06d7\u06e0\u06eb\u06e8\u06e5\u06d8\u06e6\u06d7\u06e8\u06d8\u06e0\u06e7\u06d8\u06db\u06d8\u06e6\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d8\u06e7\u06e8\u06e8\u06d6\u06dc\u06d8\u06ec\u06eb\u06eb\u06e6\u06e0\u06e4\u06d9\u06eb\u06dc\u06d8\u06e7\u06d6\u06e0\u06d7\u06df\u06e1\u06e1\u06e1\u06ec\u06ec\u06d7\u06ec\u06e6\u06d6\u06d8\u06d8\u06e1\u06e7\u06e8\u06d8\u06df\u06e1\u06d8\u06d8\u06eb\u06d6\u06ec\u06d9\u06e7"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e8\u06d6\u06d9\u06e0\u06ec\u06df\u06e4\u06e1\u06e6\u06eb\u06e2\u06d8\u06d8\u06d8\u06e7\u06e8\u06e6\u06d7\u06df\u06da\u06dc\u06e2\u06dc\u06dc\u06e0\u06e4\u06e7\u06e8\u06d6\u06d7\u06e8\u06d8"

    goto :goto_4

    :sswitch_12
    const/16 v0, 0x3e9

    if-eq v2, v0, :cond_1

    const-string v0, "\u06e2\u06d8\u06e8\u06e8\u06e0\u06db\u06d6\u06e6\u06e2\u06e2\u06d6\u06d8\u06e8\u06dc\u06d6\u06d8\u06e5\u06e6\u06dc\u06e8\u06db\u06d6\u06d7\u06e1\u06dc\u06d8\u06dc\u06e0\u06e5\u06d6\u06e7\u06e1\u06d8\u06eb\u06e0\u06df\u06db\u06e0\u06e8\u06e4\u06d6\u06dc\u06d8\u06e8\u06d8\u06dc\u06dc\u06e8\u06d6\u06d8\u06e8\u06d7\u06dc\u06d6\u06e2\u06e0\u06d8\u06e0\u06ec"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e4\u06e4\u06d7\u06e5\u06e2\u06d6\u06d9\u06eb\u06e8\u06d8\u06e5\u06e8\u06e0\u06df\u06d7\u06da\u06e0\u06df\u06db\u06e1\u06e5\u06d8\u06df\u06e8\u06d8\u06d8\u06df\u06eb\u06e6\u06d8\u06e1\u06d6\u06e0\u06dc\u06da\u06d8\u06d8\u06d7\u06d7\u06e2\u06d8\u06e8\u06e5\u06d8\u06dc\u06db\u06d8\u06d8\u06d6\u06e4\u06e4\u06e1\u06e2\u06d7"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06dc\u06eb\u06e8\u06eb\u06e4\u06d6\u06d8\u06da\u06eb\u06d6\u06e5\u06d6\u06d8\u06d7\u06d6\u06dc\u06d9\u06df\u06e6\u06d7\u06e0\u06dc\u06d8\u06df\u06e5\u06e1\u06db\u06db\u06e6\u06d8\u06e1\u06e0\u06d8\u06d8\u06e5\u06df\u06e8\u06e1\u06d6\u06e0"

    goto :goto_3

    :sswitch_15
    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooO00o(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-string v0, "\u06e8\u06e4\u06e6\u06d8\u06e0\u06df\u06e5\u06d8\u06d7\u06da\u06e6\u06dc\u06e6\u06e2\u06e5\u06e5\u06e5\u06d9\u06e5\u06e5\u06d8\u06e0\u06d8\u06d8\u06e8\u06e1\u06e5\u06da\u06e0\u06dc\u06d8\u06da\u06df\u06db"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_16
    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOOo0(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-string v0, "\u06db\u06eb\u06d6\u06d8\u06ec\u06d6\u06eb\u06d9\u06e7\u06e1\u06d8\u06e6\u06e5\u06d8\u06d8\u06e8\u06e0\u06df\u06db\u06e4\u06e1\u06e4\u06e4\u06da\u06e1\u06df\u06d8\u06d8\u06e2\u06df\u06d8\u06e5\u06e1\u06e8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06db\u06e6\u06d6\u06d8\u06d8\u06e4\u06d6\u06d8\u06d6\u06d6\u06d8\u06d8\u06d8\u06e5\u06eb\u06dc\u06d6\u06e6\u06da\u06d7\u06e7\u06eb\u06d8\u06df\u06d7\u06e5\u06db\u06df\u06e7\u06da\u06e7\u06df\u06d8\u06e2\u06e8\u06db\u06e2\u06e8\u06e5\u06df\u06eb\u06e8\u06d8\u06e8\u06e6\u06e0\u06eb\u06d8\u06e8\u06d8\u06eb\u06db\u06dc"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06d7\u06dc\u06eb\u06ec\u06d9\u06e0\u06eb\u06d9\u06e8\u06d8\u06e4\u06e5\u06e5\u06d8\u06ec\u06da\u06e1\u06d8\u06db\u06e2\u06dc\u06e4\u06dc\u06db\u06e0\u06ec\u06d8\u06d8\u06df\u06df\u06e4\u06e5\u06d6\u06e4\u06df\u06e2\u06e7\u06d9\u06ec\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06db\u06eb\u06d6\u06d8\u06ec\u06d6\u06eb\u06d9\u06e7\u06e1\u06d8\u06e6\u06e5\u06d8\u06d8\u06e8\u06e0\u06df\u06db\u06e4\u06e1\u06e4\u06e4\u06da\u06e1\u06df\u06d8\u06d8\u06e2\u06df\u06d8\u06e5\u06e1\u06e8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a2b562b -> :sswitch_19
        -0x66a38019 -> :sswitch_1
        -0x4b4088cf -> :sswitch_2
        -0x4751bae4 -> :sswitch_5
        -0x1e098b89 -> :sswitch_4
        -0x17a35be5 -> :sswitch_19
        -0x1546a1f7 -> :sswitch_1a
        0x336d8e98 -> :sswitch_0
        0x6609ddfa -> :sswitch_3
        0x68123659 -> :sswitch_d
        0x6a441211 -> :sswitch_15
        0x75702114 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x731581e4 -> :sswitch_6
        0x1b966d2a -> :sswitch_c
        0x67798816 -> :sswitch_8
        0x6dd6a03d -> :sswitch_18
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x752506d9 -> :sswitch_9
        -0x7319f751 -> :sswitch_b
        0x17dd4578 -> :sswitch_a
        0x77252191 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x466f837e -> :sswitch_14
        0x4ade9e77 -> :sswitch_10
        0x5a5c3c6a -> :sswitch_17
        0x63214b36 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x6592bcc4 -> :sswitch_12
        -0x92609c -> :sswitch_11
        0x34724573 -> :sswitch_13
        0x5eca1c61 -> :sswitch_f
    .end sparse-switch
.end method
