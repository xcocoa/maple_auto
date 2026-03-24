.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer",
        "<",
        "Lcom/cyjh/http/bean/NotifyMsgBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/NotifyMsgBean;)V
    .locals 5
    .param p1    # Lcom/cyjh/http/bean/NotifyMsgBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06e7\u06e8\u06d7\u06df\u06e7\u06df\u06e6\u06e5\u06d8\u06e8\u06e5\u06db\u06d6\u06e2\u06e2\u06db\u06db\u06e8\u06db\u06e7\u06da\u06dc\u06e4\u06dc\u06d8\u06db\u06db\u06d7\u06d8\u06d7\u06ec\u06da\u06e4\u06df\u06e7\u06d6\u06d8\u06e6\u06e1\u06d8\u06d8\u06e5\u06e7\u06eb\u06db\u06e4\u06e6\u06e1\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xa8

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x9f

    const/16 v3, 0x8d

    const v4, 0x7ba601

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06da\u06e7\u06eb\u06ec\u06d8\u06d8\u06d6\u06d8\u06e7\u06d6\u06d6\u06d8\u06d7\u06e0\u06d8\u06d8\u06db\u06e6\u06d8\u06eb\u06e4\u06e8\u06d8\u06d9\u06e7\u06ec\u06d7\u06e2\u06da\u06db\u06e5\u06d9\u06d6\u06e7\u06e8\u06d8\u06e1\u06ec\u06da\u06e7\u06e4\u06e5\u06e4\u06e7\u06ec\u06e0\u06e1\u06e8\u06d8\u06e2\u06e8\u06e4\u06dc\u06d9\u06eb\u06e0\u06dc\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06e8\u06d6\u06d8\u06e0\u06e8\u06e1\u06d8\u06e2\u06e4\u06dc\u06d8\u06e1\u06eb\u06eb\u06e5\u06ec\u06d9\u06d9\u06dc\u06d9\u06db\u06e2\u06d6\u06d8\u06dc\u06e6\u06e5\u06d8\u06da\u06e1\u06d9\u06e4\u06da\u06eb\u06d6\u06e0\u06dc\u06d8\u06dc\u06e6\u06d6\u06e1\u06ec\u06e8\u06e4\u06e6\u06e5\u06d8\u06df\u06d8\u06e1\u06d8\u06df\u06e2\u06e5\u06ec\u06e0\u06ec"

    goto :goto_0

    :sswitch_2
    const v2, 0x199f8a0d

    const-string v0, "\u06e4\u06eb\u06e0\u06d9\u06e2\u06e4\u06ec\u06e4\u06d6\u06d8\u06d8\u06d6\u06df\u06d7\u06db\u06d8\u06db\u06e6\u06db\u06ec\u06d8\u06df\u06e4\u06eb\u06dc\u06d8\u06e1\u06d8\u06d8\u06e2\u06e6\u06db\u06d9\u06e4\u06e5\u06d8\u06e2\u06e8\u06d8\u06eb\u06e5\u06e2\u06e6\u06e6\u06e1\u06e6\u06d7\u06e7\u06db\u06d8\u06e8\u06db\u06d6\u06eb\u06e8\u06e6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d9\u06da\u06d6\u06df\u06da\u06ec\u06e0\u06d9\u06d7\u06eb\u06e4\u06e4\u06e1\u06e0\u06e5\u06d8\u06e6\u06e7\u06e8\u06d8\u06d8\u06dc\u06e6\u06d8\u06e5\u06e2\u06e5\u06e1\u06d6\u06e1\u06d8\u06eb\u06d9\u06df\u06e8\u06ec\u06e1\u06d8\u06d9\u06d8\u06e4\u06e5\u06d7\u06e5\u06da\u06ec\u06d8\u06e6\u06e7\u06eb\u06e0\u06e0\u06d7\u06e1\u06e2\u06e0\u06df\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06d8\u06e1\u06ec\u06ec\u06df\u06eb\u06d8\u06e1\u06e7\u06e2\u06d9\u06e6\u06e2\u06e5\u06e7\u06d6\u06dc\u06e0\u06e7\u06e4\u06e5\u06dc\u06ec\u06da\u06e7\u06da\u06eb\u06d6\u06d8\u06d9\u06e8\u06e8\u06d9\u06e0\u06d6\u06d8\u06d8"

    goto :goto_1

    :sswitch_5
    const v3, -0x29e62b14

    const-string v0, "\u06db\u06e0\u06e1\u06d8\u06e1\u06eb\u06e1\u06d8\u06d6\u06da\u06d8\u06ec\u06d8\u06e4\u06e1\u06ec\u06eb\u06da\u06e2\u06db\u06eb\u06e0\u06d6\u06d8\u06d7\u06da\u06e6\u06d8\u06e6\u06e1\u06e7\u06d8\u06d7\u06e7\u06d8\u06e7\u06d6\u06e6\u06e7\u06d7\u06e5\u06e2\u06e2\u06e4\u06d9\u06e7\u06d8\u06e0\u06eb\u06d6\u06ec\u06ec\u06e6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    if-eqz p1, :cond_0

    const-string v0, "\u06d8\u06d8\u06e8\u06d8\u06eb\u06e2\u06e6\u06e1\u06e2\u06dfO\u06e2\u06dc\u06e8\u06d8\u06d8\u06e1\u06ec\u06e5\u06d9\u06d8\u06e2\u06d8\u06d6\u06d8\u06e4\u06e2\u06d9\u06ec\u06e5\u06e5\u06e7\u06e6\u06d6\u06d7\u06e1\u06e2\u06d6\u06e8\u06ec\u06eb\u06d8\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e1\u06e5\u06ec\u06e8\u06dc\u06d6\u06d8\u06da\u06e2\u06e2\u06eb\u06e6\u06e4\u06e4\u06da\u06dc\u06d8\u06e7\u06d7\u06e8\u06ec\u06d9\u06e7\u06df\u06da\u06e5\u06d8\u06eb\u06d8\u06d8\u06d8\u06db\u06d8\u06e5\u06d8\u06e4\u06e6\u06e7\u06dc\u06df\u06dc\u06d8\u06db\u06d9\u06e8\u06d8\u06e2\u06e8\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e1\u06e0\u06d9\u06e1\u06df\u06df\u06e4\u06e7\u06d6\u06d8\u06e6\u06e7\u06e2\u06dc\u06e1\u06d6\u06d8\u06e8\u06e7\u06e5\u06db\u06d9\u06e2\u06e6\u06e1\u06db\u06db\u06d9\u06e6\u06d8\u06e8\u06e8\u06e8\u06d8\u06e2\u06e0\u06e6\u06e6\u06e7\u06e8\u06ec\u06eb\u06e1\u06d7\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06e5\u06d6\u06d8\u06d9\u06dc\u06dc\u06e8\u06e0\u06db\u06e0\u06e8\u06d6\u06d8\u06ec\u06ec\u06ec\u06ec\u06da\u06d8\u06e4\u06d8\u06e5\u06e2\u06da\u06e1\u06e5\u06df\u06eb\u06e7\u06d7\u06e2\u06db\u06df\u06e5\u06d9\u06da\u06d9\u06d6\u06e7\u06dc\u06d8\u06d9\u06e0\u06db"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e6\u06db\u06d8\u06d8\u06e8\u06db\u06e5\u06d8\u06da\u06ec\u06e7\u06d9\u06e7\u06d6\u06d8\u06e0\u06e6\u06e5\u06d8\u06ec\u06e2\u06e1\u06e1\u06df\u06e5\u06e0\u06e1\u06e4\u06d8\u06e8\u06e7\u06e2\u06df\u06da\u06eb\u06df\u06d6\u06ec\u06d7\u06e7\u06d8\u06ec\u06e5\u06eb\u06e5\u06d9\u06e1\u06e8\u06e2\u06e2\u06e1\u06e8\u06e1\u06da\u06ec\u06d6"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e6\u06e2\u06e1\u06d8\u06e7\u06dc\u06d8\u06d8\u06d7\u06df\u06d6\u06d8\u06e7\u06d8\u06e5\u06d8\u06eb\u06e0\u06e6\u06da\u06db\u06d6\u06d8\u06d6\u06ec\u06e5\u06d6\u06e8\u06e2\u06e5\u06e0\u06eb\u06e5\u06eb\u06db\u06d9\u06eb\u06df\u06e2\u06eb\u06d7\u06d7\u06e5\u06d8\u06eb\u06ec\u06e1\u06eb\u06df\u06df\u06dc\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOo0O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06e7\u06e8\u06d6\u06d8\u06d8\u06d6\u06d8\u06ec\u06d6\u06e2\u06db\u06e5\u06e8\u06d8\u06eb\u06d8\u06dc\u06e2\u06eb\u06d8\u06ec\u06e6\u06dc\u06d8\u06e1\u06e0\u06e8\u06d8\u06e0\u06da\u06d7\u06db\u06dc\u06e6\u06d8\u06d6\u06e2\u06eb\u06db\u06e1\u06d9"

    goto :goto_0

    :sswitch_c
    const v2, -0x2ab5496c

    const-string v0, "\u06da\u06d9\u06e8\u06d8\u06d7\u06e4\u06d9\u06e5\u06e5\u06e7\u06d8\u06e2\u06ec\u06d6\u06d8\u06e6\u06e5\u06df\u06e0\u06e5\u06df\u06e5\u06e7\u06dc\u06d8\u06dc\u06eb\u06e6\u06d8\u06e6\u06da\u06d9\u06d9\u06d8\u06e0\u06eb\u06e6\u06d8\u06e7\u06d6\u06e1\u06d8\u06ec\u06e5\u06d8\u06e8\u06ec\u06eb"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06df\u06e6\u06e6\u06d8\u06e2\u06e1\u06e0\u06e0\u06eb\u06e1\u06d9\u06db\u06e2\u06e7\u06eb\u06d9\u06e8\u06e8\u06e6\u06e5\u06da\u06e5\u06e5\u06e8\u06d8\u06e8\u06d6\u06d8\u06eb\u06d8\u06da\u06e6\u06e7\u06da\u06e6\u06e2\u06e2\u06e2\u06e1\u06e2\u06dc\u06da\u06e8\u06d8\u06e6\u06db\u06e5\u06ec\u06df\u06d6\u06d7\u06e2\u06eb\u06e0\u06d7\u06db"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06dc\u06e0\u06e5\u06d8\u06dc\u06d9\u06d9\u06db\u06e4\u06ec\u06da\u06d7\u06d9\u06dc\u06e7\u06ec\u06e0\u06db\u06d8\u06e5\u06d6\u06e1\u06e4\u06d9\u06eb\u06eb\u06db\u06d6\u06d8\u06e6\u06ec\u06d8\u06d8\u06e6\u06e8\u06e8\u06d8\u06e1\u06e0\u06d8\u06d7\u06df\u06d7\u06db\u06eb\u06d7\u06ec\u06eb\u06e6\u06e6\u06e6\u06d6\u06e5\u06e2\u06dc\u06d8\u06d7\u06ec\u06e5"

    goto :goto_3

    :sswitch_f
    const v3, -0x1ec12009

    const-string v0, "\u06db\u06e2\u06d6\u06d8\u06ec\u06eb\u06eb\u06eb\u06e8\u06e6\u06e6\u06db\u06e8\u06d8\u06d8\u06e8\u06d9\u06e6\u06e2\u06e2\u06e0\u06d7\u06e5\u06d8\u06da\u06e1\u06e5\u06e4\u06eb\u06dc\u06da\u06e6\u06da\u06e6\u06db\u06e6\u06da\u06eb\u06e8\u06e6\u06e6\u06d6\u06e2\u06eb"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06dc\u06e5\u06eb\u06ec\u06e6\u06d6\u06e8\u06e2\u06e8\u06d8\u06e2\u06dc\u06d9\u06d6\u06e4\u06d6\u06d8\u06e6\u06e8\u06dc\u06d8\u06d7\u06df\u06e1\u06e5\u06db\u06dc\u06d8\u06da\u06e6\u06e8\u06d8\u06e6\u06da\u06df\u06d8\u06e4\u06e8\u06d8\u06e8\u06e2\u06e2\u06e4\u06e1\u06e8\u06df\u06df"

    goto :goto_3

    :cond_1
    const-string v0, "\u06eb\u06da\u06d9\u06d8\u06dc\u06e8\u06d8\u06e2\u06d9\u06e4\u06e0\u06da\u06dc\u06ec\u06e6\u06e8\u06d8\u06db\u06d6\u06d8\u06d8\u06ec\u06d6\u06d8\u06e7\u06e4\u06d8\u06da\u06d9\u06d9\u06eb\u06db\u06dc"

    goto :goto_4

    :sswitch_11
    iget-boolean v0, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->IsSendMessage:Z

    if-eqz v0, :cond_1

    const-string v0, "\u06eb\u06e6\u06d8\u06da\u06e2\u06e5\u06d7\u06e5\u06e5\u06d8\u06e5\u06db\u06eb\u06d6\u06e4\u06da\u06df\u06d8\u06e7\u06d8\u06eb\u06e4\u06e5\u06e4\u06dc\u06e2\u06e8\u06d7\u06e8\u06ec\u06eb\u06eb"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e8\u06ec\u06e1\u06db\u06dc\u06d8\u06d8\u06d9\u06eb\u06e0\u06e4\u06eb\u06d7\u06e1\u06e1\u06e6\u06e1\u06e1\u06d6\u06d8\u06dc\u06e1\u06dc\u06d8\u06e8\u06e2\u06e7\u06ec\u06db\u06e1\u06d8\u06d9\u06e5\u06d8\u06d6\u06e8\u06e1\u06d8\u06d6\u06d9\u06d9\u06dc\u06d7\u06d8\u06df\u06d6\u06d6\u06d8"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06ec\u06eb\u06d6\u06d9\u06e0\u06e0\u06e7\u06e5\u06dc\u06d8\u06d6\u06e8\u06d8\u06e5\u06e6\u06da\u06eb\u06d8\u06d6\u06d8\u06e4\u06e0\u06db\u06dc\u06e2\u06e6\u06d8\u06e5\u06d6\u06db\u06d6\u06e1\u06d8\u06dc\u06e2\u06eb\u06d9\u06d8\u06d6\u06e7\u06e5\u06df\u06e7\u06e6\u06df\u06e4\u06dc\u06e8\u06d8\u06e2\u06eb\u06dc"

    goto/16 :goto_0

    :sswitch_14
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const-string v0, "\u06d6\u06d9\u06e6\u06d8\u06d8\u06e2\u06d6\u06e8\u06e5\u06d6\u06d8\u06d7\u06db\u06df\u06d6\u06d9\u06e0\u06df\u06e5\u06d7\u06db\u06e2\u06da\u06e8\u06d7\u06d8\u06e6\u06d7\u06e0\u06ec\u06dc\u06db\u06e4\u06e1\u06eb\u06df\u06ec\u06e8\u06dc\u06ec\u06df\u06dc\u06e6\u06e8\u06e2\u06e5\u06db\u06e4\u06e1\u06da"

    goto/16 :goto_0

    :sswitch_15
    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOooo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroidx/lifecycle/AndroidViewModel;

    move-result-object v0

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOooO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo000(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Ljava/util/ArrayList;)V

    const-string v0, "\u06db\u06ec\u06df\u06e5\u06e5\u06d6\u06e5\u06e4\u06d7\u06e2\u06da\u06e5\u06db\u06d9\u06eb\u06e6\u06e7\u06e1\u06e4\u06e5\u06d8\u06e0\u06e5\u06e8\u06d8\u06da\u06e8\u06dc\u06d8\u06e4\u06ec\u06ec\u06d9\u06e5\u06df\u06e1\u06db\u06ec"

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo00O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "\u06d7\u06dc\u06d8\u06d8\u06df\u06eb\u06d8\u06d8\u06e0\u06d9\u06d6\u06e6\u06db\u06e0\u06e1\u06e7\u06dc\u06d9\u06d6\u06e8\u06e0\u06ec\u06e0\u06e4\u06d9\u06da\u06d8\u06dc\u06e1\u06d8\u06d7\u06d6\u06da\u06db\u06ec\u06e6\u06d8\u06e4\u06d7\u06eb\u06d6\u06da\u06e5\u06db\u06df\u06e7\u06ec\u06d7\u06e5\u06e0\u06d9\u06dc\u06e0\u06dc\u06db\u06ec\u06e1\u06e0"

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo00o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v2, 0x3e9

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo00O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "\u06d9\u06da\u06d6\u06df\u06da\u06ec\u06e0\u06d9\u06d7\u06eb\u06e4\u06e4\u06e1\u06e0\u06e5\u06d8\u06e6\u06e7\u06e8\u06d8\u06d8\u06dc\u06e6\u06d8\u06e5\u06e2\u06e5\u06e1\u06d6\u06e1\u06d8\u06eb\u06d9\u06df\u06e8\u06ec\u06e1\u06d8\u06d9\u06d8\u06e4\u06e5\u06d7\u06e5\u06da\u06ec\u06d8\u06e6\u06e7\u06eb\u06e0\u06e0\u06d7\u06e1\u06e2\u06e0\u06df\u06d8"

    goto/16 :goto_0

    :sswitch_18
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6de87c3b -> :sswitch_14
        -0x53abf26a -> :sswitch_18
        -0x38841916 -> :sswitch_17
        -0xdf822fa -> :sswitch_16
        -0x82a3f29 -> :sswitch_15
        0x15cee720 -> :sswitch_0
        0x2aa6e28c -> :sswitch_1
        0x48d8981f -> :sswitch_c
        0x668f64bf -> :sswitch_2
        0x707454cb -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1dca78a1 -> :sswitch_3
        -0x162b966 -> :sswitch_5
        0x64df7e55 -> :sswitch_9
        0x7643506e -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x53a33946 -> :sswitch_7
        -0x2c352e69 -> :sswitch_6
        -0x246f3b60 -> :sswitch_8
        0x5222d2b3 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6fe039eb -> :sswitch_3
        0x1dd9ceb8 -> :sswitch_d
        0x31d748a8 -> :sswitch_f
        0x4f517ae4 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x77345f7c -> :sswitch_12
        -0x71b99684 -> :sswitch_10
        -0x663fb420 -> :sswitch_e
        0x25c4ba83 -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06db\u06d7\u06e4\u06e5\u06e4\u06dc\u06d8\u06e6\u06e5\u06e1\u06d8\u06e8\u06e2\u06e5\u06d8\u06dc\u06d7\u06e7\u06e8\u06d9\u06d6\u06df\u06e5\u06eb\u06e1\u06d6\u06eb\u06d9\u06d7\u06e7\u06e5\u06eb\u06dc\u06d8\u06ec\u06da\u06e6\u06d8\u06db\u06d9\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3df

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x49

    const/16 v2, 0x1e0

    const v3, -0x36cf78e2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e1\u06e6\u06e2\u06e5\u06e8\u06d8\u06ec\u06d8\u06e7\u06e8\u06d8\u06dc\u06d8\u06ec\u06e5\u06db\u06e6\u06e6\u06e6\u06ec\u06d7\u06e0\u06da\u06e7\u06df\u06dc\u06dc\u06dc\u06d8\u06e7\u06d6\u06e5\u06d8\u06df\u06e4\u06e0\u06d6\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e1\u06e1\u06d8\u06df\u06e7\u06d6\u06d7\u06e1\u06e1\u06d9\u06d6\u06d7\u06dc\u06da\u06df\u06dc\u06e6\u06e0\u06e8\u06df\u06e4\u06e6\u06d8\u06d8\u06e6\u06df\u06ec\u06da\u06df\u06da\u06e2\u06e5\u06e8\u06d8\u06e1\u06da\u06e6\u06d8\u06da\u06d9\u06e5\u06d8\u06e8\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;->OooO00o(Lcom/cyjh/http/bean/NotifyMsgBean;)V

    const-string v0, "\u06dc\u06e5\u06d6\u06d8\u06d9\u06dc\u06d6\u06e8\u06e4\u06df\u06ec\u06db\u06ec\u06e8\u06d9\u06dc\u06d8\u06e1\u06dc\u06e7\u06ec\u06e1\u06d8\u06e0\u06db\u06e1\u06d6\u06e4\u06df\u06eb\u06dc\u06e0\u06df\u06e5\u06e1\u06d7\u06ec\u06e6\u06e4\u06e1\u06dc\u06d8\u06d6\u06d8\u06e7\u06d8\u06db\u06db\u06e1\u06d8\u06e8\u06e5\u06df\u06df\u06da\u06e7\u06e6\u06eb\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x623ada94 -> :sswitch_2
        -0x613ea2af -> :sswitch_3
        0x117041ca -> :sswitch_1
        0x4c7c7fb3 -> :sswitch_0
    .end sparse-switch
.end method
