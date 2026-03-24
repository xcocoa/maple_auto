.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Oooo0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/io/InputStream;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u06e8\u06e6\u06e7\u06d8\u06d6\u06e2\u06e1\u06e4\u06eb\u06ec\u06db\u06e0\u06db\u06e4\u06da\u06e5\u06d8\u06e8\u06e8\u06e0\u06d7\u06d8\u06d9\u06ec\u06e6\u06d9\u06df\u06e0\u06db\u06da\u06da\u06d7\u06dc\u06d6\u06d6\u06d8\u06da\u06e7\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x229

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f1

    const/16 v2, 0x3a5

    const v3, 0x227dffe4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e8\u06d8\u06e4\u06da\u06e2\u06e5\u06eb\u06e0\u06eb\u06e1\u06d8\u06d8\u06d9\u06e4\u06e8\u06e4\u06e2\u06e5\u06e8\u06e8\u06e8\u06d6\u06d6\u06e8\u06d8\u06e7\u06db\u06db\u06ec\u06d8\u06d6\u06e5\u06e1\u06e2\u06e6\u06ec\u06e4\u06e7\u06eb\u06d9\u06df\u06e2\u06d7\u06df\u06ec\u06e5\u06eb\u06df\u06e4\u06e0\u06e2\u06d8\u06d8\u06d8\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06d6\u06e1\u06d8\u06df\u06e0\u06e0\u06e2\u06df\u06d7\u06d9\u06d8\u06ec\u06e4\u06e0\u06d8\u06d8\u06dc\u06e1\u06d8\u06d8\u06d6\u06e2\u06e6\u06e4\u06da\u06df\u06e0\u06dc\u06d6\u06d8\u06ec\u06d7\u06e6\u06e0\u06ec\u06d7\u06e1\u06e6"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-string v0, "\u06e5\u06e8\u06e6\u06d6\u06d8\u06e1\u06d8\u06da\u06ec\u06e4\u06dc\u06da\u06dc\u06d8\u06d6\u06d9\u06e1\u06d8\u06e8\u06db\u06e4\u06eb\u06e2\u06e8\u06db\u06df\u06dc\u06d8\u06dc\u06df\u06d9\u06d8\u06e8\u06ec\u06dc\u06da\u06e1\u06d8\u06ec\u06eb\u06e8\u06d8\u06e5\u06e8\u06e5\u06d8\u06d8\u06d8\u06e5\u06d8\u06d9\u06dc\u06df\u06d6\u06e0\u06e1\u06e8\u06db\u06ec\u06e0\u06e7\u06e5"

    goto :goto_0

    :sswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be8ac5f -> :sswitch_0
        -0x74ebbcc7 -> :sswitch_2
        -0x4ed129c4 -> :sswitch_1
        0x75e179a4 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO0O0(Ljava/lang/Boolean;)V
    .locals 4

    const-string v0, "\u06eb\u06da\u06da\u06e1\u06e7\u06d8\u06d8\u06e8\u06df\u06e7\u06d9\u06e6\u06e5\u06df\u06e5\u06e1\u06dc\u06eb\u06e5\u06d8\u06e4\u06e1\u06eb\u06ec\u06db\u06eb\u06e1\u06e5\u06d8\u06eb\u06ec\u06d6\u06d8\u06e8\u06e8\u06d8\u06d8\u06d9\u06e0\u06ec\u06e8\u06e4\u06d9\u06e0\u06df\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x315

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x21f

    const/16 v2, 0x2c3

    const v3, 0x4930a0f7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e6\u06e0\u06df\u06eb\u06df\u06e7\u06e2\u06e8\u06d8\u06d9\u06d9\u06df\u06e6\u06df\u06dc\u06d8\u06e6\u06d6\u06eb\u06da\u06d8\u06db\u06e5\u06ec\u06dc\u06d8\u06ec\u06e7\u06e6\u06ec\u06d6\u06e7\u06eb\u06e0\u06da\u06da\u06d8\u06d6\u06d8\u06db\u06dc\u06d8\u06d8\u06e8\u06e4\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e2\u06d8\u06d8\u06e0\u06e5\u06e2\u06e1\u06da\u06e5\u06df\u06e7\u06e6\u06d8\u06db\u06e6\u06e4\u06d8\u06d7\u06e8\u06df\u06d6\u06e7\u06d8\u06e0\u06d9\u06e5\u06d8\u06e1\u06d8\u06e4\u06e4\u06e2\u06df\u06d8\u06e1\u06d9\u06eb\u06d8\u06d8\u06e0\u06d9\u06d9\u06df\u06e5\u06da"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1596497e -> :sswitch_2
        0x3a9f5caf -> :sswitch_1
        0x71894402 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06d8\u06da\u06dc\u06e7\u06e0\u06dc\u06d8\u06db\u06e7\u06d6\u06eb\u06dc\u06e6\u06d8\u06e1\u06e2\u06e1\u06d8\u06e7\u06e0\u06db\u06e2\u06d8\u06e7\u06d6\u06e6\u06d8\u06d9\u06ec\u06e8\u06d8\u06df\u06d9\u06d9\u06ec\u06ec\u06d7\u06e4\u06d9\u06dc\u06d8\u06e2\u06e5\u06e6\u06d9\u06df\u06df\u06e5\u06e8\u06d8\u06d8\u06d7\u06e2\u06e8\u06d8\u06eb\u06da\u06d7\u06ec\u06e5\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c6

    const/16 v2, 0x187

    const v3, -0x79afd26e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d9\u06e4\u06e6\u06db\u06d9\u06da\u06df\u06db\u06e1\u06e5\u06d7\u06d7\u06e0\u06d8\u06d8\u06d7\u06e1\u06e8\u06d8\u06d7\u06e0\u06df\u06e2\u06e7\u06dc\u06d8\u06da\u06eb\u06e1\u06e2\u06e1\u06d9\u06d8\u06df\u06d8\u06d8\u06e6\u06ec\u06e4\u06d9\u06e4\u06d8\u06d8\u06da\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e1\u06e8\u06d8\u06dc\u06e8\u06e0\u06d6\u06d9\u06eb\u06dc\u06e1\u06df\u06e6\u06dc\u06d7\u06d8\u06df\u06e1\u06d8\u06e5\u06e6\u06d8\u06d6\u06e1\u06d6\u06d8\u06ec\u06e4\u06e8\u06df\u06e0\u06df\u06da\u06e4\u06df\u06e0\u06e6\u06e7\u06dc\u06ec\u06e1\u06d8\u06dc\u06d9\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;->OooO00o([Ljava/io/InputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c4c5449 -> :sswitch_2
        -0x150572c1 -> :sswitch_0
        0x19f12e9e -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06df\u06ec\u06d6\u06d8\u06d9\u06df\u06e1\u06df\u06d8\u06e1\u06d8\u06d6\u06e6\u06dc\u06e1\u06e7\u06df\u06d6\u06e2\u06e5\u06d7\u06e6\u06df\u06eb\u06d8\u06df\u06e4\u06e1\u06dc\u06d8\u06e7\u06dc\u06ec\u06df\u06df\u06d9\u06da\u06ec\u06eb\u06e7\u06eb\u06d6\u06d8\u06eb\u06e7\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x275

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x11f

    const/16 v2, 0x117

    const v3, -0x465ecdf8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d6\u06e1\u06d8\u06e0\u06e2\u06e1\u06eb\u06e0\u06e8\u06d8\u06d9\u06e6\u06e5\u06ec\u06e7\u06e8\u06d8\u06d9\u06e4\u06d6\u06df\u06d6\u06eb\u06e2\u06d7\u06e7\u06e1\u06df\u06e1\u06df\u06ec\u06df\u06d7\u06e0\u06df\u06d9\u06d6\u06d8\u06d8\u06d6\u06d8\u06d8\u06ec\u06d6\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06e2\u06d9\u06e1\u06e5\u06d9\u06ec\u06ec\u06d8\u06da\u06d9\u06e1\u06d8\u06e0\u06da\u06dc\u06d8\u06d7\u06da\u06d8\u06d8\u06eb\u06d8\u06d6\u06da\u06e5\u06d6\u06e1\u06e7\u06e5\u06e5\u06e2\u06e5\u06e6\u06eb\u06d6\u06d8\u06e5\u06e2\u06e4\u06d8\u06e5\u06d6\u06d8\u06d7\u06e0\u06d9"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;->OooO0O0(Ljava/lang/Boolean;)V

    const-string v0, "\u06e8\u06df\u06db\u06ec\u06dc\u06d8\u06e5\u06e1\u06d8\u06d8\u06e1\u06e7\u06dc\u06d8\u06eb\u06e1\u06e2\u06e2\u06e5\u06d8\u06e4\u06e4\u06eb\u06e0\u06d6\u06e6\u06d8\u06d6\u06e8\u06e2\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5a1402c -> :sswitch_2
        -0x24da3e2 -> :sswitch_1
        -0x12d95b5 -> :sswitch_0
        0x3b00addb -> :sswitch_3
    .end sparse-switch
.end method
