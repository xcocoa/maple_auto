.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/q6$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06db\u06d8\u06d6\u06d8\u06e6\u06e8\u06e8\u06d9\u06e5\u06e8\u06e6\u06ec\u06dc\u06d8\u06e1\u06d7\u06d8\u06e2\u06d9\u06e6\u06d8\u06ec\u06da\u06e5\u06d8\u06ec\u06db\u06e6\u06d8\u06d9\u06e5\u06e4\u06e8\u06d6\u06e5\u06d8\u06dc\u06e8\u06e8\u06d9\u06e5\u06ec\u06e5\u06e1\u06e8\u06d8\u06da\u06e2\u06d7\u06d7\u06d9\u06e8\u06d8\u06e7\u06da\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e4

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x2

    const/16 v2, 0xb2

    const v3, -0x31a43adc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e8\u06e1\u06d9\u06e5\u06d8\u06e6\u06e1\u06eb\u06e6\u06d8\u06e8\u06d9\u06e6\u06d9\u06d6\u06d9\u06e4\u06dc\u06d9\u06e5\u06e7\u06dc\u06e1\u06da\u06e2\u06eb\u06e6\u06e2\u06da\u06dc\u06d7\u06e0\u06e7\u06ec\u06d9\u06e2\u06e8\u06e7\u06d8\u06e0\u06e0\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06e5\u06e7\u06d8\u06ec\u06dc\u06e6\u06d7\u06d6\u06da\u06e4\u06e2\u06e2\u06e1\u06eb\u06e1\u06d8\u06e1\u06da\u06e4\u06e1\u06db\u06d9\u06db\u06d7\u06db\u06e2\u06e2\u06e5\u06d8\u06df\u06d8\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OoooOoo()V

    const-string v0, "\u06da\u06d8\u06e7\u06d8\u06d6\u06d8\u06e6\u06d8\u06ec\u06e1\u06e2\u06e4\u06e1\u06dc\u06d9\u06df\u06d9\u06eb\u06d8\u06e8\u06e1\u06db\u06e8\u06d8\u06d9\u06e6\u06d6\u06d7\u06df\u06e1\u06d8\u06df\u06e6\u06df\u06ec\u06e6\u06d8\u06eb\u06dc\u06d7\u06da\u06e0\u06d6\u06d8\u06e2\u06d9\u06d6\u06db\u06da\u06e0\u06e6\u06e5\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d96e87e -> :sswitch_3
        -0x4b04c82f -> :sswitch_0
        0x724d51d5 -> :sswitch_2
        0x76c17a98 -> :sswitch_1
    .end sparse-switch
.end method
