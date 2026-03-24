.class public Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06eb\u06e1\u06e7\u06e1\u06dc\u06d8\u06e7\u06d6\u06e6\u06e8\u06dc\u06e1\u06d8\u06d8\u06e8\u06d9\u06db\u06e8\u06d7\u06e8\u06d8\u06e4\u06e6\u06e8\u06e6\u06e2\u06da\u06e1\u06d8\u06e7\u06e5\u06e8\u06d8\u06e4\u06d7\u06e6\u06e2\u06d6\u06e6\u06d8\u06dc\u06db\u06e7\u06ec\u06d6\u06e8\u06e1\u06d8\u06eb\u06db\u06eb\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3a1

    const/16 v2, 0xc3

    const v3, 0x7c9e4bc0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06eb\u06e7\u06e6\u06d6\u06e2\u06e1\u06e7\u06e8\u06d9\u06e1\u06e2\u06ec\u06da\u06df\u06e2\u06da\u06e7\u06d7\u06db\u06eb\u06e4\u06e1\u06eb\u06dc\u06e5\u06d9\u06d7\u06db\u06e8\u06d8\u06d8\u06e0\u06d8\u06db\u06d6\u06e4\u06dc\u06d6\u06e8\u06e8\u06e0\u06e1\u06d8\u06dc\u06d8\u06d7\u06e8\u06d8\u06e7\u06d8\u06dc\u06e5\u06dc\u06d8\u06e4\u06e0\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06db\u06d6\u06e8\u06e8\u06e7\u06e1\u06d8\u06e4\u06df\u06da\u06e2\u06e8\u06df\u06ec\u06d7\u06e5\u06db\u06df\u06e5\u06d8\u06d8\u06e2\u06d7\u06dc\u06d8\u06e7\u06df\u06e1\u06d9\u06e7\u06e6\u06d6\u06e6\u06ec\u06e8\u06ec\u06eb\u06e4\u06e6\u06e4\u06db\u06df\u06d7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06d7\u06e8\u06d7\u06e2\u06dc\u06e6\u06e8\u06d9\u06e1\u06eb\u06e5\u06e5\u06e6\u06e1\u06e4\u06e2\u06d8\u06e6\u06da\u06d9\u06e1\u06d8\u06d6\u06da\u06d6\u06d8\u06e4\u06ec\u06e2\u06df\u06ec\u06d6\u06ec\u06d8\u06e8\u06d8\u06e0\u06db\u06e0\u06d6\u06e1\u06e1\u06d8\u06d6\u06df\u06e0"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x24a695b0 -> :sswitch_3
        0x634c203b -> :sswitch_2
        0x67982a8c -> :sswitch_1
        0x6a4d0f64 -> :sswitch_0
    .end sparse-switch
.end method
