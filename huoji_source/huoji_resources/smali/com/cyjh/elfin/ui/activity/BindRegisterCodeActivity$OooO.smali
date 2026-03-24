.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO;->OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d9\u06e6\u06e7\u06e0\u06db\u06d9\u06d9\u06db\u06e4\u06e2\u06e1\u06d7\u06d9\u06d9\u06d9\u06e6\u06db\u06d9\u06d9\u06dc\u06e5\u06e5\u06da\u06e6\u06e8\u06da\u06e8\u06d8\u06df\u06df\u06db\u06eb\u06e4\u06e1\u06d8\u06d9\u06dc\u06e8\u06d8\u06ec\u06dc\u06db\u06db\u06e7\u06d6\u06d6\u06dc\u06e1\u06d8\u06e2\u06e6\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x289

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x262

    const/16 v2, 0x3a5

    const v3, 0x2c5be5cc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e5\u06e6\u06e4\u06eb\u06d8\u06d8\u06d9\u06d7\u06da\u06df\u06dc\u06e4\u06d8\u06e7\u06e0\u06d9\u06ec\u06e7\u06e1\u06d6\u06d9\u06ec\u06e7\u06eb\u06e5\u06e4\u06d9\u06d7\u06da\u06e1\u06e8\u06ec\u06d8\u06d8\u06d6\u06e8\u06e7\u06e0\u06d8\u06df\u06db\u06e7\u06e5\u06db\u06da\u06e0\u06da\u06dc\u06e7\u06d8\u06e1\u06eb\u06e8\u06d8\u06da\u06df\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e4\u06e6\u06d8\u06e8\u06db\u06df\u06d6\u06e5\u06e5\u06d8\u06e0\u06d6\u06d7\u06e8\u06da\u06da\u06d8\u06e1\u06d8\u06d8\u06d7\u06e1\u06d8\u06e7\u06ec\u06e1\u06d8\u06e0\u06db\u06e6\u06d8\u06ec\u06ec\u06e7\u06da\u06d6\u06e8\u06e5\u06dc\u06d8\u06d8\u06e5\u06d9\u06e6\u06e1\u06ec\u06e6\u06e1\u06e4\u06dc\u06db\u06e4\u06d7\u06d6\u06e8\u06d8\u06eb\u06eb\u06dc"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO;->OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/y8;->OooOOOO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06d9\u06db\u06da\u06d9\u06e1\u06e0\u06db\u06e5\u06d6\u06db\u06e1\u06dc\u06d8\u06e4\u06df\u06e4\u06e8\u06d8\u06e6\u06e7\u06df\u06ec\u06e4\u06df\u06e8\u06d8\u06e8\u06d6\u06d8\u06d7\u06e1\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x641e497a -> :sswitch_0
        -0x5682cada -> :sswitch_2
        -0x278be2d7 -> :sswitch_1
        0x5c1748ce -> :sswitch_3
    .end sparse-switch
.end method
