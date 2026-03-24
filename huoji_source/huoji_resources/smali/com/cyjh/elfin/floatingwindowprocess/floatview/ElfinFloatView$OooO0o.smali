.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0o;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "\u06d8\u06d8\u06e8\u06d8\u06e6\u06e1\u06e6\u06d8\u06e6\u06e7\u06df\u06df\u06df\u06e4\u06e4\u06d9\u06e6\u06e8\u06df\u06e2\u06e6\u06eb\u06d6\u06d8\u06e5\u06e4\u06d6\u06d8\u06e7\u06dc\u06d8\u06e2\u06eb\u06d9\u06e4\u06d9\u06dc\u06da\u06e8\u06e8\u06d8\u06d9\u06e4\u06dc\u06d7\u06e0\u06e1\u06d8\u06e8\u06d8\u06d8\u06d8\u06da\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x20c

    const/16 v2, 0x1b2

    const v3, -0x7e4eb399

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e5\u06df\u06d9\u06e2\u06d8\u06d8\u06e4\u06d6\u06e7\u06d8\u06e2\u06dc\u06e2\u06e5\u06e0\u06d8\u06e2\u06da\u06d6\u06e7\u06e7\u06da\u06e7\u06eb\u06dc\u06dc\u06e7\u06e6\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06df\u06da\u06d6\u06ec\u06da\u06eb\u06e7\u06d8\u06df\u06e6\u06df\u06e0\u06d6\u06ec\u06e0\u06e5\u06db\u06eb\u06e4\u06d9\u06e1\u06e7\u06eb\u06db\u06e6\u06d8\u06e6\u06e0\u06d6\u06d8\u06e5\u06e8\u06d8\u06e5\u06e1\u06e8\u06df\u06e0\u06d8\u06d8\u06d7\u06eb\u06e8\u06e6\u06d9\u06e1\u06d8\u06e5\u06e6\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4873743e -> :sswitch_0
        -0x3704308e -> :sswitch_1
        -0x17467739 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 4

    const-string v0, "\u06d9\u06e4\u06d9\u06da\u06df\u06e8\u06ec\u06db\u06dc\u06e6\u06d9\u06d8\u06dc\u06e7\u06e5\u06db\u06e0\u06df\u06e5\u06df\u06d8\u06d8\u06d7\u06e8\u06dc\u06e1\u06ec\u06db\u06e4\u06e2\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x272

    const/16 v2, 0x11b

    const v3, -0x2cf19a89

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06db\u06e6\u06d8\u06ec\u06dc\u06d8\u06d8\u06d6\u06e7\u06e5\u06d7\u06ec\u06db\u06e6\u06ec\u06e6\u06d8\u06e4\u06e0\u06e5\u06d6\u06ec\u06d7\u06d9\u06e2\u06dc\u06d8\u06e5\u06e6\u06e1\u06d6\u06e2\u06db\u06d9\u06e4\u06e6\u06e0\u06d8\u06d6\u06d8\u06e8\u06d6\u06db\u06e4\u06d6\u06d8\u06e4\u06d6\u06e1\u06db\u06e4"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o00000o0:Ljava/lang/String;

    const-string v0, "\u06da\u06df\u06e8\u06ec\u06e5\u06e4\u06d8\u06e2\u06e5\u06e4\u06d6\u06db\u06e4\u06e8\u06d6\u06d8\u06df\u06d9\u06e8\u06d6\u06e5\u06d7\u06e6\u06e6\u06e1\u06dc\u06e1\u06d8\u06d9\u06da\u06e0\u06e5\u06db\u06e2\u06d6\u06e2\u06e6\u06d8\u06df\u06df\u06e5\u06dc\u06d7\u06e6\u06d8\u06e0\u06d9\u06e5\u06e4\u06e6\u06d9\u06d9\u06e7\u06d6\u06d6\u06d6"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70f358da -> :sswitch_1
        -0x21b2619a -> :sswitch_2
        0x68ee8425 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTrimMemory(I)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d8\u06db\u06e1\u06d8\u06d9\u06e4\u06e1\u06e7\u06df\u06e6\u06d8\u06eb\u06e8\u06d6\u06d8\u06e5\u06e4\u06d8\u06d8\u06d9\u06e7\u06e2\u06da\u06d6\u06dc\u06db\u06d9\u06e5\u06d8\u06d8\u06e6\u06e1\u06e4\u06d7\u06da\u06e6\u06e4\u06e6\u06e1\u06ec\u06e7\u06dc\u06e5\u06e7\u06d6\u06e8\u06d8\u06df\u06e5\u06e7\u06da\u06ec\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x135

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2f2

    const/16 v3, 0x304

    const v4, 0x226b82aa

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e5\u06e2\u06ec\u06d7\u06dc\u06e8\u06e6\u06da\u06e2\u06d9\u06d6\u06d8\u06d9\u06df\u06df\u06e4\u06d8\u06e6\u06e6\u06d8\u06dc\u06e0\u06e0\u06d6\u06d8\u06e0\u06d6\u06e1\u06d6\u06da\u06e5\u06d8\u06e8\u06e5\u06e6\u06d8\u06e0\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d7\u06eb\u06e7\u06e1\u06e1\u06d8\u06d9\u06ec\u06df\u06e8\u06d8\u06e0\u06d8\u06e1\u06d6\u06d8\u06e2\u06d9\u06d7\u06e8\u06e6\u06dc\u06d8\u06eb\u06e5\u06d6\u06e0\u06e4\u06d8\u06ec\u06d7\u06da\u06e0\u06e5\u06da\u06e1\u06ec\u06e2\u06db\u06df\u06d9\u06df\u06e5\u06e1"

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o00000o0:Ljava/lang/String;

    const-string v0, "\u06db\u06e2\u06eb\u06e4\u06eb\u06d6\u06db\u06e2\u06d8\u06e7\u06e7\u06d8\u06df\u06e7\u06e7\u06d6\u06d8\u06d8\u06dc\u06d7\u06df\u06e7\u06df\u06e8\u06e5\u06e7\u06d8\u06e8\u06ec\u06eb"

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d6\u06df\u06e5\u06d8\u06d9\u06db\u06e4\u06d7\u06db\u06e8\u06d8\u06d6\u06d8\u06dc\u06e4\u06da\u06e0\u06e4\u06da\u06d6\u06d8\u06d8\u06e0\u06ec\u06dc\u06e6\u06e0\u06da\u06d6\u06d8\u06e2\u06df\u06df\u06e8\u06d8\u06e1\u06e2\u06da\u06eb\u06db\u06e2\u06e8\u06ec\u06ec\u06d9\u06e1\u06ec\u06e6\u06e0\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "onTrimMemory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06dc\u06db\u06e4\u06d9\u06d9\u06d6\u06da\u06eb\u06e1\u06d9\u06e6\u06d8\u06db\u06e5\u06e5\u06ec\u06e6\u06e4\u06eb\u06e8\u06d9\u06db\u06e0\u06eb\u06e7\u06e2\u06dc\u06df\u06e8\u06d8\u06d6\u06eb\u06d9\u06e6\u06e4\u06d8\u06d8\u06e2\u06d9\u06d9\u06e5\u06d9\u06e8\u06d6\u06e5\u06d9\u06e7\u06ec\u06d7\u06d7\u06d8\u06e7\u06d8\u06e1\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06e4\u06dc\u06eb\u06d8\u06db\u06d8\u06e1\u06dc\u06d8\u06e1\u06e7\u06ec\u06db\u06d7\u06d9\u06e4\u06ec\u06e0\u06e8\u06d9\u06e0\u06e0\u06db\u06db\u06eb\u06e5\u06d8\u06df\u06e8\u06d6\u06d8\u06e1\u06e0\u06e8\u06d8\u06e8\u06e2\u06e4\u06eb\u06df\u06e8\u06d8\u06ec\u06e4"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06df\u06dc\u06dc\u06d8\u06d8\u06e4\u06d6\u06d8\u06e4\u06e5\u06da\u06db\u06d6\u06e1\u06d8\u06df\u06d8\u06e5\u06d8\u06ec\u06e0\u06d7\u06e0\u06e2\u06d6\u06ec\u06e0\u06eb\u06eb\u06db\u06e1\u06d8\u06da\u06e6\u06e7\u06df\u06e8\u06dc\u06d8\u06d6\u06eb\u06e2\u06e8\u06e5\u06e5\u06d8\u06eb\u06e4\u06d6\u06d8\u06da\u06db\u06d7\u06d9\u06d6\u06dc\u06d8\u06ec\u06dc\u06e0\u06df\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57542d1a -> :sswitch_1
        -0x4e1f9191 -> :sswitch_3
        0xb3af480 -> :sswitch_0
        0x25466f70 -> :sswitch_4
        0x2b2d92cc -> :sswitch_2
        0x533affc8 -> :sswitch_5
        0x64dae7db -> :sswitch_7
        0x705248a2 -> :sswitch_6
    .end sparse-switch
.end method
