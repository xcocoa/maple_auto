.class public Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;,
        Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0OO;
    }
.end annotation


# instance fields
.field private OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private OooooOO:Landroid/widget/ListView;

.field private OooooOo:Landroid/widget/Button;

.field private Oooooo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyjh/elfin/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field

.field private Oooooo0:Landroid/widget/Button;

.field private OoooooO:Lz2/q9;

.field private Ooooooo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Ooooooo:Z

    return-void
.end method

.method public static synthetic OooO(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;
    .locals 4

    const-string v0, "\u06e6\u06e1\u06e0\u06d9\u06d6\u06d9\u06d7\u06e7\u06e5\u06d8\u06e0\u06d8\u06e8\u06d8\u06e8\u06e0\u06e7\u06e1\u06d7\u06d9\u06d8\u06d9\u06db\u06e0\u06e7\u06e6\u06d8\u06e2\u06e1\u06eb\u06e7\u06d8\u06eb\u06dc\u06dc\u06e0\u06e7\u06e5\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x56

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x293

    const/16 v2, 0x230

    const v3, -0x76d1c123

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06dc\u06e8\u06d8\u06d9\u06e0\u06d8\u06eb\u06db\u06e6\u06d8\u06d6\u06e6\u06d8\u06d7\u06e8\u06e4\u06e6\u06df\u06da\u06e1\u06d6\u06d8\u06e2\u06db\u06e6\u06d8\u06d9\u06d8\u06dc\u06d8\u06df\u06d7\u06e5\u06e2\u06e0\u06e5\u06ec\u06e0\u06e6\u06d8\u06d6\u06da\u06e6\u06d8\u06dc\u06da\u06e7\u06e2\u06eb\u06e8\u06e2\u06e8\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooOo:Landroid/widget/Button;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3294c456 -> :sswitch_1
        0x4c3a9759 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Z
    .locals 4

    const-string v0, "\u06e6\u06d6\u06dc\u06da\u06dc\u06e4\u06d7\u06d8\u06e0\u06e8\u06da\u06dc\u06d8\u06df\u06e1\u06dc\u06d6\u06da\u06dc\u06e2\u06df\u06e6\u06df\u06d7\u06e1\u06e4\u06e4\u06dc\u06d8\u06ec\u06e1\u06d7\u06db\u06e6\u06e1\u06d9\u06db\u06db\u06dc\u06ec\u06d6\u06d8\u06d9\u06e1\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c7

    const/16 v2, 0x19b

    const v3, -0x7dd8bc41

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06dc\u06d6\u06dc\u06ec\u06d6\u06ec\u06eb\u06d6\u06d8\u06d8\u06e4\u06e5\u06da\u06db\u06e1\u06d8\u06e2\u06d7\u06dc\u06e2\u06d8\u06e1\u06d8\u06e7\u06dc\u06e7\u06d6\u06db\u06dc\u06ec\u06e4\u06d8\u06d8\u06e7\u06e2\u06e1\u06d8\u06da\u06da\u06df"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Ooooooo:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        0x40afdbd1 -> :sswitch_1
        0x73492aea -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;Z)Z
    .locals 4

    const-string v0, "\u06da\u06eb\u06d6\u06e1\u06d8\u06e5\u06d8\u06e7\u06d9\u06eb\u06e5\u06e4\u06e2\u06e5\u06e4\u06e4\u06e1\u06e7\u06e1\u06d8\u06d8\u06d9\u06e4\u06e4\u06e0\u06df\u06db\u06eb\u06e6\u06e0\u06d6\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x112

    const/4 v2, 0x1

    const v3, -0x3b62c5e9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06dc\u06e4\u06d8\u06e1\u06d7\u06dc\u06ec\u06da\u06ec\u06eb\u06e5\u06e5\u06ec\u06dc\u06d8\u06e7\u06da\u06e4\u06df\u06d7\u06e6\u06d8\u06e4\u06d9\u06e6\u06e4\u06e7\u06e4\u06e8\u06d8\u06d9\u06e8\u06e6\u06e0\u06e4\u06da\u06e1\u06d8\u06d6\u06e8\u06dc\u06e4\u06e7\u06db\u06eb\u06d9\u06e6\u06e0\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e6\u06e5\u06d8\u06e4\u06e4\u06d6\u06d8\u06e8\u06da\u06e1\u06da\u06ec\u06e5\u06d8\u06d9\u06e0\u06df\u06d6\u06e5\u06e0\u06d6\u06e5\u06d8\u06e1\u06e5\u06e1\u06d8\u06e1\u06d6\u06e4\u06e6\u06eb\u06eb\u06d6\u06e6\u06d9\u06db\u06dc\u06ec\u06e2\u06d6\u06e8\u06e2\u06d9\u06ec"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Ooooooo:Z

    const-string v0, "\u06d9\u06d8\u06da\u06e1\u06dc\u06d9\u06e2\u06e1\u06d6\u06dc\u06e1\u06d6\u06eb\u06d8\u06e5\u06e7\u06e5\u06d8\u06d9\u06d9\u06e4\u06eb\u06d7\u06dc\u06e8\u06e5\u06d9\u06d8\u06e4\u06d7\u06e7\u06e4\u06e6\u06d6\u06e5\u06d8\u06eb\u06d7\u06ec\u06dc\u06ec\u06e0\u06db\u06d8\u06e5\u06e5\u06dc"

    goto :goto_0

    :sswitch_3
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x737c9e3f -> :sswitch_2
        -0x6726ad79 -> :sswitch_1
        -0x4d3abc6c -> :sswitch_0
        0x6ca0c882 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;
    .locals 4

    const-string v0, "\u06dc\u06dc\u06d6\u06d8\u06e0\u06eb\u06d6\u06d8\u06db\u06dc\u06d9\u06e1\u06d9\u06e5\u06dc\u06db\u06e6\u06d8\u06e0\u06e4\u06e6\u06d8\u06eb\u06e8\u06d6\u06e5\u06dc\u06e6\u06e2\u06d7\u06e2\u06df\u06dc\u06d8\u06df\u06e2\u06e6\u06d8\u06db\u06e1\u06d8\u06e8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x27

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29b

    const/16 v2, 0x300

    const v3, 0x2c300793

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e7\u06e6\u06d8\u06d7\u06e2\u06e1\u06d8\u06e4\u06e6\u06e6\u06d8\u06d7\u06d9\u06d8\u06d8\u06df\u06e8\u06ec\u06eb\u06d8\u06e7\u06d8\u06df\u06e8\u06e6\u06d8\u06d7\u06db\u06e7\u06e1\u06e0\u06d8\u06d8\u06e0\u06da\u06db\u06da\u06e2\u06e2\u06ec\u06e4\u06d6\u06d8\u06e8\u06e7\u06e8\u06df\u06d8\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo0:Landroid/widget/Button;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x30edaa22 -> :sswitch_1
        0x1110f25e -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;
    .locals 4

    const-string v0, "\u06e5\u06df\u06e0\u06e7\u06d8\u06d8\u06d7\u06d7\u06d6\u06e5\u06ec\u06e1\u06d8\u06ec\u06ec\u06db\u06db\u06db\u06e7\u06e5\u06e8\u06d8\u06d8\u06ec\u06dc\u06e6\u06e1\u06eb\u06ec\u06d9\u06e4\u06d6\u06e0\u06d6\u06dc\u06e0\u06e4\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x251

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x321

    const/16 v2, 0x7b

    const v3, 0x1ca91cfd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d8\u06dc\u06d8\u06e6\u06e8\u06eb\u06e2\u06d9\u06d7\u06db\u06d7\u06eb\u06db\u06e2\u06e1\u06d8\u06eb\u06ec\u06e2\u06e6\u06df\u06e4\u06e2\u06da\u06e7\u06e4\u06df\u06d8\u06ec\u06e6\u06dc\u06d8\u06e0\u06e0\u06e0\u06e5\u06e7\u06d6\u06da\u06d6\u06e6\u06e2\u06d9\u06d6\u06d8\u06da\u06da\u06e2\u06ec\u06e6\u06e6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x5819113c -> :sswitch_1
        0x63df3a24 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0o(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "\u06e7\u06e2\u06d9\u06d8\u06e4\u06d8\u06d8\u06d7\u06e5\u06d6\u06e7\u06e2\u06e6\u06d8\u06e0\u06df\u06d6\u06d8\u06eb\u06e6\u06da\u06e8\u06e8\u06d9\u06d8\u06d6\u06d7\u06d9\u06db\u06d8\u06eb\u06e5\u06e5\u06e7\u06d8\u06eb\u06e6\u06e5\u06e7\u06d8\u06e7\u06e0\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x295

    const/16 v2, 0x296

    const v3, 0x2b06769f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e1\u06e5\u06d7\u06dc\u06ec\u06da\u06e1\u06eb\u06e2\u06da\u06e6\u06d8\u06e2\u06df\u06dc\u06d8\u06e2\u06df\u06df\u06da\u06db\u06dc\u06d8\u06ec\u06e5\u06e2\u06e7\u06e7\u06e5\u06e0\u06e0\u06eb\u06e6\u06eb\u06e8\u06e5\u06e2\u06d8\u06d9\u06e6\u06e4\u06eb\u06df\u06e8\u06db\u06d6\u06df\u06d8\u06e4\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x40eccb79 -> :sswitch_1
        0xaae4dfd -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOOO()V
    .locals 11

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v0, "\u06ec\u06d6\u06dc\u06db\u06e8\u06d7\u06e5\u06e4\u06e8\u06d8\u06e8\u06db\u06dc\u06e1\u06d8\u06db\u06eb\u06dc\u06d8\u06ec\u06d9\u06e8\u06eb\u06d7\u06d9\u06e8\u06e0\u06e8\u06d8\u06e4\u06da\u06ec\u06e8\u06e5\u06e8\u06d8\u06e1\u06e6\u06e6\u06dc\u06e5\u06ec\u06db\u06d7\u06db\u06e8\u06db\u06e1\u06d9\u06eb\u06eb"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move v6, v7

    move v8, v7

    move-object v9, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x363

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x396

    const/16 v3, 0x34a

    const v10, 0x179be9c3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v10

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e8\u06e5\u06d8\u06e5\u06e8\u06dc\u06e0\u06da\u06df\u06e2\u06dc\u06e7\u06d8\u06e0\u06e7\u06dc\u06d7\u06da\u06dc\u06d8\u06e0\u06e8\u06db\u06e5\u06ec\u06e5\u06d8\u06ec\u06e7\u06d6\u06e1\u06e8\u06e8\u06da\u06e2\u06e1\u06e2\u06e2\u06d8\u06d8\u06e7\u06eb\u06eb\u06e7\u06da\u06ec"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v0, "\u06e2\u06e1\u06d7\u06e8\u06d7\u06e2\u06e2\u06d7\u06ec\u06e8\u06df\u06e2\u06db\u06df\u06e4\u06d9\u06e0\u06df\u06eb\u06dc\u06d8\u06dc\u06e0\u06e8\u06d7\u06e6\u06d6\u06d8\u06eb\u06d6\u06df"

    move-object v1, v0

    move-object v9, v3

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d7\u06e6\u06d6\u06e8\u06e6\u06dc\u06d8\u06dc\u06df\u06e2\u06e5\u06e1\u06e6\u06d8\u06ec\u06d9\u06e4\u06eb\u06e0\u06e5\u06d8\u06eb\u06e0\u06dc\u06da\u06d8\u06d8\u06d9\u06d6\u06e1\u06d8\u06e1\u06db\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e1\u06ec\u06d9\u06e7\u06d9\u06d6\u06d8\u06eb\u06ec\u06d8\u06d8\u06e6\u06d9\u06df\u06e0\u06e4\u06e4\u06e2\u06e0\u06e8\u06d8\u06ec\u06d6\u06d8\u06e2\u06e7\u06d8\u06eb\u06e2\u06e0\u06e7\u06dc\u06d9"

    move-object v1, v0

    move v8, v7

    goto :goto_0

    :sswitch_4
    const v1, -0x35752248    # -4550364.0f

    const-string v0, "\u06d8\u06d6\u06d8\u06ec\u06e8\u06e8\u06e1\u06ec\u06d7\u06da\u06d9\u06d8\u06eb\u06e2\u06e5\u06d8\u06d7\u06e5\u06db\u06e1\u06d9\u06e2\u06e1\u06e8\u06e1\u06d8\u06e5\u06e7\u06e5\u06d8\u06e1\u06ec\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v3, 0x6ea81dbd

    const-string v0, "\u06eb\u06eb\u06e0\u06ec\u06d9\u06db\u06e7\u06e0\u06df\u06da\u06e0\u06da\u06e6\u06e6\u06e1\u06d8\u06d9\u06e5\u06df\u06e7\u06ec\u06da\u06ec\u06e0\u06d7\u06d7\u06eb\u06e1\u06d8\u06d7\u06d7\u06e8\u06d9\u06e5\u06d6\u06d8\u06e1\u06dc\u06e6\u06d8\u06dc\u06e8\u06d8\u06ec\u06d9\u06e1\u06e7\u06e2\u06e0\u06e0\u06d8\u06d9\u06e1\u06d8\u06e4\u06eb\u06e0\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d8\u06e8\u06df\u06ec\u06e6\u06d8\u06db\u06e6\u06e8\u06d8\u06da\u06e1\u06d6\u06e4\u06dc\u06e1\u06eb\u06d6\u06d8\u06dc\u06df\u06d9\u06e7\u06eb\u06e8\u06d8\u06db\u06e7\u06e8\u06d8\u06dc\u06e5\u06e0\u06d8\u06e5\u06d7\u06e2\u06d8\u06e7\u06e6\u06d8\u06da\u06d9\u06e4\u06e8\u06df\u06e6\u06e4\u06dc\u06e5\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e0\u06da\u06d8\u06d8\u06e0\u06e4\u06d6\u06d7\u06e2\u06d6\u06e0\u06e6\u06df\u06e0\u06d8\u06df\u06e6\u06e8\u06dc\u06e6\u06e6\u06d9\u06e0\u06e6\u06d8\u06e7\u06e1\u06db\u06ec\u06d6\u06d7\u06e1\u06d8\u06df\u06e7\u06d6\u06e1\u06df\u06e1\u06d9\u06e5\u06e5\u06da"

    goto :goto_2

    :sswitch_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e5\u06d6\u06e5\u06d9\u06e0\u06eb\u06ec\u06e1\u06d8\u06d6\u06d8\u06d6\u06da\u06e0\u06d8\u06d8\u06d8\u06d9\u06e5\u06d8\u06dc\u06d7\u06e7\u06d6\u06e1\u06eb\u06eb\u06e1\u06e6\u06e4\u06e6\u06d8\u06d6\u06d7\u06eb\u06e5\u06dc\u06e4"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06eb\u06d9\u06dc\u06e4\u06e4\u06e7\u06d8\u06ec\u06e6\u06e2\u06d7\u06e4\u06e2\u06d9\u06e6\u06d8\u06df\u06d9\u06e1\u06d6\u06ec\u06dc\u06d7\u06e8\u06d6\u06d6\u06d8\u06d6\u06e8\u06e5\u06d8\u06da\u06db\u06e1\u06e8\u06e6\u06eb\u06e6\u06e2\u06d6\u06d8\u06e1\u06e0\u06e6\u06e0\u06eb\u06d6\u06d8\u06eb\u06e7\u06d6\u06d9\u06d6\u06d6\u06d8\u06e1\u06ec\u06dc"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06da\u06d8\u06e7\u06e7\u06d9\u06e5\u06d8\u06e0\u06e7\u06dc\u06d8\u06d7\u06d9\u06d8\u06d8\u06eb\u06e2\u06e1\u06d8\u06e1\u06e5\u06e5\u06d8\u06e5\u06e8\u06d8\u06e6\u06e2\u06e5\u06d8\u06e8\u06ec\u06e1\u06db\u06eb\u06e6\u06e0\u06d9\u06d7\u06d8\u06da\u06e5\u06d8\u06df\u06e2\u06e1\u06eb\u06e7\u06ec"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e6\u06df\u06d8\u06d8\u06d9\u06e5\u06dc\u06df\u06da\u06db\u06d8\u06da\u06e8\u06d7\u06e4\u06e1\u06dc\u06e6\u06e7\u06e7\u06db\u06d9\u06dc\u06db\u06e1\u06e0\u06dc\u06e8\u06d8\u06db\u06e4\u06dc\u06d8\u06e8\u06e7\u06d9\u06dc\u06e0\u06da\u06d9\u06d6\u06db\u06e1\u06db\u06e8\u06d8\u06e4\u06eb\u06d9\u06e2\u06e6\u06d6\u06eb\u06e6\u06e0\u06da\u06e8\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d9\u06e0\u06d8\u06d8\u06e4\u06db\u06da\u06d7\u06d7\u06d8\u06e6\u06d9\u06e1\u06e5\u06da\u06dc\u06d8\u06e5\u06dc\u06e2\u06db\u06d8\u06e6\u06d8\u06d8\u06e4\u06e7\u06e0\u06e1\u06e7\u06e5\u06e8\u06e7\u06e7\u06e0\u06dc\u06e8\u06d6\u06e1\u06e8\u06da\u06d6\u06e5\u06d8\u06e0\u06dc\u06d8\u06e4\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_c
    const v1, -0x53f31ede

    const-string v0, "\u06dc\u06e8\u06eb\u06dc\u06e2\u06df\u06e0\u06e0\u06e6\u06d8\u06e7\u06d8\u06d6\u06e8\u06e2\u06e5\u06d8\u06dc\u06e4\u06e4\u06e2\u06e6\u06dc\u06d7\u06e5\u06e4\u06d6\u06d8\u06dc\u06e7\u06e8\u06dc\u06e2\u06dc\u06d8\u06e6\u06d8\u06e4\u06e4\u06da\u06d8\u06df\u06eb\u06da"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d9\u06dc\u06e5\u06d8\u06e2\u06e5\u06e4\u06e2\u06d6\u06d8\u06dc\u06e8\u06da\u06ec\u06d8\u06d8\u06d8\u06dc\u06e8\u06d8\u06e1\u06ec\u06da\u06eb\u06eb\u06e6\u06df\u06e8\u06e1\u06d8\u06da\u06df\u06ec\u06db\u06e4\u06d6\u06db\u06d8\u06d6\u06d8\u06e1\u06df\u06e7\u06eb\u06e1\u06da\u06ec\u06d9\u06d6\u06e4\u06e4\u06e4"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e0\u06d6\u06e7\u06d8\u06d8\u06e6\u06e5\u06d8\u06df\u06e1\u06e2\u06e7\u06e2\u06d6\u06ec\u06ec\u06dc\u06e0\u06e5\u06eb\u06d8\u06db\u06e4\u06da\u06e1\u06db\u06e7\u06ec\u06ec\u06e1\u06e4\u06db\u06e1\u06df\u06e1\u06e7\u06d6\u06e6\u06d8\u06db\u06e1\u06d7\u06eb\u06d6\u06e6\u06d8"

    goto :goto_3

    :sswitch_f
    const v3, 0x62c98d4d

    const-string v0, "\u06e4\u06e4\u06e2\u06e6\u06d8\u06d9\u06e0\u06e5\u06e4\u06d9\u06e8\u06d8\u06d7\u06d9\u06ec\u06e5\u06e0\u06db\u06da\u06e6\u06d8\u06d6\u06df\u06dc\u06d8\u06e8\u06e2\u06e8\u06d9\u06e1\u06e8\u06d6\u06e8\u06d8\u06d8\u06eb\u06d8\u06d8\u06e2\u06df\u06d6\u06e7\u06e1\u06eb\u06e6\u06d8\u06da\u06ec\u06e0"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06eb\u06da\u06e7\u06d7\u06d8\u06eb\u06d6\u06d9\u06d9\u06d7\u06d7\u06d8\u06df\u06e6\u06d8\u06e7\u06e5\u06d9\u06d9\u06e2\u06d6\u06d8\u06d7\u06d9\u06eb\u06da\u06e1\u06e1\u06d8\u06d8\u06df\u06e6\u06e7\u06d9\u06db\u06e2\u06e2\u06da\u06d7\u06e8\u06e2\u06ec\u06e5\u06e4\u06e2\u06e8\u06d8\u06d6\u06e6\u06d8\u06e8\u06d6\u06d7\u06e7\u06e8\u06e4"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e0\u06df\u06dc\u06e4\u06d7\u06e5\u06d8\u06e0\u06e7\u06d8\u06d9\u06e5\u06db\u06e4\u06e6\u06e8\u06eb\u06da\u06d8\u06e6\u06e6\u06e2\u06db\u06d8\u06e0\u06ec\u06e6\u06e1\u06d8\u06e5\u06da\u06d6"

    goto :goto_4

    :sswitch_11
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06e7\u06e5\u06dc\u06da\u06dc\u06e1\u06d8\u06d8\u06e2\u06d7\u06da\u06da\u06e8\u06d8\u06e5\u06db\u06e6\u06d8\u06e7\u06e4\u06e6\u06e8\u06e4\u06ec\u06e4\u06e7\u06e5\u06d7\u06e1\u06da\u06d9\u06e1\u06e8\u06eb\u06d9\u06df\u06d9\u06e7\u06dc\u06d7\u06ec\u06e6\u06e2\u06e2\u06e0\u06e6\u06df\u06e1\u06d8\u06da\u06dc\u06d6\u06df\u06ec\u06ec\u06e6\u06e6\u06e5\u06d8"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e2\u06d9\u06d8\u06d8\u06e1\u06e1\u06dc\u06ec\u06d7\u06eb\u06df\u06e5\u06e5\u06db\u06e7\u06e6\u06eb\u06e4\u06e2\u06df\u06e4\u06e5\u06ec\u06d6\u06dc\u06d8\u06e2\u06d9\u06e7\u06e5\u06e2\u06e5\u06d8\u06da\u06dc\u06e1\u06d8\u06e8\u06dc\u06e7"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e1\u06d8\u06e6\u06d7\u06e2\u06d9\u06db\u06e6\u06d7\u06db\u06e6\u06d8\u06db\u06e0\u06d6\u06d8\u06e7\u06ec\u06e5\u06e2\u06ec\u06d6\u06d9\u06e8\u06e0\u06e0\u06e1\u06e5\u06d9\u06d8\u06db\u06e5\u06e5\u06e0\u06e8\u06e1\u06d8\u06e2\u06eb\u06e5\u06e7\u06db"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_14
    const/4 v3, 0x1

    const-string v0, "\u06eb\u06ec\u06df\u06ec\u06d7\u06d7\u06e1\u06d6\u06e5\u06e1\u06eb\u06ec\u06ec\u06e0\u06d7\u06e1\u06d6\u06e5\u06e7\u06e8\u06d6\u06d6\u06d6\u06e5\u06d8\u06eb\u06d8\u06e6\u06d9\u06e7\u06eb\u06e6\u06df\u06d6\u06d8\u06e6\u06e0\u06e8\u06dc\u06e4\u06e7\u06e7\u06eb\u06e1"

    move-object v1, v0

    move v6, v3

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06e6\u06df\u06e4\u06d9\u06e8\u06d8\u06ec\u06ec\u06ec\u06e6\u06e5\u06e0\u06ec\u06eb\u06eb\u06e1\u06e4\u06e1\u06d8\u06e7\u06db\u06e8\u06d8\u06da\u06df\u06d6\u06d8\u06e5\u06e2\u06e5\u06d8\u06e8\u06e6\u06ec\u06e8\u06e0\u06d9\u06db\u06df\u06dc\u06d6\u06dc\u06e1\u06d8\u06d8\u06e6"

    move-object v1, v0

    move v8, v6

    goto/16 :goto_0

    :sswitch_16
    const v1, 0x56f58476

    const-string v0, "\u06e5\u06d7\u06e7\u06d6\u06e0\u06e0\u06d9\u06d8\u06d7\u06e5\u06ec\u06e8\u06d8\u06eb\u06da\u06da\u06dc\u06d9\u06e6\u06e0\u06d7\u06e7\u06e2\u06e7\u06e1\u06e8\u06dc\u06d6\u06d8\u06d7\u06e4\u06e6\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_17
    const v3, -0x3c3e96d2

    const-string v0, "\u06d8\u06e1\u06e7\u06d8\u06e8\u06d6\u06e5\u06dc\u06d9\u06e4\u06e6\u06d7\u06d8\u06e8\u06ec\u06e6\u06e4\u06e4\u06ec\u06e8\u06d8\u06e2\u06e8\u06eb\u06d7\u06e4\u06d7\u06e1\u06d8\u06db\u06db\u06e6\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_6

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06e7\u06e0\u06e6\u06d9\u06e2\u06e8\u06d8\u06da\u06d9\u06e5\u06d8\u06e6\u06db\u06da\u06dc\u06e1\u06e7\u06da\u06e7\u06ec\u06d9\u06d6\u06e8\u06e5\u06df\u06dc\u06e4\u06d8\u06d8\u06ec\u06df\u06e7\u06e2\u06dc\u06e2\u06d8\u06d7\u06e6\u06d8\u06dc\u06db\u06df\u06dc\u06eb\u06e7\u06e2\u06da\u06eb\u06dc\u06d9\u06e8\u06d6\u06e6\u06db\u06da\u06d6\u06e7"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06e6\u06d7\u06dc\u06d8\u06e1\u06d8\u06df\u06dc\u06e1\u06e5\u06e2\u06e5\u06d9\u06eb\u06db\u06e1\u06e6\u06d6\u06d6\u06eb\u06ec\u06db\u06df\u06d8\u06ec\u06da\u06ec\u06e6\u06e4\u06d7\u06dc\u06da\u06e8\u06db\u06e5\u06da\u06e1\u06df\u06df\u06ec\u06eb\u06d8\u06d6\u06e4\u06eb\u06ec\u06d8\u06d7"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e2\u06d8\u06e4\u06e8\u06e2\u06e6\u06db\u06e1\u06e4\u06e1\u06e6\u06d6\u06d8\u06eb\u06eb\u06e5\u06d8\u06e1\u06e4\u06e4\u06d6\u06e1\u06d9\u06ec\u06e5\u06e5\u06dc\u06e4\u06e5\u06db\u06eb\u06da\u06dc\u06ec\u06dc\u06d8\u06d6\u06df\u06d7\u06d7\u06d8\u06db\u06d8\u06e5\u06e1\u06e6\u06d8\u06da\u06e0\u06e1\u06d8\u06d9\u06e8\u06e1\u06d8\u06d6\u06db\u06ec"

    goto :goto_6

    :sswitch_1a
    if-nez v8, :cond_2

    const-string v0, "\u06d6\u06eb\u06e8\u06d8\u06eb\u06e7\u06db\u06db\u06e6\u06eb\u06e0\u06e2\u06d7\u06db\u06e7\u06da\u06d7\u06e5\u06d6\u06d8\u06dc\u06e4\u06dc\u06d8\u06e1\u06d6\u06e7\u06db\u06d6\u06e1\u06d8\u06df\u06e1\u06d9\u06d8\u06ec\u06d7\u06df\u06d9\u06d8\u06e0\u06e4\u06e7\u06e4\u06ec\u06df"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06e7\u06db\u06da\u06ec\u06df\u06e1\u06d8\u06df\u06ec\u06e5\u06da\u06eb\u06da\u06ec\u06e2\u06dc\u06e7\u06e2\u06d6\u06e8\u06e0\u06d6\u06dc\u06dc\u06e1\u06d8\u06dc\u06eb\u06e6\u06e4\u06eb\u06d6\u06d8\u06e0\u06e0\u06e6\u06d6\u06ec\u06d9\u06e2\u06e1\u06eb\u06d9\u06ec\u06ec\u06e2\u06d7\u06e6\u06dc\u06eb\u06e6\u06e8\u06d8\u06d7\u06e8\u06eb"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06d7\u06e5\u06e8\u06e8\u06e7\u06e1\u06e7\u06e1\u06d8\u06ec\u06e7\u06db\u06d9\u06d9\u06eb\u06db\u06e7\u06df\u06db\u06e4\u06e7\u06e6\u06e4\u06db\u06e7\u06df\u06d8\u06d8"

    goto :goto_5

    :sswitch_1d
    const-string v0, "\u06df\u06db\u06ec\u06d8\u06dc\u06e0\u06df\u06e8\u06e8\u06da\u06da\u06e7\u06e4\u06e2\u06eb\u06db\u06e5\u06d6\u06df\u06e8\u06dc\u06d8\u06eb\u06eb\u06e6\u06d8\u06db\u06e5\u06db\u06e4\u06e7\u06e4\u06e1\u06e5\u06d9\u06d7\u06e4\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1e
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f100250

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    const-string v0, "\u06e5\u06d8\u06e2\u06df\u06e6\u06eb\u06d8\u06db\u06df\u06e7\u06eb\u06e0\u06e2\u06e5\u06d9\u06e0\u06e8\u06e8\u06d8\u06e2\u06e1\u06db\u06d9\u06d6\u06dc\u06d8\u06da\u06e8\u06e5\u06ec\u06e7\u06e1"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u06eb\u06d6\u06df\u06db\u06db\u06e1\u06e7\u06db\u06e6\u06d6\u06e8\u06e0\u06df\u06df\u06ec\u06d7\u06e8\u06e7\u06e4\u06dc\u06d8\u06e5\u06d9\u06da\u06e1\u06ec\u06d6\u06e8\u06e6\u06e1\u06d8\u06df\u06df\u06e1\u06d8\u06e8\u06e0\u06d8\u06d9\u06e0\u06e8\u06db\u06d7\u06ec"

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v0, "\u06e0\u06da\u06d7\u06e4\u06e5\u06e8\u06d8\u06e1\u06d9\u06d6\u06d8\u06e4\u06d8\u06dc\u06ec\u06df\u06e2\u06d7\u06e1\u06e0\u06e0\u06e1\u06e7\u06db\u06e8\u06d7\u06e8\u06d6\u06d8\u06d8\u06e1\u06e4\u06db\u06eb\u06e8\u06e6\u06d8\u06e4\u06d6\u06e1"

    move-object v1, v0

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_21
    const v1, 0x5a8676b6

    const-string v0, "\u06dc\u06df\u06e6\u06d7\u06e2\u06e5\u06d8\u06e5\u06d6\u06d7\u06e8\u06d7\u06e6\u06d8\u06e5\u06dc\u06e6\u06e6\u06db\u06e1\u06d8\u06e8\u06db\u06e6\u06d8\u06e0\u06e1\u06db\u06dc\u06d6\u06eb\u06e5\u06dc\u06d9\u06e6\u06dc\u06d8\u06e2\u06e4\u06e8\u06dc\u06d7\u06d7\u06e8\u06e0\u06e7\u06d9\u06ec\u06db\u06db\u06db\u06e4\u06df\u06db\u06dc\u06d8\u06d9\u06dc\u06da"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_7

    goto :goto_7

    :sswitch_22
    const-string v0, "\u06ec\u06eb\u06e8\u06d8\u06e5\u06ec\u06df\u06e1\u06d7\u06da\u06d8\u06e8\u06d9\u06e6\u06e2\u06e1\u06eb\u06d8\u06e2\u06d7\u06e0\u06d6\u06d8\u06ec\u06e8\u06d8\u06e8\u06d6\u06e2\u06da\u06d6\u06dc\u06d8\u06df\u06df\u06da\u06e7\u06e8\u06e4\u06e6\u06d9\u06e5\u06e8\u06d6\u06e7\u06d8\u06d9\u06e4\u06e6\u06e0\u06e5\u06e6\u06d7\u06e4\u06ec\u06d7\u06df\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06d8\u06e2\u06df\u06e0\u06da\u06e5\u06df\u06da\u06df\u06e0\u06e8\u06d7\u06e5\u06e2\u06e5\u06e5\u06d8\u06e7\u06d8\u06e4\u06da\u06eb\u06e8\u06e6\u06e0\u06e8\u06e7\u06e7\u06e2\u06da\u06e5\u06d8\u06e8\u06eb\u06e5\u06e2\u06e8\u06da\u06dc\u06e1\u06e5\u06d8\u06ec\u06da\u06e5\u06d8\u06ec\u06e5\u06db\u06dc\u06e6\u06d9"

    goto :goto_7

    :sswitch_24
    const v3, 0x207d8ca0

    const-string v0, "\u06d9\u06e1\u06df\u06e5\u06e1\u06ec\u06eb\u06e8\u06db\u06d9\u06e6\u06d8\u06d8\u06df\u06d7\u06e7\u06d8\u06e6\u06ec\u06d6\u06e5\u06eb\u06e5\u06e4\u06db\u06e1\u06dc\u06e6\u06df\u06e0\u06e4\u06ec\u06e5\u06ec\u06d8\u06d7\u06e6\u06d8\u06dc\u06d9\u06e8\u06d8\u06eb\u06e8\u06d6\u06d8\u06d7\u06e5\u06e1\u06d8\u06da\u06e0\u06e8\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_8

    goto :goto_8

    :sswitch_25
    const-string v0, "\u06df\u06da\u06e8\u06d8\u06d8\u06e7\u06e4\u06eb\u06e6\u06e6\u06dc\u06d6\u06eb\u06df\u06ec\u06e4\u06df\u06d8\u06e4\u06d8\u06e7\u06d9\u06df\u06e7\u06dc\u06e0\u06d7\u06e6\u06d8\u06df\u06db\u06e1\u06e4\u06d9\u06da\u06e4\u06db\u06e8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06e0\u06db\u06d6\u06da\u06e4\u06e7\u06d9\u06d8\u06e7\u06d8\u06e5\u06ec\u06da\u06e4\u06d6\u06e5\u06e7\u06e1\u06e1\u06e8\u06dc\u06d8\u06dc\u06e2\u06e6\u06e5\u06da\u06eb\u06df\u06d9\u06df\u06e5\u06dc\u06e5\u06d8\u06e6\u06e7\u06d8\u06db\u06e8\u06e1\u06e6\u06e6\u06e1"

    goto :goto_8

    :sswitch_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u06db\u06d9\u06d9\u06df\u06d6\u06d6\u06eb\u06db\u06e2\u06ec\u06e4\u06d6\u06d8\u06e5\u06e1\u06d8\u06da\u06e5\u06eb\u06e5\u06e6\u06dc\u06dc\u06df\u06e7\u06db\u06d7\u06d8\u06d8\u06d9\u06eb\u06ec"

    goto :goto_8

    :sswitch_27
    const-string v0, "\u06d8\u06e5\u06d6\u06d8\u06ec\u06ec\u06df\u06d8\u06e8\u06db\u06d8\u06db\u06db\u06df\u06da\u06da\u06ec\u06dc\u06e7\u06d6\u06da\u06e6\u06e4\u06dc\u06d8\u06e8\u06da\u06e8\u06d8\u06e7\u06e1"

    goto :goto_8

    :sswitch_28
    const-string v0, "\u06ec\u06e2\u06d7\u06d6\u06da\u06e8\u06d7\u06d6\u06d6\u06d8\u06df\u06ec\u06d8\u06e5\u06e6\u06e6\u06d9\u06e4\u06da\u06eb\u06ec\u06d6\u06eb\u06e6\u06e6\u06d8\u06e8\u06e7\u06d8\u06d8\u06d6\u06df\u06e1\u06d8\u06da\u06df\u06db\u06d8\u06d8\u06dc\u06d6\u06e0\u06d6\u06d8\u06ec\u06eb\u06ec\u06e7\u06da\u06e5\u06e1\u06d8\u06d9\u06ec\u06df\u06da\u06df\u06dc"

    goto :goto_7

    :sswitch_29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ScriptLog;

    const-string v1, "\u06e7\u06e1\u06e1\u06d7\u06df\u06d9\u06d7\u06ec\u06eb\u06df\u06eb\u06e2\u06df\u06ec\u06d9\u06eb\u06d8\u06df\u06e5\u06d8\u06e1\u06e7\u06dc\u06db\u06e4\u06db\u06d6\u06e0\u06db\u06d6\u06d8\u06db\u06dc\u06e6\u06d8\u06ec\u06d8\u06e7"

    move-object v2, v0

    goto/16 :goto_0

    :sswitch_2a
    const v1, -0xfd889c4

    const-string v0, "\u06d8\u06e2\u06db\u06dc\u06e7\u06da\u06df\u06e4\u06dc\u06e4\u06e8\u06eb\u06e4\u06e0\u06d8\u06e0\u06d9\u06da\u06e1\u06d8\u06d8\u06d8\u06e5\u06d6\u06d8\u06d8\u06e8\u06dc\u06dc\u06d7\u06e5\u06dc\u06d8\u06d9\u06df\u06e6\u06d8\u06db\u06da\u06e8\u06e0\u06dc\u06e5\u06d8\u06df\u06df\u06dc"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_9

    goto :goto_9

    :sswitch_2b
    const-string v0, "\u06d9\u06eb\u06df\u06df\u06e4\u06df\u06dc\u06e6\u06e5\u06d8\u06db\u06df\u06e1\u06db\u06e2\u06e1\u06d8\u06df\u06d7\u06e8\u06e8\u06d7\u06e8\u06e2\u06db\u06d8\u06d8\u06d9\u06e6\u06d8\u06d9\u06dc\u06df\u06e1\u06e7\u06d7\u06da\u06e6\u06d8"

    goto :goto_9

    :sswitch_2c
    const-string v0, "\u06e4\u06dc\u06e1\u06db\u06e5\u06e6\u06e5\u06da\u06e8\u06d8\u06d7\u06e0\u06ec\u06e7\u06e2\u06dc\u06e7\u06d8\u06d9\u06db\u06e0\u06dc\u06eb\u06e8\u06dc\u06d8\u06e6\u06d6\u06e2\u06d6\u06dc\u06dc\u06d8\u06d9\u06da\u06e2\u06e8\u06eb\u06db"

    goto :goto_9

    :sswitch_2d
    const v3, 0x331c027b

    const-string v0, "\u06d7\u06d9\u06e4\u06da\u06ec\u06db\u06e1\u06da\u06e1\u06e8\u06d9\u06d8\u06df\u06e1\u06e6\u06da\u06db\u06eb\u06d7\u06e6\u06dc\u06d8\u06d7\u06da\u06e6\u06da\u06db\u06e6\u06d6\u06e7\u06e2"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_a

    goto :goto_a

    :sswitch_2e
    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u06eb\u06e8\u06e5\u06da\u06e7\u06e5\u06d8\u06df\u06d9\u06e7\u06e8\u06e1\u06d8\u06e6\u06dc\u06d8\u06d8\u06e8\u06e7\u06d9\u06df\u06d8\u06da\u06d9\u06d8\u06d8\u06d6\u06db\u06eb\u06e0\u06e8\u06e4\u06e2\u06e7\u06e1\u06d8\u06e8\u06e5\u06d9\u06da\u06e2\u06da\u06d8\u06da\u06da\u06df\u06e1\u06d8\u06ec\u06e2\u06eb\u06eb\u06e0\u06d6\u06e0\u06e0\u06e2"

    goto :goto_a

    :cond_4
    const-string v0, "\u06db\u06dc\u06dc\u06eb\u06dc\u06da\u06d9\u06db\u06e7\u06e8\u06e7\u06e0\u06df\u06df\u06dc\u06d8\u06db\u06d8\u06e0\u06e5\u06e7\u06e1\u06eb\u06e8\u06d8\u06ec\u06eb\u06e6\u06d8\u06dc\u06ec\u06d8\u06e1\u06e6\u06e7\u06d8\u06df\u06e1\u06ec\u06e0\u06d9\u06dc\u06da\u06da\u06dc\u06e8\u06e2\u06e8\u06ec\u06d9\u06ec"

    goto :goto_a

    :sswitch_2f
    const-string v0, "\u06e1\u06da\u06e6\u06d8\u06da\u06e2\u06e0\u06e6\u06db\u06e4\u06e7\u06e2\u06e2\u06e0\u06dc\u06e2\u06eb\u06df\u06da\u06d9\u06d6\u06d7\u06da\u06d8\u06e5\u06db\u06e2\u06eb\u06d6\u06da\u06d7\u06e5\u06eb\u06e1\u06e7\u06e5\u06d6\u06d8\u06df\u06da\u06d9\u06e8\u06ec\u06db\u06db\u06d9\u06e8\u06d8\u06d7\u06e7\u06d8\u06d8\u06d9\u06e6\u06e0\u06d8\u06e0\u06dc\u06d8"

    goto :goto_a

    :sswitch_30
    const-string v0, "\u06dc\u06e8\u06db\u06e2\u06eb\u06e6\u06d7\u06d9\u06ec\u06d7\u06d9\u06d9\u06d8\u06da\u06d8\u06d9\u06db\u06d7\u06e5\u06d7\u06e7\u06e7\u06e1\u06d8\u06e0\u06e5\u06e8\u06e0\u06df\u06d9"

    goto :goto_9

    :sswitch_31
    const-string v0, "\u06da\u06ec\u06e5\u06da\u06e1\u06e5\u06db\u06e1\u06d6\u06e7\u06dc\u06d8\u06dc\u06e2\u06e6\u06da\u06d6\u06dc\u06d8\u06d9\u06e6\u06d8\u06e4\u06d7\u06d8\u06d8\u06d9\u06d6\u06df\u06e5\u06db\u06d6\u06e1\u06d8\u06db\u06e2\u06e6\u06d9\u06db\u06db\u06e6\u06d8\u06d6\u06db\u06e4\u06eb\u06da\u06dc\u06d8\u06d8\u06ec\u06e5\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_32
    const v1, -0x1a2222e8

    const-string v0, "\u06e6\u06e1\u06e8\u06d7\u06e8\u06d8\u06d8\u06df\u06e6\u06db\u06e0\u06eb\u06e7\u06eb\u06ec\u06d8\u06d8\u06db\u06da\u06d7\u06ec\u06e5\u06e8\u06ec\u06e0\u06d8\u06d8\u06da\u06dc\u06e5\u06ec\u06e8\u06d8\u06e1\u06dc\u06e1\u06d8\u06e4\u06e8\u06d8\u06d8\u06e8\u06eb\u06dc\u06e5\u06d8\u06e2\u06e7\u06e7\u06ec\u06e0\u06e5\u06df\u06eb\u06ec\u06db\u06e0\u06d9\u06e1"

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_b

    goto :goto_b

    :sswitch_33
    const-string v0, "\u06eb\u06e6\u06dc\u06d9\u06d8\u06e8\u06dc\u06e2\u06e6\u06d8\u06e2\u06eb\u06e5\u06d8\u06e8\u06e5\u06d8\u06d8\u06da\u06e5\u06e6\u06da\u06e1\u06d8\u06d8\u06d8\u06d8\u06e8\u06d8\u06d7\u06ec\u06dc\u06da\u06e7\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "\u06e5\u06d7\u06d9\u06e8\u06eb\u06e2\u06d7\u06e1\u06e8\u06d8\u06df\u06e4\u06e7\u06d6\u06e7\u06d8\u06d8\u06e0\u06e6\u06e8\u06d8\u06d9\u06d7\u06d7\u06eb\u06e7\u06dc\u06e7\u06d7\u06dc\u06d8\u06dc\u06e4\u06df\u06db\u06ec\u06d6\u06d8\u06da\u06db\u06e5\u06d8\u06e2\u06e1\u06ec\u06e7\u06dc\u06d8"

    goto :goto_b

    :sswitch_35
    const v3, 0x73b10e6f

    const-string v0, "\u06e7\u06e7\u06db\u06d6\u06d8\u06e7\u06df\u06eb\u06db\u06ec\u06d7\u06eb\u06db\u06e6\u06d8\u06e1\u06df\u06d6\u06d6\u06e8\u06dc\u06e8\u06e4\u06d6\u06db\u06da\u06d7\u06e6\u06e5\u06df"

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_c

    goto :goto_c

    :sswitch_36
    const-string v0, "\u06ec\u06e4\u06df\u06df\u06e5\u06dc\u06d8\u06e8\u06d6\u06d6\u06df\u06e1\u06ec\u06ec\u06e1\u06eb\u06d9\u06e7\u06e0\u06eb\u06e5\u06e4\u06e7\u06e8\u06e0\u06e1\u06e0\u06d8\u06eb\u06eb\u06d7\u06e2\u06d9\u06ec\u06d8\u06e4\u06e1\u06e2\u06ec\u06ec\u06ec\u06e7\u06e4\u06da\u06d9\u06e2\u06e6\u06d8\u06dc\u06d8\u06eb\u06e6\u06d9\u06eb\u06d9\u06e5\u06d8"

    goto :goto_b

    :cond_5
    const-string v0, "\u06e0\u06d6\u06da\u06e8\u06d7\u06eb\u06d8\u06e7\u06d6\u06d8\u06e2\u06d8\u06df\u06d9\u06e0\u06e5\u06e7\u06e8\u06d6\u06d8\u06df\u06db\u06da\u06d8\u06e8\u06db\u06da\u06e1\u06e6\u06e6"

    goto :goto_c

    :sswitch_37
    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u06ec\u06e0\u06da\u06e0\u06d7\u06e5\u06d8\u06d8\u06e0\u06d6\u06d7\u06da\u06e4\u06e2\u06d9\u06d8\u06e6\u06d7\u06df\u06d8\u06e5\u06d6\u06d8\u06e6\u06e0\u06d8\u06d8\u06d6\u06d7\u06e1\u06df\u06ec\u06e0\u06d7\u06e6\u06d9\u06e0\u06e5\u06e4"

    goto :goto_c

    :sswitch_38
    const-string v0, "\u06db\u06e7\u06d6\u06d8\u06df\u06db\u06dc\u06e1\u06db\u06d7\u06d8\u06e4\u06e8\u06d8\u06e8\u06da\u06dc\u06d8\u06d9\u06ec\u06d6\u06d8\u06e7\u06df\u06dc\u06d8\u06e8\u06e1\u06e5\u06d8\u06da\u06e7\u06d7\u06df\u06d9\u06e4\u06db\u06eb\u06d8\u06e1\u06da\u06df\u06d6\u06db\u06e5\u06e5\u06d8\u06e5\u06ec\u06e2\u06da\u06e0\u06e2"

    goto :goto_c

    :sswitch_39
    const-string v0, "\u06d7\u06e2\u06e5\u06d9\u06d6\u06e8\u06d8\u06e2\u06e4\u06e5\u06d6\u06e0\u06d8\u06dc\u06d6\u06d8\u06d6\u06da\u06e8\u06d6\u06da\u06d8\u06d8\u06e1\u06e0\u06e5\u06e1\u06e6\u06e2\u06d8\u06d6\u06e2\u06da\u06e8\u06dc\u06d8\u06d8\u06e5\u06d9\u06d9\u06e4\u06d7\u06e0\u06dc\u06d7\u06d9\u06e6\u06d8\u06e2\u06dc\u06e1\u06d8"

    goto :goto_b

    :sswitch_3a
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06d7\u06ec\u06eb\u06d9\u06da\u06dc\u06e1\u06df\u06d8\u06d8\u06d6\u06d9\u06e7\u06df\u06e7\u06e8\u06d8\u06e4\u06eb\u06e6\u06d7\u06e2\u06e8\u06d6\u06e2\u06eb\u06ec\u06da\u06d7\u06e5\u06d8\u06df\u06df\u06e6\u06e0\u06dc\u06e1\u06e1\u06d7\u06d6\u06eb\u06e1\u06e4\u06e2\u06e6\u06e6\u06e1\u06d8\u06e1\u06ec\u06d9\u06d8\u06e6\u06db\u06e1\u06e8\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const-string v0, "\u06df\u06dc\u06e4\u06ec\u06e7\u06e8\u06e1\u06d6\u06dc\u06d9\u06ec\u06dc\u06e7\u06d6\u06e5\u06e7\u06e7\u06ec\u06e1\u06e1\u06d6\u06e6\u06e2\u06db\u06eb\u06ec\u06e6\u06d8\u06e1\u06d8\u06db\u06eb\u06e5\u06e7\u06d9\u06e7\u06d8\u06dc\u06db\u06d8\u06e2\u06ec\u06dc\u06d8\u06e6\u06d8\u06eb\u06d7\u06d9\u06db\u06e1\u06d9\u06d6\u06db\u06ec\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OoooooO:Lz2/q9;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string v0, "\u06da\u06d6\u06d8\u06d8\u06d6\u06db\u06e0\u06df\u06e8\u06e6\u06d8\u06e5\u06d8\u06e1\u06d8\u06e6\u06e8\u06dc\u06df\u06e1\u06d9\u06df\u06df\u06d6\u06d8\u06d8\u06e6\u06e7\u06e1\u06e7\u06e4\u06df\u06da\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "\u06e2\u06e1\u06d7\u06e8\u06d7\u06e2\u06e2\u06d7\u06ec\u06e8\u06df\u06e2\u06db\u06df\u06e4\u06d9\u06e0\u06df\u06eb\u06dc\u06d8\u06dc\u06e0\u06e8\u06d7\u06e6\u06d6\u06d8\u06eb\u06d6\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "\u06e6\u06df\u06e4\u06d9\u06e8\u06d8\u06ec\u06ec\u06ec\u06e6\u06e5\u06e0\u06ec\u06eb\u06eb\u06e1\u06e4\u06e1\u06d8\u06e7\u06db\u06e8\u06d8\u06da\u06df\u06d6\u06d8\u06e5\u06e2\u06e5\u06d8\u06e8\u06e6\u06ec\u06e8\u06e0\u06d9\u06db\u06df\u06dc\u06d6\u06dc\u06e1\u06d8\u06d8\u06e6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "\u06d6\u06d8\u06e5\u06da\u06da\u06eb\u06ec\u06d7\u06e6\u06e0\u06e6\u06e4\u06da\u06e0\u06d9\u06e7\u06da\u06e8\u06d8\u06df\u06dc\u06dc\u06d8\u06dc\u06d6\u06d8\u06e2\u06d9\u06e4\u06e1\u06e1\u06d8\u06e2\u06e8\u06da\u06da\u06e4\u06df\u06d9\u06ec\u06e2\u06d6\u06ec\u06e8\u06d8\u06eb\u06e6\u06e8\u06e8\u06e1\u06e5\u06e0\u06e1\u06d9\u06eb\u06d6\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "\u06e0\u06da\u06d7\u06e4\u06e5\u06e8\u06d8\u06e1\u06d9\u06d6\u06d8\u06e4\u06d8\u06dc\u06ec\u06df\u06e2\u06d7\u06e1\u06e0\u06e0\u06e1\u06e7\u06db\u06e8\u06d7\u06e8\u06d6\u06d8\u06d8\u06e1\u06e4\u06db\u06eb\u06e8\u06e6\u06d8\u06e4\u06d6\u06e1"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "\u06e6\u06e0\u06e6\u06d8\u06e1\u06e5\u06d7\u06da\u06e1\u06d8\u06d7\u06d9\u06ec\u06d7\u06e2\u06e0\u06eb\u06eb\u06d8\u06dc\u06dc\u06e0\u06e7\u06e7\u06da\u06e2\u06e1\u06e5\u06d8\u06e5\u06e1\u06ec\u06dc\u06d9\u06db\u06e0\u06e7\u06dc"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_42
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x795e6633 -> :sswitch_20
        -0x745857ef -> :sswitch_c
        -0x58c809d0 -> :sswitch_32
        -0x57a1064e -> :sswitch_3c
        -0x3c1c71e3 -> :sswitch_21
        -0x3aa4b28b -> :sswitch_29
        -0x33eea8b2 -> :sswitch_1f
        -0xfd58c3d -> :sswitch_2
        -0x6e2da5c -> :sswitch_40
        0x4059384 -> :sswitch_3b
        0xaab7c1e -> :sswitch_16
        0xeb42e9e -> :sswitch_42
        0x1355f9ce -> :sswitch_15
        0x13a03ad9 -> :sswitch_4
        0x1c82edd8 -> :sswitch_0
        0x22c41ea8 -> :sswitch_2a
        0x28307740 -> :sswitch_1
        0x2f24b80a -> :sswitch_3
        0x2f3735cb -> :sswitch_1e
        0x658c8ed0 -> :sswitch_3a
        0x6a81d507 -> :sswitch_14
        0x79fbbb37 -> :sswitch_42
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x11ce3850 -> :sswitch_3e
        0xf811d65 -> :sswitch_b
        0x4ae1acd8 -> :sswitch_a
        0x5aee5363 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6a38f26a -> :sswitch_7
        -0x369f3c5b -> :sswitch_8
        0x3f78bbce -> :sswitch_9
        0x56bb75d6 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x78715f21 -> :sswitch_13
        0x27973a4f -> :sswitch_d
        0x28d1c319 -> :sswitch_3d
        0x64ba49d7 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5a3e0ee6 -> :sswitch_10
        -0x2da1c7dc -> :sswitch_11
        -0x18a9e7da -> :sswitch_e
        0x409b98f1 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x60a87f21 -> :sswitch_1d
        -0x5f6d98e5 -> :sswitch_17
        -0x4670891e -> :sswitch_3f
        0x3b9bac6f -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x59c0c6a5 -> :sswitch_18
        0x1cdd04b6 -> :sswitch_1b
        0x2f7e9b8b -> :sswitch_1a
        0x4cd9aa46 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x79d582fb -> :sswitch_41
        -0x2fc793c1 -> :sswitch_22
        -0x1aeaa9b3 -> :sswitch_24
        0x4e2aa1cc -> :sswitch_28
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0x40d729a -> :sswitch_23
        0x100a0f8f -> :sswitch_25
        0x45096d09 -> :sswitch_27
        0x6b2897b2 -> :sswitch_26
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x758d433d -> :sswitch_31
        -0x354a5111 -> :sswitch_2d
        -0x1bfcc57a -> :sswitch_2b
        0xbd5f031 -> :sswitch_40
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x76b8ece5 -> :sswitch_2c
        -0x1ea40cc3 -> :sswitch_30
        -0x1110ae7d -> :sswitch_2e
        0x5ab89695 -> :sswitch_2f
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        -0x78d4880e -> :sswitch_40
        -0x76ca33e9 -> :sswitch_39
        0x23964184 -> :sswitch_33
        0x2398da6b -> :sswitch_35
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        0x15f9f97a -> :sswitch_34
        0x31c9ceb1 -> :sswitch_37
        0x3c8551c3 -> :sswitch_36
        0x4d2ac1ae -> :sswitch_38
    .end sparse-switch
.end method

.method public static synthetic OooOOO0(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lz2/q9;
    .locals 4

    const-string v0, "\u06e2\u06e4\u06e8\u06da\u06ec\u06e6\u06d8\u06d6\u06e6\u06e6\u06d8\u06dc\u06d9\u06e4\u06e7\u06da\u06e0\u06e2\u06dc\u06e7\u06e2\u06e0\u06dc\u06d8\u06d8\u06d7\u06dc\u06d8\u06d8\u06e8\u06e8\u06d8\u06e4\u06e0\u06e0\u06e7\u06e8\u06d6\u06d8\u06e4\u06e6\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x13c

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x4f

    const/16 v2, 0xc

    const v3, -0x18f6d6c6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d6\u06e1\u06d9\u06ec\u06e4\u06d6\u06db\u06e1\u06e7\u06e8\u06e0\u06db\u06e7\u06e7\u06e0\u06dc\u06df\u06e2\u06ec\u06db\u06df\u06d7\u06dc\u06d8\u06e2\u06e6\u06e0\u06d6\u06db\u06d8\u06d8\u06eb\u06da\u06df\u06e8\u06dc\u06ec\u06d6\u06e0\u06d6\u06d8\u06da\u06eb\u06d8\u06db\u06df\u06d8\u06ec\u06d9\u06d6\u06d8\u06df\u06e6\u06df\u06db\u06e2\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OoooooO:Lz2/q9;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4733bcdb -> :sswitch_0
        0x710263c5 -> :sswitch_1
    .end sparse-switch
.end method

.method private OooOOOO()V
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "\u06db\u06da\u06ec\u06d8\u06e2\u06e1\u06dc\u06dc\u06ec\u06eb\u06d7\u06e5\u06df\u06dc\u06e8\u06d7\u06eb\u06e6\u06e8\u06d6\u06e5\u06d7\u06e2\u06dc\u06e5\u06e4\u06e6\u06e7\u06d7\u06d6\u06d8\u06d7\u06e2\u06e7\u06dc\u06da\u06dc\u06d8\u06dc\u06d6\u06e6\u06d8\u06df\u06db\u06e8\u06d8\u06d6\u06d8\u06e6\u06d8\u06db\u06ec\u06d6\u06ec\u06e6\u06e5\u06e5\u06e7\u06e1"

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move v6, v2

    move v7, v2

    move-object v8, v4

    move-object v9, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v10, 0x9a

    xor-int/2addr v4, v10

    xor-int/lit16 v4, v4, 0x24e

    const/16 v10, 0x38c

    const v11, -0x671e7ef7

    xor-int/2addr v4, v10

    xor-int/2addr v4, v11

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d8\u06df\u06eb\u06e0\u06ec\u06dc\u06e8\u06dc\u06d8\u06db\u06eb\u06d6\u06e0\u06df\u06eb\u06da\u06db\u06d7\u06e8\u06db\u06dc\u06d8\u06ec\u06e7\u06ec\u06da\u06da\u06d6\u06e5\u06d7\u06d9\u06d6\u06df\u06e6\u06d6\u06ec\u06e7\u06d9\u06e8\u06e2\u06e0\u06e5\u06e6\u06d8\u06d8\u06e5\u06dc\u06d8\u06e2\u06d9\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    new-instance v4, Lz2/k4$OooO00o;

    const-string v0, ".log"

    invoke-direct {v4, v0}, Lz2/k4$OooO00o;-><init>(Ljava/lang/String;)V

    const-string v0, "\u06e0\u06df\u06d8\u06d8\u06dc\u06e7\u06da\u06e0\u06e2\u06d6\u06d7\u06d9\u06d6\u06dc\u06e7\u06d8\u06da\u06e0\u06dc\u06da\u06df\u06dc\u06e8\u06e5\u06da\u06d7\u06dc\u06e4\u06e5\u06d8\u06e7\u06d8\u06df\u06e2\u06e5\u06e7\u06e1\u06ec\u06d8\u06e6\u06e1\u06d6\u06e6\u06e7"

    move-object v9, v4

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/io/File;

    sget-object v4, Lz2/h6;->OooO0O0:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    const-string v0, "\u06e1\u06e5\u06e7\u06e7\u06d8\u06e8\u06d8\u06df\u06e7\u06e0\u06db\u06e4\u06d7\u06d6\u06db\u06db\u06d9\u06e2\u06e5\u06d8\u06eb\u06e5\u06e7\u06db\u06e0\u06e0\u06d8\u06e0\u06eb\u06e5\u06e2\u06ec\u06e5\u06eb\u06d7\u06e6\u06d8\u06d8"

    move-object v8, v4

    goto :goto_0

    :sswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    const-string v0, "\u06e8\u06d7\u06d8\u06e1\u06da\u06e1\u06d8\u06e0\u06eb\u06d8\u06d8\u06e0\u06eb\u06e6\u06e4\u06db\u06da\u06dc\u06ec\u06e1\u06e6\u06db\u06e0\u06d9\u06e5\u06d8\u06d8\u06e7\u06e0\u06e0\u06e4\u06d9\u06da\u06d8\u06e8\u06e6\u06e5\u06d7\u06e5\u06e8\u06d8\u06d6\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    const v4, 0x4b502116    # 1.3639958E7f

    const-string v0, "\u06d6\u06d9\u06e1\u06da\u06ec\u06e0\u06e7\u06e1\u06e6\u06d8\u06da\u06dc\u06dc\u06d6\u06e8\u06df\u06e5\u06e4\u06d6\u06e2\u06d6\u06e1\u06d8\u06e4\u06e7\u06e4\u06e5\u06db\u06e4\u06d9\u06d8\u06dc\u06d8\u06e5\u06e7\u06d8\u06e6\u06da\u06d9"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v4

    sparse-switch v10, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06db\u06dc\u06db\u06e1\u06da\u06e4\u06e1\u06e5\u06d8\u06d8\u06e8\u06dc\u06e1\u06d8\u06df\u06df\u06e2\u06e6\u06d8\u06db\u06e7\u06d6\u06d8\u06d9\u06eb\u06e5\u06db\u06db\u06d9\u06e5\u06eb\u06e1\u06d8\u06e0\u06e6\u06e1\u06e4\u06e5\u06dc\u06d8\u06ec\u06e5\u06df\u06e4\u06eb\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06d7\u06db\u06e6\u06d8\u06e6\u06d9\u06da\u06d8\u06d9\u06ec\u06e5\u06d6\u06e6\u06d8\u06e5\u06e0\u06e7\u06e0\u06ec\u06d8\u06d6\u06d7\u06e1\u06d8\u06e5\u06dc\u06d9\u06ec\u06e0\u06e4\u06e6\u06d6\u06e5\u06d8\u06e5\u06d7\u06e8\u06df\u06ec\u06d7\u06e6\u06e1\u06d8\u06d8\u06df\u06d8\u06db"

    goto :goto_1

    :sswitch_7
    const v10, 0x15014aca

    const-string v0, "\u06ec\u06e5\u06e6\u06d8\u06e8\u06ec\u06e6\u06d8\u06ec\u06e7\u06d6\u06d8\u06e4\u06ec\u06e8\u06d8\u06db\u06e5\u06e6\u06d8\u06db\u06e1\u06d9\u06e2\u06e5\u06e6\u06d8\u06ec\u06e1\u06d7\u06e8\u06e8\u06e5\u06d8\u06dc\u06e2\u06eb\u06e2\u06d6\u06d8\u06dc\u06dc\u06e8\u06e8\u06e1\u06db\u06eb\u06d6\u06db\u06e1\u06d9\u06dc\u06e4\u06d6\u06e5\u06d8\u06d9\u06e8\u06e8\u06db\u06ec\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d8\u06e6\u06e5\u06d8\u06e8\u06d8\u06e5\u06d8\u06df\u06e4\u06e5\u06d8\u06e1\u06da\u06d7\u06d9\u06da\u06eb\u06d7\u06da\u06e8\u06d8\u06e4\u06e2\u06e8\u06e4\u06d6\u06db\u06e5\u06d7\u06d9\u06dc\u06da\u06da\u06d7\u06d8\u06d8\u06e2\u06e7\u06e8\u06d9\u06da\u06e8\u06e0\u06db\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e4\u06e0\u06d9\u06df\u06db\u06d6\u06d8\u06d9\u06d6\u06df\u06eb\u06e0\u06e5\u06e8\u06ec\u06d9\u06d9\u06d6\u06d6\u06e7\u06db\u06d7\u06d8\u06e5\u06d6\u06e8\u06d9\u06db\u06e1\u06eb\u06e7\u06e0\u06db\u06df\u06df\u06db\u06dc\u06e5\u06da\u06db\u06e6\u06e5"

    goto :goto_2

    :sswitch_9
    if-eqz v8, :cond_0

    const-string v0, "\u06e1\u06e0\u06e5\u06d8\u06d7\u06d6\u06e6\u06d8\u06d6\u06d6\u06dc\u06dc\u06e7\u06e6\u06d8\u06df\u06ec\u06db\u06d7\u06dc\u06df\u06e0\u06e1\u06d9\u06ec\u06d8\u06e6\u06dc\u06ec\u06dc\u06d8\u06d7\u06e8\u06d9\u06d6\u06e7\u06e1\u06e7"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06df\u06da\u06e1\u06d8\u06d9\u06db\u06e5\u06d8\u06df\u06da\u06e6\u06e4\u06da\u06d6\u06d8\u06da\u06ec\u06e8\u06db\u06ec\u06da\u06e6\u06ec\u06e2\u06d8\u06e1\u06d8\u06e8\u06d7\u06e5\u06d8\u06df\u06e0\u06e8\u06d8\u06d8\u06d8\u06e0\u06df\u06eb\u06df\u06da\u06dc\u06d8\u06e4\u06e0\u06e1\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e6\u06eb\u06db\u06dc\u06da\u06e0\u06e7\u06e2\u06e0\u06e0\u06d8\u06d6\u06e6\u06df\u06e1\u06d8\u06e7\u06eb\u06e6\u06e1\u06da\u06d6\u06d8\u06da\u06e2\u06e7\u06d9\u06e1\u06e5\u06da\u06dc\u06e2\u06df\u06d8\u06e5\u06d8\u06d8\u06e8\u06df\u06e8\u06da\u06e6\u06d8\u06d6\u06d7\u06d6\u06d8\u06da\u06e6\u06d8\u06eb\u06e8\u06e5\u06e6\u06e6"

    goto :goto_1

    :sswitch_c
    new-instance v0, Lz2/t8;

    invoke-direct {v0}, Lz2/t8;-><init>()V

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string v0, "\u06e2\u06e5\u06d8\u06d8\u06d8\u06df\u06df\u06d7\u06e4\u06e6\u06e1\u06e4\u06e7\u06e7\u06e6\u06e1\u06d8\u06e2\u06e8\u06dc\u06d8\u06da\u06e8\u06d6\u06df\u06da\u06df\u06e7\u06e1\u06d8\u06d8\u06e0\u06d8\u06dc\u06d8\u06d8\u06e8\u06d8\u06d8\u06e5\u06e8\u06e8\u06d8\u06e6\u06e5\u06d6\u06db\u06da\u06e1\u06d8\u06d6\u06ec\u06d8\u06d8\u06d8\u06ec\u06e5\u06d8"

    goto :goto_0

    :sswitch_d
    array-length v4, v8

    const-string v0, "\u06e5\u06e4\u06dc\u06da\u06eb\u06e6\u06df\u06d8\u06eb\u06e7\u06e2\u06d8\u06d9\u06da\u06e6\u06d8\u06e2\u06e8\u06d8\u06d8\u06d8\u06df\u06da\u06e0\u06e0\u06dc\u06d8\u06eb\u06d8\u06da\u06eb\u06e0\u06e4"

    move v7, v4

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06d6\u06e1\u06e7\u06df\u06e0\u06e5\u06e4\u06db\u06dc\u06d8\u06e6\u06e2\u06da\u06db\u06d7\u06df\u06ec\u06d8\u06e5\u06d9\u06df\u06e0\u06e6\u06dc\u06e8\u06d8\u06dc\u06d6\u06e7\u06eb\u06ec\u06e5\u06da\u06dc\u06d8\u06e1\u06e1\u06dc\u06d8\u06e7\u06ec\u06ec\u06d6\u06e4\u06ec\u06d9\u06dc\u06db\u06da\u06e0\u06e6\u06d9\u06d9\u06d9\u06e8\u06e1"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06da\u06e6\u06df\u06e2\u06e6\u06e1\u06d8\u06d6\u06dc\u06dc\u06d8\u06ec\u06ec\u06e6\u06d8\u06d8\u06d9\u06e6\u06e8\u06da\u06dc\u06dc\u06e4\u06db\u06ec\u06e7\u06e4\u06da\u06dc\u06d8\u06e8\u06ec\u06df\u06dc\u06e2\u06e6\u06d8\u06e7\u06e2\u06e6\u06d8"

    move v6, v2

    goto/16 :goto_0

    :sswitch_10
    const v4, 0x6f13e174

    const-string v0, "\u06e4\u06e0\u06d6\u06d8\u06e8\u06db\u06ec\u06e1\u06dc\u06d8\u06db\u06db\u06e1\u06d8\u06d8\u06db\u06e8\u06e8\u06e4\u06ec\u06d8\u06e1\u06e0\u06da\u06e1\u06df\u06e7\u06da\u06d6\u06d7\u06e7\u06e1\u06d8\u06da\u06e0\u06d6\u06db\u06e6\u06e7\u06d7\u06e1\u06df\u06e7\u06da\u06dc\u06d7\u06df\u06e7\u06e6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v4

    sparse-switch v10, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06dc\u06e8\u06eb\u06e4\u06db\u06dc\u06d6\u06eb\u06e1\u06ec\u06e6\u06d8\u06e0\u06e8\u06d6\u06e0\u06e7\u06da\u06d9\u06df\u06e1\u06d8\u06e7\u06e6\u06e8\u06d8\u06dc\u06e2\u06e4\u06eb\u06d8\u06e2\u06e7\u06ec\u06d8\u06ec\u06d8\u06e6\u06d8\u06d9\u06d8\u06d6\u06d8\u06e0\u06db\u06d6\u06d8\u06e6\u06da\u06dc\u06d8\u06e7\u06e6\u06ec\u06d7\u06e2\u06da\u06d7"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06eb\u06e5\u06e8\u06e4\u06e0\u06e1\u06df\u06db\u06d8\u06d8\u06d6\u06d9\u06e4\u06d9\u06dc\u06e5\u06d8\u06eb\u06e0\u06e8\u06dc\u06df\u06e1\u06e1\u06e1\u06d6\u06d8\u06df\u06df\u06db\u06e7\u06e2\u06dc"

    goto :goto_3

    :sswitch_13
    const v10, 0x271743f8

    const-string v0, "\u06ec\u06e7\u06e8\u06d8\u06e7\u06d9\u06e4\u06eb\u06d6\u06d8\u06d9\u06e5\u06dc\u06e5\u06e4\u06d8\u06e7\u06db\u06d8\u06e7\u06d8\u06d9\u06eb\u06dc\u06df\u06d7\u06e2\u06e1\u06e4\u06e1"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_4

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e7\u06e1\u06e7\u06e6\u06e5\u06e5\u06d8\u06e8\u06eb\u06e1\u06d8\u06eb\u06ec\u06e6\u06df\u06d7\u06db\u06e6\u06e8\u06ec\u06e1\u06e0\u06da\u06d6\u06ec\u06dc\u06d8\u06e1\u06e7\u06e5\u06db\u06da\u06eb"

    goto :goto_4

    :cond_1
    const-string v0, "\u06db\u06d7\u06d6\u06d8\u06dc\u06da\u06dc\u06da\u06e1\u06e8\u06e4\u06e8\u06e5\u06d6\u06da\u06ec\u06eb\u06d7\u06da\u06e2\u06d8\u06e8\u06d8\u06db\u06d7\u06e5\u06d8\u06da\u06da\u06e5\u06d7\u06eb\u06e6\u06d8\u06dc\u06e6\u06e6\u06e8\u06df\u06e8\u06df\u06db\u06df\u06da\u06d7\u06e5\u06e6\u06ec\u06d9\u06d6\u06d6\u06e1\u06e2\u06ec\u06da\u06e6\u06eb\u06d6\u06d8"

    goto :goto_4

    :sswitch_15
    if-ge v6, v7, :cond_1

    const-string v0, "\u06e4\u06e7\u06e0\u06e4\u06e5\u06e7\u06dc\u06eb\u06e8\u06e7\u06eb\u06e5\u06d8\u06e4\u06e8\u06d7\u06d6\u06e8\u06d9\u06dc\u06e8\u06d6\u06e7\u06eb\u06d6\u06d8\u06dc\u06d6\u06e1\u06d8\u06e8\u06e4\u06e4\u06da\u06d8\u06e6\u06d6\u06dc\u06db\u06e4\u06db\u06d9\u06e1\u06ec\u06d8"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06da\u06dc\u06e5\u06d8\u06e1\u06da\u06dc\u06d8\u06e2\u06e7\u06d8\u06d8\u06e7\u06d7\u06df\u06e1\u06da\u06e8\u06e2\u06eb\u06d9\u06e7\u06e1\u06e1\u06d8\u06d7\u06e1\u06df\u06da\u06db\u06e5\u06ec\u06e8\u06eb\u06e0\u06d6\u06db\u06e1\u06d9\u06d9\u06e6\u06d8\u06e0\u06db\u06e0\u06e0\u06dc\u06e0\u06d8\u06d8\u06d8"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06da\u06d8\u06e0\u06da\u06df\u06e2\u06ec\u06e8\u06df\u06d9\u06d7\u06e6\u06e5\u06e2\u06e2\u06df\u06db\u06e6\u06d9\u06d9\u06e6\u06da\u06e8\u06eb\u06e2\u06da\u06da\u06da\u06ec\u06e1"

    goto/16 :goto_0

    :sswitch_18
    aget-object v4, v8, v6

    const-string v0, "\u06da\u06e6\u06e7\u06e4\u06d7\u06df\u06e6\u06e5\u06d9\u06df\u06e1\u06e7\u06e1\u06d6\u06d6\u06d8\u06db\u06d6\u06d8\u06e1\u06db\u06e5\u06d8\u06d9\u06db\u06df\u06e0\u06e6\u06e5\u06d8\u06ec\u06e4\u06d8\u06ec\u06d7\u06e8\u06d8\u06da\u06d6\u06e2\u06e5\u06e6\u06d8\u06e4\u06e5\u06e5\u06d8\u06e2\u06eb\u06e6\u06d8\u06e7\u06e1\u06d6\u06d8\u06e0\u06e8\u06e4\u06dc\u06da\u06e2"

    move-object v5, v4

    goto/16 :goto_0

    :sswitch_19
    new-instance v3, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v3}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    const-string v0, "\u06d9\u06df\u06d6\u06e4\u06db\u06e6\u06d8\u06db\u06dc\u06ec\u06e0\u06e2\u06e1\u06e4\u06e0\u06dc\u06e1\u06e2\u06ec\u06dc\u06d8\u06d7\u06e5\u06e6\u06dc\u06da\u06db\u06df\u06e2\u06d9\u06ec\u06ec\u06e8\u06eb\u06ec\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lz2/k4;->OooO0Oo(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06e0\u06da\u06e1\u06e6\u06da\u06eb\u06ec\u06e6\u06d8\u06df\u06e5\u06df\u06e6\u06df\u06e1\u06e7\u06da\u06dc\u06d7\u06d8\u06d9\u06e4\u06e6\u06e7O\u06e7\u06d6\u06eb\u06eb\u06df\u06e2\u06d7\u06da\u06d8\u06d8\u06eb\u06e6\u06dc\u06d8\u06e0\u06eb\u06e5\u06d8\u06db\u06dc\u06e7\u06df\u06db\u06e0"

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    const-string v0, "\u06e6\u06e6\u06eb\u06d8\u06e0\u06e5\u06d8\u06da\u06db\u06e1\u06dc\u06dc\u06dc\u06e5\u06e2\u06e4\u06e0\u06e1\u06e2\u06e7\u06db\u06d6\u06d8\u06d8\u06e8\u06e7\u06d7\u06e8\u06df\u06e0\u06e8\u06d6\u06e8\u06dc\u06df\u06e8\u06da\u06e7\u06d9\u06ec\u06e0\u06df\u06e6\u06e4"

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {v3, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    const-string v0, "\u06eb\u06db\u06e8\u06e0\u06eb\u06df\u06d9\u06e0\u06d8\u06e8\u06e6\u06eb\u06dc\u06ec\u06d7\u06e6\u06df\u06e8\u06d6\u06df\u06e6\u06e1\u06d9\u06e4\u06da\u06dc\u06da\u06e2\u06df\u06e5\u06db\u06e7\u06dc\u06d8\u06e7\u06d7\u06d7"

    goto/16 :goto_0

    :sswitch_1d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06d7\u06db\u06e5\u06e4\u06d8\u06e7\u06d7\u06dc\u06db\u06e5\u06d9\u06e8\u06e5\u06e7\u06df\u06ec\u06ec\u06dc\u06df\u06e0\u06dc\u06d7\u06ec\u06dc\u06e4\u06e7\u06e2\u06d7\u06d7\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1e
    add-int/lit8 v1, v6, 0x1

    const-string v0, "\u06d8\u06e5\u06e6\u06d8\u06e7\u06eb\u06e6\u06d9\u06df\u06e0\u06ec\u06ec\u06e5\u06db\u06db\u06e1\u06d8\u06da\u06e0\u06ec\u06e8\u06ec\u06ec\u06e6\u06ec\u06e5\u06d8\u06e4\u06dc\u06dc\u06e8\u06db\u06e5\u06d8\u06e1\u06db\u06e7\u06eb\u06e0\u06db\u06d7\u06e6\u06d8\u06d8\u06dc\u06dc\u06d8\u06e1\u06da\u06e2\u06d7\u06dc\u06e4\u06d8\u06e4\u06da\u06e5\u06d7\u06da"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e8\u06d9\u06e2\u06e2\u06e0\u06e0\u06ec\u06e0\u06d7\u06d8\u06e6\u06e7\u06db\u06df\u06e5\u06e6\u06db\u06e4\u06eb\u06d8\u06d8\u06e4\u06df\u06e2\u06d7\u06eb\u06e1\u06d8\u06e2\u06da\u06e8\u06eb\u06dc\u06d6\u06d6\u06ec\u06e5\u06d8"

    move v6, v1

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06da\u06e6\u06df\u06e2\u06e6\u06e1\u06d8\u06d6\u06dc\u06dc\u06d8\u06ec\u06ec\u06e6\u06d8\u06d8\u06d9\u06e6\u06e8\u06da\u06dc\u06dc\u06e4\u06db\u06ec\u06e7\u06e4\u06da\u06dc\u06d8\u06e8\u06ec\u06df\u06dc\u06e2\u06e6\u06d8\u06e7\u06e2\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "\u06e5\u06e5\u06d8\u06d8\u06e4\u06db\u06ec\u06e8\u06da\u06e5\u06e5\u06da\u06d7\u06e4\u06e7\u06e6\u06d8\u06e8\u06d8\u06d6\u06e5\u06e4\u06e6\u06eb\u06d7\u06e4\u06e8\u06e1\u06d6\u06d8\u06d6"

    goto/16 :goto_0

    :sswitch_22
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b53e4ea -> :sswitch_1b
        -0x7346764f -> :sswitch_1d
        -0x6d625d99 -> :sswitch_1f
        -0x684ae432 -> :sswitch_f
        -0x56b2ec92 -> :sswitch_1c
        -0x513c5dea -> :sswitch_3
        -0x4aeb1e77 -> :sswitch_0
        -0x4a25166f -> :sswitch_19
        -0x34b0a077 -> :sswitch_2
        -0x169fce1e -> :sswitch_1
        -0x157c9f34 -> :sswitch_22
        -0x2d6e6ff -> :sswitch_c
        -0xb7f56c -> :sswitch_d
        0x1267d220 -> :sswitch_4
        0x32d083f8 -> :sswitch_18
        0x472a27c4 -> :sswitch_e
        0x47b0de16 -> :sswitch_10
        0x5367329f -> :sswitch_1a
        0x5461bcb5 -> :sswitch_1e
        0x62ca4fcb -> :sswitch_20
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x47ae2949 -> :sswitch_b
        -0x32e4b846 -> :sswitch_5
        -0x7dea7e5 -> :sswitch_21
        0x46e9c0bc -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x67613b8b -> :sswitch_a
        -0x2a45abdb -> :sswitch_8
        0x3c4192c9 -> :sswitch_6
        0x409936a1 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x38d48cfe -> :sswitch_17
        -0x13e98837 -> :sswitch_11
        0x36998898 -> :sswitch_13
        0x5d2b2ac3 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x717c80d9 -> :sswitch_12
        -0x13eb0f80 -> :sswitch_15
        0x5011cbbf -> :sswitch_16
        0x7d82ae02 -> :sswitch_14
    .end sparse-switch
.end method

.method private OooOOOo()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06d8\u06da\u06e6\u06eb\u06d8\u06eb\u06e7\u06eb\u06e7\u06e0\u06db\u06df\u06e6\u06db\u06d8\u06d8\u06da\u06d9\u06e4\u06e0\u06e5\u06df\u06d6\u06d8\u06e6\u06d8\u06da\u06df\u06d7\u06e1\u06e8\u06d8\u06eb\u06e1\u06e0\u06e7\u06e5\u06e7"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x34d

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x21f

    const/16 v3, 0x84

    const v5, 0x6258d526    # 9.999639E20f

    xor-int/2addr v0, v3

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e7\u06d8\u06d8\u06d9\u06d8\u06e5\u06d8\u06e7\u06e5\u06d7\u06e8\u06e7\u06e4\u06e8\u06df\u06df\u06e6\u06e1\u06e5\u06d8\u06d6\u06e2\u06e5\u06da\u06d9\u06e8\u06ec\u06e8\u06d6\u06d8\u06e8\u06e8\u06dc\u06d8\u06ec\u06d6\u06da\u06d9\u06d9\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09035a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const-string v1, "\u06d6\u06d8\u06d7\u06dc\u06df\u06e1\u06d8\u06d7\u06e8\u06e5\u06dc\u06d6\u06d6\u06d6\u06d7\u06d8\u06d8\u06e7\u06e5\u06db\u06e5\u06db\u06d8\u06d8\u06da\u06db\u06e4\u06e0\u06e1\u06e4\u06e0\u06e5\u06d8\u06e1\u06e5\u06e8\u06eb\u06da\u06df\u06eb\u06e5\u06d8\u06d7\u06d6\u06da\u06e8\u06e6\u06e1\u06da\u06d6\u06e1\u06e1\u06e0\u06e6\u06d8\u06df\u06e4\u06df"

    move-object v4, v0

    goto :goto_0

    :sswitch_2
    iput-object v4, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooOO:Landroid/widget/ListView;

    const-string v0, "\u06e7\u06e0\u06ec\u06e2\u06d7\u06d8\u06d8\u06eb\u06d6\u06e1\u06d8\u06db\u06df\u06d6\u06e0\u06d7\u06e4\u06e8\u06df\u06dc\u06dc\u06e0\u06d9\u06dc\u06d8\u06da\u06d9\u06ec\u06e0\u06d9\u06d8\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "\u06e7\u06e0\u06e7\u06e6\u06ec\u06d9\u06d6\u06e4\u06d9\u06d6\u06e5\u06d7\u06d7\u06e7\u06db\u06d8\u06eb\u06d9\u06d9\u06df\u06d6\u06d8\u06d7\u06e4\u06d8\u06d8\u06e6\u06e7\u06e7\u06d6\u06dc\u06ec\u06da\u06ec\u06df\u06d9\u06e6\u06e4\u06db\u06ec\u06e8\u06e2\u06eb\u06e8\u06d8\u06e1\u06df\u06dc\u06d8\u06e4\u06d9\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooOOOO()V

    const-string v0, "\u06df\u06e1\u06d9\u06d8\u06df\u06eb\u06e1\u06dc\u06d8\u06d8\u06e8\u06da\u06df\u06db\u06e2\u06d7\u06e4\u06db\u06df\u06dc\u06d8\u06e1\u06d8\u06e4\u06d7\u06e2\u06dc\u06e0\u06d9\u06e1\u06e0\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    new-instance v2, Lz2/q9;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v0}, Lz2/q9;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string v0, "\u06df\u06d7\u06df\u06e0\u06e8\u06e5\u06e5\u06e8\u06ec\u06d9\u06d6\u06dc\u06da\u06d6\u06eb\u06e7\u06df\u06eb\u06d6\u06e2\u06d8\u06d8\u06e0\u06e8\u06e1\u06d8\u06d8\u06e4\u06e4\u06e8\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OoooooO:Lz2/q9;

    const-string v0, "\u06e0\u06da\u06e5\u06d9\u06ec\u06e6\u06e7\u06d7\u06d7\u06d9\u06ec\u06d7\u06d9\u06db\u06eb\u06e1\u06e1\u06d8\u06e1\u06d9\u06e0\u06d6\u06ec\u06e0\u06eb\u06d9\u06db\u06e2\u06e1\u06e0\u06e8\u06e5\u06ec\u06e4\u06db\u06ec\u06d8\u06eb\u06e2\u06da\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooOO:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "\u06e6\u06db\u06e6\u06e8\u06d6\u06e8\u06e0\u06e4\u06e4\u06e6\u06d9\u06e6\u06d8\u06d8\u06e1\u06e6\u06e1\u06d6\u06d6\u06d8\u06e1\u06d8\u06ec\u06e0\u06e4\u06e8\u06d8\u06e2\u06e7\u06e1\u06d8\u06e2\u06e0\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69ddf6c9 -> :sswitch_5
        -0x600ba5b6 -> :sswitch_3
        -0x58b98161 -> :sswitch_8
        -0x3932b9ec -> :sswitch_1
        -0xa02fcc0 -> :sswitch_6
        -0x4b24b0a -> :sswitch_2
        -0x14560d9 -> :sswitch_0
        0x156154ba -> :sswitch_7
        0x49dc5d26 -> :sswitch_4
    .end sparse-switch
.end method

.method private OooOOo0()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06e5\u06dc\u06e5\u06d8\u06e0\u06e7\u06e5\u06da\u06d6\u06e1\u06d8\u06d9\u06e1\u06d9\u06df\u06e5\u06dc\u06ec\u06e5\u06e4\u06e0\u06e4\u06e5\u06d8\u06e1\u06d7\u06dc\u06e7\u06e8\u06dc\u06d8\u06d6\u06e2\u06d7\u06e6\u06d8\u06d6\u06d6\u06d8\u06d9\u06db\u06e2\u06e6\u06ec\u06e5\u06e7\u06d8"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x1b2

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x256

    const/16 v4, 0x346

    const v5, 0x43ddba9a

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d7\u06ec\u06ec\u06eb\u06e2\u06e4\u06e2\u06e6\u06d8\u06d9\u06e5\u06d8\u06db\u06d9\u06e5\u06d8\u06d6\u06d8\u06e0\u06db\u06d7\u06da\u06e5\u06e5\u06d8\u06d8\u06d8\u06e5\u06d9\u06eb\u06da\u06e4\u06ec\u06df\u06e0\u06d6\u06db\u06d9\u06db\u06e1\u06d7\u06e5\u06e1\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09043e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06db\u06e6\u06d8\u06d8\u06e1\u06e8\u06d8\u06e6\u06eb\u06d8\u06d8\u06db\u06d9\u06ec\u06ec\u06e1\u06d8\u06e2\u06df\u06e8\u06eb\u06e8\u06e8\u06ec\u06eb\u06d6\u06e4\u06e4\u06df\u06d7\u06d7\u06e1\u06d7\u06df\u06e2\u06e6\u06df\u06d7\u06db\u06db\u06e7\u06d7\u06e2\u06e5\u06d8\u06e1\u06eb\u06e6"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06e2\u06e7\u06e8\u06d8\u06dc\u06e6\u06eb\u06db\u06d8\u06e5\u06e8\u06e7\u06eb\u06d8\u06e6\u06dc\u06d8\u06ec\u06e1\u06e6\u06e2\u06e0\u06dc\u06e6\u06e2\u06dc\u06e4\u06d6\u06dc\u06d7\u06e7\u06db\u06e4\u06e7\u06e4\u06e1\u06db\u06ec\u06d6\u06d9\u06dc\u06e8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f10024d

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06db\u06e5\u06d8\u06df\u06da\u06e7\u06d6\u06db\u06d6\u06d8\u06e5\u06eb\u06d6\u06d8\u06e4\u06eb\u06df\u06eb\u06e2\u06d8\u06d8\u06e4\u06dc\u06e4\u06eb\u06e8\u06d8\u06d7\u06e7\u06e5\u06d8\u06da\u06d7\u06d6\u06d6\u06e0\u06d6\u06e2\u06da\u06e8\u06d8\u06da\u06d7\u06e1\u06d8\u06e4\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06e4\u06e6\u06e5\u06d8\u06d7\u06d7\u06e7\u06e0\u06ec\u06d6\u06d8\u06e5\u06da\u06e8\u06d8\u06e6\u06db\u06e6\u06dc\u06d9\u06d8\u06db\u06dc\u06d9\u06e7\u06d7\u06ec\u06dc\u06df\u06e1\u06d6\u06e7\u06d8\u06e7\u06e4\u06db\u06da\u06e6\u06e7\u06d8\u06d6\u06ec\u06df\u06dc\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;

    invoke-direct {v1, p0, v3}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e0\u06dc\u06e4\u06d6\u06da\u06eb\u06e5\u06e2\u06d6\u06e2\u06e6\u06db\u06da\u06d7\u06e8\u06d8\u06dc\u06dc\u06d9\u06d7\u06d7\u06e5\u06d8\u06e6\u06e2\u06db\u06e5\u06d9\u06e6\u06d8\u06d7\u06d9\u06db\u06d6\u06eb\u06d8\u06e6\u06dc\u06d8\u06e2\u06e1\u06da\u06e1\u06eb\u06db\u06e4\u06eb\u06d8\u06da\u06eb\u06e5\u06e1\u06ec\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightImage(I)V

    const-string v0, "\u06e2\u06eb\u06e5\u06d8\u06d8\u06dc\u06d6\u06d8\u06d7\u06e1\u06dc\u06e5\u06ec\u06e0\u06e7\u06dc\u06e1\u06eb\u06e5\u06e7\u06d8\u06e7\u06d6\u06dc\u06d8\u06e8\u06e8\u06dc\u06dc\u06e8\u06e8\u06d8\u06df\u06dc\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0OO;

    invoke-direct {v1, p0, v3}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;)V

    const-string v0, "\u06db\u06ec\u06db\u06ec\u06e5\u06d6\u06eb\u06e2\u06e6\u06eb\u06d7\u06e8\u06d8\u06e1\u06d6\u06e8\u06e8\u06e1\u06eb\u06d7\u06d7\u06dc\u06d8\u06d6\u06dc\u06da\u06eb\u06d9\u06e5\u06d8\u06e0\u06eb\u06e1\u06db\u06df\u06d8\u06e8\u06e8\u06e6\u06e7\u06eb\u06d6\u06e2\u06da\u06e4\u06d6\u06e6\u06e7\u06e4\u06e6\u06df\u06df\u06d7\u06da\u06df\u06d7"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c2ce57a -> :sswitch_3
        -0x728ed4d4 -> :sswitch_2
        -0x570ad9cf -> :sswitch_5
        -0x513b5a74 -> :sswitch_4
        0xd48c10c -> :sswitch_8
        0x17737074 -> :sswitch_7
        0x43aafc5c -> :sswitch_1
        0x59d48f80 -> :sswitch_0
        0x67dc42f7 -> :sswitch_6
    .end sparse-switch
.end method

.method private initView()V
    .locals 4

    const-string v0, "\u06dc\u06e4\u06d8\u06d8\u06e6\u06e2\u06e7\u06d6\u06e7\u06d8\u06d8\u06d7\u06e7\u06e1\u06d8\u06da\u06e1\u06db\u06d6\u06dc\u06e1\u06e4\u06e5\u06e8\u06d6\u06e6\u06d9\u06e8\u06e0\u06e5\u06e2\u06d8\u06e2\u06e4\u06d8\u06d9\u06e7\u06dc\u06d7\u06ec\u06df\u06e6\u06d8\u06ec\u06d9\u06e5\u06d8\u06d9\u06d8\u06e6\u06d8\u06db\u06d8\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x188

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a8

    const/16 v2, 0x38

    const v3, 0x2561d835

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06db\u06e0\u06e4\u06da\u06d8\u06d8\u06e7\u06e7\u06e8\u06d8\u06d8\u06da\u06d9\u06eb\u06e1\u06e4\u06dc\u06ec\u06e8\u06d8\u06d6\u06e8\u06dc\u06dc\u06e7\u06d8\u06e7\u06d9\u06d6\u06d8\u06e2\u06e8\u06da\u06d9\u06da\u06db\u06d9\u06db\u06d9\u06dc\u06df\u06d9\u06df\u06dc\u06e1\u06e1\u06d8\u06ec\u06e7\u06e2\u06e6\u06dc\u06ec\u06e6\u06e2\u06d9"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooOOo0()V

    const-string v0, "\u06d8\u06e1\u06e6\u06d6\u06e0\u06dc\u06e2\u06e2\u06d6\u06d8\u06e5\u06e7\u06d7\u06e4\u06da\u06db\u06d9\u06d6\u06e4\u06e1\u06e0\u06e2\u06d7\u06ec\u06e0\u06d6\u06d7\u06db\u06e0\u06e2\u06da"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooOOOo()V

    const-string v0, "\u06d6\u06e8\u06e2\u06e6\u06da\u06d6\u06e2\u06e4\u06dc\u06d8\u06df\u06d6\u06e6\u06db\u06e8\u06db\u06e0\u06e6\u06db\u06df\u06da\u06e5\u06d6\u06e2\u06e0\u06e8\u06dc\u06d8\u06d6\u06e0\u06dc\u06d8\u06eb\u06df\u06e7\u06d9\u06e5\u06d6\u06d8\u06dc\u06da\u06db\u06dc\u06e2\u06e6\u06d8\u06ec\u06d8\u06ec\u06e2\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090237

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooOo:Landroid/widget/Button;

    const-string v0, "\u06da\u06dc\u06e1\u06d8\u06e1\u06ec\u06e4\u06e0\u06d8\u06d8\u06e7\u06e6\u06eb\u06d6\u06ec\u06d6\u06d7\u06df\u06d8\u06e5\u06e2\u06df\u06db\u06d9\u06df\u06e0\u06e4\u06e6\u06d8\u06e0\u06e8\u06d7"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090238

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo0:Landroid/widget/Button;

    const-string v0, "\u06df\u06e1\u06e5\u06d8\u06d6\u06d6\u06e7\u06d8\u06e4\u06e1\u06e5\u06e4\u06d7\u06e7\u06e2\u06d9\u06d6\u06da\u06e0\u06d6\u06e7\u06e1\u06ec\u06df\u06e5\u06dc\u06d8\u06ec\u06e0\u06d8\u06d8\u06e2\u06eb\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooooOo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e2\u06eb\u06e5\u06e5\u06df\u06e8\u06d8\u06d9\u06e5\u06ec\u06d7\u06df\u06d6\u06e6\u06e7\u06e4\u06dc\u06db\u06ec\u06e0\u06e6\u06e8\u06d8\u06df\u06e0\u06d6\u06d8\u06db\u06d9\u06e1\u06d8\u06e6\u06db\u06db\u06d6\u06e1\u06da\u06d8\u06e4"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e4\u06e5\u06e8\u06d8\u06db\u06df\u06df\u06dc\u06e1\u06eb\u06d8\u06e7\u06df\u06da\u06e7\u06d7\u06ec\u06da\u06d6\u06db\u06d7\u06e6\u06ec\u06e4\u06d7\u06e7\u06dc\u06e7\u06d6\u06dc\u06d9\u06d8\u06e5\u06e4\u06d9\u06e4\u06ec\u06eb\u06e1\u06e8\u06e6\u06e1\u06e1\u06da\u06e0\u06ec\u06d7\u06e7\u06e2\u06e2\u06e1\u06db\u06e6\u06da\u06e7"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76a38903 -> :sswitch_5
        -0x58d00069 -> :sswitch_3
        -0x4a35db40 -> :sswitch_0
        -0x2556ff4 -> :sswitch_6
        0x1121a64 -> :sswitch_1
        0x2e0f1ed3 -> :sswitch_4
        0x4944b48b -> :sswitch_2
        0x581394e4 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06eb\u06df\u06d7\u06e2\u06e6\u06d8\u06da\u06e0\u06d8\u06e7\u06e4\u06d6\u06e2\u06e4\u06db\u06d9\u06e8\u06e1\u06d8\u06d9\u06d6\u06d8\u06d8\u06e6\u06df\u06e5\u06d6\u06eb\u06e0\u06d7\u06e5\u06da\u06e7\u06e5\u06e7\u06d8\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2ea

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x37d

    const/16 v3, 0x38a

    const v4, -0x33413654    # -1.00027744E8f

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06db\u06eb\u06e0\u06e7\u06e1\u06e5\u06e7\u06dc\u06d8\u06d6\u06eb\u06d8\u06d8\u06ec\u06d7\u06df\u06df\u06d8\u06ec\u06e8\u06d8\u06e6\u06d8\u06e6\u06d7\u06e7\u06e0\u06dc\u06d8\u06db\u06d7\u06d9\u06e8\u06db\u06e2\u06eb\u06e6\u06e0\u06d6\u06dc\u06e6\u06ec\u06da\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d6\u06d8\u06d8\u06eb\u06e2\u06e6\u06d8\u06d7\u06dc\u06eb\u06e4\u06db\u06db\u06db\u06e6\u06dc\u06d8\u06e4\u06e7\u06e6\u06d8\u06e8\u06eb\u06e5\u06e0\u06da\u06db\u06e2\u06e5\u06d6\u06e7\u06d6\u06e5\u06e4\u06e4\u06eb\u06e5\u06e8\u06e5\u06d8\u06e4\u06e0\u06da\u06d6\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u06d7\u06da\u06da\u06e4\u06e0\u06d6\u06dc\u06d8\u06d8\u06d8\u06e4\u06e7\u06e4\u06dc\u06e5\u06d8\u06e1\u06ec\u06ec\u06db\u06d8\u06e1\u06d8\u06d8\u06d9\u06db\u06d9\u06e2\u06e2\u06d7\u06d8\u06df\u06e8\u06ec\u06ec\u06ec\u06ec\u06e2\u06df\u06e1\u06db\u06d7\u06ec\u06e6\u06d8\u06e7\u06e8\u06da\u06e1\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v0, "\u06db\u06d8\u06d8\u06e0\u06d8\u06e7\u06d8\u06e4\u06d8\u06e1\u06e6\u06e8\u06d9\u06d7\u06dc\u06d6\u06d8\u06d9\u06dc\u06e7\u06e8\u06eb\u06e4\u06ec\u06e1\u06d6\u06d8\u06dc\u06e1\u06db\u06d8\u06e0"

    goto :goto_0

    :sswitch_4
    const v2, 0x7eacfd82

    const-string v0, "\u06db\u06d8\u06db\u06eb\u06eb\u06db\u06db\u06d6\u06e4\u06eb\u06e1\u06dc\u06d8\u06ec\u06da\u06d9\u06e4\u06e4\u06dc\u06d8\u06e6\u06e1\u06e5\u06d8\u06d9\u06e1\u06e8\u06ec\u06eb\u06ec\u06e2\u06d6\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06ec\u06e5\u06e1\u06d9\u06e2\u06da\u06e7\u06e0\u06ec\u06e0\u06d6\u06e4\u06db\u06dc\u06d8\u06db\u06eb\u06e0\u06e2\u06dc\u06db\u06e4\u06ec\u06e8\u06d6\u06e8\u06e8\u06d8\u06e7\u06da\u06ec\u06e2\u06e1\u06e5\u06d8\u06e8\u06dc\u06db\u06eb\u06e5\u06e8\u06d9\u06df\u06d6\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e0\u06e7\u06e5\u06e5\u06df\u06e8\u06df\u06d7\u06e7\u06d6\u06e7\u06d6\u06df\u06db\u06d9\u06e5\u06db\u06d6\u06e6\u06d8\u06ec\u06ec\u06ec\u06e8\u06ec\u06e8\u06e6\u06e0\u06dc\u06d8\u06db\u06e8\u06e4\u06ec\u06e6\u06e8"

    goto :goto_1

    :sswitch_7
    const v3, 0x56d7e503

    const-string v0, "\u06e4\u06e0\u06e8\u06d8\u06eb\u06ec\u06e1\u06d8\u06d9\u06ec\u06d8\u06e1\u06d8\u06d8\u06dc\u06e1\u06dc\u06d8\u06e5\u06e6\u06dc\u06d8\u06e0\u06d7\u06df\u06dc\u06d8\u06ec\u06e5\u06d6\u06d6\u06d8\u06db\u06eb\u06e1\u06e2\u06e0\u06e0\u06e2\u06e5\u06df\u06e6\u06e8\u06eb\u06e6\u06e7\u06e6\u06d7\u06d6\u06df\u06eb\u06d8\u06d8\u06d9\u06d9\u06e8\u06d8\u06e5\u06e7\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d6\u06da\u06e6\u06db\u06e4\u06d7\u06e2\u06da\u06d7\u06db\u06e8\u06eb\u06e6\u06e5\u06e5\u06d8\u06e6\u06e8\u06e2\u06dc\u06e6\u06d6\u06d8\u06db\u06ec\u06d6\u06e0\u06e7\u06e5\u06d8\u06d6\u06e4\u06ec\u06df\u06ec\u06e0\u06e5\u06d8\u06e1\u06d8\u06db\u06d8\u06e6\u06e7\u06db\u06da\u06e0\u06e6\u06d6\u06d9\u06e4\u06e5\u06d9\u06e0\u06df\u06e1\u06e1\u06e6\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06eb\u06d7\u06e5\u06e2\u06e1\u06d8\u06d6\u06e4\u06e1\u06df\u06eb\u06e7\u06d9\u06ec\u06d8\u06d8\u06e0\u06e7\u06e8\u06d8\u06d8\u06e5\u06e7\u06e8\u06e4\u06dc\u06d8\u06e5\u06db\u06ec\u06db\u06e6\u06d8\u06d8\u06eb\u06d9\u06d7\u06da\u06d8\u06e2\u06e1\u06dc\u06e7\u06da\u06e8\u06e1\u06d8\u06e0\u06dc\u06df\u06e5\u06db\u06d9"

    goto :goto_2

    :sswitch_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d7\u06d6\u06d9\u06d6\u06e2\u06d6\u06e7\u06e2\u06d9\u06e1\u06e1\u06d7\u06dc\u06d6\u06d8\u06d6\u06e8\u06da\u06dc\u06d9\u06e5\u06d8\u06df\u06df\u06dc\u06e5\u06e6\u06e4\u06df\u06e8\u06d9\u06db\u06e2\u06e2\u06e5\u06d6\u06e6\u06d8\u06da\u06df\u06e8\u06d6\u06d7\u06e5\u06ec\u06eb\u06e8\u06eb\u06e0\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d8\u06da\u06db\u06da\u06da\u06da\u06ec\u06e2\u06e1\u06d6\u06d8\u06da\u06eb\u06d7\u06d6\u06dc\u06e7\u06db\u06e7\u06e7\u06d6\u06d8\u06e5\u06e8\u06dc\u06d8\u06e6\u06e7\u06d6\u06d8\u06df\u06e1\u06e8\u06d8\u06e4\u06e7\u06e1\u06e2\u06e1\u06e8"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e0\u06e7\u06e7\u06e1\u06e7\u06d8\u06d8\u06df\u06db\u06eb\u06d7\u06d7\u06d7\u06d6\u06ec\u06eb\u06ec\u06e2\u06d6\u06d8\u06e2\u06e6\u06d6\u06e0\u06da\u06e5\u06e0\u06e8\u06e1\u06d7\u06e1\u06e6\u06d8\u06eb\u06e2\u06e1\u06d8\u06eb\u06d6"

    goto :goto_1

    :sswitch_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ScriptLog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/entity/ScriptLog;->setSelect(Z)V

    const-string v0, "\u06e6\u06df\u06e8\u06d8\u06d9\u06db\u06d6\u06d8\u06e1\u06eb\u06ec\u06e7\u06dc\u06e8\u06d8\u06e4\u06df\u06df\u06da\u06d7\u06e7\u06e7\u06e0\u06e8\u06d8\u06da\u06e4\u06e8\u06e2\u06e6\u06e4\u06e2\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OoooooO:Lz2/q9;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string v0, "\u06e8\u06df\u06d9\u06da\u06eb\u06e8\u06d8\u06e4\u06d9\u06d8\u06d8\u06dc\u06e0\u06d6\u06d6\u06d6\u06e6\u06df\u06db\u06df\u06e7\u06eb\u06e5\u06df\u06ec\u06e6\u06d6\u06e0\u06e8\u06ec\u06d6\u06d8\u06d6\u06dc\u06e4\u06dc\u06d6\u06e4"

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->OooOOO()V

    const-string v0, "\u06db\u06e4\u06e6\u06d6\u06e8\u06dc\u06d8\u06d7\u06e5\u06e6\u06d8\u06d8\u06e7\u06d8\u06d6\u06e1\u06d8\u06d9\u06e2\u06df\u06e1\u06df\u06ec\u06dc\u06d9\u06da\u06d9\u06e7\u06e5\u06d9\u06db"

    goto :goto_0

    :pswitch_0
    const-string v0, "\u06e5\u06da\u06d7\u06ec\u06eb\u06d6\u06e2\u06e4\u06d8\u06d8\u06eb\u06e0\u06e8\u06d7\u06d8\u06ec\u06d9\u06da\u06d9\u06e0\u06d7\u06d8\u06d8\u06e6\u06e5\u06e4\u06dc\u06d8\u06e7\u06d8\u06eb\u06da\u06d9\u06db\u06e2\u06e1\u06e6\u06dc\u06da"

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "\u06db\u06d8\u06d8\u06e0\u06d8\u06e7\u06d8\u06e4\u06d8\u06e1\u06e6\u06e8\u06d9\u06d7\u06dc\u06d6\u06d8\u06d9\u06dc\u06e7\u06e8\u06eb\u06e4\u06ec\u06e1\u06d6\u06d8\u06dc\u06e1\u06db\u06d8\u06e0"

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "\u06e6\u06e0\u06e5\u06e2\u06da\u06db\u06e5\u06dc\u06e7\u06d8\u06d7\u06d8\u06d6\u06d8\u06e5\u06e5\u06d8\u06df\u06da\u06e8\u06dc\u06e7\u06eb\u06d8\u06e5\u06e7\u06d8\u06dc\u06dc\u06dc\u06d8\u06dc\u06db\u06d6\u06d9\u06e5\u06e0\u06e2\u06da\u06e5\u06e7\u06e5\u06e8\u06d8\u06da\u06e7\u06d6\u06e2\u06e5\u06d9\u06dc\u06ec\u06e8\u06da\u06e8\u06df\u06e1\u06eb\u06e8"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "\u06e2\u06e1\u06e7\u06d8\u06e6\u06e2\u06d8\u06d8\u06e4\u06e6\u06e7\u06e0\u06e5\u06d9\u06e8\u06d6\u06d7\u06e4\u06e8\u06df\u06ec\u06d7\u06d9\u06d8\u06e6\u06dc\u06e1\u06d8\u06db\u06df\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "\u06db\u06e4\u06e6\u06d6\u06e8\u06dc\u06d8\u06d7\u06e5\u06e6\u06d8\u06d8\u06e7\u06d8\u06d6\u06e1\u06d8\u06d9\u06e2\u06df\u06e1\u06df\u06ec\u06dc\u06d9\u06da\u06d9\u06e7\u06e5\u06d9\u06db"

    goto/16 :goto_0

    :sswitch_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4756a186 -> :sswitch_11
        -0x116ec5ac -> :sswitch_2
        -0x56a882d -> :sswitch_f
        -0x556216a -> :sswitch_0
        0x63f051 -> :sswitch_1
        0xeb3636d -> :sswitch_d
        0xfe4df13 -> :sswitch_3
        0x2b664b84 -> :sswitch_4
        0x2f2a7ffb -> :sswitch_e
        0x35288492 -> :sswitch_12
        0x40a2ff78 -> :sswitch_11
        0x54a90a4d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f090237
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4892cf7e -> :sswitch_10
        0xc5d8b6f -> :sswitch_7
        0x4cbee6b4 -> :sswitch_5
        0x5d474b76 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6e2ec9f0 -> :sswitch_a
        -0x2f1e6f0a -> :sswitch_8
        0xa1e8b53 -> :sswitch_6
        0x79615d9f -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06d7\u06e2\u06df\u06d6\u06e5\u06e6\u06d9\u06ec\u06e4\u06e4\u06d9\u06d7\u06e6\u06ec\u06eb\u06e0\u06e4\u06da\u06d6\u06db\u06dc\u06d8\u06eb\u06d8\u06d7\u06df\u06eb\u06e8\u06d8\u06d9\u06db\u06ec\u06e5\u06d9\u06d9\u06ec\u06d9\u06e1\u06d8\u06db\u06d9\u06e2\u06d8\u06dc\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x277

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x63

    const/16 v2, 0x3c4

    const v3, 0x1774fcf0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06da\u06e8\u06d8\u06e0\u06ec\u06da\u06d7\u06e6\u06d8\u06e5\u06e1\u06dc\u06d8\u06e7\u06e7\u06dc\u06d8\u06d9\u06e8\u06ec\u06d8\u06ec\u06df\u06ec\u06d6\u06d6\u06d7\u06e2\u06e8\u06e6\u06e4\u06e4\u06d7\u06e6\u06e8\u06d8\u06e2\u06e5\u06d9\u06e6\u06d8\u06d8\u06d8\u06e0\u06e0\u06d7\u06e5\u06e0\u06d6\u06e6\u06da\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e2\u06dc\u06d8\u06db\u06da\u06d6\u06e7\u06e8\u06dc\u06e7\u06e7\u06e6\u06d8\u06e0\u06e0\u06e8\u06e2\u06e2\u06ec\u06e0\u06db\u06e8\u06d8\u06e4\u06e8\u06d9\u06e0\u06e8\u06d8\u06d7\u06df\u06eb"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06d7\u06db\u06dc\u06da\u06e4\u06e1\u06d8\u06db\u06e4\u06e6\u06d8\u06d9\u06d8\u06dc\u06d8\u06db\u06e4\u06df\u06d6\u06d8\u06e8\u06d8\u06ec\u06eb\u06ec\u06da\u06ec\u06da\u06e7\u06dc\u06d6\u06db\u06d9\u06dc\u06e2\u06e8\u06e7\u06d8\u06e4\u06db\u06e2\u06d7\u06e6\u06e5\u06d7\u06d9\u06e8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06d8\u06d9\u06e6\u06da\u06e0\u06dc\u06e4\u06e5\u06e8\u06e0\u06e0\u06db\u06eb\u06db\u06d6\u06d7\u06e8\u06e2\u06d9\u06dc\u06e1\u06d8\u06d9\u06ec\u06e5\u06df\u06e7\u06e5\u06e6\u06d9\u06d8\u06d8\u06e7\u06ec\u06e8\u06d8\u06db\u06db\u06d7"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->initView()V

    const-string v0, "\u06da\u06e1\u06e1\u06d8\u06e0\u06e4\u06eb\u06e5\u06ec\u06d6\u06d8\u06e1\u06e6\u06d9\u06e6\u06dc\u06e8\u06d8\u06e4\u06d8\u06df\u06ec\u06e5\u06e6\u06da\u06e6\u06dc\u06d8\u06e1\u06e0\u06eb\u06e4\u06da\u06d8\u06d7\u06d9\u06d8\u06d8\u06d6\u06dc\u06d7\u06d9\u06e2\u06d8\u06d8\u06ec\u06dc\u06e5\u06d9\u06ec\u06e1\u06d9\u06d8\u06e8\u06df\u06d8\u06d8\u06e6\u06e8\u06d7"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f49eb0a -> :sswitch_5
        -0x6a738e6d -> :sswitch_3
        -0x64567195 -> :sswitch_2
        -0x585c5208 -> :sswitch_0
        -0x1d1ea502 -> :sswitch_1
        -0xb8daee6 -> :sswitch_4
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "\u06d8\u06e4\u06d6\u06df\u06df\u06e1\u06e6\u06da\u06e4\u06e5\u06e4\u06e6\u06df\u06eb\u06e5\u06da\u06e1\u06d6\u06e7\u06da\u06e2\u06db\u06e7\u06e8\u06e4\u06e6\u06df\u06e8\u06d7\u06e7\u06e8\u06e7\u06e7\u06e4\u06da\u06e8\u06df\u06dc\u06d8\u06d7\u06e1\u06e8\u06d8\u06e4\u06e5\u06e0\u06dc\u06d7\u06dc\u06e0\u06d7\u06e2\u06d9\u06ec\u06e2"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0xd9

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x3e2

    const/16 v3, 0x23d

    const v5, -0x68ea7054

    xor-int/2addr v0, v3

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e4\u06e0\u06d6\u06e7\u06da\u06dc\u06e5\u06d6\u06d8\u06e4\u06d6\u06e8\u06da\u06d6\u06dc\u06e8\u06d9\u06da\u06d8\u06e1\u06da\u06e0\u06e0\u06e5\u06e1\u06e1\u06e0\u06d6\u06db\u06da\u06d8\u06d6\u06e6\u06d8\u06e4\u06db\u06d9"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e5\u06d9\u06ec\u06e8\u06d6\u06d8\u06db\u06e7\u06dc\u06dc\u06eb\u06e1\u06d8\u06e7\u06d8\u06e0\u06e0\u06d8\u06ec\u06e6\u06dc\u06da\u06e5\u06dc\u06d8\u06d6\u06da\u06df\u06d9\u06db\u06e1\u06d8\u06e6\u06df\u06da\u06da\u06e0\u06d7\u06dc\u06ec\u06d6\u06d9\u06d8\u06db\u06df\u06e2\u06e1\u06d8\u06e6\u06eb\u06e5\u06ec\u06e5\u06e2\u06db\u06d7\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06df\u06ec\u06eb\u06df\u06e5\u06e5\u06d8\u06dc\u06d7\u06dc\u06df\u06d7\u06d9\u06d9\u06ec\u06e8\u06d8\u06e5\u06e8\u06d6\u06d8\u06e8\u06dc\u06e8\u06d8\u06e8\u06e5\u06e5\u06da\u06e1\u06dc\u06eb\u06da\u06e1\u06d8\u06e1\u06d6\u06e6\u06d8\u06e5\u06e6\u06d6\u06db\u06d9\u06eb\u06e6\u06ec\u06e2\u06e2\u06dc\u06da\u06df\u06e7\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06da\u06e8\u06d8\u06d7\u06dc\u06e2\u06e0\u06e0\u06e1\u06eb\u06e5\u06dc\u06e5\u06da\u06ec\u06da\u06e7\u06d9\u06e4\u06e4\u06d6\u06df\u06d8\u06e2\u06df\u06ec\u06d6\u06d8\u06e5\u06d8\u06e7\u06d8\u06e4\u06db\u06d9\u06eb\u06d9\u06e2\u06e2\u06d7\u06d8\u06da\u06e8\u06d7\u06db\u06e4\u06e8\u06eb\u06da\u06e2\u06df\u06e4\u06e8\u06d8\u06dc\u06e0\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06eb\u06d7\u06e5\u06e6\u06d7\u06ec\u06d7\u06d9\u06e2\u06dc\u06d8\u06d8\u06df\u06dc\u06e1\u06dc\u06d6\u06e4\u06e0\u06e6\u06e8\u06eb\u06e1\u06eb\u06e8\u06e0\u06e6\u06e8\u06e1\u06d6"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v1, -0x72e8aeca

    const-string v0, "\u06d8\u06e1\u06d6\u06d8\u06d6\u06dc\u06e7\u06d8\u06e6\u06ec\u06dc\u06d7\u06e6\u06e7\u06d7\u06da\u06e0\u06eb\u06df\u06e6\u06d8\u06df\u06e1\u06da\u06e1\u06d7\u06e2\u06e1\u06e6\u06db\u06e2\u06db\u06e6\u06e6\u06e1\u06d7\u06e7\u06e8\u06d6\u06d8\u06e5\u06d6\u06d9\u06e4\u06dc\u06e6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06d8\u06eb\u06d9\u06e1\u06d7\u06e6\u06e7\u06e5\u06db\u06e4\u06da\u06e5\u06d8\u06e4\u06df\u06e8\u06e8\u06e7\u06e5\u06ec\u06d8\u06e1\u06d9\u06d6\u06e8\u06d8\u06d8\u06d6\u06da\u06e6\u06e0\u06e1\u06e7\u06d6\u06d8\u06d6\u06e7\u06d7\u06ec\u06e6\u06e6\u06ec\u06e4\u06e2\u06da\u06e8\u06eb\u06e8\u06d8\u06e5\u06e6\u06d8\u06d6\u06eb\u06eb"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06db\u06d9\u06eb\u06da\u06dc\u06d9\u06e1\u06da\u06e0\u06e1\u06d6\u06e8\u06e8\u06e8\u06e0\u06e0\u06e5\u06e5\u06d8\u06d7\u06e7\u06db\u06e5\u06e6\u06dc\u06da\u06ec\u06d9\u06e4\u06e6\u06da\u06d6\u06db\u06d8\u06e4\u06da\u06e1"

    goto :goto_1

    :sswitch_8
    const v3, 0x20282568

    const-string v0, "\u06db\u06e1\u06d8\u06d8\u06dc\u06e6\u06e5\u06d8\u06db\u06da\u06df\u06e6\u06e8\u06da\u06e2\u06e5\u06df\u06e8\u06e6\u06e6\u06d8\u06d6\u06ec\u06e4\u06e4\u06d9\u06d7\u06e1\u06db\u06e7\u06e1\u06e2\u06d6\u06d8\u06eb\u06d8\u06d6\u06e1\u06d8\u06e4\u06ec\u06e5\u06e8\u06da\u06d6\u06d8\u06e5\u06d8\u06e7\u06eb\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06d8\u06e1\u06da\u06df\u06eb\u06df\u06df\u06d6\u06e6\u06db\u06e7\u06d7\u06d6\u06d8\u06e4\u06da\u06d7\u06d7\u06dc\u06d8\u06e5\u06e4\u06e1\u06d8\u06df\u06d6\u06e7\u06e5\u06e5\u06d8\u06eb\u06d6\u06d8\u06e2\u06d8\u06e4\u06e0\u06d9\u06eb\u06ec\u06d7\u06d8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06eb\u06e1\u06df\u06eb\u06e5\u06e4\u06d6\u06e8\u06df\u06d7\u06e2\u06df\u06d9\u06e8\u06d8\u06dc\u06e1\u06e1\u06d8\u06db\u06eb\u06d6\u06d8\u06d8\u06d6\u06e5\u06d8\u06dc\u06e7\u06e6\u06d8\u06d9\u06dc\u06e7\u06d8"

    goto :goto_2

    :sswitch_a
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Ooooooo:Z

    if-nez v0, :cond_0

    const-string v0, "\u06e2\u06da\u06df\u06e5\u06ec\u06e5\u06e2\u06d6\u06d8\u06da\u06db\u06d6\u06e8\u06d8\u06e0\u06eb\u06db\u06dc\u06d8\u06ec\u06db\u06e6\u06d8\u06ec\u06d8\u06db\u06d6\u06e1\u06e6\u06e8\u06ec\u06e8\u06d8\u06dc\u06e0\u06da\u06e7\u06d9\u06d6\u06e7\u06e5\u06e5\u06e8\u06e1\u06ec\u06ec\u06da\u06e5\u06e7\u06d8\u06e0"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06df\u06db\u06db\u06eb\u06df\u06d6\u06d8\u06eb\u06e2\u06dc\u06d8\u06e8\u06d6\u06ec\u06eb\u06e1\u06eb\u06e6\u06d7\u06e8\u06dc\u06dc\u06e6\u06e8\u06e1\u06e6\u06ec\u06e6\u06e1\u06d8\u06d9\u06d6\u06e8\u06d8"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e5\u06d6\u06dc\u06d8\u06e7\u06d7\u06ec\u06db\u06df\u06dc\u06d8\u06d8\u06e5\u06e0\u06ec\u06e0\u06e6\u06d8\u06e8\u06d6\u06e6\u06d8\u06ec\u06e0\u06da\u06e5\u06d7\u06e5\u06d8\u06d6\u06e4\u06ec\u06e7\u06ec\u06e5\u06d8\u06e4\u06dc\u06e8\u06ec\u06e0\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->Oooooo:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ScriptLog;

    const-string v1, "\u06e8\u06e6\u06e0\u06e8\u06d6\u06e1\u06eb\u06df\u06d9\u06eb\u06d8\u06d8\u06e6\u06e4\u06ec\u06d6\u06e1\u06ec\u06e6\u06e2\u06e1\u06d8\u06da\u06e7\u06d7\u06db\u06da\u06dc\u06d8\u06dc\u06e0\u06d6\u06d8\u06df\u06df\u06e1\u06d8\u06d6\u06e7\u06e8\u06d8\u06e6\u06eb\u06e1\u06d6\u06e2\u06dc"

    move-object v4, v0

    goto :goto_0

    :sswitch_e
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06ec\u06e2\u06e7\u06df\u06d9\u06d8\u06e6\u06d6\u06eb\u06ec\u06da\u06e6\u06d8\u06e8\u06db\u06e5\u06eb\u06e5\u06df\u06d6\u06eb\u06e8\u06ec\u06dc\u06d6\u06d8\u06df\u06df\u06e4\u06e8\u06d8\u06e8\u06eb\u06d8\u06e6\u06d8\u06d8\u06da\u06eb\u06ec\u06d9\u06d6\u06e8\u06df\u06db\u06e2\u06d8\u06e4\u06eb\u06e0\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_f
    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "\u06eb\u06e7\u06e8\u06d8\u06dc\u06eb\u06da\u06d7\u06e4\u06e0\u06eb\u06ec\u06e7\u06d9\u06dc\u06d9\u06e8\u06ec\u06d9\u06d8\u06d6\u06d6\u06d8\u06eb\u06d7\u06e1\u06d6\u06d8\u06da\u06ec\u06d6\u06e5\u06e0\u06e7\u06e5\u06d8\u06eb\u06e6\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_10
    const-string v0, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "\u06d7\u06da\u06dc\u06dc\u06e4\u06e5\u06d8\u06dc\u06e1\u06e2\u06e4\u06d8\u06d8\u06d8\u06e7\u06e5\u06da\u06db\u06eb\u06e0\u06e6\u06da\u06e8\u06d8\u06d8\u06da\u06d9\u06d6\u06eb\u06d6\u06d8\u06df\u06e5\u06e6\u06e1\u06e5\u06e2\u06e0\u06d9\u06da\u06d8\u06d9\u06d9\u06d9\u06e2\u06d6\u06d8\u06d8\u06df\u06e8\u06da\u06e0\u06da\u06e8\u06e2\u06e1\u06dc\u06dc\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06e2\u06d7\u06d7\u06e7\u06ec\u06ec\u06e1\u06e8\u06d7\u06da\u06d6\u06e4\u06d8\u06e5\u06e7\u06e7\u06e0\u06e1\u06d8\u06eb\u06da\u06df\u06d7\u06e4\u06d8\u06d6\u06d7\u06e8\u06db\u06d7\u06e0\u06d7\u06e4\u06d9\u06e6\u06dc\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06e2\u06d7\u06d7\u06e7\u06ec\u06ec\u06e1\u06e8\u06d7\u06da\u06d6\u06e4\u06d8\u06e5\u06e7\u06e7\u06e0\u06e1\u06d8\u06eb\u06da\u06df\u06d7\u06e4\u06d8\u06d6\u06d7\u06e8\u06db\u06d7\u06e0\u06d7\u06e4\u06d9\u06e6\u06dc\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65c2c2d1 -> :sswitch_0
        -0x16741928 -> :sswitch_2
        -0x9451d96 -> :sswitch_3
        -0x5fd7414 -> :sswitch_5
        0x10369579 -> :sswitch_4
        0x12638d8f -> :sswitch_f
        0x2bc7c312 -> :sswitch_10
        0x4e1ecdc8 -> :sswitch_d
        0x5dc2386e -> :sswitch_11
        0x655e354d -> :sswitch_1
        0x728cccf6 -> :sswitch_13
        0x77413390 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x23558473 -> :sswitch_12
        -0xc576013 -> :sswitch_8
        0x409b22ef -> :sswitch_c
        0x41d52783 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x600b4347 -> :sswitch_7
        -0x34cf232b -> :sswitch_9
        -0x1d2f7027 -> :sswitch_a
        0x94bf06f -> :sswitch_b
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06db\u06e6\u06df\u06d8\u06da\u06dc\u06d9\u06e1\u06d6\u06e8\u06e1\u06e6\u06eb\u06e4\u06d9\u06e7\u06d8\u06d8\u06d8\u06da\u06d9\u06ec\u06eb\u06e8\u06da\u06ec\u06e7\u06ec\u06db\u06df\u06da\u06d9\u06da\u06d6\u06d8\u06eb\u06df\u06df\u06d9\u06d9\u06da\u06e2\u06db\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x352

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e4

    const/16 v2, 0x2f6

    const v3, -0xa75f12f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e7\u06e0\u06e2\u06e7\u06e4\u06e5\u06eb\u06d7\u06e4\u06e0\u06e0\u06d6\u06d8\u06e1\u06d8\u06d7\u06d9\u06e0\u06e5\u06ec\u06df\u06e6\u06e4\u06d8\u06d8\u06ec\u06db\u06e0\u06da\u06d7\u06d8\u06da\u06d7\u06e5\u06e2\u06db\u06d6\u06e1\u06e1\u06dc\u06df\u06e4\u06e4\u06d9\u06d6\u06d6\u06d8\u06e0\u06df\u06d8\u06d8\u06e2\u06e1\u06d9\u06d6\u06e7"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06db\u06ec\u06d9\u06dc\u06dc\u06d6\u06d8\u06df\u06dc\u06dc\u06d8\u06e2\u06e7\u06e2\u06e1\u06df\u06da\u06eb\u06db\u06e8\u06d8\u06e5\u06eb\u06e1\u06d8\u06e6\u06e8\u06db\u06e0\u06db\u06db\u06e7\u06e1\u06ec"

    goto :goto_0

    :sswitch_2
    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    const-string v0, "\u06d8\u06d9\u06eb\u06e6\u06d9\u06eb\u06da\u06e8\u06d6\u06d8\u06eb\u06e8\u06dc\u06d8\u06e7\u06e7\u06e8\u06d8\u06e1\u06d8\u06e5\u06d6\u06e2\u06e0\u06dc\u06eb\u06da\u06e4\u06db\u06e8\u06e6\u06ec\u06da\u06d7\u06e7\u06e7\u06e8\u06d7\u06dc\u06db\u06da\u06d8\u06d7\u06e7\u06df"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06e0\u06d9\u06e5\u06d8\u06eb\u06dc\u06e7\u06e0\u06e7\u06e5\u06d8\u06d7\u06e1\u06dc\u06e1\u06db\u06db\u06d7\u06e8\u06e1\u06d9\u06d7\u06db\u06dc\u06dc\u06e8\u06e7\u06ec\u06eb\u06da\u06eb\u06d6\u06d8\u06e5\u06e8\u06eb\u06db\u06ec\u06e7\u06dc\u06db\u06e8\u06df\u06e6\u06e2\u06da\u06e2\u06d9\u06e1\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x60503b36 -> :sswitch_1
        -0x5880e844 -> :sswitch_3
        -0x13be1ea7 -> :sswitch_4
        0x1dcc375f -> :sswitch_0
        0x215803dd -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06df\u06eb\u06e5\u06e0\u06da\u06df\u06d6\u06dc\u06e2\u06ec\u06e4\u06da\u06e8\u06d8\u06e0\u06e0\u06d9\u06e7\u06e6\u06da\u06d7\u06e4\u06e0\u06e8\u06e7\u06e5\u06e1\u06d8\u06db\u06eb\u06ec\u06ec\u06e0\u06e2\u06da\u06eb\u06d7\u06e7\u06d6\u06db\u06e6\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ce

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x302

    const/16 v2, 0x2c

    const v3, -0x5ceddccf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06ec\u06dc\u06e8\u06e1\u06eb\u06d9\u06e7\u06e8\u06d8\u06e4\u06e4\u06d9\u06e1\u06d7\u06d8\u06e6\u06df\u06e4\u06d8\u06d8\u06e0\u06e7\u06dc\u06d8\u06e6\u06df\u06db\u06df\u06d8\u06e1\u06eb\u06da\u06d7\u06eb\u06da\u06dc\u06d8\u06e2\u06e5\u06e6\u06e5\u06e5\u06d7\u06e4\u06e2\u06e4\u06ec\u06ec\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d8\u06d9\u06e1\u06da\u06dc\u06e7\u06e6\u06dc\u06d6\u06e6\u06d6\u06d8\u06eb\u06e1\u06e8\u06da\u06d7\u06e8\u06d8\u06e8\u06e2\u06eb\u06d9\u06e5\u06e1\u06d8\u06da\u06dc\u06e5\u06d8\u06e6\u06dc\u06e6\u06d8\u06e4\u06ec\u06e1\u06d8\u06e6\u06d7\u06e5\u06d8\u06dc\u06e2\u06d7\u06d9\u06ec\u06e0\u06d6\u06df\u06e5\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06e5\u06d8\u06d8\u06e8\u06d9\u06e5\u06d8\u06e0\u06df\u06d6\u06e2\u06db\u06d7\u06d7\u06e5\u06d7\u06e0\u06da\u06e1\u06d7\u06da\u06e5\u06d8\u06e7\u06e1\u06d9\u06e7\u06df\u06d8\u06db\u06e8\u06d6\u06e1\u06dc\u06e7\u06d8\u06e7\u06e4\u06da\u06d6\u06dc\u06e7\u06d8\u06d8\u06e6\u06ec\u06e2\u06d8\u06e5\u06d8\u06e6\u06e1\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06e4\u06ec\u06eb\u06e8\u06eb\u06e5\u06d8\u06db\u06da\u06e8\u06ec\u06df\u06e8\u06d8\u06e1\u06e8\u06e2\u06eb\u06d6\u06e6\u06d8\u06d9\u06e7\u06eb\u06e8\u06df\u06e6\u06da\u06e0\u06e6\u06e8\u06e7\u06d6\u06dc\u06e5\u06dc\u06d9\u06e4\u06e7\u06df\u06e2\u06e4\u06d9\u06d6"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d6743e0 -> :sswitch_1
        -0xf477faa -> :sswitch_4
        0x3db53f9 -> :sswitch_3
        0x4af46d8 -> :sswitch_2
        0x3e5ee1a0 -> :sswitch_0
    .end sparse-switch
.end method
