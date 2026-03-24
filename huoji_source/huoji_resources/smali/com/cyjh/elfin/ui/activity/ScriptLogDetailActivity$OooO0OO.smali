.class public Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Lcom/cyjh/elfin/entity/ScriptLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lz2/k4;->OooOOO0(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e7\u06e0\u06e2\u06d7\u06da\u06d7\u06dc\u06ec\u06e7\u06d6\u06e1\u06d8\u06e4\u06ec\u06d7\u06d9\u06d9\u06e1\u06e8\u06d8\u06eb\u06e8\u06e0\u06db\u06e8\u06ec\u06d8\u06db\u06d6\u06d7\u06df\u06d7\u06e1\u06d8\u06dc\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3c7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x218

    const/16 v2, 0x16c

    const v3, 0x7481f059

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e2\u06e6\u06e5\u06e6\u06d8\u06d8\u06df\u06ec\u06e2\u06e4\u06e7\u06d9\u06e2\u06da\u06eb\u06df\u06d7\u06e4\u06dc\u06e2\u06e8\u06d8\u06db\u06e7\u06dc\u06d8\u06e1\u06da\u06e6\u06d8\u06d8\u06e0\u06d8\u06d8\u06da\u06e6\u06d9\u06e7\u06db\u06eb\u06d8\u06e5\u06e1\u06d8\u06d9\u06e8\u06d6\u06d8\u06e1\u06d9\u06dc\u06d7\u06e2\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06eb\u06d6\u06d8\u06e4\u06df\u06d6\u06e4\u06e5\u06e7\u06e0\u06da\u06d6\u06da\u06d8\u06df\u06e2\u06e2\u06e0\u06da\u06d6\u06ec\u06da\u06dc\u06e7\u06df\u06db\u06d6\u06d8\u06e1\u06e1\u06d8\u06d8\u06dc\u06d6\u06e6\u06d8\u06d6\u06e4\u06e4\u06e6\u06dc\u06df\u06ec\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "\u06e1\u06d9\u06df\u06db\u06da\u06da\u06d8\u06d6\u06e5\u06d8\u06e7\u06ec\u06dc\u06d8\u06e1\u06d6\u06e1\u06df\u06db\u06e5\u06d8\u06db\u06d9\u06e5\u06d8\u06ec\u06d7\u06e1\u06e8\u06e1\u06e8\u06d8\u06eb\u06e7\u06ec\u06df\u06db\u06e8\u06d8\u06ec\u06d8\u06e8\u06e8\u06df\u06e5\u06d8\u06da\u06d9\u06d8\u06d8\u06e7\u06ec\u06e6\u06d8\u06dc\u06e5\u06d8\u06d6\u06eb\u06d6\u06d8\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooO(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06df\u06e5\u06e1\u06d8\u06e1\u06e5\u06d6\u06d8\u06e4\u06e6\u06e8\u06d8\u06e2\u06e5\u06d7\u06e4\u06dc\u06d8\u06e8\u06d9\u06e0\u06df\u06e0\u06e5\u06ec\u06dc\u06d6\u06d8\u06df\u06da\u06e8\u06d8\u06e0\u06e0"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    const-string v0, "\u06e6\u06db\u06eb\u06e5\u06e8\u06e0\u06e8\u06dc\u06d8\u06d8\u06e7\u06da\u06d8\u06d8\u06eb\u06df\u06e1\u06e8\u06d9\u06e8\u06dc\u06e6\u06d8\u06e8\u06d7\u06dc\u06d8\u06dc\u06e6\u06dc\u06e4\u06e8\u06dc\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74481b49 -> :sswitch_0
        -0xc94d7e -> :sswitch_2
        0xa94b6ca -> :sswitch_1
        0x17b00519 -> :sswitch_4
        0x21d38124 -> :sswitch_3
        0x6d3eb15b -> :sswitch_5
    .end sparse-switch
.end method

.method public varargs OooO0OO([Ljava/lang/Integer;)V
    .locals 4

    const-string v0, "\u06e6\u06e7\u06e5\u06d8\u06d8\u06e0\u06d9\u06db\u06e5\u06dc\u06d8\u06e7\u06d9\u06e5\u06dc\u06d6\u06e5\u06d8\u06e4\u06db\u06e8\u06d8\u06dc\u06e1\u06e1\u06e1\u06e4\u06e7\u06d9\u06e0\u06e7\u06e5\u06da\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2bd

    const/16 v2, 0x210

    const v3, 0x14d8774a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e2\u06e5\u06e5\u06db\u06e2\u06db\u06e4\u06dc\u06d6\u06df\u06e5\u06d8\u06da\u06e0\u06d7\u06e8\u06d6\u06e6\u06e2\u06dc\u06ec\u06e1\u06dc\u06d6\u06e5\u06e5\u06e7\u06e5\u06ec\u06e7\u06e1\u06dc\u06d8\u06e6\u06e7\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06dc\u06d7\u06e4\u06d6\u06d8\u06d8\u06d6\u06d6\u06ec\u06d6\u06db\u06df\u06db\u06eb\u06e5\u06d8\u06d8\u06e6\u06e1\u06d8\u06d9\u06d7\u06d6\u06d8\u06d7\u06d6\u06e6\u06d8\u06d7\u06e5\u06d9\u06e6\u06da\u06d6\u06d8\u06e4\u06e7\u06d9\u06d8\u06e6\u06d8\u06e1\u06e4\u06e8\u06d8\u06eb\u06d8\u06e6\u06d8\u06e1\u06d6\u06dc\u06e1\u06db\u06e7"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const-string v0, "\u06db\u06eb\u06d7\u06e6\u06d8\u06d8\u06d8\u06d6\u06e2\u06e8\u06e2\u06ec\u06d6\u06e0\u06da\u06d6\u06d6\u06d6\u06d8\u06d7\u06e2\u06dc\u06d8\u06e4\u06e5\u06e4\u06d7\u06db\u06e0\u06d7\u06d6\u06e1\u06d8\u06e8\u06e5\u06d9\u06e8\u06eb\u06d7\u06dc\u06e6\u06e7\u06df\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xd6de01f -> :sswitch_3
        0x25d8e3e1 -> :sswitch_2
        0x425c1efb -> :sswitch_0
        0x5061e187 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e7\u06e1\u06e5\u06eb\u06e5\u06e5\u06e0\u06e0\u06db\u06df\u06da\u06e4\u06e7\u06e2\u06d6\u06d8\u06e4\u06dc\u06eb\u06e7\u06e1\u06e7\u06d8\u06e0\u06e6\u06d8\u06e7\u06e5\u06e5\u06eb\u06d8\u06e6\u06e0\u06e5\u06d7\u06eb\u06e8\u06dc\u06d8\u06e4\u06d7\u06d7\u06df\u06dc\u06e8\u06e5\u06df\u06d6\u06e6\u06da\u06e0\u06d6\u06e2\u06e2\u06e0\u06e5\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x8b

    const/16 v2, 0x28a

    const v3, 0x72551664

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d6\u06df\u06e5\u06df\u06e5\u06d8\u06e6\u06d9\u06d7\u06e6\u06e1\u06e6\u06d8\u06d8\u06dc\u06df\u06d7\u06da\u06e1\u06d8\u06d7\u06dc\u06d7\u06eb\u06e2\u06eb\u06d9\u06d8\u06e1\u06df\u06d8\u06d8\u06d9\u06eb\u06d9\u06e0\u06da\u06e4\u06d7\u06e1\u06e7\u06d8\u06d8\u06e1\u06e6\u06e6\u06e6\u06e7\u06e6\u06e5\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e0\u06da\u06e7\u06e2\u06dc\u06d8\u06d6\u06e5\u06d9\u06e4\u06d9\u06e7\u06e1\u06e6\u06d7\u06e6\u06e7\u06d9\u06dc\u06e8\u06da\u06e0\u06e6\u06eb\u06df\u06e2\u06e7\u06e2\u06da\u06e5\u06d8\u06e6"

    goto :goto_0

    :sswitch_2
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO00o([Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2795e43 -> :sswitch_0
        0x128115c3 -> :sswitch_1
        0x6e152a9f -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06e8\u06d6\u06d6\u06d8\u06e1\u06e8\u06e1\u06d8\u06e0\u06eb\u06e8\u06d6\u06e5\u06e1\u06da\u06db\u06eb\u06e4\u06da\u06df\u06e6\u06da\u06e1\u06d8\u06e5\u06e5\u06e6\u06d8\u06dc\u06ec\u06dc\u06dc\u06e8\u06e8\u06db\u06d8\u06d6\u06e6\u06e5\u06da\u06d8\u06db\u06d7\u06df\u06e2\u06da\u06df\u06d6\u06db\u06eb\u06e0\u06eb\u06e4\u06db\u06e8\u06e5\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x303

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x21a

    const/16 v2, 0x1ec

    const v3, 0x445565cf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d8\u06eb\u06e6\u06e4\u06dc\u06d8\u06ec\u06d9\u06e1\u06d8\u06e8\u06e5\u06e7\u06db\u06e8\u06e7\u06e8\u06e6\u06e6\u06e4\u06eb\u06e7\u06e4\u06e2\u06d9\u06e6\u06da\u06db\u06d7\u06e8\u06db\u06ec\u06e5\u06d8\u06e5\u06e2\u06e5\u06d8\u06d7\u06e5\u06e7\u06da\u06ec\u06da\u06eb\u06e1\u06d9\u06db\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06d7\u06dc\u06d8\u06e6\u06e4\u06e0\u06d6\u06e6\u06d6\u06d8\u06e4\u06d9\u06ec\u06da\u06d8\u06dc\u06e7\u06e6\u06e4\u06db\u06e6\u06d8\u06d7\u06df\u06e8\u06e7\u06db\u06d8\u06dc\u06e2\u06e1\u06d9\u06df\u06d9\u06df\u06e6\u06ec\u06eb\u06db\u06db\u06d7\u06da"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO0O0(Ljava/lang/String;)V

    const-string v0, "\u06eb\u06e6\u06e6\u06e4\u06e2\u06e7\u06e5\u06d8\u06d7\u06dc\u06d8\u06e5\u06d9\u06d6\u06d8\u06ec\u06e6\u06ec\u06d8\u06e5\u06eb\u06e2\u06eb\u06e8\u06d8\u06d6\u06d8\u06e1\u06d8\u06eb\u06d9\u06dc\u06e4\u06e8\u06db\u06d9\u06e1\u06e5\u06d8\u06db\u06da\u06e0\u06e7\u06d6\u06e2\u06d9\u06e0\u06ec\u06dc\u06e2\u06da\u06d6\u06dc\u06df\u06e8\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a58ece9 -> :sswitch_2
        -0x413734e0 -> :sswitch_1
        0xe4076c0 -> :sswitch_3
        0x6a77f5f1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreExecute()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06e2\u06dc\u06d8\u06ec\u06e4\u06e2\u06d8\u06df\u06e2\u06e0\u06ec\u06dc\u06da\u06e6\u06ec\u06e7\u06e8\u06eb\u06d7\u06eb\u06e5\u06d8\u06d9\u06da\u06e6\u06d8\u06d7\u06d6\u06da\u06e6\u06e7\u06e6\u06d8\u06d6\u06dc\u06d6\u06d8\u06eb\u06e2\u06df\u06e0\u06e0\u06d6\u06d8\u06e0\u06e4\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x3e6

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x381

    const/16 v3, 0xa0

    const v4, -0x76926839

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06dc\u06e1\u06d8\u06d7\u06e6\u06d6\u06dc\u06d9\u06e2\u06d8\u06e6\u06e5\u06d8\u06e2\u06eb\u06e1\u06d8\u06d7\u06d6\u06db\u06ec\u06d8\u06e6\u06dc\u06df\u06e6\u06ec\u06e7\u06e8\u06e0\u06e7\u06dc\u06d7\u06da\u06d8\u06d8\u06e5\u06e5\u06d8\u06d8\u06e6\u06e8\u06e1\u06e6\u06e5\u06e8\u06e4\u06e0\u06e5\u06e7\u06e5\u06db"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "\u06e7\u06db\u06e5\u06e7\u06e1\u06e2\u06e8\u06df\u06e8\u06e7\u06d8\u06d8\u06e2\u06e6\u06e6\u06d8\u06e0\u06d7\u06da\u06d9\u06ec\u06e6\u06e7\u06e2\u06d8\u06e4\u06ec\u06db\u06e1\u06df\u06d8\u06e2\u06ec\u06d8\u06da\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    const-string v0, "\u06e2\u06e6\u06dc\u06e2\u06d7\u06d6\u06d8\u06e7\u06e7\u06e4\u06d6\u06e2\u06d6\u06d8\u06e2\u06e7\u06ecO\u06e8\u06e5\u06eb\u06eb\u06e1\u06ec\u06e5\u06dc\u06d7\u06df\u06d7\u06e1\u06d8\u06e4\u06d7\u06d7\u06da\u06eb\u06d6"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f100252

    const v2, 0x7f100251

    invoke-static {v1, v1, v0, v2}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooO0oO(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Landroid/content/Context;II)V

    const-string v0, "\u06e5\u06e1\u06e2\u06df\u06d8\u06e5\u06db\u06d9\u06e6\u06d8\u06e7\u06e0\u06da\u06dc\u06e0\u06e1\u06d8\u06da\u06db\u06e5\u06db\u06d8\u06e6\u06d6\u06e1\u06e2\u06e1\u06d6\u06e6\u06d8\u06d7\u06e7\u06eb\u06db\u06e8\u06d6\u06d8\u06e5\u06e1\u06e8\u06da\u06ec\u06e5\u06d8\u06e8\u06eb\u06e6\u06ec\u06e7\u06e0\u06da\u06e6\u06e5\u06d8\u06d8\u06e7\u06d7\u06da\u06db\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x671d36fd -> :sswitch_0
        -0x10d4850c -> :sswitch_1
        0x223b397e -> :sswitch_4
        0x3ba2202f -> :sswitch_2
        0x4c40eefd -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06ec\u06d9\u06e6\u06e7\u06e7\u06e5\u06d8\u06e6\u06d6\u06e1\u06e0\u06d9\u06e5\u06d8\u06e4\u06da\u06e0\u06e6\u06e6\u06d9\u06d7\u06e8\u06d8\u06da\u06dc\u06df\u06d9\u06e8\u06dc\u06d8\u06ec\u06d6\u06e7\u06d8\u06e2\u06d9\u06e1\u06eb\u06d7\u06da\u06d8\u06dc\u06d8\u06d8\u06ec\u06e1\u06d8\u06d8\u06e0\u06d6\u06dc\u06d8\u06e2\u06d8\u06e6\u06e8\u06dc\u06d7\u06d7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x6e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x20c

    const/16 v2, 0x38c

    const v3, -0x3f176b34

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e8\u06e6\u06d8\u06d9\u06d6\u06d9\u06ec\u06e7\u06e7\u06e1\u06da\u06d9\u06e5\u06e5\u06dc\u06d9\u06df\u06e2\u06e6\u06e8\u06d8\u06d8\u06d9\u06d8\u06e5\u06e0\u06df\u06e4\u06d9\u06e6\u06db\u06ec\u06e8\u06d7\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e2\u06e7\u06d7\u06d9\u06e6\u06d8\u06e4\u06e4\u06e5\u06eb\u06e2\u06dc\u06d8\u06e5\u06d6\u06e7\u06e1\u06d8\u06d8\u06d7\u06eb\u06e1\u06d8\u06d6\u06e2\u06db\u06eb\u06ec\u06e5\u06d8\u06e0\u06df\u06d6\u06d8\u06d8\u06d9\u06dc\u06d8\u06db\u06e2\u06db\u06d7\u06e5\u06d8\u06e7\u06e6\u06eb\u06e2\u06e8\u06da\u06ec\u06d7\u06e8\u06d8\u06e1\u06eb\u06d8\u06d8\u06e7\u06eb\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;->OooO0OO([Ljava/lang/Integer;)V

    const-string v0, "\u06e5\u06eb\u06e8\u06e5\u06ec\u06e8\u06d8\u06d6\u06e1\u06e1\u06d8\u06e5\u06d8\u06e6\u06d8\u06e1\u06e7\u06dc\u06d8\u06e1\u06db\u06d6\u06d8\u06dc\u06da\u06ec\u06e6\u06e7\u06dc\u06e5\u06d8\u06e7\u06e2\u06e4\u06e1\u06dc\u06e0\u06eb\u06df\u06eb\u06ec\u06e1\u06da\u06e8\u06d8\u06e2\u06ec\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x34766d20 -> :sswitch_1
        -0x246252dc -> :sswitch_0
        -0x1ef2df46 -> :sswitch_3
        0x4b4a4cfd -> :sswitch_2
    .end sparse-switch
.end method
