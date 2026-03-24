.class public Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e2\u06e4\u06e8\u06d6\u06dc\u06e5\u06d8\u06db\u06e0\u06dc\u06d8\u06e7\u06e1\u06eb\u06d6\u06e5\u06eb\u06e2\u06e6\u06df\u06d6\u06ec\u06e2\u06e1\u06e1\u06e7\u06d8\u06d8\u06e1\u06e2\u06e6\u06da\u06df\u06e6\u06e5\u06e7\u06e5\u06dc\u06df\u06d7\u06df\u06e1\u06e7\u06ec\u06d6\u06e4\u06e8\u06e7\u06d8\u06e2\u06e2\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x243

    const/16 v2, 0xd2

    const v3, -0x4ba01aaa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06db\u06e0\u06e6\u06d7\u06d6\u06db\u06d8\u06e6\u06d8\u06e5\u06ec\u06db\u06d9\u06df\u06e6\u06df\u06db\u06e8\u06d8\u06ec\u06d8\u06e5\u06d8\u06e8\u06d9\u06e5\u06e7\u06da\u06d8\u06d8\u06e0\u06e4\u06e8\u06d8\u06ec\u06e5\u06e2\u06e8\u06e2\u06dc\u06db\u06da\u06d8\u06d8\u06e7\u06ec\u06e6\u06d8\u06e0\u06d7\u06e2\u06dc\u06e1\u06e5\u06e5\u06d9\u06d8\u06d8\u06dc\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;Z)Z

    const-string v0, "\u06da\u06e5\u06e7\u06df\u06d9\u06e1\u06d8\u06e6\u06e0\u06d7\u06e4\u06e8\u06d9\u06e8\u06e4\u06e6\u06d8\u06eb\u06dc\u06e6\u06d8\u06e4\u06da\u06e8\u06d8\u06ec\u06d7\u06dc\u06d9\u06dc\u06dc\u06df\u06e0\u06e4\u06ec\u06d7\u06e0\u06e2\u06e5\u06e6\u06d7\u06e5\u06e4\u06eb\u06df\u06e5\u06e0\u06e7\u06e7\u06e0\u06e6"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bab4805 -> :sswitch_1
        -0xa63a961 -> :sswitch_2
        0x31eadb1b -> :sswitch_0
    .end sparse-switch
.end method
