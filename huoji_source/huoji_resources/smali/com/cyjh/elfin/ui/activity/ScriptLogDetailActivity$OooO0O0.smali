.class public Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e1\u06eb\u06e0\u06eb\u06e5\u06e0\u06eb\u06d7\u06db\u06df\u06df\u06e8\u06d8\u06e5\u06e0\u06dc\u06d8\u06d7\u06eb\u06ec\u06e6\u06dc\u06db\u06df\u06e5\u06e4\u06d7\u06db\u06e0\u06dc\u06ec\u06e8\u06d8\u06d8\u06e7\u06d6\u06e4\u06ec\u06e6\u06db\u06e4\u06df\u06df\u06e0\u06e1\u06dc\u06e2\u06e8\u06d8\u06e0\u06e2\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2da

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x214

    const/16 v2, 0x1af

    const v3, 0x1b69389b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e2\u06ec\u06dc\u06d6\u06d7\u06db\u06e0\u06d8\u06e6\u06ec\u06e0\u06e7\u06d6\u06dc\u06d8\u06e8\u06eb\u06e2\u06dc\u06d6\u06e1\u06da\u06e5\u06d8\u06e0\u06e2\u06d8\u06d8\u06d9\u06e8\u06e5\u06d8\u06e6\u06e0\u06e7\u06db\u06ec\u06ec\u06e7\u06df\u06d8\u06d8\u06e1\u06e6\u06d6\u06e4\u06d8\u06d9\u06e0\u06d6\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06d6\u06ec\u06e6\u06e7\u06d9\u06d7\u06d7\u06e8\u06da\u06d9\u06d8\u06d8\u06e0\u06e2\u06d7\u06dc\u06d8\u06e2\u06db\u06e1\u06eb\u06d8\u06da\u06db\u06d8\u06eb\u06e2\u06ec\u06e8\u06e4\u06e7\u06e1\u06d8\u06d9\u06d6\u06d8\u06eb\u06dc\u06e6\u06e6\u06df\u06e2\u06d9\u06e1\u06d8\u06e1\u06e1\u06e4"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e6\u06df\u06d8\u06d8\u06eb\u06d6\u06dc\u06d8\u06e5\u06dc\u06dc\u06d8\u06d6\u06d7\u06d6\u06d8\u06e7\u06e2\u06e1\u06d8\u06da\u06d7\u06da\u06e7\u06eb\u06e8\u06dc\u06eb\u06d8\u06d8\u06d8\u06e6\u06e8\u06d8\u06d9\u06da\u06d7\u06e0\u06e6\u06e4\u06e0\u06e7\u06e5\u06d8\u06da\u06d9\u06dc\u06d8\u06ec\u06e4\u06e0\u06e0\u06e1\u06e2\u06e1\u06df\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc401b2d -> :sswitch_2
        0x2c1a3216 -> :sswitch_0
        0x4d518f8a -> :sswitch_1
        0x556d2ef6 -> :sswitch_3
    .end sparse-switch
.end method
