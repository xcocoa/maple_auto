.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;
.super Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooO0o",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final o00Oo0:Lz2/r6;

.field public final o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Lz2/r6;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Oo0:Lz2/r6;

    invoke-direct {p0}, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooO0o;-><init>()V

    return-void
.end method

.method public static synthetic OooOOoo(Lz2/r6;)V
    .locals 4

    const-string v0, "\u06eb\u06d9\u06e2\u06da\u06e1\u06da\u06e7\u06da\u06e6\u06d8\u06db\u06e0\u06da\u06e5\u06e6\u06e8\u06d8\u06e5\u06db\u06da\u06dc\u06da\u06e2\u06e1\u06e2\u06e1\u06d6\u06e2\u06e1\u06d9\u06e2\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b2

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1be

    const/16 v2, 0x32e

    const v3, 0x1aa2754

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e6\u06d7\u06e6\u06e1\u06e2\u06e1\u06e1\u06e5\u06d8\u06e2\u06e6\u06e1\u06e4\u06dc\u06d8\u06e5\u06e8\u06e5\u06d8\u06e1\u06e8\u06e0\u06da\u06dc\u06e8\u06e4\u06eb\u06e7\u06e5\u06d6\u06d8\u06eb\u06da\u06e5\u06d8\u06d7\u06e1\u06e6\u06e4\u06d7\u06d7\u06df\u06e4\u06d8\u06d8\u06e2\u06e0\u06eb\u06df\u06e0\u06ec\u06e4\u06ec\u06e4\u06da\u06d7\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "\u06e7\u06e4\u06e1\u06ec\u06e5\u06e7\u06dc\u06da\u06d8\u06d8\u06e5\u06e0\u06d7\u06e5\u06e8\u06e5\u06d9\u06e7\u06df\u06dc\u06e7\u06e2\u06e0\u06dc\u06da\u06dc\u06e1\u06e5\u06e8\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d12bc44 -> :sswitch_1
        -0x14dbbc2e -> :sswitch_0
        0x68346a0f -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic OooO0o()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "\u06d6\u06da\u06ec\u06e7\u06e8\u06d8\u06d8\u06e7\u06eb\u06e8\u06e6\u06df\u06dc\u06d8\u06d7\u06da\u06e4\u06e6\u06e4\u06d9\u06dc\u06e2\u06e0\u06eb\u06e6\u06d8\u06e1\u06e6\u06e6\u06db\u06e7\u06e0\u06e2\u06e4\u06e2\u06eb\u06d7\u06db\u06da\u06df\u06df\u06e0\u06e1\u06d8\u06e4\u06e7\u06e5\u06d8\u06df\u06d7\u06ec\u06dc\u06e6\u06ec\u06d6\u06d6\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x24

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3a7

    const/16 v2, 0x1b8

    const v3, -0x2bee2d6f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e8\u06d8\u06d8\u06da\u06d6\u06d6\u06d8\u06e4\u06e8\u06db\u06e1\u06e5\u06d8\u06d8\u06e6\u06e2\u06e5\u06d8\u06e5\u06eb\u06e1\u06d8\u06e8\u06d8\u06e0\u06db\u06e0\u06db\u06ec\u06dc\u06e6\u06d7\u06e1\u06e2\u06e6\u06e2\u06e0\u06d8\u06e6\u06eb\u06eb\u06e4\u06da\u06d8\u06da\u06e6\u06e6\u06e7\u06e4\u06dc\u06e8\u06e8\u06d8\u06df\u06d6\u06dc\u06d8\u06db\u06ec\u06df"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->OooOOo()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3c5e55fb -> :sswitch_0
        0xc392112 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic OooOOO0(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06e7\u06e6\u06dc\u06d8\u06e2\u06d6\u06e7\u06ec\u06d8\u06df\u06d6\u06e4\u06da\u06e5\u06d7\u06e6\u06e8\u06e5\u06eb\u06dc\u06e2\u06e6\u06df\u06e0\u06d9\u06e7\u06e6\u06d8\u06e6\u06e0\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x21c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d0

    const/16 v2, 0x167

    const v3, -0x50d2aaae

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e6\u06d7\u06df\u06e0\u06d8\u06d8\u06e0\u06e1\u06db\u06e6\u06e6\u06dc\u06ec\u06e0\u06e1\u06e5\u06df\u06ec\u06e6\u06e2\u06e7\u06e8\u06d9\u06db\u06d8\u06d8\u06e2\u06d7\u06e6\u06d8\u06da\u06eb\u06e8\u06d8\u06e6\u06d8\u06d8\u06e8\u06e4\u06e6\u06d8\u06e7\u06eb\u06d6\u06d8\u06e7\u06ec\u06dc\u06d8\u06e1\u06d6\u06dc\u06d8\u06d8\u06ec\u06d6\u06d8\u06e8\u06d9\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06df\u06e1\u06d8\u06e1\u06e1\u06d8\u06d8\u06d7\u06d9\u06e2\u06e0\u06e5\u06e0\u06d7\u06d8\u06e8\u06d8\u06da\u06db\u06e5\u06d8\u06db\u06db\u06e4\u06d6\u06d9\u06e0\u06e6\u06d8\u06e4\u06e4\u06d6\u06db\u06e6\u06dc\u06e1\u06d8\u06e5\u06e4\u06e8\u06d8\u06da\u06e5\u06e7\u06e4\u06df\u06e6\u06e1\u06e7\u06e7\u06dc\u06e7\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->OooOo00(Ljava/lang/Boolean;)V

    const-string v0, "\u06db\u06e2\u06e5\u06e8\u06e0\u06e0\u06e0\u06eb\u06e2\u06df\u06ec\u06ec\u06e6\u06e2\u06e8\u06d9\u06e1\u06da\u06db\u06da\u06d6\u06ec\u06e2\u06d6\u06e1\u06d7\u06d9\u06d7\u06e6\u06e6\u06df\u06e5\u06da\u06e4\u06d8\u06d9\u06e2\u06db\u06d8\u06df\u06dc\u06d6\u06d6\u06df\u06db\u06d6\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xe51dd25 -> :sswitch_3
        0x29bfc6ea -> :sswitch_2
        0x54207e34 -> :sswitch_1
        0x696ff22f -> :sswitch_0
    .end sparse-switch
.end method

.method public OooOOo()Ljava/lang/Boolean;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v2, "\u06db\u06e6\u06ec\u06d6\u06db\u06eb\u06e0\u06e0\u06eb\u06e5\u06d8\u06ec\u06e4\u06e1\u06d8\u06d8\u06d9\u06e5\u06e7\u06e0\u06e1\u06d7\u06e7\u06da\u06d9\u06d6\u06e2\u06db\u06e6\u06db\u06e0\u06e8\u06d6\u06e6\u06d8\u06d7\u06d7\u06d8\u06df\u06ec\u06ec\u06e1\u06dc\u06d8"

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/16 v20, 0x2f3

    xor-int v19, v19, v20

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0x3bc

    move/from16 v19, v0

    const/16 v20, 0x133

    const v21, -0x412ae18d

    xor-int v19, v19, v20

    xor-int v19, v19, v21

    sparse-switch v19, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "\u06da\u06db\u06dc\u06d8\u06d6\u06e4\u06e5\u06d8\u06eb\u06e1\u06e1\u06e6\u06e8\u06e1\u06d9\u06e0\u06e7\u06e1\u06e6\u06d9\u06d9\u06eb\u06da\u06d8\u06e7\u06e5\u06d8\u06dc\u06db\u06d8\u06e4\u06eb\u06d6\u06e2\u06d8\u06e1\u06d9\u06da\u06d6\u06eb\u06d8\u06dc\u06da\u06d7\u06db"

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const-string v18, "ocrex.zip"

    const-string v19, "ocrex/time.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lz2/g5;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "\u06e6\u06e7\u06ec\u06e8\u06d8\u06d6\u06e8\u06d9\u06e8\u06e2\u06e8\u06e8\u06d8\u06df\u06ec\u06e6\u06d8\u06e5\u06e5\u06e6\u06e4\u06dc\u06db\u06e2\u06dc\u06dc\u06e0\u06dc\u06e8\u06d8\u06d8\u06db\u06e1\u06d7\u06e8\u06d9\u06e2\u06ec\u06d8\u06d8\u06ec\u06d6\u06d8\u06e4\u06da\u06e8"

    goto :goto_0

    :sswitch_2
    const v19, -0x13d564fc

    const-string v2, "\u06df\u06dc\u06dc\u06dc\u06ec\u06d6\u06d8\u06dc\u06d8\u06e5\u06dc\u06dc\u06d8\u06d9\u06e5\u06ec\u06da\u06d9\u06dc\u06d8\u06eb\u06e0\u06d7\u06e8\u06e7\u06d6\u06d8\u06e1\u06d6\u06da\u06e5\u06ec\u06d6"

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    xor-int v20, v20, v19

    sparse-switch v20, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v2, "\u06da\u06da\u06ec\u06e1\u06d9\u06db\u06eb\u06e6\u06da\u06d9\u06dc\u06e5\u06d8\u06ec\u06eb\u06ec\u06da\u06d9\u06d8\u06d8\u06e6\u06e0\u06e8\u06d8\u06d9\u06e7\u06e0\u06e7\u06d9\u06e2\u06d8\u06e7\u06e6\u06d8\u06da\u06d7\u06e2\u06d6\u06d7\u06ec\u06d7\u06e0\u06e5\u06d7\u06eb\u06e7\u06d6\u06d8\u06da\u06e4\u06e8\u06d8\u06e7\u06df\u06d8\u06e8\u06e4\u06da"

    goto :goto_1

    :sswitch_4
    const-string v2, "\u06d9\u06d7\u06d8\u06e1\u06e6\u06da\u06d7\u06eb\u06dc\u06e0\u06dc\u06e4\u06d6\u06dc\u06d8\u06d7\u06e6\u06ec\u06da\u06e6\u06e7\u06d8\u06da\u06e4\u06d8\u06e0\u06e0\u06ec\u06d6\u06da\u06df\u06e2\u06da\u06e2\u06e5"

    goto :goto_1

    :sswitch_5
    const v20, -0x19139793

    const-string v2, "\u06e1\u06e5\u06d8\u06dc\u06e5\u06e2\u06df\u06d8\u06e5\u06e5\u06e6\u06e1\u06d8\u06da\u06d9\u06d9\u06e4\u06eb\u06e8\u06e8\u06e0\u06d8\u06d6\u06e6\u06da\u06da\u06dc\u06e7\u06d8\u06df\u06d7\u06d8\u06e4\u06e8\u06dc\u06d8\u06d8\u06d6\u06e7\u06d8\u06d6\u06e1\u06e7\u06db\u06db\u06e2"

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v21

    xor-int v21, v21, v20

    sparse-switch v21, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v2, "\u06e1\u06dc\u06ec\u06dc\u06d9\u06e7\u06e6\u06e2\u06e6\u06d8\u06db\u06dc\u06e6\u06d8\u06df\u06eb\u06d8\u06d8\u06e5\u06e7\u06e8\u06e6\u06e1\u06d8\u06ec\u06dc\u06e5\u06e0\u06da\u06e8\u06d8\u06d9\u06d9\u06e1\u06d8\u06d6\u06e0\u06db\u06d7\u06d7\u06d8\u06d8\u06d7\u06ec\u06e2\u06e1\u06e1\u06d8\u06d7\u06d9\u06d7\u06dc\u06ec\u06dc\u06d8"

    goto :goto_2

    :cond_0
    const-string v2, "\u06d9\u06e4\u06d6\u06e0\u06e4\u06e2\u06da\u06d6\u06e5\u06d8\u06e0\u06e4\u06dc\u06d8\u06e1\u06eb\u06e1\u06d8\u06d8\u06e7\u06d7\u06e5\u06d6\u06e7\u06e7\u06e8\u06e6\u06e8\u06e5\u06e0\u06e1\u06e1\u06e1\u06eb\u06dc\u06d8\u06e0\u06e7\u06e8\u06d8\u06e2\u06d9\u06e0\u06ec\u06d8\u06e4\u06eb\u06e1\u06e7\u06e5\u06db\u06e1"

    goto :goto_2

    :sswitch_7
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u06e8\u06e2\u06e4\u06e8\u06e4\u06e5\u06d8\u06e7\u06e1\u06d8\u06df\u06eb\u06da\u06e0\u06e6\u06d7\u06e2\u06df\u06da\u06eb\u06d7\u06e1\u06e5\u06d9\u06d9\u06d7\u06e4\u06e6\u06e1\u06ec\u06e2"

    goto :goto_2

    :sswitch_8
    const-string v2, "\u06eb\u06e1\u06d7\u06d7\u06d8\u06d9\u06e2\u06d7\u06e1\u06d8\u06e6\u06e4\u06d9\u06e1\u06d8\u06e7\u06d8\u06e4\u06ec\u06d6\u06e0\u06d7\u06db\u06d9\u06e5\u06d8\u06e0\u06e5\u06eb\u06df\u06d7\u06d9"

    goto :goto_1

    :sswitch_9
    const-string v2, "\u06d7\u06dc\u06e7\u06e4\u06d6\u06e1\u06e8\u06e0\u06e1\u06d7\u06e5\u06e5\u06df\u06e7\u06e1\u06d8\u06d7\u06dc\u06e1\u06e8\u06db\u06e8\u06e1\u06dc\u06e7\u06d8\u06e1\u06e8\u06e2\u06d7\u06e8\u06d7\u06e4\u06e0\u06df\u06da\u06df\u06e1\u06d8\u06d6\u06ec\u06e2\u06e2\u06e4\u06e1\u06df\u06e7\u06db\u06e2\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_a
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    return-object v2

    :sswitch_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u06e6\u06e8\u06e0\u06d7\u06e8\u06e1\u06e4\u06e8\u06e7\u06df\u06dc\u06e4\u06e1\u06e2\u06e8\u06e4\u06eb\u06e2\u06da\u06e2\u06e5\u06d8\u06e2\u06e8\u06d8\u06d8\u06e8\u06d6\u06d8\u06d8\u06e4\u06d8\u06eb\u06ec\u06e1\u06e8\u06d7\u06d6\u06d8\u06e7\u06e4\u06ec\u06eb\u06e6\u06e4\u06ec\u06e0\u06e1\u06d8\u06db\u06eb\u06e0\u06e2\u06e8\u06da\u06e6\u06e1\u06e1"

    goto :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u06e0\u06d7\u06db\u06e4\u06e7\u06e5\u06d7\u06d7\u06e2\u06e0\u06db\u06dc\u06d8\u06e8\u06e6\u06da\u06df\u06db\u06d6\u06d8\u06df\u06e7\u06df\u06da\u06e7\u06eb\u06d8\u06d8\u06e5\u06db\u06eb"

    goto/16 :goto_0

    :sswitch_d
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06e2\u06dc\u06d8\u06e1\u06e6\u06e6\u06dc\u06e6\u06ec\u06e0\u06dc\u06d7\u06df\u06e2\u06d7\u06dc\u06e5\u06d8\u06d7\u06df\u06d9\u06db\u06e6\u06e7\u06ec\u06e6\u06e2\u06db\u06d7\u06db\u06e5\u06d8\u06dc\u06d8\u06d9\u06e8\u06d8\u06d8\u06e4\u06e5\u06d8\u06e8\u06ec\u06e1"

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "ocrex"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06ec\u06d9\u06e2\u06db\u06e7\u06e4\u06d6\u06e4\u06e2\u06e4\u06e2\u06e8\u06e6\u06e0\u06e8\u06d8\u06d7\u06ec\u06d9\u06e6\u06e6\u06e0\u06da\u06e2\u06e8\u06d8\u06e5\u06ec\u06dc\u06da\u06df\u06e5\u06d6\u06e7\u06e6\u06e8\u06df\u06e8\u06e0\u06db\u06d6\u06eb\u06e1\u06e1\u06da\u06e4\u06e6\u06d8\u06d7\u06e2\u06d6\u06d7\u06e7\u06e6\u06d8\u06e8\u06eb\u06d7"

    goto/16 :goto_0

    :sswitch_f
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v19, "time.txt"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u06da\u06da\u06e2\u06d6\u06d6\u06e5\u06dc\u06db\u06d8\u06d8\u06dc\u06df\u06eb\u06e0\u06d8\u06e4\u06eb\u06e7\u06e2\u06e1\u06e2\u06e4\u06da\u06d8\u06dc\u06e7\u06e1\u06d8\u06db\u06df\u06dc\u06e2\u06da\u06d7\u06e8\u06da\u06e2\u06eb\u06e5\u06db\u06d8\u06ec\u06e4"

    goto/16 :goto_0

    :sswitch_10
    const v19, -0x42646a7c

    const-string v2, "\u06d8\u06d8\u06e8\u06dc\u06e7\u06e6\u06d8\u06eb\u06e4\u06da\u06e0\u06df\u06df\u06e2\u06e6\u06e7\u06d7\u06d6\u06e1\u06df\u06d9\u06dc\u06d8\u06e2\u06ec\u06e4\u06e5\u06e7\u06e6\u06d8\u06eb\u06e0\u06d6"

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    xor-int v20, v20, v19

    sparse-switch v20, :sswitch_data_3

    goto :goto_4

    :sswitch_11
    const-string v2, "\u06e8\u06d8\u06e1\u06e6\u06e1\u06df\u06eb\u06ec\u06e5\u06e4\u06e2\u06d9\u06e4\u06e2\u06d6\u06d8\u06e1\u06e6\u06eb\u06e8\u06db\u06e5\u06e2\u06db\u06eb\u06e8\u06eb\u06eb\u06e8\u06e2"

    goto :goto_4

    :sswitch_12
    const-string v2, "\u06eb\u06e5\u06e1\u06d8\u06dc\u06da\u06e1\u06d8\u06e6\u06e4\u06d8\u06e7\u06d8\u06e7\u06e0\u06db\u06eb\u06dc\u06e1\u06e2\u06e1\u06ec\u06d7\u06e8\u06e0\u06db\u06e4\u06db\u06d6\u06d8\u06d6\u06d6\u06dc\u06e2\u06e6\u06e7\u06d8\u06eb\u06e5\u06d9\u06e2\u06d6\u06d8\u06d8\u06e1\u06e5\u06df\u06e6\u06eb\u06d7\u06d6\u06e2\u06e6\u06e8\u06e7\u06e7\u06d7\u06e0\u06e8\u06d8"

    goto :goto_4

    :sswitch_13
    const v20, 0x7f699041

    const-string v2, "\u06e2\u06e5\u06d9\u06e4\u06e2\u06e1\u06d8\u06d9\u06df\u06d6\u06d7\u06db\u06e2\u06df\u06d8\u06df\u06ec\u06e2\u06ec\u06e2\u06e2\u06eb\u06d8\u06eb\u06e1\u06d8\u06e2\u06d7\u06e8\u06d8\u06d8\u06dc\u06e8\u06d8\u06d8\u06e1\u06e6\u06d8\u06e2\u06e4\u06da\u06db\u06e2\u06d8\u06d8\u06e6\u06ec\u06d8\u06d8"

    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v21

    xor-int v21, v21, v20

    sparse-switch v21, :sswitch_data_4

    goto :goto_5

    :sswitch_14
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u06e5\u06da\u06e5\u06df\u06e5\u06e5\u06d8\u06e1\u06e8\u06d7\u06d7\u06d7\u06d8\u06e4\u06e2\u06d7\u06e2\u06e7\u06e1\u06da\u06e4\u06e7\u06e7\u06d7\u06d8\u06ec\u06d6\u06d6\u06d8\u06e7\u06dc\u06d7\u06da\u06da\u06d6\u06db\u06e0\u06df"

    goto :goto_5

    :cond_1
    const-string v2, "\u06d8\u06d8\u06e7\u06df\u06e5\u06d7\u06df\u06df\u06e4\u06e5\u06ec\u06eb\u06ec\u06e0\u06e1\u06e0\u06e1\u06e2\u06e4\u06e1\u06e7\u06d8\u06da\u06e0\u06da\u06db\u06e2\u06e5\u06d9\u06d6\u06e1\u06eb\u06db\u06db\u06d8\u06e7\u06d8\u06e7\u06e0\u06eb\u06d9\u06db"

    goto :goto_5

    :sswitch_15
    const-string v2, "\u06d7\u06e6\u06db\u06e8\u06df\u06e6\u06df\u06e2\u06d6\u06d8\u06dc\u06db\u06da\u06d6\u06d8\u06e6\u06eb\u06d9\u06e5\u06d8\u06dc\u06eb\u06da\u06d8\u06e7\u06e8\u06d8\u06d9\u06da\u06e6\u06dc\u06d8\u06e0\u06e0\u06d8\u06ec\u06ec\u06e2"

    goto :goto_5

    :sswitch_16
    const-string v2, "\u06da\u06e6\u06d8\u06e4\u06e4\u06db\u06d7\u06e1\u06d9\u06df\u06e1\u06dc\u06d8\u06ec\u06d8\u06e4\u06e2\u06d7\u06d8\u06e5\u06ec\u06d8\u06d8\u06d7\u06e5\u06e7\u06d8\u06e1\u06d8\u06dc\u06e8\u06e2\u06d8"

    goto :goto_4

    :sswitch_17
    const-string v2, "\u06e7\u06dc\u06e2\u06e0\u06df\u06db\u06e2\u06da\u06e5\u06e8\u06e1\u06e0\u06dc\u06dc\u06e5\u06e6\u06db\u06e1\u06d8\u06db\u06d9\u06d8\u06e6\u06e8\u06d6\u06df\u06ec\u06e6\u06d8\u06e5\u06db\u06d9\u06da\u06e6\u06e6\u06e2\u06e4\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_18
    invoke-static/range {v16 .. v16}, Lz2/j4;->OooOOo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "\u06df\u06e5\u06d6\u06d8\u06d8\u06db\u06e5\u06e6\u06df\u06e5\u06ec\u06e6\u06db\u06eb\u06e6\u06dc\u06d8\u06dc\u06d8\u06d6\u06dc\u06e7\u06d8\u06e0\u06d7\u06e0\u06d8\u06e6\u06e6\u06d8\u06da\u06eb\u06e6"

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "\u06ec\u06d7\u06eb\u06ec\u06dc\u06e1\u06e0\u06d8\u06e1\u06d8\u06dc\u06e7\u06da\u06da\u06e2\u06e1\u06d8\u06e2\u06e8\u06ec\u06e6\u06d8\u06e7\u06d8\u06e1\u06ec\u06e8\u06e1\u06e5\u06e0\u06d8\u06db\u06d8\u06d8\u06d6\u06d6\u06e5\u06e6\u06e6\u06e1\u06d8\u06d6\u06e8\u06da\u06e7\u06da\u06e1\u06d8"

    move-object v14, v15

    goto/16 :goto_0

    :sswitch_1a
    const-string v13, ""

    const-string v2, "\u06d8\u06e2\u06d8\u06df\u06ec\u06eb\u06d6\u06d6\u06d9\u06e1\u06e4\u06e6\u06d8\u06ec\u06da\u06e8\u06d8\u06eb\u06e8\u06e5\u06d8\u06dc\u06d7\u06eb\u06d6\u06e5\u06db\u06e4\u06df\u06e7\u06e4\u06eb\u06d8\u06ec\u06d7\u06d9\u06d6\u06d9\u06d8\u06df\u06d6\u06d8\u06e5\u06e5\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "\u06dc\u06e0\u06d6\u06d8\u06e5\u06dc\u06e2\u06e5\u06d8\u06e0\u06d7\u06dc\u06d8\u06d8\u06e5\u06d7\u06e6\u06dc\u06d6\u06e5\u06dc\u06d6\u06da\u06d7\u06ec\u06d9\u06eb\u06e8\u06d8\u06e5\u06d9\u06df\u06e7\u06eb\u06db\u06ec\u06d6\u06d6\u06e5\u06e7\u06da\u06e5\u06da\u06d6\u06d8\u06d6\u06eb\u06e6\u06e2\u06e5\u06ec\u06eb\u06dc\u06e1\u06d8\u06d8\u06e5\u06dc\u06d8"

    move-object v14, v13

    goto/16 :goto_0

    :sswitch_1c
    sget-object v2, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000000:Ljava/lang/String;

    const-string v2, "\u06eb\u06da\u06e4\u06e6\u06e4\u06e1\u06e8\u06e4\u06d7\u06d8\u06eb\u06e6\u06d9\u06da\u06ec\u06d8\u06d6\u06d8\u06e6\u06e1\u06e6\u06e6\u06d6\u06e7\u06d8\u06d7\u06d6\u06e5\u06d8\u06da\u06e2"

    goto/16 :goto_0

    :sswitch_1d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u06d7\u06e1\u06e0\u06e8\u06ec\u06e6\u06e8\u06e5\u06ec\u06e8\u06df\u06d6\u06d8\u06dc\u06ec\u06d6\u06e4\u06d7\u06d6\u06dc\u06e1\u06d7\u06d8\u06d6\u06e5\u06eb\u06e1\u06e7\u06d7\u06dc\u06db\u06e4\u06e4\u06df\u06d9\u06e5\u06d8\u06db\u06df\u06e1\u06d8\u06d7\u06d6\u06dc\u06e1\u06e4\u06dc\u06d8\u06dc\u06e0\u06df"

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "copyOcrExLib: zipTime = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06d6\u06e8\u06dc\u06dc\u06e4\u06ec\u06df\u06e1\u06e1\u06d8\u06df\u06e6\u06e6\u06d8\u06df\u06da\u06e1\u06e5\u06df\u06da\u06df\u06e0\u06e2\u06d7\u06e0\u06ec\u06e4\u06e1\u06e6\u06dc\u06d6\u06e1\u06d8\u06da\u06e1\u06d6\u06d8\u06e5\u06e4\u06e5\u06d8\u06d9\u06dc\u06d8\u06d8\u06ec\u06e8\u06e7\u06eb\u06db\u06e1\u06d8\u06e7\u06e6\u06da\u06da\u06e2\u06e6\u06e5\u06da\u06eb"

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06d8\u06e7\u06d9\u06db\u06e4\u06e7\u06db\u06da\u06ec\u06e6\u06e1\u06e0\u06d8\u06e0\u06eb\u06ec\u06e8\u06e1\u06d8\u06db\u06e6\u06db\u06e4\u06e6\u06d6\u06db\u06e4\u06e5\u06d8\u06e8\u06d9\u06e0\u06e5\u06db\u06da\u06e7\u06d8\u06da\u06ec\u06e2\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_20
    const-string v2, " localTime = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06db\u06e5\u06dc\u06d8\u06db\u06db\u06e8\u06db\u06e6\u06d8\u06d8\u06e6\u06d8\u06e6\u06d7\u06e5\u06ec\u06e1\u06e5\u06d8\u06df\u06da\u06e0\u06e1\u06e8\u06e0\u06e8\u06db\u06e6\u06e6\u06d6\u06e2\u06eb\u06e2\u06e6"

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06d8\u06db\u06e2\u06dc\u06da\u06e6\u06d8\u06d7\u06e1\u06e1\u06d8\u06d9\u06ec\u06e1\u06d9\u06d7\u06d8\u06ec\u06d9\u06d8\u06d9\u06e0\u06db\u06db\u06d8\u06e2\u06d8\u06e2\u06e5\u06d8\u06e2\u06eb\u06e2\u06e6\u06d8\u06da\u06d6\u06dc\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "\u06d6\u06d7\u06db\u06ec\u06d6\u06e0\u06e7\u06db\u06e6\u06e0\u06e1\u06e8\u06e1\u06e6\u06d8\u06d8\u06dc\u06dc\u06d7\u06e6\u06e2\u06e8\u06ec\u06da\u06e8\u06d8\u06d8\u06ec\u06dc\u06d9\u06e8\u06e6\u06e8\u06e1\u06d8\u06e7\u06ec\u06d7\u06e7\u06ec\u06d8\u06db\u06da\u06e0\u06e1\u06d8\u06d6\u06e1\u06eb\u06e6\u06e5\u06e4\u06d9\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_23
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u06e6\u06e8\u06e0\u06d6\u06ec\u06dc\u06d8\u06d9\u06d7\u06db\u06da\u06eb\u06e0\u06e8\u06df\u06e1\u06d8\u06ec\u06e8\u06ec\u06d6\u06e4\u06e6\u06d6\u06d6\u06dc\u06e1\u06e8\u06e1\u06d9\u06e2\u06df"

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "copyOcrExLib: nativeLibraryDir = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06e5\u06e2\u06d9\u06da\u06e8\u06df\u06db\u06e7\u06e5\u06d8\u06df\u06e0\u06dc\u06d8\u06db\u06d8\u06e1\u06df\u06d9\u06e6\u06d8\u06d9\u06d8\u06e7\u06d8\u06e4\u06e8\u06e8\u06d8\u06df\u06dc\u06df\u06e4\u06d6\u06e8\u06ec\u06e6\u06e1\u06e0\u06da\u06db\u06df\u06df\u06d8\u06e8\u06eb\u06d8\u06d8\u06e4\u06d9\u06d7\u06e7\u06eb\u06d8\u06e0\u06e1\u06eb\u06e1\u06e4\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06df\u06e2\u06e6\u06d8\u06ec\u06ec\u06da\u06e1\u06eb\u06e5\u06d8\u06d8\u06da\u06e0\u06dc\u06ec\u06e6\u06d9\u06e5\u06d8\u06d6\u06d8\u06e1\u06d8\u06e2\u06dc\u06dc\u06d8\u06d8\u06e1\u06d8\u06d8\u06d6\u06db\u06e4\u06e0\u06e4\u06e1\u06d6\u06e5\u06ec\u06e7\u06eb\u06e0\u06db\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "\u06da\u06e5\u06d7\u06d6\u06e2\u06df\u06eb\u06dc\u06e4\u06d9\u06e0\u06eb\u06db\u06e0\u06e8\u06d8\u06e6\u06e0\u06e1\u06eb\u06eb\u06df\u06e0\u06dc\u06eb\u06d8\u06ec\u06d8\u06d8\u06ec\u06e7\u06d6\u06d9\u06e8\u06da\u06e1\u06ec\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_27
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v19, "ocrex"

    move-object/from16 v0, v19

    invoke-direct {v10, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "\u06dc\u06eb\u06e1\u06e4\u06e1\u06e5\u06d8\u06dc\u06e1\u06ec\u06e2\u06df\u06d8\u06e7\u06e5\u06dc\u06db\u06d8\u06d9\u06e6\u06e0\u06e5\u06d9\u06d6\u06e4\u06d7\u06d6\u06d8\u06d8\u06dc\u06e5\u06e5\u06e1\u06e1\u06db\u06d6\u06e4\u06e8\u06d8\u06d9\u06e2\u06ec\u06e4\u06e6\u06e2"

    goto/16 :goto_0

    :sswitch_28
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u06eb\u06d6\u06d7\u06e5\u06d6\u06e8\u06d7\u06e2\u06e0\u06d8\u06e7\u06df\u06da\u06e7\u06df\u06ec\u06da\u06db\u06ec\u06dc\u06da\u06d6\u06e6\u06d8\u06e0\u06dc\u06e8\u06d8\u06da\u06da\u06e1\u06e6\u06e7\u06da\u06e5\u06da\u06e6\u06d7\u06e4\u06d8\u06d8\u06db\u06db\u06e6\u06d8\u06e7\u06ec\u06e5\u06d9\u06d9\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_29
    const-string v2, "copyOcrExLib: ocrexDir = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06db\u06e0\u06e1\u06d8\u06e8\u06e1\u06dc\u06d8\u06e7\u06ec\u06e7\u06e4\u06d6\u06e7\u06d8\u06e1\u06e7\u06d8\u06d8\u06eb\u06e2\u06e8\u06d8\u06e4\u06d7\u06e0\u06e0\u06d6\u06e5\u06d8\u06d7\u06e6\u06d8\u06d8\u06e1\u06dc\u06e6\u06da\u06e2\u06e7\u06e8\u06d7\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06d7\u06e1\u06dc\u06d8\u06e0\u06eb\u06d9\u06e1\u06db\u06df\u06eb\u06e7\u06e0\u06e5\u06e8\u06d6\u06e4\u06d7\u06e5\u06dc\u06e0\u06dc\u06d8\u06ec\u06d9\u06dc\u06d8\u06e6\u06df\u06e5\u06da\u06df\u06d9\u06e1\u06e2\u06e5\u06d8\u06e7\u06e2\u06e8\u06d8\u06e7\u06d9\u06e6\u06e4\u06d6\u06e8\u06e7\u06d6\u06df\u06e2\u06d6\u06e2"

    goto/16 :goto_0

    :sswitch_2b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "\u06e6\u06df\u06eb\u06dc\u06e1\u06e8\u06e6\u06df\u06ec\u06e0\u06e2\u06e1\u06d8\u06db\u06e7\u06d6\u06d7\u06e7\u06d6\u06d8\u06d9\u06d8\u06d6\u06d8\u06dc\u06ec\u06d8\u06e5\u06d6\u06d7\u06db\u06e1\u06e1"

    goto/16 :goto_0

    :sswitch_2c
    const/4 v8, 0x1

    const-string v2, "\u06d6\u06d7\u06d6\u06d8\u06d7\u06e5\u06d6\u06d8\u06e0\u06e2\u06ec\u06eb\u06e1\u06df\u06e5\u06d7\u06d8\u06e7\u06d9\u06e4\u06dc\u06e8\u06e1\u06d8\u06df\u06ec\u06e6\u06ec\u06ec\u06df\u06da\u06d8\u06e6\u06e1\u06d6\u06d9\u06e2\u06d9\u06db\u06d9\u06d6\u06db\u06d6\u06d8\u06d8\u06da\u06e0\u06e0\u06e2\u06e8\u06db"

    goto/16 :goto_0

    :sswitch_2d
    const v19, -0x4213e21d

    const-string v2, "\u06d6\u06df\u06d6\u06dc\u06e1\u06e4\u06d9\u06e0\u06e5\u06d8\u06d6\u06e8\u06dc\u06d8\u06e1\u06da\u06e4\u06d8\u06e8\u06ec\u06e4\u06d7\u06ec\u06df\u06e1\u06e5\u06e1\u06db\u06e6\u06e5\u06d6\u06d8\u06e2\u06ec\u06e0\u06d9\u06e0\u06dc\u06d8\u06d7\u06e1\u06d7\u06dc\u06e6\u06e7\u06dc\u06e5\u06d7\u06df\u06e6\u06db\u06e1\u06eb\u06da\u06e8\u06df\u06dc\u06d8"

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    xor-int v20, v20, v19

    sparse-switch v20, :sswitch_data_5

    goto :goto_6

    :sswitch_2e
    const-string v2, "\u06eb\u06d7\u06e1\u06d8\u06d8\u06df\u06e2\u06e5\u06df\u06d9\u06e8\u06e5\u06dc\u06e5\u06e2\u06eb\u06e4\u06df\u06d6\u06d8\u06d9\u06da\u06eb\u06e2\u06d8\u06db\u06e6\u06ec\u06e0\u06da\u06df\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    const-string v2, "\u06d8\u06d6\u06e8\u06d8\u06d7\u06d9\u06d6\u06d8\u06e6\u06e6\u06e5\u06e8\u06d8\u06dc\u06da\u06eb\u06e6\u06eb\u06e5\u06ec\u06e1\u06e1\u06d8\u06d9\u06e2\u06d7\u06db\u06e4\u06e0\u06da\u06dc\u06df\u06da\u06e1\u06da\u06d8\u06df\u06e5\u06d8\u06da\u06e6\u06e6\u06dc\u06e6\u06e7\u06d8\u06d6\u06d8\u06e4\u06d8\u06e1"

    goto :goto_6

    :sswitch_30
    const v20, 0x635f7673

    const-string v2, "\u06e7\u06e0\u06eb\u06d6\u06db\u06da\u06d8\u06da\u06e6\u06e2\u06dc\u06e5\u06d8\u06dc\u06d7\u06d6\u06d8\u06d8\u06ec\u06e0\u06d8\u06e8\u06d7\u06e0\u06e5\u06e7\u06d6\u06eb\u06da\u06e7\u06d8\u06d8\u06db\u06db\u06da\u06e4\u06e7\u06e5\u06d6\u06e8\u06e6\u06e5\u06db\u06df"

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v21

    xor-int v21, v21, v20

    sparse-switch v21, :sswitch_data_6

    goto :goto_7

    :sswitch_31
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\u06d9\u06da\u06e0\u06e4\u06d7\u06d7\u06e8\u06d8\u06e5\u06e7\u06e0\u06d8\u06d8\u06e2\u06e5\u06e0\u06eb\u06e4\u06e6\u06d8\u06d8\u06df\u06eb\u06e8\u06e4\u06d9\u06e5\u06d6\u06e5\u06d8\u06d7\u06e5\u06e8\u06e4\u06e4\u06eb\u06e2\u06ec\u06db"

    goto :goto_7

    :cond_2
    const-string v2, "\u06df\u06df\u06e0\u06e7\u06e2\u06d9\u06e8\u06e8\u06d7\u06eb\u06d9\u06e1\u06d8\u06df\u06e6\u06e8\u06d8\u06eb\u06ec\u06dc\u06e1\u06d8\u06e1\u06d7\u06da\u06d8\u06db\u06e0\u06e7\u06dc\u06d6\u06e2\u06d8\u06d8\u06e7\u06e8\u06e1\u06d8\u06ec\u06e5\u06dc\u06d8\u06e8\u06d8\u06e8\u06e1\u06e8\u06d6\u06d9\u06ec\u06d8\u06d8\u06e6\u06d6\u06d7\u06d9\u06db\u06e2"

    goto :goto_7

    :sswitch_32
    const-string v2, "\u06e7\u06e5\u06d6\u06e0\u06d9\u06d6\u06d9\u06dc\u06d8\u06d8\u06e0\u06e0\u06e0\u06da\u06d7\u06e7\u06d8\u06d7\u06da\u06db\u06e6\u06e7\u06d8\u06e7\u06e0\u06e4\u06e7\u06e7\u06e5\u06df\u06d8\u06e5\u06d8\u06e0\u06e6\u06d8\u06d8\u06e5\u06eb\u06e1"

    goto :goto_7

    :sswitch_33
    const-string v2, "\u06dc\u06e1\u06e1\u06e4\u06eb\u06e1\u06d8\u06d7\u06ec\u06d6\u06d8\u06d7\u06e1\u06e1\u06d8\u06d6\u06e8\u06d7\u06d6\u06eb\u06e8\u06d8\u06e6\u06eb\u06e8\u06d8\u06e7\u06e0\u06e0\u06eb\u06e4\u06d6\u06e6\u06ec\u06dc\u06dc\u06eb\u06e6\u06e4\u06e7\u06e7\u06e1\u06eb\u06e5\u06d8\u06e1\u06d8\u06db\u06e6\u06d7\u06ec\u06eb\u06e8\u06da"

    goto :goto_6

    :sswitch_34
    const-string v2, "\u06e2\u06e8\u06e2\u06d9\u06db\u06e6\u06d8\u06da\u06e7\u06d8\u06d8\u06db\u06e8\u06e1\u06db\u06dc\u06d9\u06e7\u06d6\u06da\u06df\u06ec\u06e0\u06df\u06ec\u06e5\u06d8\u06da\u06e4\u06ec\u06e2\u06db\u06e5\u06eb\u06d6\u06d7\u06eb\u06da\u06e2\u06e7\u06e7\u06e1\u06db\u06e5\u06e1\u06d8"

    goto :goto_6

    :sswitch_35
    const-string v2, "\u06db\u06e1\u06e8\u06d8\u06df\u06d7\u06da\u06e2\u06e6\u06e4\u06d7\u06ec\u06d8\u06e1\u06ec\u06d9\u06e7\u06e6\u06e4\u06d8\u06d8\u06df\u06ec\u06d7\u06e5\u06d7\u06dc\u06d8\u06e2\u06da\u06dc\u06da\u06e5\u06d6\u06e4\u06da\u06e4\u06e8\u06e6\u06e5\u06e8\u06dc\u06dc"

    goto/16 :goto_0

    :sswitch_36
    const-string v2, "\u06e6\u06e6\u06e8\u06d8\u06d7\u06e5\u06e6\u06e0\u06e1\u06e7\u06da\u06d8\u06d9\u06e4\u06d6\u06e1\u06d8\u06d8\u06d8\u06d8\u06e8\u06e1\u06dc\u06d8\u06d9\u06e8\u06e1\u06d8\u06df\u06e6\u06d6\u06e5\u06d9\u06e6\u06d9\u06d8\u06e7\u06ec\u06dc\u06e8\u06d8\u06eb\u06d6\u06e0\u06ec\u06e5\u06e7\u06d8\u06e6\u06e8\u06eb\u06ec\u06eb\u06e7\u06df\u06d6\u06e1\u06e6\u06eb\u06d8"

    move v7, v8

    goto/16 :goto_0

    :sswitch_37
    const v19, 0x671c685a

    const-string v2, "\u06e6\u06e4\u06df\u06dc\u06eb\u06e5\u06ec\u06d7\u06e0\u06ec\u06e5\u06d6\u06d8\u06e8\u06db\u06e8\u06d8\u06d8\u06d7\u06db\u06e8\u06d8\u06da\u06e0\u06e0\u06e0\u06da\u06e2\u06d6\u06e6\u06ec\u06d8\u06d8\u06dc\u06e7\u06e6\u06d8\u06e0\u06e5\u06e7"

    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    xor-int v20, v20, v19

    sparse-switch v20, :sswitch_data_7

    goto :goto_8

    :sswitch_38
    const v20, 0x771ba72c

    const-string v2, "\u06e2\u06df\u06e4\u06d9\u06df\u06da\u06e6\u06db\u06d6\u06e1\u06e6\u06eb\u06e2\u06ec\u06e5\u06d8\u06db\u06df\u06e6\u06d8\u06e8\u06eb\u06d8\u06d8\u06eb\u06e6\u06d9\u06e7\u06eb\u06d6\u06db\u06db\u06ec"

    :goto_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v21

    xor-int v21, v21, v20

    sparse-switch v21, :sswitch_data_8

    goto :goto_9

    :sswitch_39
    const-string v2, "\u06eb\u06e6\u06e1\u06d8\u06e4\u06e5\u06eb\u06ec\u06e6\u06dc\u06e2\u06dc\u06e8\u06e0\u06d6\u06e7\u06e7\u06d7\u06dc\u06df\u06e5\u06e1\u06d8\u06e8\u06e2\u06e8\u06e6\u06eb\u06d7\u06e8\u06e6\u06eb\u06d8\u06eb\u06e4\u06e4\u06e6\u06d9\u06e1\u06e0\u06e4\u06e2\u06e1\u06e1\u06d8\u06e1\u06e2\u06d6\u06db\u06e5\u06e8\u06d8\u06da\u06da\u06e6\u06e7\u06df\u06e2"

    goto :goto_9

    :sswitch_3a
    const-string v2, "\u06df\u06d7\u06e1\u06e6\u06e5\u06e1\u06db\u06d6\u06ec\u06ec\u06ec\u06e5\u06d8\u06d8\u06e4\u06d8\u06e6\u06db\u06e2\u06e1\u06ec\u06df\u06d7\u06da\u06dc\u06df\u06ec\u06d8\u06d8\u06d8\u06e1\u06e7"

    goto :goto_8

    :cond_3
    const-string v2, "\u06e7\u06e6\u06e4\u06e2\u06e1\u06df\u06e5\u06e7\u06e1\u06d9\u06e1\u06d8\u06d8\u06e7\u06e6\u06e0\u06d6\u06d8\u06df\u06ec\u06e8\u06dc\u06d8\u06d9\u06e4\u06db\u06d7\u06db\u06db\u06e6\u06e8\u06d8"

    goto :goto_9

    :sswitch_3b
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "\u06e7\u06e7\u06e0\u06e1\u06db\u06e6\u06d7\u06e5\u06d8\u06db\u06d8\u06d8\u06e7\u06eb\u06e1\u06d8\u06e8\u06da\u06e1\u06d8\u06e1\u06db\u06e1\u06d8\u06df\u06e8\u06eb\u06d8\u06e2\u06d7\u06e6\u06e8\u06dc\u06e2\u06ec\u06eb\u06da\u06d6\u06e6\u06df\u06db\u06da\u06e5\u06e5\u06ec\u06ec\u06e1\u06db\u06da\u06da\u06ec\u06dc\u06e7\u06d8\u06e5\u06eb\u06da"

    goto :goto_9

    :sswitch_3c
    const-string v2, "\u06e4\u06d8\u06e2\u06eb\u06d6\u06e1\u06df\u06e8\u06e7\u06d8\u06d6\u06e6\u06e0\u06ec\u06d8\u06db\u06d9\u06e4\u06e4\u06d6\u06e1\u06df\u06da\u06da\u06d7\u06da\u06da\u06ec\u06e8\u06d9\u06e4\u06eb\u06da\u06da\u06d9\u06e5\u06d6\u06e1\u06e1\u06e4\u06dc\u06dc\u06e1\u06e8\u06d6\u06d8\u06da\u06d6\u06e1"

    goto :goto_8

    :sswitch_3d
    const-string v2, "\u06e5\u06ec\u06e1\u06d8\u06e0\u06d6\u06e0\u06db\u06df\u06e4\u06eb\u06e2\u06e8\u06d8\u06d9\u06e0\u06e5\u06d8\u06e0\u06e2\u06e5\u06d8\u06e1\u06d8\u06e7\u06d8\u06df\u06d8\u06eb\u06dc\u06e0\u06e1\u06e6\u06e1\u06dc"

    goto :goto_8

    :sswitch_3e
    const-string v2, "\u06eb\u06d7\u06e1\u06d8\u06d8\u06df\u06e2\u06e5\u06df\u06d9\u06e8\u06e5\u06dc\u06e5\u06e2\u06eb\u06e4\u06df\u06d6\u06d8\u06d9\u06da\u06eb\u06e2\u06d8\u06db\u06e6\u06ec\u06e0\u06da\u06df\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    new-instance v19, Lz2/f9;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Oo0:Lz2/r6;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lz2/f9;-><init>(Lz2/r6;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v2, "\u06e4\u06d6\u06ec\u06ec\u06ec\u06d9\u06eb\u06ec\u06e1\u06d8\u06d6\u06d9\u06d6\u06d8\u06e5\u06e7\u06e7\u06db\u06d7\u06d6\u06d8\u06e1\u06e8\u06d8\u06db\u06df\u06db\u06e6\u06da\u06ec\u06e1\u06e6\u06d8\u06e4\u06e0\u06d6\u06d6\u06e6\u06d8\u06ec\u06d7\u06dc\u06e4\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_40
    const v19, 0x103b6be6

    const-string v2, "\u06e5\u06e8\u06e4\u06d7\u06d6\u06e4\u06dc\u06ec\u06e6\u06d8\u06e0\u06d9\u06e5\u06e1\u06da\u06e5\u06d8\u06e2\u06e1\u06e1\u06d7\u06dc\u06dc\u06dc\u06e8\u06e6\u06d8\u06e7\u06d7\u06eb\u06e8\u06e6\u06da\u06e1\u06df\u06e7\u06e6\u06dc\u06da\u06e4\u06ec\u06e0\u06d9\u06e0\u06dc\u06dc\u06e1\u06d8\u06e1\u06df\u06da"

    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    xor-int v20, v20, v19

    sparse-switch v20, :sswitch_data_9

    goto :goto_a

    :sswitch_41
    const-string v2, "\u06e0\u06dc\u06e7\u06d8\u06d6\u06d9\u06e1\u06db\u06d8\u06d8\u06db\u06d7\u06e7\u06d7\u06dc\u06e5\u06d8\u06e8\u06d9\u06d8\u06e5\u06e7\u06d8\u06e0\u06eb\u06e6\u06d8\u06e6\u06d6\u06e1\u06d8\u06da\u06e7\u06e6"

    goto/16 :goto_0

    :sswitch_42
    const-string v2, "\u06d8\u06e5\u06d8\u06db\u06e2\u06e8\u06dc\u06e4\u06e0\u06e2\u06ec\u06e1\u06d8\u06dc\u06e0\u06da\u06ec\u06d7\u06e5\u06d8\u06df\u06eb\u06db\u06e7\u06e4\u06e1\u06e1\u06e7\u06d8\u06d8\u06e2\u06d6\u06e5"

    goto :goto_a

    :sswitch_43
    const v20, 0x5f7dc4f3

    const-string v2, "\u06eb\u06d7\u06e6\u06d8\u06e4\u06db\u06e1\u06d8\u06d7\u06e0\u06e7\u06d9\u06db\u06e6\u06e7\u06e2\u06d6\u06d8\u06e2\u06e0\u06e1\u06d8\u06e6\u06d8\u06e0\u06e2\u06da\u06e6\u06e6\u06dc\u06e0\u06e6\u06db\u06e7\u06e7\u06e8\u06d8\u06ec\u06ec\u06e8\u06d8\u06da\u06e2\u06e5\u06d8\u06d9\u06e8\u06e5\u06d8\u06e5\u06e0\u06e8\u06d8\u06e5\u06e8\u06e6"

    :goto_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v21

    xor-int v21, v21, v20

    sparse-switch v21, :sswitch_data_a

    goto :goto_b

    :sswitch_44
    const-string v2, "\u06d7\u06d8\u06e7\u06db\u06db\u06e0\u06df\u06e4\u06e8\u06e2\u06da\u06e0\u06eb\u06df\u06d8\u06d8\u06db\u06df\u06eb\u06e4\u06da\u06d9\u06df\u06e0\u06e6\u06d8\u06df\u06e8\u06e6\u06d8\u06d7\u06e5\u06dc"

    goto :goto_a

    :cond_4
    const-string v2, "\u06df\u06d9\u06d7\u06ec\u06e5\u06e0\u06ec\u06d7\u06dc\u06d8\u06d7\u06dc\u06e1\u06e7\u06d8\u06d6\u06d8\u06eb\u06d6\u06d8\u06d6\u06df\u06d8\u06eb\u06e0\u06e6\u06d8\u06d8\u06ec\u06db\u06dc\u06e1\u06d9\u06ec\u06d6\u06d8\u06e2\u06e5\u06e1\u06d8"

    goto :goto_b

    :sswitch_45
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\u06e8\u06e8\u06e1\u06e1\u06e1\u06d8\u06d8\u06e0\u06dc\u06e2\u06d8\u06db\u06d8\u06d8\u06ec\u06d6\u06db\u06e8\u06d9\u06e0\u06dc\u06e5\u06ec\u06e8\u06e8\u06e1\u06e0\u06e6\u06d6\u06d8\u06df\u06dc\u06e7\u06e2\u06e6\u06e0\u06e1\u06e8\u06e6\u06d9\u06ec\u06d8\u06df\u06da\u06da\u06df\u06d8\u06e6\u06db\u06e7\u06e8\u06d7\u06dc\u06da\u06e7\u06db"

    goto :goto_b

    :sswitch_46
    const-string v2, "\u06e6\u06d6\u06e8\u06d8\u06e6\u06ec\u06da\u06df\u06df\u06e8\u06d8\u06e8\u06d8\u06e0\u06e1\u06d6\u06e5\u06ec\u06e7\u06e8\u06dc\u06eb\u06e2\u06ec\u06d6\u06ec\u06d8\u06df\u06e6\u06d7\u06da\u06eb\u06ec\u06d6\u06db\u06e0\u06d7\u06dc\u06eb\u06e7\u06e5\u06d8"

    goto :goto_b

    :sswitch_47
    const-string v2, "\u06d7\u06d7\u06ec\u06e6\u06d8\u06dc\u06e5\u06e2\u06d9\u06e6\u06e8\u06d6\u06d9\u06e7\u06e5\u06e7\u06e8\u06d9\u06e5\u06e7\u06d9\u06d6\u06e5\u06eb\u06e2\u06e0\u06e4\u06e6\u06e1\u06e5\u06d6\u06d9\u06e1\u06d8\u06e0\u06da\u06dc"

    goto :goto_a

    :sswitch_48
    const-string v2, "\u06d8\u06d8\u06d8\u06e5\u06d7\u06e5\u06e8\u06d6\u06d8\u06d9\u06da\u06df\u06d8\u06e1\u06da\u06e7\u06e1\u06e0\u06e0\u06da\u06e5\u06e6\u06e0\u06e6\u06d8\u06d9\u06eb\u06e1\u06d8\u06d6\u06d7\u06da"

    goto/16 :goto_0

    :sswitch_49
    invoke-static {v10}, Lz2/u8;->OooO0oO(Ljava/io/File;)Z

    move-result v6

    const-string v2, "\u06da\u06e2\u06d6\u06d7\u06eb\u06e1\u06d8\u06e5\u06eb\u06db\u06e7\u06dc\u06d7\u06e4\u06da\u06e8\u06eb\u06e6\u06d7\u06e4\u06e7\u06e4\u06e1\u06da\u06e0\u06ec\u06e1\u06df\u06d8\u06df\u06e2\u06db\u06d8\u06d9\u06db\u06db"

    goto/16 :goto_0

    :sswitch_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u06ec\u06eb\u06e0\u06d8\u06d6\u06e1\u06e0\u06d9\u06e7\u06dc\u06d9\u06e8\u06d8\u06d6\u06df\u06d8\u06d9\u06db\u06d7\u06e2\u06e4\u06e8\u06d8\u06d9\u06df\u06ec\u06d9\u06e0\u06d8\u06d8\u06db\u06d8\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_4b
    const-string v2, "copyOcrExLib \u5220\u9664\u65e7\u7684\u6587\u4ef6\u5939\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06e2\u06e2\u06d7\u06e7\u06db\u06e1\u06d9\u06e2\u06d6\u06d6\u06ec\u06e6\u06d8\u06e7\u06eb\u06d8\u06d8\u06d7\u06e8\u06e6\u06d8\u06dc\u06ec\u06d7\u06ec\u06d7\u06e8\u06d8\u06e2\u06e6\u06e2\u06e5\u06ec\u06e8\u06da\u06d9\u06d7\u06df\u06e0\u06dc\u06e8\u06e7\u06e8\u06d8\u06d9\u06e5\u06d7"

    goto/16 :goto_0

    :sswitch_4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\u06e2\u06d6\u06d7\u06e8\u06da\u06d8\u06d8\u06d8\u06d6\u06e2\u06d6\u06da\u06db\u06eb\u06df\u06eb\u06dc\u06e6\u06e5\u06d6\u06d6\u06e0\u06d9\u06e0\u06dc\u06d8\u06eb\u06e0\u06d7\u06dc\u06e7\u06e0\u06da\u06e5\u06ec\u06da\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "\u06e0\u06dc\u06e7\u06d8\u06d6\u06d9\u06e1\u06db\u06d8\u06d8\u06db\u06d7\u06e7\u06d7\u06dc\u06e5\u06d8\u06e8\u06d9\u06d8\u06e5\u06e7\u06d8\u06e0\u06eb\u06e6\u06d8\u06e6\u06d6\u06e1\u06d8\u06da\u06e7\u06e6"

    goto/16 :goto_0

    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "ocrex.zip"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Ooo:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lz2/g5;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    const-string v2, "\u06e8\u06e1\u06da\u06d7\u06d7\u06d7\u06e0\u06db\u06d7\u06ec\u06e7\u06da\u06eb\u06dc\u06e6\u06e8\u06ec\u06e5\u06d6\u06da\u06e4\u06d7\u06ec\u06e5\u06d6\u06df\u06dc\u06d8\u06e7\u06e4\u06e8\u06e1\u06db\u06df\u06da\u06e0\u06e8\u06d8\u06e0\u06df\u06d6\u06e5\u06e0\u06e7\u06d6\u06eb\u06d9\u06d8\u06d8\u06d7"

    goto/16 :goto_0

    :sswitch_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u06d8\u06d6\u06df\u06d7\u06d6\u06d6\u06da\u06dc\u06d7\u06e0\u06e6\u06d7\u06d8\u06da\u06e5\u06e0\u06da\u06e1\u06e6\u06d8\u06ec\u06df\u06df\u06e7\u06e2\u06e2\u06eb\u06df\u06eb\u06e8\u06d8\u06e5\u06df\u06e7\u06e0\u06e6\u06ec"

    goto/16 :goto_0

    :sswitch_50
    const-string v2, "copyOcrExLib OcrEx \u89e3\u538b\u662f\u5426\u6210\u529f\uff1a"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u06da\u06e2\u06e6\u06e6\u06e2\u06e6\u06d8\u06e5\u06dc\u06e5\u06e2\u06e1\u06e6\u06ec\u06d8\u06d6\u06eb\u06d8\u06d6\u06d8\u06da\u06d6\u06df\u06e7\u06d9\u06e4\u06dc\u06e4\u06e5\u06eb\u06e1\u06e6\u06d8\u06ec\u06e6\u06e5\u06d8\u06df\u06e7\u06e6\u06d8\u06d6\u06da\u06e1\u06d8\u06d6\u06da\u06d6\u06d8\u06e6\u06e1\u06eb\u06eb\u06dc\u06e6\u06e1\u06e4\u06e0\u06eb\u06db\u06e6"

    goto/16 :goto_0

    :sswitch_51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\u06d9\u06d9\u06da\u06eb\u06e5\u06d8\u06d8\u06e8\u06da\u06e1\u06e6\u06e8\u06e7\u06d8\u06d7\u06eb\u06e6\u06e4\u06d8\u06d6\u06d8\u06da\u06e6\u06dc\u06d8\u06e4\u06df\u06d8\u06e6\u06da\u06dc\u06ec\u06d9\u06e0\u06e1\u06eb\u06d6\u06e8\u06e1\u06e2\u06e8\u06db\u06e2\u06d9\u06e4\u06e1\u06d8\u06e1\u06d8\u06d8\u06d8\u06ec\u06e5\u06e5"

    goto/16 :goto_0

    :sswitch_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "\u06e7\u06da\u06df\u06e1\u06e6\u06e8\u06d8\u06ec\u06df\u06e5\u06e5\u06e0\u06e5\u06d8\u06e6\u06e1\u06e5\u06e6\u06dc\u06e5\u06d7\u06e1\u06d9\u06e6\u06df\u06e4\u06ec\u06e1\u06e5\u06db\u06e5\u06db\u06df\u06e5\u06e1\u06d8\u06e5\u06db\u06e2\u06e6\u06df\u06d8\u06d8\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_53
    const-string v2, "\u06ec\u06e6\u06df\u06e4\u06df\u06e2\u06d8\u06e2\u06e6\u06df\u06da\u06dc\u06d8\u06e2\u06e6\u06dc\u06e8\u06eb\u06e1\u06d8\u06d6\u06da\u06d8\u06e0\u06eb\u06e5\u06d8\u06e4\u06e2\u06e1\u06d8\u06d9\u06e1\u06df\u06d8\u06e5\u06dc\u06e8\u06d9\u06e4"

    move v7, v4

    goto/16 :goto_0

    :sswitch_54
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_55
    const-string v2, "\u06e4\u06d7\u06df\u06d7\u06d9\u06d7\u06e0\u06d9\u06eb\u06eb\u06eb\u06eb\u06da\u06e0\u06e0\u06e6\u06e2\u06eb\u06e4\u06e4\u06db\u06e1\u06e2\u06e0\u06e7\u06e0\u06d8\u06ec\u06d6\u06e6\u06e6\u06e6\u06e1\u06e8\u06e5\u06e6\u06d6\u06d6\u06e5\u06dc\u06da"

    goto/16 :goto_0

    :sswitch_56
    const-string v2, "\u06e6\u06ec\u06e5\u06d8\u06e5\u06e6\u06e1\u06ec\u06db\u06e1\u06d8\u06e2\u06e0\u06e0\u06d9\u06e4\u06e4\u06e7\u06d8\u06e5\u06d8\u06e8\u06dc\u06e6\u06d9\u06d9\u06e8\u06e1\u06da\u06e0\u06d8\u06d7\u06dc\u06d8\u06ec\u06d9\u06e0\u06eb\u06e8\u06e4\u06e5\u06e0\u06da\u06ec\u06e8\u06d8\u06e0\u06e8\u06db\u06db\u06ec\u06da"

    goto/16 :goto_0

    :sswitch_57
    const-string v2, "\u06dc\u06e0\u06d6\u06d8\u06e5\u06dc\u06e2\u06e5\u06d8\u06e0\u06d7\u06dc\u06d8\u06d8\u06e5\u06d7\u06e6\u06dc\u06d6\u06e5\u06dc\u06d6\u06da\u06d7\u06ec\u06d9\u06eb\u06e8\u06d8\u06e5\u06d9\u06df\u06e7\u06eb\u06db\u06ec\u06d6\u06d6\u06e5\u06e7\u06da\u06e5\u06da\u06d6\u06d8\u06d6\u06eb\u06e6\u06e2\u06e5\u06ec\u06eb\u06dc\u06e1\u06d8\u06d8\u06e5\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_58
    const-string v2, "\u06ec\u06e6\u06df\u06e4\u06df\u06e2\u06d8\u06e2\u06e6\u06df\u06da\u06dc\u06d8\u06e2\u06e6\u06dc\u06e8\u06eb\u06e1\u06d8\u06d6\u06da\u06d8\u06e0\u06eb\u06e5\u06d8\u06e4\u06e2\u06e1\u06d8\u06d9\u06e1\u06df\u06d8\u06e5\u06dc\u06e8\u06d9\u06e4"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6caddf87 -> :sswitch_2b
        -0x64b74c6c -> :sswitch_2c
        -0x6413bde6 -> :sswitch_4a
        -0x61c63163 -> :sswitch_4f
        -0x6181400e -> :sswitch_e
        -0x5ca349a6 -> :sswitch_10
        -0x5a4deace -> :sswitch_49
        -0x5a18bf0a -> :sswitch_c
        -0x571817a4 -> :sswitch_1
        -0x566c5952 -> :sswitch_25
        -0x546597f6 -> :sswitch_40
        -0x4dd1e3c6 -> :sswitch_4d
        -0x43d9184f -> :sswitch_1b
        -0x40dbfe9f -> :sswitch_22
        -0x35229d86 -> :sswitch_54
        -0x275e905b -> :sswitch_4b
        -0x1f0fb734 -> :sswitch_29
        -0x1a4532ba -> :sswitch_28
        -0x15a15751 -> :sswitch_24
        -0x150fd596 -> :sswitch_19
        -0xada1f68 -> :sswitch_23
        -0x5b0fd4f -> :sswitch_2a
        -0x5463bf0 -> :sswitch_21
        0x247a924 -> :sswitch_1c
        0x36235ce -> :sswitch_a
        0x16b1fdb9 -> :sswitch_36
        0x199d21e4 -> :sswitch_27
        0x1c32fc30 -> :sswitch_0
        0x24a4174c -> :sswitch_b
        0x26d4e8d5 -> :sswitch_18
        0x2fa7aafc -> :sswitch_57
        0x31e4b887 -> :sswitch_51
        0x39b16ee8 -> :sswitch_52
        0x3b18488e -> :sswitch_53
        0x45929a3b -> :sswitch_2d
        0x48257208 -> :sswitch_26
        0x4c9afd1e -> :sswitch_1d
        0x4fb8b777 -> :sswitch_2
        0x50a357e7 -> :sswitch_3f
        0x577b9282 -> :sswitch_4e
        0x5db171c0 -> :sswitch_d
        0x5ddd919d -> :sswitch_20
        0x5ebdd9be -> :sswitch_f
        0x6c879c80 -> :sswitch_37
        0x7022a272 -> :sswitch_50
        0x702cb67e -> :sswitch_1f
        0x74c672b5 -> :sswitch_1e
        0x78ae6e64 -> :sswitch_1a
        0x797c4855 -> :sswitch_4c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5708006a -> :sswitch_5
        -0x2af0efaf -> :sswitch_55
        -0x1c6eb76b -> :sswitch_3
        0x799b580a -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1f351132 -> :sswitch_6
        0xb3ab118 -> :sswitch_4
        0x4de0d25f -> :sswitch_7
        0x5fdce1f3 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7185eeb8 -> :sswitch_13
        -0x637ac8be -> :sswitch_17
        -0x16598214 -> :sswitch_11
        -0x14161865 -> :sswitch_56
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x68ad385c -> :sswitch_14
        -0x2301fe06 -> :sswitch_15
        0x5dde9912 -> :sswitch_16
        0x6d28eec9 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x1f9b5059 -> :sswitch_30
        0x30bcb6a -> :sswitch_34
        0x7e25b2b -> :sswitch_35
        0x4fb8de52 -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7b7856d8 -> :sswitch_31
        -0x5d17416c -> :sswitch_2f
        0x1fc332f9 -> :sswitch_33
        0x335c2837 -> :sswitch_32
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x53e68382 -> :sswitch_3e
        -0x4b421981 -> :sswitch_38
        -0x452692bd -> :sswitch_3d
        0x57ac2bda -> :sswitch_58
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x6ce6ef19 -> :sswitch_3c
        -0x679613a4 -> :sswitch_3b
        -0x9c9e073 -> :sswitch_39
        0x33590c43 -> :sswitch_3a
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x730a04bf -> :sswitch_43
        -0x1f5d2bc9 -> :sswitch_47
        0x820ff43 -> :sswitch_41
        0x78484b8e -> :sswitch_48
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x47b4e529 -> :sswitch_44
        -0x17e32ad4 -> :sswitch_46
        0x161b7d27 -> :sswitch_42
        0x25ddc593 -> :sswitch_45
    .end sparse-switch
.end method

.method public OooOo00(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e2\u06e5\u06e0\u06e5\u06e4\u06d9\u06db\u06da\u06e8\u06d8\u06d6\u06e0\u06d8\u06d8\u06d6\u06da\u06da\u06eb\u06e1\u06d7\u06eb\u06dc\u06e8\u06db\u06e4\u06e7\u06dc\u06d7\u06e0\u06ec\u06eb\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x105

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3cf

    const/16 v3, 0x28b

    const v4, 0x29fc6c35

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e8\u06eb\u06db\u06e4\u06e2\u06e6\u06d6\u06e8\u06e1\u06eb\u06da\u06e4\u06e1\u06e8\u06d8\u06e6\u06e6\u06da\u06e1\u06e1\u06e0\u06d6\u06e5\u06e6\u06eb\u06d6\u06df\u06dc\u06e5\u06d6\u06d8\u06e7\u06ec\u06d9\u06e5\u06db\u06e1\u06d8\u06dc\u06df\u06e4\u06e2\u06e8\u06db\u06e8\u06e6\u06ec\u06da\u06eb\u06d8\u06d8\u06e1\u06dc\u06e5\u06e1\u06e7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e7\u06e1\u06d6\u06da\u06d6\u06df\u06d6\u06e4\u06e7\u06d7\u06e5\u06eb\u06ec\u06d9\u06d6\u06e8\u06d8\u06ec\u06e7\u06dc\u06db\u06e4\u06dc\u06d8\u06d9\u06d7\u06e6\u06d8\u06eb\u06df\u06e6\u06d8\u06d6\u06dc\u06d6\u06d7\u06ec\u06e1\u06d8\u06e6\u06d6\u06e8\u06ec\u06ec\u06db\u06e6\u06e2\u06d8\u06d8\u06dc\u06e5\u06dc"

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000000:Ljava/lang/String;

    const-string v0, "\u06e8\u06d7\u06dc\u06d8\u06e0\u06eb\u06e7\u06eb\u06d6\u06d8\u06db\u06e4\u06dc\u06e6\u06e7\u06e1\u06d8\u06d6\u06e4\u06dc\u06eb\u06d6\u06e0\u06e1\u06d6\u06e6\u06e4\u06db\u06d9\u06db\u06e1\u06e8\u06d8\u06e1\u06d7\u06e1\u06d8\u06df\u06d8\u06e8\u06d8\u06e7\u06e5\u06e4\u06df\u06e7\u06e6\u06dc\u06d7\u06e1\u06d8\u06d8\u06da\u06ec\u06d8\u06e8\u06d8\u06e4\u06d9\u06ec"

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e1\u06dc\u06db\u06db\u06da\u06ec\u06dc\u06e7\u06e8\u06da\u06ec\u06eb\u06eb\u06e6\u06e1\u06eb\u06df\u06eb\u06e7\u06d7\u06d8\u06e1\u06d8\u06e4\u06e2\u06d9\u06ec\u06d6\u06e5\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "copyOcrExLib \u6267\u884c\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06df\u06e6\u06d8\u06d8\u06ec\u06dc\u06df\u06db\u06ec\u06da\u06e5\u06df\u06d6\u06e0\u06d7\u06e6\u06df\u06e8\u06d9\u06dc\u06d8\u06d7\u06e8\u06d8\u06d8\u06df\u06d7\u06dc\u06e1\u06eb\u06eb\u06ec\u06d7\u06dc\u06e4\u06d7\u06e1\u06ec\u06e1\u06e7\u06d8\u06e7\u06db\u06db\u06e7\u06e2\u06e0\u06e6\u06d6\u06dc\u06d8\u06dc\u06d9\u06e6\u06e7\u06ec\u06e6"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06d7\u06e6\u06d8\u06d9\u06e1\u06e0\u06e0\u06dc\u06df\u06e4\u06d7\u06d6\u06e4\u06df\u06eb\u06eb\u06e2\u06db\u06e6\u06dc\u06e8\u06d8\u06da\u06e8\u06eb\u06e4\u06e4\u06d6\u06d8\u06d8\u06dc\u06e6\u06d7\u06e6\u06d8\u06d8\u06d7\u06e2\u06d7\u06d9\u06e0\u06e5\u06da\u06d6\u06eb\u06eb\u06e1\u06e8\u06d8\u06d9\u06ec\u06e1\u06d8\u06db\u06e8\u06da\u06e8\u06d9\u06e2"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06e4\u06eb\u06e7\u06e4\u06d8\u06ec\u06d6\u06d8\u06d6\u06d8\u06e4\u06dc\u06d8\u06df\u06e4\u06e0\u06e4\u06e8\u06e8\u06d8\u06d8\u06db\u06dc\u06d8\u06eb\u06e2\u06e0\u06d8\u06e2\u06e6\u06e4\u06d8\u06e7\u06d8\u06ec\u06d8\u06e7\u06d8\u06eb\u06e6\u06d6\u06e6\u06e0\u06dc\u06d6\u06da\u06da\u06da\u06da\u06e1\u06dc\u06d6\u06e5"

    goto :goto_0

    :sswitch_7
    const v2, -0x2316b6fe

    const-string v0, "\u06e5\u06e4\u06d8\u06d8\u06e7\u06d9\u06e1\u06d8\u06e7\u06d8\u06e7\u06d8\u06d6\u06d9\u06ec\u06e6\u06e6\u06e8\u06d8\u06d6\u06da\u06d8\u06d8\u06db\u06e7\u06e6\u06dc\u06df\u06d9\u06d8\u06dc\u06dc\u06e6\u06e6\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06da\u06d9\u06d8\u06e2\u06d7\u06e5\u06ec\u06d8\u06d9\u06d7\u06eb\u06ec\u06ec\u06dc\u06df\u06d8\u06e5\u06e7\u06d8\u06e8\u06eb\u06d8\u06d8\u06e8\u06e2\u06d6\u06d8\u06e2\u06e7\u06d9\u06e0\u06da\u06e1\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e1\u06e5\u06e0\u06df\u06e0\u06d7\u06eb\u06e7\u06e8\u06dc\u06e6\u06df\u06e8\u06e4\u06d8\u06d8\u06e2\u06e2\u06d7\u06e1\u06e6\u06d8\u06e2\u06da\u06d7\u06e6\u06e4\u06e6\u06eb\u06e4\u06df\u06e4\u06e8\u06e1\u06d9\u06da\u06e6\u06eb\u06e8\u06e2\u06e6\u06db\u06e6\u06df\u06d8\u06d6\u06df\u06e2\u06d9\u06d9\u06d8\u06d8\u06ec\u06d8\u06d6"

    goto :goto_1

    :sswitch_a
    const v3, 0x78865f92

    const-string v0, "\u06df\u06db\u06da\u06df\u06e8\u06d8\u06dc\u06ec\u06db\u06ec\u06d8\u06d7\u06e7\u06e8\u06e1\u06d6\u06d9\u06e4\u06d6\u06d8\u06e8\u06d7\u06d6\u06d8\u06d8\u06e5\u06d6\u06e4\u06db\u06e5\u06d8\u06dc\u06eb\u06e8\u06e6\u06da\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d7\u06e4\u06eb\u06df\u06db\u06e6\u06db\u06d6\u06dc\u06d8\u06ec\u06e6\u06dc\u06d8\u06df\u06d7\u06d7\u06d6\u06d6\u06e2\u06e4\u06e1\u06e1\u06d8\u06e1\u06d6\u06da\u06db\u06d7\u06e2\u06df\u06d8\u06d7\u06d9\u06e7\u06e0\u06d9\u06e0\u06e4\u06d9\u06e6\u06d9\u06d8\u06e1\u06d8\u06e8\u06e7\u06e5\u06d8\u06d9\u06e8\u06e5\u06d8\u06dc\u06df\u06d9\u06d8\u06dc\u06d6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e4\u06dc\u06d7\u06e2\u06e1\u06da\u06db\u06d6\u06e5\u06d8\u06dc\u06e5\u06d8\u06d9\u06dc\u06dc\u06d8\u06e6\u06e2\u06db\u06d9\u06d9\u06e2\u06ec\u06ec\u06df\u06d8\u06d7\u06d9\u06e4\u06db\u06e6\u06e2\u06da\u06da\u06ec\u06e2\u06dc\u06d8\u06e1\u06ec\u06d8\u06d8\u06da\u06e5\u06d8\u06d8"

    goto :goto_2

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Oo0:Lz2/r6;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e8\u06e1\u06eb\u06d8\u06d6\u06e6\u06e1\u06df\u06ec\u06e1\u06df\u06e8\u06d8\u06d7\u06e2\u06e2\u06d7\u06db\u06df\u06e0\u06e5\u06dc\u06d8\u06e0\u06d6\u06e1\u06d6\u06e0\u06d8\u06d8\u06eb\u06e0\u06da\u06e2\u06eb\u06da\u06e2\u06d6\u06d9\u06eb\u06e5\u06e5\u06e6\u06d6\u06df\u06e7\u06e5\u06e6\u06e6\u06db\u06d8\u06d8"

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e8\u06d6\u06e5\u06e5\u06db\u06e1\u06d8\u06d9\u06e7\u06e7\u06ec\u06e8\u06e1\u06dc\u06e6\u06e5\u06d8\u06e4\u06db\u06d8\u06df\u06dc\u06e5\u06d8\u06ec\u06d7\u06e7\u06d9\u06e5\u06d8\u06da\u06e0\u06e5\u06d8\u06e1\u06e8\u06e8\u06e4\u06e4\u06e1\u06db\u06d6\u06e8\u06d6\u06e2"

    goto :goto_1

    :sswitch_e
    const-string v0, "\u06e1\u06df\u06d6\u06e8\u06e1\u06e7\u06d8\u06e6\u06d6\u06dc\u06d8\u06e6\u06d7\u06eb\u06e1\u06ec\u06da\u06ec\u06d8\u06e7\u06e6\u06d8\u06d8\u06d8\u06e7\u06d8\u06df\u06eb\u06e6\u06da\u06e0\u06db\u06dc\u06e2\u06e6\u06db\u06e2\u06e2\u06dc\u06e1\u06d8\u06e4\u06df\u06d9\u06e0\u06e2\u06df\u06d7\u06d7"

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;->o00Oo0:Lz2/r6;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u06d8\u06d9\u06e1\u06d8\u06d9\u06d9\u06e8\u06d8\u06e2\u06e5\u06e8\u06d8\u06dc\u06e7\u06d9\u06e6\u06e0\u06e8\u06d8\u06d9\u06d6\u06ec\u06e6\u06e4\u06e6\u06d8\u06d6\u06d8\u06e8\u06d8\u06e8\u06d7\u06d8\u06d8\u06e8\u06da\u06e4\u06e4\u06e7\u06e7\u06e1\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06d8\u06d9\u06e1\u06d8\u06d9\u06d9\u06e8\u06d8\u06e2\u06e5\u06e8\u06d8\u06dc\u06e7\u06d9\u06e6\u06e0\u06e8\u06d8\u06d9\u06d6\u06ec\u06e6\u06e4\u06e6\u06d8\u06d6\u06d8\u06e8\u06d8\u06e8\u06d7\u06d8\u06d8\u06e8\u06da\u06e4\u06e4\u06e7\u06e7\u06e1\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bfe3618 -> :sswitch_3
        -0x2466aa45 -> :sswitch_1
        0x8263827 -> :sswitch_4
        0x8eb0af9 -> :sswitch_11
        0xe9b39f5 -> :sswitch_f
        0x30103b84 -> :sswitch_0
        0x3eb80334 -> :sswitch_6
        0x5b35b1be -> :sswitch_2
        0x5bceb56e -> :sswitch_7
        0x62f050ab -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x45215daf -> :sswitch_a
        -0x18605272 -> :sswitch_8
        0x4900a282 -> :sswitch_10
        0x6793d299 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x97bb0ae -> :sswitch_c
        0x4f8d446f -> :sswitch_9
        0x705e6938 -> :sswitch_b
        0x74dc3eb9 -> :sswitch_d
    .end sparse-switch
.end method
