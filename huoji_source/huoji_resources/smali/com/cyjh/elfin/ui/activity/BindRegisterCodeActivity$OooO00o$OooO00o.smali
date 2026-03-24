.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;->OooO00o(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lz2/ba;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;Lz2/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o$OooO00o;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o$OooO00o;->OoooOoO:Lz2/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06ec\u06e8\u06e1\u06e7\u06e7\u06e8\u06eb\u06db\u06e7\u06df\u06d6\u06e5\u06d8\u06eb\u06ec\u06e1\u06e1\u06dc\u06d8\u06df\u06e1\u06df\u06ec\u06e2\u06d8\u06d8\u06e6\u06e4\u06d9\u06d9\u06dc\u06e6\u06ec\u06d6\u06d9\u06e2\u06d9\u06e8\u06d8\u06d6\u06e8\u06e0\u06df\u06d8\u06e0\u06db\u06d8\u06db\u06e6\u06d6\u06d9\u06db\u06e5\u06d7\u06e2\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe5

    const/16 v2, 0x321

    const v3, -0x3dc44bc8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06df\u06e4\u06e0\u06df\u06e1\u06d8\u06df\u06ec\u06e7\u06e7\u06e4\u06e4\u06d6\u06d7\u06df\u06dc\u06e8\u06da\u06e2\u06e1\u06d8\u06db\u06e7\u06e6\u06d8\u06e6\u06dc\u06ec\u06d7\u06db\u06e7\u06e5\u06e1\u06e5\u06d8\u06dc\u06da\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e6\u06dc\u06eb\u06e6\u06e8\u06d8\u06e7\u06e1\u06e5\u06d8\u06d8\u06da\u06e1\u06d8\u06eb\u06df\u06e7\u06dc\u06e5\u06e8\u06d8\u06e6\u06df\u06d6\u06e5\u06e0\u06d6\u06dc\u06d6\u06e8\u06d8\u06d8\u06e6\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o$OooO00o;->OoooOoO:Lz2/ba;

    invoke-virtual {v0}, Lz2/ba;->dismiss()V

    const-string v0, "\u06db\u06e5\u06e5\u06d8\u06e0\u06db\u06e5\u06d8\u06e8\u06e5\u06d7\u06e5\u06e7\u06e0\u06e1\u06d8\u06db\u06dc\u06dc\u06d8\u06dc\u06dc\u06d8\u06ec\u06da\u06d8\u06d8\u06db\u06e4\u06d8\u06e5\u06df\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75ca8785 -> :sswitch_0
        -0x75130256 -> :sswitch_2
        -0x3e523c8b -> :sswitch_3
        0x2d25d15e -> :sswitch_1
    .end sparse-switch
.end method
