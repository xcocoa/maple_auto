.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Ooo(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:F

.field public final OoooOoo:F

.field public final Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;FF)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    iput p2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->OoooOoO:F

    iput p3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->OoooOoo:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e0\u06da\u06d8\u06d8\u06db\u06d8\u06e7\u06d8\u06e7\u06ec\u06dc\u06d7\u06e0\u06e1\u06d8\u06d7\u06da\u06e8\u06ec\u06e4\u06e1\u06d8\u06e2\u06e5\u06e1\u06da\u06df\u06d8\u06d9\u06eb\u06dc\u06d8\u06d7\u06dc\u06dc\u06d6\u06e2\u06e5\u06da\u06d8\u06e8\u06d8\u06db\u06e6\u06d8\u06e8\u06e6\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x45

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x314

    const/16 v2, 0x2b1

    const v3, 0x12d2d82f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06da\u06da\u06d8\u06d6\u06e8\u06d8\u06d9\u06db\u06df\u06e0\u06e2\u06e0\u06d8\u06d9\u06e8\u06e2\u06dc\u06d8\u06ec\u06d6\u06da\u06eb\u06d6\u06d8\u06e7\u06d7\u06e8\u06d8\u06d8\u06e0\u06dc\u06d8\u06d9\u06e0\u06e2\u06e0\u06d7\u06e2\u06ec\u06eb\u06df\u06ec\u06e4\u06e4\u06e5\u06d9\u06d9\u06df\u06e6\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOoo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->OoooOoO:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    const-string v0, "\u06e4\u06eb\u06dc\u06d8\u06d6\u06d8\u06d8\u06e4\u06e7\u06df\u06d9\u06da\u06d9\u06df\u06e1\u06e8\u06d8\u06d9\u06d8\u06e7\u06d8\u06e7\u06e1\u06df\u06e4\u06d8\u06d8\u06d9\u06d6\u06d9\u06df\u06eb\u06d6\u06d8\u06d7\u06e4\u06da\u06dc\u06d8\u06e6\u06d6\u06e5\u06e2\u06d6\u06eb\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOooO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;->OoooOoo:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    const-string v0, "\u06da\u06e5\u06e5\u06ec\u06e7\u06e7\u06e2\u06e1\u06da\u06dc\u06e8\u06d8\u06ec\u06e7\u06e6\u06e5\u06eb\u06d6\u06df\u06e2\u06dc\u06da\u06e1\u06d9\u06e5\u06d6\u06dc\u06ec\u06dc\u06e7\u06d8\u06e5\u06e4\u06e4\u06e8\u06e6\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x249c9b38 -> :sswitch_0
        0x4a22c7d0 -> :sswitch_3
        0x625a7765 -> :sswitch_1
        0x7e962748 -> :sswitch_2
    .end sparse-switch
.end method
