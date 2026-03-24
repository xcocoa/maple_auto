.class public Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d7\u06e2\u06e8\u06d8\u06df\u06e2\u06df\u06df\u06eb\u06e4\u06df\u06e0\u06e7\u06e1\u06e5\u06d6\u06d8\u06e4\u06df\u06db\u06ec\u06e0\u06ec\u06dc\u06d6\u06e7\u06e2\u06db\u06e0\u06dc\u06df\u06df\u06e6\u06e7\u06dc\u06e8\u06e8\u06d8\u06d8\u06da\u06d7\u06eb\u06eb\u06e0\u06dc\u06d9\u06d8\u06d8\u06e6\u06dc\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x211

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa8

    const/16 v2, 0x39b

    const v3, -0x54523abf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d6\u06dc\u06e7\u06d9\u06e2\u06e4\u06e5\u06d6\u06e8\u06eb\u06e5\u06e4\u06d9\u06d8\u06d8\u06e2\u06d6\u06e0\u06e8\u06da\u06ec\u06e5\u06da\u06eb\u06db\u06e1\u06db\u06d8\u06e2\u06e6\u06e8\u06e7\u06e8\u06e5\u06d6\u06d6\u06d8\u06db\u06e8\u06dc\u06d8\u06df\u06d9\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06d9\u06e6\u06eb\u06e7\u06e7\u06d9\u06d6\u06d9\u06e1\u06e5\u06d7\u06e2\u06dc\u06d6\u06ec\u06df\u06e2\u06dc\u06e1\u06e5\u06d8\u06ec\u06e2\u06e6\u06d8\u06df\u06e2\u06d8\u06e6\u06df\u06e6\u06d8\u06eb\u06df\u06d8\u06e7\u06e8\u06d8\u06d8\u06e1\u06ec\u06e6\u06e8\u06df\u06e5\u06eb\u06e5\u06ec\u06da\u06dc\u06d8\u06e4\u06e8\u06e2\u06df\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06db\u06eb\u06e7\u06d6\u06e4\u06e1\u06d8\u06e1\u06d8\u06da\u06d6\u06d6\u06e8\u06e5\u06e5\u06eb\u06e6\u06dc\u06d7\u06d8\u06d6\u06df\u06e2\u06e5\u06eb\u06e7\u06da\u06d9\u06e6\u06eb\u06e4\u06e8\u06e4\u06d9\u06d9\u06e0\u06d9\u06dc\u06e8\u06d8\u06e0\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c1a4ba1 -> :sswitch_0
        -0x3639595b -> :sswitch_2
        0x4fc6b8e8 -> :sswitch_1
        0x7cb94564 -> :sswitch_3
    .end sparse-switch
.end method
