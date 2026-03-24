.class public Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string v0, "\u06e8\u06e4\u06da\u06d8\u06d9\u06e5\u06d7\u06e7\u06dc\u06d8\u06da\u06eb\u06e1\u06d8\u06d9\u06e5\u06d6\u06e2\u06df\u06e7\u06e0\u06e0\u06eb\u06d7\u06e2\u06e8\u06e0\u06da\u06df\u06e2\u06e8\u06d8\u06e8\u06d6\u06da\u06d8\u06d8\u06db\u06d9\u06d8\u06d9\u06d9\u06da\u06db\u06e5\u06e0\u06da\u06e5\u06db\u06eb\u06e6\u06df\u06d9\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x23f

    const/16 v2, 0x31c

    const v3, 0x6d335307

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06dc\u06dc\u06dc\u06e0\u06e0\u06db\u06dc\u06e4\u06d7\u06e4\u06e4\u06e6\u06dc\u06df\u06d9\u06eb\u06e1\u06eb\u06d8\u06d8\u06dc\u06da\u06dc\u06d8\u06e1\u06d6\u06d6\u06e0\u06e6\u06d8\u06d8\u06d6\u06e2\u06d6\u06d8\u06d7\u06da\u06e8\u06dc\u06e1\u06df\u06e7\u06e0\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e4\u06dc\u06d8\u06e7\u06e6\u06e2\u06df\u06e2\u06e5\u06d8\u06e6\u06e2\u06e5\u06d8\u06d7\u06e1\u06e8\u06d8\u06e2\u06ec\u06da\u06e0\u06db\u06da\u06d9\u06d9\u06d7\u06db\u06d6\u06d8\u06d9\u06eb\u06e5\u06d8\u06e8\u06e6\u06e8\u06d8\u06da\u06d7\u06dc\u06d9\u06ec\u06e7\u06d8\u06d8\u06e5\u06d8\u06e1\u06e1\u06d8\u06ec\u06e2\u06d7"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-string v0, "\u06db\u06db\u06d6\u06e1\u06d9\u06d9\u06e8\u06da\u06e8\u06d8\u06e1\u06d8\u06e1\u06df\u06e7\u06e7\u06da\u06eb\u06dc\u06e4\u06e7\u06e7\u06e1\u06d9\u06e1\u06e4\u06e7\u06e0\u06e1\u06e6\u06d8\u06e7\u06d9\u06e8\u06eb\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b656328 -> :sswitch_2
        -0x3245d2be -> :sswitch_3
        -0x17e80a58 -> :sswitch_1
        0x6e34ea91 -> :sswitch_0
    .end sparse-switch
.end method
