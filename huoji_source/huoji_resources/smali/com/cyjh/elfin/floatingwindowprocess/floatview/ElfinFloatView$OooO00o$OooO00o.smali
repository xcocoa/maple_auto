.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/h7$OooOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o$OooO00o;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06e0\u06d8\u06e6\u06e0\u06e0\u06e7\u06ec\u06da\u06e6\u06e1\u06e6\u06eb\u06db\u06e0\u06d7\u06e6\u06eb\u06ec\u06e0\u06d6\u06dc\u06d8\u06da\u06d6\u06d7\u06d6\u06e4\u06dc\u06d8\u06e1\u06d6\u06d9\u06e4\u06e6\u06da\u06d9\u06e6\u06e7\u06e4\u06d6\u06d6\u06dc\u06da\u06ec\u06d9\u06e4\u06d6\u06d7\u06e2\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x99

    const/16 v2, 0x1e2

    const v3, 0xca1f235

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e8\u06da\u06ec\u06e6\u06e5\u06d8\u06dc\u06d8\u06d6\u06dc\u06da\u06d8\u06e5\u06df\u06e7\u06e0\u06da\u06dc\u06eb\u06d6\u06df\u06e4\u06db\u06db\u06d7\u06da\u06e8\u06ec\u06e6\u06d8\u06db\u06e7\u06df\u06d7\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06db\u06e8\u06da\u06e2\u06d6\u06ec\u06d8\u06e5\u06d8\u06ec\u06e2\u06d9\u06da\u06e7\u06e8\u06da\u06d6\u06eb\u06db\u06e4\u06d9\u06e1\u06e4\u06e4\u06e5\u06d9\u06db\u06eb\u06df\u06d6\u06e6\u06db\u06da\u06e0\u06df\u06ec\u06d9\u06e8\u06d6\u06d8\u06eb\u06e6\u06e5\u06d8\u06d9\u06df\u06e6\u06d8\u06da\u06e0\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o$OooO00o;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo000(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;Z)Z

    const-string v0, "\u06df\u06e5\u06e7\u06d8\u06e2\u06d9\u06d6\u06d8\u06d6\u06e2\u06e8\u06d8\u06dc\u06e4\u06ec\u06e2\u06eb\u06df\u06e2\u06dc\u06e0\u06da\u06db\u06e1\u06db\u06e7\u06df\u06e1\u06eb\u06dc\u06e5\u06e2\u06eb\u06e6\u06e1\u06d8\u06d6\u06e2\u06e8\u06d8\u06d9\u06da\u06e5\u06e8\u06e5\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4019a06b -> :sswitch_2
        -0x36bf533f -> :sswitch_3
        -0x336824c7 -> :sswitch_1
        0x6eb9af65 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0O0()V
    .locals 4

    const-string v0, "\u06d7\u06e7\u06e5\u06d9\u06d9\u06dc\u06da\u06db\u06e4\u06ec\u06e6\u06d9\u06e6\u06e5\u06e0\u06e0\u06e6\u06ec\u06df\u06da\u06e8\u06d8\u06d8\u06e1\u06e5\u06d8\u06d6\u06ec\u06e1\u06d7\u06e8\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ce

    const/16 v2, 0x309

    const v3, 0x4df15bc6    # 5.0616544E8f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e2\u06d9\u06d8\u06ec\u06df\u06da\u06d6\u06e7\u06d8\u06d9\u06df\u06e6\u06d8\u06e8\u06d6\u06e2\u06db\u06db\u06e8\u06d8\u06db\u06d6\u06dc\u06e7\u06df\u06e8\u06e6\u06dc\u06d8\u06e1\u06d8\u06da\u06df\u06da\u06e1\u06e5\u06dc\u06e5\u06d9\u06df\u06da\u06db\u06e5\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o$OooO00o;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO00o;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo000(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;Z)Z

    const-string v0, "\u06ec\u06d8\u06dc\u06eb\u06e0\u06d6\u06d9\u06eb\u06e7\u06e1\u06d6\u06ec\u06dc\u06e8\u06dc\u06d8\u06e0\u06d9\u06d6\u06d8\u06e8\u06e2\u06e2\u06df\u06e8\u06e8\u06d8\u06e4\u06e0\u06dc\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42f74003 -> :sswitch_0
        0xb5a43ff -> :sswitch_1
        0x2e5e09fa -> :sswitch_2
    .end sparse-switch
.end method
