.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0O;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e5\u06e6\u06d6\u06d8\u06e4\u06e8\u06d8\u06d6\u06da\u06e2\u06d7\u06e2\u06e8\u06d9\u06db\u06dc\u06e1\u06e8\u06da\u06ec\u06dc\u06df\u06d8\u06e4\u06d7\u06e2\u06dc\u06e1\u06da\u06df\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x53

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d8

    const/16 v2, 0x2d9

    const v3, 0x2d78a1b9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06df\u06df\u06d9\u06ec\u06e4\u06eb\u06db\u06e6\u06da\u06e4\u06dc\u06d8\u06e0\u06e0\u06d9\u06dc\u06ec\u06eb\u06eb\u06e4\u06e5\u06d8\u06db\u06e7\u06d8\u06e0\u06d9\u06d6\u06e7\u06df\u06db\u06d7\u06e6\u06d8\u06da\u06e0\u06e4\u06df\u06e7\u06da\u06da\u06e7\u06e0"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0O;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOO0o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06d9\u06da\u06eb\u06e8\u06ec\u06da\u06e5\u06df\u06da\u06ec\u06ec\u06d6\u06e1\u06d9\u06e5\u06e4\u06e2\u06d8\u06e1\u06e8\u06db\u06da\u06e2\u06dc\u06d8\u06d7\u06ec\u06e8\u06db\u06e0\u06ec"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x8da9dab -> :sswitch_0
        0x93f9456 -> :sswitch_2
        0x4874d1de -> :sswitch_1
    .end sparse-switch
.end method
