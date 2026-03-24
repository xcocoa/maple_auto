.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06d7\u06ec\u06e1\u06d7\u06ec\u06e0\u06e2\u06e7\u06df\u06db\u06e5\u06db\u06e7\u06db\u06d6\u06e1\u06e4\u06e8\u06d8\u06e6\u06d6\u06d6\u06d8\u06df\u06e5\u06d8\u06d8\u06e8\u06d6\u06d7\u06e5\u06dc\u06df\u06db\u06e1\u06eb\u06d7\u06e6\u06e8\u06e5\u06e1\u06d8\u06e2\u06d8\u06d6\u06e4\u06eb\u06e8\u06d8\u06d7\u06d8\u06e5\u06d8\u06d8\u06e2\u06dc\u06e6\u06e6\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3af

    const/16 v2, 0x1fb

    const v3, 0x63331268

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d6\u06df\u06e5\u06e4\u06e8\u06e4\u06e8\u06da\u06d8\u06eb\u06e7\u06da\u06e1\u06e2\u06df\u06d8\u06e7\u06e7\u06d7\u06d8\u06e4\u06e4\u06d7\u06e4\u06d6\u06ec\u06da\u06d7\u06e6\u06d8\u06e6\u06dc\u06d8\u06d8\u06e4\u06df\u06db\u06e1\u06e1\u06dc\u06eb\u06ec\u06df\u06e2\u06e1\u06e6\u06db\u06e2"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOO(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Z)Z

    const-string v0, "\u06da\u06e6\u06d9\u06e8\u06d9\u06df\u06df\u06d8\u06db\u06e8\u06ec\u06e0\u06e0\u06da\u06e0\u06e2\u06e5\u06da\u06e0\u06eb\u06e4\u06df\u06e6\u06e4\u06e1\u06d6\u06d6\u06d8\u06e5\u06da\u06e7\u06d6\u06ec\u06e2\u06da\u06e8\u06dc\u06d8\u06eb\u06eb\u06e0\u06e6\u06e2\u06da\u06e0\u06e4\u06d6\u06d8\u06e1\u06df\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70b5961a -> :sswitch_0
        0x2a13b447 -> :sswitch_1
        0x307778e5 -> :sswitch_2
    .end sparse-switch
.end method
