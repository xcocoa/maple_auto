.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06e5\u06ec\u06db\u06d8\u06e6\u06e1\u06dc\u06e7\u06d8\u06d6\u06e5\u06d9\u06e5\u06ec\u06db\u06df\u06e7\u06d7\u06df\u06dc\u06d7\u06dc\u06ec\u06d6\u06e8\u06d7\u06df\u06d7\u06d9\u06ec\u06db\u06e6\u06d8\u06e2\u06e4\u06e8\u06d8"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x27e

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x358

    const/16 v4, 0x3d0

    const v5, 0x259bf6bd

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06eb\u06e8\u06e8\u06e5\u06d8\u06e5\u06e0\u06d8\u06d8\u06e5\u06e7\u06e7\u06e4\u06d7\u06e0\u06d6\u06e0\u06db\u06e6\u06d7\u06dc\u06eb\u06e0\u06e4\u06db\u06e6\u06d8\u06e0\u06df\u06e1\u06dc\u06d8\u06e7\u06da\u06db\u06da\u06e4\u06db\u06dc\u06e1\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoO(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x40020

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v0, "\u06d8\u06e6\u06e1\u06e8\u06e0\u06e8\u06d8\u06d7\u06e1\u06dc\u06d8\u06ec\u06da\u06e4\u06dc\u06ec\u06eb\u06dc\u06eb\u06db\u06d8\u06d8\u06d9\u06e7\u06e6\u06e1\u06d9\u06d7\u06dc\u06d8\u06e5\u06e0\u06d7\u06e6\u06d8\u06e7\u06e5\u06d9"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoOO(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/view/WindowManager;

    move-result-object v2

    const-string v0, "\u06e1\u06e5\u06d6\u06d8\u06d9\u06eb\u06db\u06e4\u06dc\u06d8\u06e8\u06e6\u06e5\u06e0\u06db\u06e5\u06e6\u06df\u06e1\u06df\u06d8\u06e6\u06d8\u06d6\u06da\u06eb\u06da\u06e5\u06e5\u06e8\u06da\u06eb\u06df\u06df\u06e7\u06d9\u06df\u06e8\u06d8\u06da\u06e7\u06d9\u06d9\u06e2\u06e2\u06d8\u06e4\u06e2\u06e1\u06e7\u06e1\u06e4\u06d8\u06d8\u06d6\u06e5\u06e1"

    move-object v3, v2

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const-string v0, "\u06e7\u06e4\u06d8\u06d8\u06d9\u06d9\u06da\u06dc\u06e6\u06d8\u06df\u06e1\u06d6\u06d8\u06da\u06e6\u06e2\u06ec\u06d7\u06eb\u06e0\u06d9\u06d7\u06d8\u06e6\u06e0\u06d6\u06d6\u06d8\u06eb\u06e0\u06d8\u06e7\u06eb\u06e6\u06d8\u06db\u06e2\u06e6\u06d8\u06d9\u06df\u06e1\u06ec\u06e1\u06e1\u06d8\u06d6\u06d8\u06e7\u06d6\u06e5"

    goto :goto_0

    :sswitch_4
    invoke-static {v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoO(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e6\u06e8\u06e4\u06e6\u06e4\u06e4\u06df\u06e7\u06e1\u06d8\u06eb\u06dc\u06d7\u06e2\u06db\u06d7\u06eb\u06e7\u06d7\u06da\u06df\u06e6\u06d6\u06da\u06e4\u06d7\u06d9\u06e1\u06d8\u06e8\u06e5\u06d8\u06d8\u06e8\u06df\u06e5\u06d8\u06db\u06e4\u06e1\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x14630076 -> :sswitch_1
        0x359d3a61 -> :sswitch_3
        0x5b804571 -> :sswitch_4
        0x6d6268dd -> :sswitch_2
        0x781af474 -> :sswitch_5
        0x7e78191d -> :sswitch_0
    .end sparse-switch
.end method
