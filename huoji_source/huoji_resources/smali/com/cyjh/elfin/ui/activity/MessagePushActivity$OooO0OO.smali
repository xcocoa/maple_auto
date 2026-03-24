.class public Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/MessagePushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/MessagePushActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/MessagePushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06df\u06d7\u06e6\u06d8\u06d6\u06d8\u06e2\u06db\u06e2\u06ec\u06e0\u06d9\u06d6\u06da\u06e7\u06eb\u06d9\u06eb\u06e7\u06db\u06e8\u06e5\u06e7\u06d9\u06db\u06dc\u06ec\u06dc\u06e2\u06da\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x96

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x170

    const/16 v2, 0x308

    const v3, -0x575ef4ab

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d9\u06df\u06eb\u06e4\u06d6\u06d8\u06e5\u06e7\u06d6\u06d9\u06e0\u06e6\u06d8\u06e6\u06e5\u06e7\u06d9\u06da\u06db\u06d9\u06e8\u06d8\u06df\u06e5\u06dc\u06da\u06e4\u06e8\u06eb\u06e0\u06d6\u06d8\u06d6\u06db\u06d9\u06da\u06ec\u06e5\u06e1\u06e8\u06d8\u06eb\u06da\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e1\u06d9\u06d7\u06d6\u06e6\u06e1\u06d6\u06e4\u06d6\u06e2\u06d8\u06d8\u06df\u06e8\u06dc\u06d8\u06e1\u06d9\u06d6\u06eb\u06dc\u06e7\u06e8\u06e6\u06d8\u06e8\u06da\u06e1\u06d8\u06e6\u06da\u06e5\u06e5\u06d9\u06d7\u06db\u06dc\u06e6\u06db\u06e0\u06eb\u06e4\u06e8\u06e8\u06d8\u06e1\u06d8\u06dc\u06dc\u06da\u06df\u06db\u06da\u06d8\u06d8\u06d6\u06e5\u06e8"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06d7\u06e7\u06da\u06e8\u06dc\u06dc\u06e0\u06ec\u06d9\u06e1\u06dc\u06d8\u06d7\u06d9\u06e2\u06e0\u06d9\u06db\u06eb\u06e6\u06e1\u06d8\u06ec\u06e6\u06df\u06e4\u06e6\u06e1\u06d8\u06e8\u06eb\u06e5\u06dc\u06d7\u06da\u06e0\u06dc\u06d8\u06e5\u06ec\u06df\u06eb\u06d6\u06e6\u06e5\u06ec\u06dc\u06d8\u06e7\u06e2\u06e0\u06d7\u06ec\u06e1\u06e7\u06d8\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b375bd -> :sswitch_3
        0x1c842f69 -> :sswitch_0
        0x588fe1b1 -> :sswitch_1
        0x64fbd2ff -> :sswitch_2
    .end sparse-switch
.end method
