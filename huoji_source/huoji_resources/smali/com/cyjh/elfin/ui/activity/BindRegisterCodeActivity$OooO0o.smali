.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOo(Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Landroid/app/AlertDialog;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;->OoooOoO:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e8\u06e6\u06eb\u06e4\u06e4\u06d6\u06d8\u06e6\u06df\u06e4\u06d6\u06d8\u06d9\u06da\u06da\u06e4\u06d7\u06e8\u06e7\u06dc\u06e4\u06dc\u06d8\u06d6\u06eb\u06eb\u06eb\u06e7\u06e7\u06e8\u06e7\u06d8\u06d8\u06eb\u06e8\u06e5\u06d9\u06d6\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x193

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x16

    const/16 v2, 0x3d5

    const v3, -0x41ec799c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d7\u06dc\u06e0\u06eb\u06e6\u06e4\u06e2\u06eb\u06eb\u06e2\u06e1\u06d8\u06e2\u06d9\u06e0\u06db\u06db\u06e8\u06e0\u06e5\u06e5\u06d7\u06e0\u06d6\u06da\u06d8\u06d6\u06db\u06dc\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06df\u06e4\u06db\u06d8\u06e7\u06d8\u06d8\u06e8\u06d8\u06d8\u06e7\u06e7\u06e1\u06d8\u06da\u06e4\u06e5\u06e8\u06e1\u06d9\u06d7\u06e6\u06e4\u06dc\u06db\u06e2\u06e8\u06e6\u06d9\u06e5\u06e6\u06d8\u06e7\u06df\u06e6\u06d8\u06eb\u06da\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;->OoooOoO:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "\u06e5\u06db\u06e7\u06df\u06e1\u06e1\u06d9\u06db\u06e0\u06d8\u06df\u06d8\u06db\u06e2\u06dc\u06d7\u06e1\u06e0\u06e5\u06e7\u06eb\u06e4\u06db\u06e1\u06d8\u06e8\u06db\u06d7\u06e6\u06dc\u06e8\u06e0\u06e7\u06e8\u06d9\u06df\u06e6\u06e1\u06ec\u06e6\u06d8\u06e7\u06e6\u06e1\u06e6\u06e4\u06e7\u06e6\u06da\u06e6"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOO0(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Landroidx/lifecycle/AndroidViewModel;

    move-result-object v0

    check-cast v0, Lz2/oa;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOO0O(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lz2/oa;->OooOo0O(Ljava/lang/String;I)V

    const-string v0, "\u06ec\u06db\u06d8\u06e8\u06d9\u06e1\u06e2\u06e5\u06db\u06db\u06e7\u06d9\u06d7\u06ec\u06d8\u06d8\u06e6\u06db\u06dc\u06e1\u06e2\u06dc\u06d8\u06d9\u06e7\u06dc\u06e1\u06d9\u06e1\u06d9\u06e6\u06d8\u06e5\u06ec\u06ec\u06db\u06d8\u06e6\u06d8\u06d7\u06e1\u06e5\u06d8\u06ec\u06d6\u06da"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4927d894 -> :sswitch_1
        -0x30af96e1 -> :sswitch_0
        0x1a028b80 -> :sswitch_2
        0x3a5fd628 -> :sswitch_4
        0x4c10c258 -> :sswitch_3
    .end sparse-switch
.end method
