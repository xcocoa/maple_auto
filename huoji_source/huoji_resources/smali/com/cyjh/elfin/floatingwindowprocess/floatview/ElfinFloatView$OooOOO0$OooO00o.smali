.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0$OooO00o;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const-string v0, "\u06e1\u06eb\u06d8\u06eb\u06e4\u06e5\u06d8\u06da\u06d7\u06eb\u06e5\u06e1\u06e6\u06d8\u06d6\u06dc\u06e0\u06e1\u06dc\u06e4\u06d6\u06df\u06e2\u06d6\u06e2\u06e0\u06e6\u06e7\u06d6\u06da\u06e8\u06ec\u06d9\u06e4\u06d6\u06dc\u06d6\u06dc\u06e7\u06eb\u06d8\u06db\u06d9\u06e4\u06df\u06e1\u06d8\u06e8\u06e1\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x316

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x204

    const/16 v2, 0x5e

    const v3, 0xd789e45

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e0\u06e8\u06d8\u06e0\u06d6\u06da\u06d6\u06d7\u06e8\u06e1\u06e7\u06eb\u06e4\u06dc\u06d9\u06dc\u06ec\u06e2\u06da\u06e1\u06d8\u06df\u06eb\u06e1\u06d8\u06df\u06e8\u06ec\u06ec\u06d9\u06e6\u06e2\u06e8\u06dc\u06d8\u06da\u06e7\u06e6\u06df\u06e2\u06e8\u06d8\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06ec\u06d8\u06d8\u06da\u06d8\u06e7\u06d8\u06e5\u06e7\u06e0\u06d7\u06e8\u06dc\u06d8\u06e8\u06e5\u06dc\u06d8\u06ec\u06e6\u06d8\u06d8\u06e7\u06e5\u06e0\u06e8\u06eb\u06d8\u06d8\u06df\u06db\u06df\u06e4\u06e5\u06dc\u06da\u06e1\u06e2\u06e4\u06e0"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0$OooO00o;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0;

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOOO0;->Ooooo00:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo0(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-string v0, "\u06e8\u06d8\u06dc\u06e0\u06d9\u06d8\u06e1\u06e8\u06e4\u06d7\u06e5\u06e1\u06e6\u06e4\u06e7\u06da\u06dc\u06db\u06d9\u06e8\u06dc\u06e2\u06e6\u06e0\u06e7\u06d6\u06d8\u06d8\u06e6\u06da\u06e4\u06d8\u06e7\u06e7\u06e1\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x20d59ad9 -> :sswitch_0
        -0x4855d4a -> :sswitch_3
        0x2aa3995 -> :sswitch_2
        0x3f49c37f -> :sswitch_1
    .end sparse-switch
.end method
