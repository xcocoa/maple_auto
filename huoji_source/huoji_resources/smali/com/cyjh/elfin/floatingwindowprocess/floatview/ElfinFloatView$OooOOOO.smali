.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOOO;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/q6$OooO00o;


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

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOOO;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e2\u06e8\u06e5\u06d8\u06d9\u06e6\u06e5\u06ec\u06eb\u06e8\u06dc\u06da\u06da\u06e0\u06da\u06e5\u06e4\u06e2\u06d8\u06df\u06d6\u06d8\u06df\u06da\u06d9\u06df\u06db\u06e0\u06eb\u06e5\u06db\u06d7\u06e6\u06e5\u06d9\u06d8\u06d6\u06d8\u06e2\u06dc\u06d8\u06dc\u06e5\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x110

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa5

    const/16 v2, 0x261

    const v3, 0x1c5d929

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e4\u06e6\u06dc\u06eb\u06e7\u06eb\u06df\u06dc\u06d8\u06da\u06e8\u06db\u06d8\u06d6\u06d8\u06d6\u06d6\u06eb\u06e1\u06d7\u06ec\u06ec\u06ec\u06d6\u06e6\u06da\u06e7\u06dc\u06e2\u06e6\u06e4\u06d9\u06e4\u06ec\u06db\u06eb\u06e5\u06e6\u06d6\u06d8\u06e0\u06db\u06e4\u06e6\u06e7\u06e7\u06db\u06df\u06dc\u06d8\u06eb\u06ec\u06e0\u06e0\u06ec\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e1\u06d8\u06df\u06e5\u06e5\u06d8\u06e2\u06db\u06da\u06dc\u06dc\u06ec\u06db\u06db\u06d8\u06d8\u06ec\u06e0\u06d7\u06dc\u06eb\u06df\u06e8\u06dc\u06ec\u06da\u06e8\u06e6\u06d8\u06e1\u06ec\u06eb\u06d9\u06db\u06dc\u06d8\u06d8\u06e0\u06db\u06e2\u06ec\u06e0\u06df\u06d6\u06e2\u06db\u06e5\u06e5\u06d8\u06e1\u06d7\u06e4"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOOO;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo0(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-string v0, "\u06e4\u06db\u06e2\u06d6\u06df\u06e4\u06e1\u06e8\u06eb\u06d6\u06e1\u06e6\u06db\u06ec\u06ec\u06eb\u06e6\u06db\u06e5\u06e1\u06e0\u06d9\u06d9\u06e6\u06d8\u06db\u06ec\u06e5\u06d8\u06da\u06eb\u06e6\u06d8\u06db\u06df\u06d9\u06e8\u06d6\u06d9\u06e8\u06e8\u06df\u06da\u06d6\u06d8\u06e6\u06e7\u06db\u06d8\u06eb\u06eb\u06d7\u06df\u06dc\u06d8\u06e0\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39f16ed4 -> :sswitch_2
        0x1e6383d6 -> :sswitch_3
        0x5529cac7 -> :sswitch_0
        0x64ec7893 -> :sswitch_1
    .end sparse-switch
.end method
