.class public Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/kc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOOO0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 4

    const-string v0, "\u06df\u06e4\u06eb\u06dc\u06e2\u06e1\u06e5\u06e0\u06e6\u06d6\u06d8\u06e0\u06e4\u06e8\u06dc\u06d8\u06d7\u06d7\u06e8\u06eb\u06df\u06db\u06e1\u06d8\u06e5\u06d9\u06e4\u06e2\u06e2\u06dc\u06e7\u06d8\u06e2\u06ec\u06e7\u06d7\u06eb\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x174

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x181

    const/16 v2, 0x37d

    const v3, -0x1298d0dd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e5\u06dc\u06e7\u06df\u06df\u06e7\u06d7\u06dc\u06e5\u06e4\u06e6\u06dc\u06d6\u06ec\u06e1\u06e7\u06e8\u06ec\u06e2\u06e5\u06e4\u06d7\u06df\u06e0\u06e6\u06e5\u06d9\u06e4\u06e5\u06d8\u06e0\u06d6\u06ec\u06e7\u06e8\u06e0\u06da\u06dc\u06df\u06d8\u06e8\u06d8\u06db\u06da\u06d6\u06d8\u06db\u06e4\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06db\u06df\u06d7\u06e7\u06e6\u06d8\u06d6\u06d8\u06ec\u06e2\u06d7\u06e5\u06e0\u06e1\u06dc\u06e2\u06e0\u06db\u06d7\u06eb\u06e8\u06e5\u06e8\u06dc\u06e1\u06e5\u06e2\u06df\u06ec\u06d9\u06dc\u06e6\u06d8\u06d7\u06e5\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c1db982 -> :sswitch_2
        0x3f5a8beb -> :sswitch_1
        0x57565743 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 4

    const-string v0, "\u06df\u06e5\u06e7\u06eb\u06e6\u06e2\u06e6\u06dc\u06eb\u06ec\u06d7\u06e6\u06df\u06dc\u06e5\u06e1\u06df\u06df\u06db\u06eb\u06e1\u06d8\u06e7\u06db\u06d8\u06d8\u06d7\u06d8\u06dc\u06d8\u06e5\u06db\u06e7\u06df\u06dc\u06db\u06da\u06e5\u06e5\u06d8\u06e5\u06ec\u06e2\u06e8\u06da\u06e5\u06d8\u06db\u06d9\u06d6\u06e6\u06e4\u06e1\u06e6\u06da\u06e5\u06d8\u06e8\u06e8\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x30c

    const/16 v2, 0x1e3

    const v3, 0x29a60f00

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06ec\u06d9\u06d9\u06e6\u06e1\u06d8\u06e4\u06d7\u06e2\u06e4\u06e5\u06e5\u06e8\u06e6\u06eb\u06e7\u06dc\u06d8\u06eb\u06e0\u06d7\u06d8\u06ec\u06d8\u06d9\u06e4\u06e8\u06d8\u06dc\u06d9\u06d6\u06d8\u06e0\u06d9\u06da\u06e2\u06e7\u06d8\u06d8\u06e1\u06d8\u06d8\u06e7\u06e7\u06e6\u06d8\u06ec\u06df\u06d8\u06e2\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06e4\u06eb\u06d8\u06d8\u06e8\u06d8\u06db\u06e8\u06dc\u06e5\u06da\u06e5\u06d8\u06da\u06e6\u06e2\u06da\u06e6\u06d7\u06da\u06e4\u06e2\u06e1\u06e5\u06df\u06e8\u06e8\u06db\u06e1\u06d6\u06e0\u06e5\u06dc\u06e0\u06e4\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b9ebdc4 -> :sswitch_0
        -0x7a35fb90 -> :sswitch_1
        -0x47118b55 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0OO(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 4

    const-string v0, "\u06eb\u06e4\u06db\u06e0\u06d7\u06e5\u06d8\u06db\u06e2\u06e6\u06d8\u06ec\u06e1\u06db\u06e1\u06e1\u06d6\u06e6\u06e6\u06e5\u06d8\u06e6\u06da\u06e4\u06d9\u06db\u06eb\u06e2\u06db\u06db\u06e1\u06d7\u06d8\u06d8\u06da\u06e4\u06df\u06d9\u06e7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1fe

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xd3

    const/16 v2, 0x1de

    const v3, -0x67a0c698

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d8\u06df\u06e5\u06e4\u06dc\u06d8\u06e4\u06eb\u06e5\u06d8\u06e2\u06e0\u06e7\u06e6\u06e7\u06e0\u06e5\u06e5\u06ec\u06d9\u06db\u06dc\u06d8\u06d7\u06d7\u06db\u06e6\u06df\u06d6\u06d8\u06e6\u06e0\u06da\u06d9\u06d7\u06df\u06da\u06e4\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06d6\u06d6\u06d8\u06ec\u06eb\u06db\u06e4\u06eb\u06dc\u06e6\u06df\u06e5\u06dc\u06dc\u06e0\u06eb\u06d6\u06d8\u06d8\u06d7\u06eb\u06e5\u06d6\u06d8\u06d8\u06da\u06e6\u06dc\u06d8\u06e2\u06e5\u06d6\u06d8\u06df\u06e5\u06d6\u06d8\u06e6\u06e4\u06e2\u06e0\u06e2\u06e8\u06d8\u06da\u06d9\u06d8\u06ec\u06dc\u06d9\u06e5"

    goto :goto_0

    :sswitch_2
    const v1, 0x5a2435a3

    const-string v0, "\u06e4\u06da\u06e4\u06d8\u06ec\u06e7\u06d8\u06da\u06e4\u06ec\u06db\u06d9\u06ec\u06db\u06e8\u06e0\u06d6\u06e7\u06eb\u06d8\u06e7\u06d8\u06df\u06ec\u06e2\u06e7\u06d7\u06e5\u06d8\u06df\u06d8\u06e6\u06d8\u06e4\u06e8\u06ec\u06e0\u06ec\u06eb\u06d6\u06e7\u06e1\u06d8\u06da\u06d9\u06e5\u06d8\u06e0\u06d7\u06db\u06df\u06dc\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e5\u06e7\u06e8\u06d8\u06d6\u06d9\u06e4\u06e2\u06e8\u06ec\u06d7\u06eb\u06ec\u06ec\u06dc\u06e7\u06d7\u06e4\u06e4\u06e5\u06da\u06db\u06e0\u06e2\u06ec\u06e0\u06e1\u06e0\u06da\u06e0\u06e4\u06df\u06e4\u06e1\u06eb\u06db"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e2\u06d9\u06e2\u06dc\u06e4\u06e5\u06d9\u06d9\u06e4\u06d8\u06e6\u06d6\u06d8\u06e4\u06d6\u06da\u06e0\u06e4\u06d6\u06d8\u06e5\u06d7\u06e4\u06df\u06dc\u06e5\u06d9\u06e7\u06e4\u06e5\u06e6\u06da\u06df\u06e6\u06e0\u06db\u06dc\u06e2"

    goto :goto_1

    :sswitch_5
    const v2, 0x7c5d1a8b

    const-string v0, "\u06dc\u06e5\u06d6\u06e8\u06e4\u06e7\u06d8\u06d6\u06e2\u06d6\u06e2\u06d8\u06e2\u06e5\u06e0\u06e0\u06db\u06e2\u06e5\u06d8\u06d6\u06d9\u06e6\u06d8\u06eb\u06d6\u06e8\u06d8\u06da\u06e6\u06e7\u06db\u06e5\u06e0\u06e5\u06e0\u06db\u06dc\u06d6\u06eb\u06e2\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06da\u06e0\u06d6\u06dc\u06e8\u06eb\u06e2\u06df\u06e1\u06e8\u06d8\u06e6\u06e8\u06db\u06db\u06e8\u06e5\u06ec\u06e8\u06e6\u06d8\u06e8\u06e0\u06df\u06eb\u06da\u06e2\u06e2\u06d7\u06e4\u06d6\u06d6\u06d8\u06da\u06e0\u06e8\u06d8\u06d9\u06d7\u06e6\u06d8\u06e8\u06d8\u06e1\u06d8\u06e8\u06db\u06e1\u06d8\u06ec\u06e0\u06d6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06df\u06e0\u06e1\u06e1\u06d6\u06d6\u06e7\u06db\u06ec\u06dc\u06e6\u06e4\u06e7\u06d8\u06e5\u06d8\u06db\u06d6\u06e8\u06d8\u06e4\u06ec\u06e8\u06dc\u06d7\u06e1\u06d8\u06db\u06e5\u06da\u06ec\u06e6\u06d8\u06d6\u06dc\u06e4\u06d6\u06e1\u06d8\u06e7\u06d7\u06e6\u06dc\u06eb\u06e6\u06d8\u06d8\u06e6\u06e0\u06e2\u06e8\u06dc"

    goto :goto_2

    :sswitch_7
    if-nez p1, :cond_0

    const-string v0, "\u06ec\u06e6\u06e8\u06d7\u06d8\u06d7\u06e0\u06e5\u06e1\u06e5\u06ec\u06d7\u06e6\u06d9\u06e7\u06df\u06e4\u06df\u06e7\u06d8\u06e5\u06d8\u06dc\u06e1\u06dc\u06d7\u06e7\u06e1\u06d8\u06e7\u06d8\u06e2\u06df\u06e5\u06d8\u06e8\u06e8\u06d9\u06ec\u06e1\u06d8\u06df\u06d6\u06e7\u06e8\u06e1\u06d6\u06e4\u06e5\u06d8\u06df\u06e8\u06e7\u06d8\u06e6\u06d9\u06e1"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e4\u06da\u06e5\u06d8\u06e7\u06e4\u06e2\u06df\u06e4\u06d7\u06e4\u06d9\u06d9\u06e8\u06e7\u06d9\u06e4\u06df\u06e8\u06d8\u06da\u06d6\u06e5\u06e4\u06e0\u06e8\u06e5\u06eb\u06e0\u06dc\u06e8\u06e1\u06d8\u06e5\u06e5\u06ec\u06e5\u06e5\u06e0"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06ec\u06e7\u06ec\u06eb\u06e6\u06e0\u06db\u06da\u06ec\u06e4\u06e5\u06da\u06e7\u06ec\u06df\u06d9\u06d8\u06db\u06e7\u06e7\u06dc\u06eb\u06d7\u06e2\u06ec\u06df\u06e7\u06d7\u06da\u06e6\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e8\u06ec\u06d8\u06d8\u06d6\u06e4\u06d8\u06e8\u06d9\u06e5\u06e0\u06e7\u06e2\u06d7\u06eb\u06d8\u06db\u06e2\u06db\u06e2\u06e8\u06dc\u06d8\u06e7\u06e7\u06e6\u06d8\u06da\u06e8\u06d8\u06db\u06d8\u06e6\u06d8\u06d8\u06eb\u06e1\u06d8\u06d8\u06d6\u06e6\u06d8\u06da\u06eb\u06da\u06e0\u06d6\u06e6\u06e4\u06e6\u06ec\u06d7\u06db\u06d8\u06d8\u06d8\u06d8\u06d7\u06e2\u06eb\u06e2"

    goto :goto_0

    :sswitch_b
    new-instance v0, Lz2/ca;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lz2/ca;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-virtual {v0}, Lz2/ca;->show()V

    const-string v0, "\u06df\u06da\u06e5\u06d8\u06d8\u06e0\u06e6\u06e1\u06e5\u06d6\u06d8\u06e1\u06e8\u06e5\u06df\u06e0\u06e1\u06d8\u06e7\u06df\u06e5\u06e5\u06d6\u06e4\u06d7\u06e7\u06da\u06d7\u06e1\u06d8\u06e6\u06da\u06dc\u06e6\u06e0\u06d8\u06db\u06e5\u06e0\u06d7\u06e1\u06e1\u06d9\u06e2\u06da\u06d6\u06d8\u06e2\u06df\u06dc"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x117c4535 -> :sswitch_1
        0x3bd41ab5 -> :sswitch_2
        0x4cf1c5c4 -> :sswitch_0
        0x5716d396 -> :sswitch_c
        0x5780b4b3 -> :sswitch_b
        0x77bc37bc -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x139e1672 -> :sswitch_3
        0x6a4aed4e -> :sswitch_a
        0x6c08c36b -> :sswitch_5
        0x75446c87 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4cf5254b -> :sswitch_7
        0x504131c6 -> :sswitch_8
        0x58914675 -> :sswitch_4
        0x6817353c -> :sswitch_6
    .end sparse-switch
.end method
