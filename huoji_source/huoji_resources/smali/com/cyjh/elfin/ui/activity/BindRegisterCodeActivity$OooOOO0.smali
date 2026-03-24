.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOO0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e8\u06e6\u06d8\u06e5\u06d7\u06e5\u06e5\u06da\u06df\u06d9\u06e5\u06dc\u06dc\u06e2\u06ec\u06e1\u06dc\u06d7\u06ec\u06da\u06d7\u06e0\u06eb\u06ec\u06e1\u06eb\u06e8\u06e1\u06d9\u06d7\u06dc\u06d9\u06d8\u06d8\u06da\u06ec\u06e1\u06d8\u06da\u06e8\u06d8\u06e4\u06e8\u06e4\u06ec\u06df\u06eb\u06e5\u06df\u06d9\u06ec\u06d9\u06eb\u06d7\u06d7\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e0

    const/16 v2, 0x1f9

    const v3, 0x27b8bc02

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e2\u06e4\u06e2\u06df\u06e1\u06d6\u06d7\u06db\u06df\u06e4\u06eb\u06ec\u06d8\u06d8\u06e1\u06ec\u06e5\u06d8\u06d6\u06e5\u06e8\u06d8\u06d7\u06ec\u06ec\u06e1\u06d6\u06d8\u06d8\u06d6\u06e5\u06d9\u06e4\u06e5\u06e8\u06d8\u06dc\u06dc\u06ec\u06e7\u06e6\u06d7\u06db\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06da\u06e5\u06da\u06e4\u06d6\u06e4\u06e6\u06e7\u06d8\u06d8\u06e0\u06e8\u06d8\u06e4\u06d8\u06e1\u06e2\u06dc\u06e0\u06e0\u06d6\u06e0\u06dc\u06e2\u06d9\u06e2\u06db\u06eb\u06df\u06d8\u06d7\u06e1\u06eb\u06dc\u06e4\u06e8\u06d8\u06e7\u06d8\u06e1\u06e2\u06eb\u06d6\u06d8\u06ec\u06e8\u06eb\u06dc\u06e8\u06e2\u06e2\u06d9\u06df"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e5\u06e0\u06e2\u06db\u06e0\u06e8\u06e8\u06eb\u06d7\u06e4\u06e5\u06d8\u06dc\u06e7\u06d8\u06d8\u06e2\u06e7\u06dc\u06d8\u06e7\u06e0\u06e0\u06ec\u06db\u06d6\u06d8\u06e1\u06ec\u06e5\u06e2\u06e5\u06da\u06e2\u06df\u06e8\u06d8\u06e4\u06df\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad1ca53 -> :sswitch_2
        -0x72969db6 -> :sswitch_3
        -0x62b65060 -> :sswitch_0
        0x34f608e3 -> :sswitch_1
    .end sparse-switch
.end method
