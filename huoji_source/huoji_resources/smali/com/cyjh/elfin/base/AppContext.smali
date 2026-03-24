.class public Lcom/cyjh/elfin/base/AppContext;
.super Landroid/app/Application;

# interfaces
.implements Lz2/f6;


# static fields
.field public static o00Oo0:Lcom/cyjh/elfin/base/AppContext;

.field public static o00Ooo:I


# instance fields
.field public OoooOoO:Ljava/lang/String;

.field public OoooOoo:Z

.field public Ooooo00:Z

.field public Ooooo0o:Z

.field public OooooO0:Z

.field private OooooOO:Ljava/lang/String;

.field private OooooOo:Ljava/lang/String;

.field public Oooooo:Z

.field public Oooooo0:Z

.field public OoooooO:Z

.field public Ooooooo:Z

.field public o00O0O:Ljava/lang/String;

.field public o0OoOo0:Z

.field public ooOO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->OoooOoo:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Ooooo00:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Ooooo0o:Z

    iput-boolean v1, p0, Lcom/cyjh/elfin/base/AppContext;->OooooO0:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Oooooo0:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Oooooo:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->OoooooO:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Ooooooo:Z

    iput-boolean v1, p0, Lcom/cyjh/elfin/base/AppContext;->o0OoOo0:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->ooOO:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->o00O0O:Ljava/lang/String;

    return-void
.end method

.method public static OooO00o()Lcom/cyjh/elfin/base/AppContext;
    .locals 4

    const-string v0, "\u06d9\u06e7\u06e4\u06e2\u06df\u06e1\u06d8\u06db\u06e7\u06db\u06e5\u06e0\u06e6\u06d8\u06e7\u06d8\u06d7\u06d6\u06eb\u06e1\u06d8\u06dc\u06e4\u06e2\u06e8\u06e4\u06db\u06e2\u06da\u06da\u06ec\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x220

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f8

    const/16 v2, 0x348

    const v3, -0x33da160a    # -4.3493336E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/cyjh/elfin/base/AppContext;->o00Oo0:Lcom/cyjh/elfin/base/AppContext;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0xcc3a6da
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0O0(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const v4, -0x7173362c

    const-string v3, "\u06eb\u06db\u06e7\u06d8\u06d6\u06e5\u06d8\u06eb\u06e1\u06d9\u06e4\u06e1\u06e5\u06e6\u06d8\u06e0\u06d8\u06e5\u06d6\u06ec\u06d7\u06db\u06ec\u06e8\u06d8\u06e4\u06d6\u06eb\u06e5\u06db\u06e1\u06d8\u06e2\u06d7\u06db\u06e7\u06eb\u06d6\u06eb\u06ec\u06eb\u06dc\u06eb\u06eb\u06e0\u06ec\u06dc\u06e4\u06d9\u06d6\u06e7\u06e8"

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v5, -0x715f6c90

    const-string v3, "\u06e7\u06e7\u06eb\u06e5\u06da\u06d6\u06d8\u06d8\u06e4\u06da\u06e6\u06e2\u06e8\u06d8\u06da\u06d7\u06d6\u06d8\u06e1\u06dc\u06dc\u06e6\u06d9\u06db\u06d8\u06d9\u06ec\u06e7\u06dc\u06d6\u06d6\u06e6\u06e1\u06eb\u06e4\u06e0\u06d7\u06e7\u06dc\u06d8"

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const-string v3, "\u06dc\u06e1\u06dc\u06d8\u06e5\u06db\u06dc\u06d8\u06d6\u06d8\u06e1\u06e0\u06e7\u06da\u06e4\u06da\u06dc\u06e7\u06eb\u06d8\u06d8\u06e8\u06df\u06e1\u06d8\u06e5\u06e5\u06e6\u06e5\u06e6\u06e7\u06d8\u06da\u06e0\u06d6\u06d9\u06d7\u06d9\u06e0\u06e4\u06e6\u06e0\u06ec\u06e1\u06da\u06e7\u06dc\u06e6\u06e5\u06e1\u06dc\u06d8"

    goto :goto_0

    :cond_0
    const-string v3, "\u06df\u06e5\u06df\u06dc\u06e8\u06e8\u06d8\u06e8\u06db\u06d6\u06d8\u06da\u06e0\u06e8\u06e8\u06ec\u06db\u06e2\u06e1\u06d8\u06e2\u06e4\u06e5\u06e8\u06da\u06d8\u06e6\u06dc\u06e8\u06d8\u06eb\u06db\u06e7\u06e6\u06ec\u06e7\u06e5\u06dc\u06db\u06d8\u06da\u06e0\u06e1\u06d9\u06db\u06eb\u06d8\u06d8\u06d6\u06e7\u06e1\u06d8"

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u06d8\u06d9\u06d8\u06d8\u06d9\u06e1\u06e5\u06e8\u06dc\u06e4\u06e2\u06e1\u06e8\u06d8\u06e2\u06ec\u06e2\u06d6\u06ec\u06d8\u06d8\u06e1\u06e6\u06da\u06d6\u06db\u06ec\u06eb\u06e7\u06e5\u06dc\u06e5\u06d8"

    goto :goto_1

    :sswitch_3
    const-string v3, "\u06ec\u06e8\u06e6\u06d8\u06e2\u06db\u06d6\u06d8\u06eb\u06e6\u06d9\u06e8\u06ec\u06dc\u06d8\u06e2\u06e5\u06db\u06e4\u06e8\u06df\u06e1\u06e4\u06e4\u06eb\u06e6\u06d8\u06d6\u06ec\u06db\u06e0\u06e4\u06e4"

    goto :goto_1

    :sswitch_4
    const-string v3, "\u06e1\u06e4\u06ec\u06eb\u06e5\u06df\u06ec\u06d7\u06e5\u06e1\u06e1\u06e5\u06da\u06e1\u06db\u06eb\u06d7\u06e5\u06e2\u06e6\u06d8\u06d8\u06e0\u06d6\u06dc\u06e2\u06e8\u06d7\u06e4\u06d9\u06e5\u06d8\u06e2\u06db\u06ec\u06ec\u06e7\u06e5\u06d8\u06e7\u06da\u06e5\u06d8\u06e5\u06d9\u06e8\u06d6\u06d9\u06df\u06dc\u06d9\u06d9\u06e0\u06d9\u06d9\u06e0\u06e8"

    goto :goto_0

    :sswitch_5
    const-string v3, "\u06e4\u06eb\u06e5\u06d9\u06d6\u06e6\u06d8\u06da\u06e1\u06eb\u06ec\u06d8\u06dc\u06d8\u06ec\u06d8\u06e6\u06d8\u06eb\u06e1\u06e4\u06db\u06df\u06d6\u06d9\u06e1\u06d8\u06d8\u06e1\u06e6\u06d8\u06d8\u06e8\u06e5\u06d8\u06d6\u06e2\u06e7\u06e1\u06e0\u06d9\u06db\u06e6\u06e7\u06e7\u06da\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :sswitch_7
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const v3, -0x722b6dc9

    const-string v1, "\u06dc\u06da\u06d6\u06e8\u06e2\u06d7\u06d9\u06df\u06d6\u06e0\u06e5\u06df\u06d8\u06e5\u06dc\u06db\u06d9\u06ec\u06ec\u06e7\u06e6\u06e2\u06e8\u06e1\u06dc\u06ec\u06dc\u06d8\u06e8\u06e0\u06df\u06d9\u06d8\u06ec\u06e5\u06e0\u06d7\u06e6\u06e5\u06e8\u06e8\u06dc\u06dc\u06e1\u06e4\u06d7\u06e5\u06dc\u06d8\u06e4\u06e1\u06e2\u06e4\u06da\u06e1"

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_5

    :sswitch_8
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :sswitch_9
    :try_start_5
    const-string v1, "\u06e0\u06e8\u06e5\u06d8\u06d6\u06e8\u06d7\u06d7\u06da\u06eb\u06e0\u06df\u06d9\u06d9\u06e1\u06e6\u06e7\u06e5\u06e1\u06d8\u06df\u06d6\u06d9\u06e2\u06df\u06e6\u06ec\u06d9\u06d9\u06da\u06d6\u06dc\u06e0\u06e5\u06e1\u06d9\u06e8\u06d8\u06e4\u06e0\u06d6\u06d6\u06d9\u06e0\u06e4\u06d8\u06d9\u06d9\u06d8"

    goto :goto_5

    :sswitch_a
    const v4, -0x299fc747

    const-string v1, "\u06eb\u06e6\u06d8\u06e2\u06e1\u06e6\u06d8\u06d7\u06e5\u06e1\u06d8\u06db\u06e6\u06e8\u06d8\u06dc\u06e8\u06e8\u06ec\u06e8\u06e6\u06d8\u06eb\u06d8\u06e6\u06d8\u06e1\u06d7\u06d9\u06d6\u06e7\u06dc\u06e8\u06ec\u06db\u06e0\u06d6\u06dc\u06ec\u06ec\u06dc\u06d8\u06e7\u06e1\u06da\u06da\u06d8\u06e6\u06d8"

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_6

    :sswitch_b
    if-eqz v2, :cond_1

    const-string v1, "\u06da\u06e0\u06e8\u06dc\u06db\u06d8\u06d8\u06e1\u06e5\u06e8\u06e7\u06d6\u06d8\u06d8\u06d9\u06dc\u06df\u06ec\u06df\u06d6\u06e4\u06da\u06d6\u06d8\u06db\u06e8\u06e6\u06db\u06d6\u06e5\u06dc\u06e4\u06ec"

    goto :goto_6

    :cond_1
    const-string v1, "\u06e0\u06df\u06e6\u06e4\u06df\u06d7\u06d6\u06e4\u06e8\u06d8\u06e8\u06e0\u06e1\u06d8\u06dc\u06e1\u06e4\u06e2\u06e5\u06d6\u06d8\u06d8\u06e6\u06d7\u06e0\u06e0\u06d7\u06da\u06e4\u06e8\u06d8\u06dc\u06e2\u06e1\u06da\u06eb\u06ec\u06ec\u06e4\u06e5\u06e7\u06e7\u06e4\u06dc\u06d9\u06e5"

    goto :goto_6

    :sswitch_c
    const-string v1, "\u06dc\u06e0\u06e5\u06d8\u06e1\u06e5\u06e7\u06db\u06db\u06e8\u06e0\u06e0\u06df\u06e4\u06dc\u06e7\u06d8\u06d6\u06e5\u06ec\u06d6\u06e7\u06e1\u06d8\u06e4\u06da\u06e6\u06dc\u06e2\u06e6\u06d8\u06db\u06eb\u06d9\u06e6\u06d6\u06db\u06d7\u06d7\u06e7\u06d7\u06e7\u06e6\u06d8\u06d8\u06d9\u06d6\u06e2\u06e4\u06dc\u06e2\u06e0\u06e1"

    goto :goto_6

    :sswitch_d
    const-string v1, "\u06db\u06e7\u06da\u06d9\u06e7\u06d7\u06e2\u06e2\u06e8\u06e5\u06ec\u06e6\u06ec\u06e1\u06ec\u06eb\u06e4\u06e5\u06d8\u06eb\u06db\u06dc\u06e7\u06d9\u06dc\u06e2\u06da\u06dc\u06ec\u06d8\u06eb\u06e0\u06d7\u06e8\u06ec\u06e4\u06ec\u06da\u06da\u06d6\u06e2\u06e4"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :sswitch_e
    const-string v1, "\u06d9\u06e8\u06d6\u06d8\u06e1\u06d9\u06e2\u06da\u06e6\u06d6\u06d7\u06da\u06e1\u06d8\u06d9\u06dc\u06e7\u06db\u06df\u06e7\u06e2\u06e4\u06e5\u06da\u06d8\u06d8\u06e5\u06d8\u06d8\u06da\u06da\u06e0\u06e7\u06e2\u06dc\u06db\u06d6\u06e5\u06e1\u06d7\u06e6\u06d7\u06e0\u06dc\u06e0\u06db\u06e6\u06d8\u06e8\u06e7\u06d8\u06d7\u06d7\u06d6\u06d8\u06d8\u06e8\u06e5"

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    const v3, 0x73f7d340

    const-string v0, "\u06ec\u06df\u06d6\u06d6\u06d8\u06e6\u06ec\u06e7\u06e5\u06df\u06d7\u06df\u06e5\u06eb\u06e6\u06d7\u06d6\u06e4\u06e4\u06df\u06db\u06e5\u06d6\u06d8\u06d8\u06d8\u06db\u06e8\u06da\u06e0\u06d7\u06e5\u06eb\u06d7\u06d7\u06db\u06e5\u06d8\u06e6\u06e6\u06dc\u06e2\u06e6\u06ec\u06e8\u06e5\u06d8\u06d8\u06dc\u06e1\u06e6\u06d9\u06e5\u06e6\u06da\u06e4\u06e5\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_7

    :goto_8
    :sswitch_f
    throw v1

    :sswitch_10
    const-string v0, "\u06d6\u06e7\u06e0\u06d8\u06d8\u06e7\u06df\u06eb\u06d6\u06d8\u06db\u06d7\u06d7\u06d9\u06e4\u06e8\u06df\u06e1\u06d8\u06da\u06db\u06e4\u06e2\u06e1\u06e6\u06df\u06d6\u06d6\u06db\u06e8\u06ec\u06eb\u06e7\u06e1\u06d8\u06e2\u06d9\u06e8\u06d8\u06e2\u06d7\u06dc\u06e0\u06e6\u06e8"

    goto :goto_7

    :sswitch_11
    const v4, 0x2f4905e4

    const-string v0, "\u06d7\u06ec\u06d6\u06e8\u06eb\u06d6\u06e1\u06e4\u06e2\u06e8\u06e7\u06d6\u06d8\u06d9\u06e8\u06e8\u06e6\u06e6\u06d9\u06d9\u06e8\u06db\u06ec\u06d9\u06e8\u06dc\u06e8\u06db\u06e7\u06db\u06da\u06d7\u06e0\u06d7\u06ec\u06e1\u06d8\u06ec\u06db\u06e5\u06ec\u06e4\u06e0\u06e5\u06e5\u06d8\u06e6\u06e6\u06d6\u06d8"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_5

    goto :goto_9

    :sswitch_12
    const-string v0, "\u06df\u06da\u06dc\u06d6\u06d6\u06d6\u06d8\u06e0\u06d8\u06e7\u06d8\u06d6\u06d9\u06e5\u06da\u06ec\u06e8\u06e4\u06da\u06e1\u06e5\u06e7\u06da\u06e1\u06df\u06e2\u06e8\u06e1\u06d8\u06d8\u06e2\u06d8\u06d8\u06e6\u06d6\u06d6\u06d8\u06db\u06dc\u06e8"

    goto :goto_7

    :cond_2
    const-string v0, "\u06dc\u06db\u06e6\u06d8\u06df\u06d6\u06e8\u06d8\u06e2\u06e0\u06e1\u06d8\u06d9\u06d8\u06da\u06e5\u06e4\u06e6\u06d8\u06e1\u06ec\u06e7\u06d7\u06d8\u06eb\u06d8\u06e2\u06e5\u06d8\u06e2\u06e8\u06e1\u06d9\u06e1\u06d9\u06eb\u06db\u06e4\u06eb\u06e4\u06e2\u06da\u06d8\u06e1\u06e8\u06e6\u06e2\u06e6\u06e8\u06ec\u06ec\u06eb\u06d6\u06e0\u06da\u06e6\u06d8\u06d7\u06db\u06dc\u06d8"

    goto :goto_9

    :sswitch_13
    if-eqz v2, :cond_2

    const-string v0, "\u06e1\u06d8\u06e7\u06d8\u06d7\u06e7\u06e2\u06e7\u06d8\u06ec\u06eb\u06d9\u06e5\u06d8\u06d6\u06d6\u06d6\u06e7\u06eb\u06e8\u06e6\u06da\u06e1\u06ec\u06d9\u06d9\u06ec\u06e5\u06d7\u06db\u06d9\u06e6\u06e8\u06eb\u06e1\u06df\u06d8\u06d6\u06d8\u06db\u06df\u06e6\u06d8\u06ec\u06dc\u06dc\u06d8\u06d8\u06da\u06eb\u06e0\u06df\u06dc\u06d8\u06eb\u06df\u06e6\u06d9\u06dc\u06e4"

    goto :goto_9

    :sswitch_14
    const-string v0, "\u06dc\u06ec\u06e1\u06df\u06e1\u06e1\u06e6\u06ec\u06dc\u06d8\u06e6\u06e8\u06e4\u06e4\u06e8\u06db\u06db\u06dc\u06d6\u06d8\u06e5\u06e1\u06d6\u06e5\u06d9\u06df\u06e8\u06dc\u06eb\u06e1\u06e4\u06ec\u06eb\u06d7\u06da\u06e8\u06da\u06e6"

    goto :goto_9

    :sswitch_15
    const-string v0, "\u06dc\u06e0\u06dc\u06e7\u06eb\u06e4\u06d8\u06e4\u06e1\u06d8\u06d8\u06e5\u06d8\u06e5\u06eb\u06d8\u06e0\u06df\u06e6\u06d7\u06d6\u06e8\u06e6\u06e2\u06e5\u06d8\u06e4\u06e7\u06e5\u06d8\u06d8\u06e1\u06df\u06d6\u06df\u06df\u06e1\u06e7\u06d8\u06d8\u06d8\u06e0\u06d6\u06d8\u06db\u06d6\u06e8\u06e2\u06e4\u06e0\u06e6\u06ec\u06e2"

    goto :goto_7

    :sswitch_16
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_4

    :sswitch_17
    move-object v0, v1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1031b520 -> :sswitch_17
        0x1a3024c -> :sswitch_5
        0x38b75dee -> :sswitch_6
        0x724efab6 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5860597a -> :sswitch_2
        0x24c6ee93 -> :sswitch_3
        0x4f51e67f -> :sswitch_4
        0x5c610c67 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4078cc04 -> :sswitch_e
        0x3256ed8 -> :sswitch_8
        0x42b537c9 -> :sswitch_a
        0x4ab8dff5 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7bcd70e2 -> :sswitch_9
        -0x6c4558a5 -> :sswitch_b
        -0x10c1bb85 -> :sswitch_c
        0x3eb1f5df -> :sswitch_d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x39ad007e -> :sswitch_16
        0x18806fc7 -> :sswitch_f
        0x63c5302d -> :sswitch_11
        0x75ca4e83 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x5fe323f5 -> :sswitch_10
        -0x4887382b -> :sswitch_12
        0x11872a5b -> :sswitch_13
        0x6ece52a5 -> :sswitch_14
    .end sparse-switch
.end method

.method private OooO0OO()V
    .locals 12

    const-string v0, "\u06e8\u06da\u06d8\u06d8\u06e5\u06e8\u06d8\u06e6\u06e7\u06dc\u06d8\u06e5\u06d9\u06d9\u06eb\u06e8\u06ec\u06df\u06dc\u06e5\u06e4\u06d6\u06d9\u06eb\u06e6\u06e5\u06eb\u06d7\u06e5\u06d6\u06d8\u06eb\u06e1\u06dc\u06e7\u06db\u06da\u06dc\u06d7\u06e8\u06d8\u06e5\u06e0\u06e4\u06d9\u06e8\u06d8\u06e8\u06db\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1c8

    const/16 v2, 0x17e

    const v3, -0x78045514

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e2\u06df\u06dc\u06d8\u06e6\u06df\u06e6\u06e0\u06e1\u06e4\u06d8\u06e2\u06e2\u06e2\u06d7\u06e2\u06da\u06d9\u06d9\u06eb\u06da\u06d8\u06e4\u06d6\u06ec\u06da\u06e4\u06d9\u06eb\u06e8\u06e6\u06dc\u06e6\u06e4\u06eb\u06d7\u06d8\u06e1\u06d8\u06ec\u06d9\u06eb\u06da\u06e6\u06d8\u06df\u06da\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/a6;->OooO0O0()Lz2/a6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/a6;->OooO0OO(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "\u06da\u06d9\u06df\u06dc\u06d9\u06d7\u06d6\u06e8\u06e5\u06e6\u06d6\u06d6\u06d8\u06ec\u06e8\u06e1\u06d8\u06e8\u06e0\u06ec\u06da\u06e2\u06e5\u06d8\u06e6\u06e4\u06eb\u06ec\u06d8\u06e5\u06e2\u06dc\u06e5\u06d8\u06d8\u06d9\u06df\u06d8\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "\u06dc\u06e5\u06dc\u06da\u06e1\u06e7\u06d6\u06d9\u06df\u06e0\u06e6\u06dc\u06d8\u06e4\u06e1\u06e1\u06d8\u06eb\u06e2\u06df\u06d8\u06da\u06e0\u06df\u06d9\u06e4\u06e8\u06d9\u06ec\u06ec\u06e4\u06ec\u06ec\u06d8\u06ec\u06eb\u06d7\u06e8\u06d8\u06dc\u06d8\u06d6\u06e6\u06e0\u06e0"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/i6;->OooO0O0()Z

    move-result v0

    sget-object v1, Lz2/i6;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x28d

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100219

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "6.7.3"

    const-string v9, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCDrrGt+/bokrHsUBfylH+MsiojIBGQQLWlup1avdwsvnZ+seh1y2y+1QWHjTDNcwXpcbIOOz7qlJ2CtKsap/NwUvXHt2TmRP4262F41f2HUU9VlB0Rc2lAgTuRghpeqKGvyQO3RpiGWcgh1ukrGUDR9F55kxoAe9i+RgYFUFn8wIDAQAB"

    const-string v10, "MIICcwIBADANBgkqhkiG9w0BAQEFAASCAl0wggJZAgEAAoGBAKkABISPx6VxlDG/3SYxOlhic25QZpBZDDI+YnRWAV6SK7BbyyXTPCXqU0USQlTXe2ecuuEcKjqCpbwo52qLEdd/5x15isGMCsSDUuRdFhS9iHOgv95iND2X3hT23tyXpyQTZaOPpjVkKk9lk74PrjCJBtCuhhCcSueDTbmuw+yPAgMBAAECfzjFyL6/jlIF1cLgsWojH3aRnDVyzQGw6Gf4jRqHye37LLISJCyQyaPzFAYgHChkOxCTljQJQiZlvUd4dkVUcqlmjTI31wTvCJREJDGz6pqgJ0V3fQMMjHyGHf6G3Pio3Nzjll28apR7Xhzy9ISwPJBX0REWGOfbUJTBxYC2gfECQQDRltLMtdQZY2NV8fNJmpKbYFbIDNOQbESLk74d8CIn9keK9ANth9l1MBP4XlQwnwREWgM6meHC3qO3VqnF0TVTAkEAzmxIYk5Ecn8nuh4VQsf9ixCbABzHu0ZhBIpJBgIVKL4wnurpltvuGM7JXh8vZb4MxoTilC2x9oi6pzHS7t7oVQJARpSaDKI2+Q3FSA4gteq98GEzGE9pd7teIfrxDTfu6LJBSYP/G4WiL5qvPvbVN0J1t2bwq21i37MGQxmGNr3LTQJAMk0MrnfoEgaORbpC8A0P6a1YOATLXwVdat/Pv5kOUulVq8QOu+ZH9N+fDkKHKEHRlyaWmAkyjqLu6QMpJXBIKQJABP7dESwipWkS7vym5cw62uoa9VCeKi6A+GKFy+tHdat8Rmdysc+EUfVoKtsndSW0o+nZ49cPR4o3m2h5SNXI/Q=="

    const v11, 0x7f100133

    invoke-virtual {p0, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lz2/j3;->OooOOO(ZLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06e0\u06e6\u06d6\u06d7\u06df\u06df\u06d7\u06eb\u06e6\u06d8\u06e4\u06e1\u06e6\u06d8\u06e1\u06db\u06e5\u06d8\u06d8\u06da\u06eb\u06e7\u06d8\u06ec\u06df\u06e7\u06e7\u06d6\u06d7\u06df\u06d9\u06dc\u06e8\u06db\u06e7\u06e2\u06e4\u06e7\u06dc\u06ec\u06e6\u06e5\u06dc\u06e6"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/gc;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06dc\u06da\u06e2\u06d8\u06eb\u06e1\u06e4\u06d9\u06e5\u06d8\u06d9\u06e0\u06e7\u06e1\u06d6\u06e5\u06d8\u06d6\u06ec\u06d6\u06d9\u06df\u06e0\u06e5\u06e1\u06e2\u06e1\u06da\u06da\u06e8\u06df\u06eb\u06e2\u06e5\u06e1\u06e5\u06e4\u06db\u06e8\u06ec\u06e5\u06d8\u06d7\u06d8\u06d7"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ih;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06e7\u06dc\u06ec\u06e1\u06d9\u06ec\u06e6\u06d6\u06e7\u06ec\u06e8\u06e0\u06d9\u06eb\u06e0\u06e0\u06d8\u06da\u06e4\u06db\u06e5\u06dc\u06d8\u06e4\u06ec\u06dc\u06d6\u06db\u06d9\u06e1\u06d8\u06e8\u06d8\u06dc\u06e2\u06d6\u06db\u06d9\u06e8\u06d9\u06db\u06d7\u06e6\u06e2"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0o0()V

    const-string v0, "\u06e7\u06e4\u06e1\u06e4\u06e5\u06e1\u06d8\u06e6\u06d6\u06e4\u06d9\u06e0\u06e5\u06d6\u06e8\u06ec\u06e4\u06d7\u06ec\u06dc\u06e8\u06ec\u06e1\u06e6\u06d6\u06eb\u06df\u06d7\u06d9\u06ec\u06dc\u06d9\u06dc\u06e4\u06eb\u06ec\u06eb\u06ec\u06d7\u06da\u06e1\u06d6\u06e8"

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/z6;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06df\u06e8\u06df\u06df\u06d9\u06e8\u06d8\u06d9\u06da\u06e6\u06e6\u06e0\u06dc\u06d8\u06e7\u06da\u06e5\u06e1\u06d6\u06e0\u06df\u06d8\u06e7\u06e1\u06d8\u06ec\u06d6\u06eb\u06e2\u06dc\u06e2\u06da\u06d9\u06e7\u06e8\u06e8\u06e0\u06d7\u06ec\u06df\u06e7\u06e4\u06e0"

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/i7;->OooOooo(I)V

    const-string v0, "\u06e2\u06ec\u06e6\u06d9\u06da\u06d8\u06d8\u06e1\u06db\u06d6\u06ec\u06e7\u06d9\u06e7\u06d9\u06db\u06e2\u06e8\u06e1\u06d8\u06d7\u06df\u06e6\u06d7\u06d8\u06eb\u06da\u06df\u06e1\u06eb\u06db\u06e8\u06da\u06d9\u06e6\u06d6\u06dc\u06df\u06d7\u06e6\u06e2\u06e0\u06db\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lz2/ec;->OooO0Oo()Lz2/ec;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ec;->OooO0o0(Landroid/content/Context;)Lz2/ec;

    const-string v0, "\u06dc\u06e1\u06e7\u06d8\u06e4\u06d6\u06e6\u06d8\u06d8\u06ec\u06db\u06dc\u06df\u06e2\u06e8\u06e7\u06dc\u06e4\u06d7\u06d6\u06d8\u06da\u06dc\u06da\u06d9\u06e0\u06e5\u06e4\u06df\u06e6\u06d8\u06e4\u06da\u06e2\u06d9\u06da\u06e0\u06d7\u06d7\u06d9\u06e4\u06db\u06d9\u06e1\u06d7"

    goto/16 :goto_0

    :sswitch_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d45f676 -> :sswitch_6
        -0x5bc0a579 -> :sswitch_7
        -0x137b8a4e -> :sswitch_2
        0xdbecae9 -> :sswitch_4
        0x10c62c8e -> :sswitch_3
        0x231eccf1 -> :sswitch_9
        0x2846551d -> :sswitch_0
        0x28b883c6 -> :sswitch_1
        0x3557a72b -> :sswitch_a
        0x74c66a56 -> :sswitch_5
        0x7da542e7 -> :sswitch_8
    .end sparse-switch
.end method

.method private OooO0Oo()V
    .locals 12

    const-string v0, "\u06e0\u06df\u06db\u06e0\u06e2\u06e0\u06e7\u06e7\u06e2\u06d8\u06d8\u06d9\u06e4\u06e5\u06eb\u06df\u06dc\u06e8\u06e1\u06d6\u06e1\u06ec\u06d8\u06e6\u06ec\u06d8\u06ec\u06ec\u06dc\u06db\u06e4\u06df\u06e0\u06db\u06db\u06e8\u06d8\u06eb\u06da\u06eb\u06e1\u06da\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x351

    const/16 v2, 0x85

    const v3, 0x573242a0    # 1.95999222E14f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06eb\u06eb\u06dc\u06db\u06dc\u06d6\u06e1\u06e5\u06d8\u06d8\u06e5\u06db\u06d9\u06d7\u06d9\u06e8\u06e6\u06da\u06e2\u06dc\u06d8\u06db\u06e7\u06d6\u06d8\u06e1\u06d7\u06d8\u06e6\u06d9\u06ec\u06db\u06df\u06e5\u06d8\u06eb\u06e6\u06ec\u06ec\u06e1\u06d8\u06e2\u06d9\u06ec\u06e0\u06eb\u06ec\u06e4"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/a6;->OooO0O0()Lz2/a6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/a6;->OooO0OO(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "\u06ec\u06d7\u06ec\u06dc\u06da\u06e1\u06eb\u06e8\u06d8\u06e0\u06df\u06d8\u06d8\u06d6\u06df\u06e4\u06e2\u06d8\u06e5\u06d8\u06e8\u06e1\u06e4\u06e4\u06e0\u06e2\u06d7\u06d9\u06e7\u06e5\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "\u06e0\u06e4\u06e8\u06d8\u06ec\u06db\u06d9\u06e4\u06e8\u06d8\u06df\u06e8\u06e1\u06d8\u06e2\u06ec\u06d6\u06da\u06e1\u06eb\u06e0\u06db\u06dc\u06d8\u06df\u06e8\u06eb\u06d9\u06e2\u06da\u06d8\u06d7\u06d6\u06eb\u06eb\u06d9\u06eb\u06e4\u06e8\u06d8\u06dc\u06e5\u06e6\u06e0\u06db\u06e0\u06e0\u06d7\u06e5\u06e0\u06e1\u06e6\u06eb\u06e2\u06e8\u06da\u06e6\u06dc"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/ka0;->Oooo0(Landroid/content/Context;)V

    const-string v0, "\u06eb\u06e0\u06dc\u06d8\u06d8\u06e5\u06d6\u06d8\u06e1\u06d6\u06e7\u06d8\u06db\u06e8\u06dc\u06df\u06e5\u06d9\u06e5\u06e5\u06d6\u06d8\u06e1\u06da\u06db\u06e4\u06ec\u06e7\u06e7\u06e0\u06e8\u06d8\u06eb\u06dc\u06d8\u06df\u06db\u06e8\u06d8\u06e2\u06e7"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lz2/i6;->OooO0O0()Z

    move-result v0

    sget-object v1, Lz2/i6;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x28d

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100219

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "6.7.3"

    const-string v9, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCDrrGt+/bokrHsUBfylH+MsiojIBGQQLWlup1avdwsvnZ+seh1y2y+1QWHjTDNcwXpcbIOOz7qlJ2CtKsap/NwUvXHt2TmRP4262F41f2HUU9VlB0Rc2lAgTuRghpeqKGvyQO3RpiGWcgh1ukrGUDR9F55kxoAe9i+RgYFUFn8wIDAQAB"

    const-string v10, "MIICcwIBADANBgkqhkiG9w0BAQEFAASCAl0wggJZAgEAAoGBAKkABISPx6VxlDG/3SYxOlhic25QZpBZDDI+YnRWAV6SK7BbyyXTPCXqU0USQlTXe2ecuuEcKjqCpbwo52qLEdd/5x15isGMCsSDUuRdFhS9iHOgv95iND2X3hT23tyXpyQTZaOPpjVkKk9lk74PrjCJBtCuhhCcSueDTbmuw+yPAgMBAAECfzjFyL6/jlIF1cLgsWojH3aRnDVyzQGw6Gf4jRqHye37LLISJCyQyaPzFAYgHChkOxCTljQJQiZlvUd4dkVUcqlmjTI31wTvCJREJDGz6pqgJ0V3fQMMjHyGHf6G3Pio3Nzjll28apR7Xhzy9ISwPJBX0REWGOfbUJTBxYC2gfECQQDRltLMtdQZY2NV8fNJmpKbYFbIDNOQbESLk74d8CIn9keK9ANth9l1MBP4XlQwnwREWgM6meHC3qO3VqnF0TVTAkEAzmxIYk5Ecn8nuh4VQsf9ixCbABzHu0ZhBIpJBgIVKL4wnurpltvuGM7JXh8vZb4MxoTilC2x9oi6pzHS7t7oVQJARpSaDKI2+Q3FSA4gteq98GEzGE9pd7teIfrxDTfu6LJBSYP/G4WiL5qvPvbVN0J1t2bwq21i37MGQxmGNr3LTQJAMk0MrnfoEgaORbpC8A0P6a1YOATLXwVdat/Pv5kOUulVq8QOu+ZH9N+fDkKHKEHRlyaWmAkyjqLu6QMpJXBIKQJABP7dESwipWkS7vym5cw62uoa9VCeKi6A+GKFy+tHdat8Rmdysc+EUfVoKtsndSW0o+nZ49cPR4o3m2h5SNXI/Q=="

    const v11, 0x7f100133

    invoke-virtual {p0, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lz2/j3;->OooOOO(ZLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06da\u06eb\u06eb\u06e6\u06d9\u06d8\u06d8\u06e8\u06df\u06e4\u06d8\u06ec\u06eb\u06df\u06d6\u06e1\u06df\u06ec\u06d7\u06df\u06e8\u06e8\u06d6\u06d6\u06e7\u06d7\u06e8\u06e6\u06d6"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/gc;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06e4\u06e6\u06df\u06d8\u06d7\u06d9\u06e6\u06e4\u06d8\u06d8\u06da\u06e8\u06e7\u06d8\u06e6\u06eb\u06d8\u06d8\u06e4\u06e8\u06d8\u06e4\u06d9\u06eb\u06e5\u06e4\u06e2\u06dc\u06e1\u06e5\u06d8\u06d6\u06da\u06e8"

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ih;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06e5\u06d8\u06da\u06dc\u06e7\u06e8\u06d8\u06dc\u06da\u06eb\u06e2\u06d7\u06db\u06da\u06e2\u06e6\u06d8\u06e8\u06dc\u06db\u06e7\u06d6\u06d6\u06d8\u06ec\u06ec\u06d6\u06e0\u06e8\u06e2\u06dc\u06e5\u06d8\u06d8\u06e7\u06dc\u06db\u06eb\u06ec\u06df"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0oO()V

    const-string v0, "\u06d7\u06e7\u06e6\u06d8\u06eb\u06df\u06e8\u06d8\u06e0\u06dc\u06e0\u06e5\u06d7\u06e5\u06d8\u06d6\u06e7\u06dc\u06e1\u06e5\u06e2\u06e5\u06e1\u06ec\u06d8\u06e2\u06e1\u06d8\u06e5\u06d7\u06e1\u06e8\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0o0()V

    const-string v0, "\u06d8\u06e5\u06dc\u06ec\u06eb\u06dc\u06d8\u06e4\u06db\u06e0\u06d6\u06e4\u06e4\u06e2\u06e2\u06e2\u06dc\u06e6\u06db\u06eb\u06db\u06d9\u06df\u06e4\u06d6\u06d8\u06d9\u06e6\u06da\u06e7\u06db\u06e1\u06d8\u06d6\u06e2\u06dc\u06d6\u06e4\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/z6;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06e5\u06d9\u06d9\u06e4\u06eb\u06d9\u06da\u06e6\u06da\u06d9\u06e7\u06e7\u06dc\u06e0\u06e4\u06e8\u06e2\u06d8\u06d9\u06e2\u06d7\u06ec\u06d8\u06d8\u06e4\u06e7\u06e4\u06e2\u06eb\u06e4"

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/i7;->OooOooo(I)V

    const-string v0, "\u06e2\u06d8\u06e2\u06e7\u06ec\u06da\u06e0\u06eb\u06e4\u06eb\u06e8\u06e5\u06d8\u06e6\u06e0\u06e2\u06e0\u06ec\u06eb\u06ec\u06e2\u06e1\u06d9\u06e2\u06e2\u06d9\u06e0\u06d7\u06e7\u06e6\u06e7\u06e6\u06e7\u06d8\u06eb\u06df\u06e8"

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Lz2/ec;->OooO0Oo()Lz2/ec;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ec;->OooO0o0(Landroid/content/Context;)Lz2/ec;

    const-string v0, "\u06d9\u06e2\u06e6\u06d8\u06e5\u06dc\u06e1\u06e0\u06d8\u06e7\u06e1\u06da\u06e1\u06d8\u06d6\u06e7\u06e5\u06d8\u06e8\u06db\u06df\u06df\u06e4\u06e0\u06dc\u06d8\u06eb\u06df\u06d8\u06d8\u06d7\u06e4\u06e7\u06e5\u06d8\u06e6\u06d8\u06e6\u06d6\u06d6\u06e6\u06eb\u06dc\u06dc\u06e5\u06e4\u06dc\u06e0\u06db\u06e6\u06e2\u06e5"

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0oo()V

    const-string v0, "\u06e0\u06e8\u06dc\u06d8\u06dc\u06d7\u06df\u06d9\u06e8\u06e8\u06df\u06eb\u06dc\u06d8\u06da\u06d8\u06d6\u06d8\u06ec\u06ec\u06e8\u06d7\u06db\u06e5\u06d8\u06e5\u06e5\u06e8\u06d8\u06e4\u06dc\u06dc\u06d8\u06df\u06d8\u06e0\u06d8\u06e5\u06e5\u06d9\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a902f93 -> :sswitch_a
        -0x601eb147 -> :sswitch_b
        -0x30e1b5d5 -> :sswitch_2
        -0x2cb0632d -> :sswitch_c
        -0x241bfd9a -> :sswitch_3
        -0x143ba4fd -> :sswitch_5
        -0x104acdd7 -> :sswitch_6
        -0xecbdd66 -> :sswitch_d
        -0x71e193b -> :sswitch_4
        0x3aad5ae6 -> :sswitch_8
        0x431a0f83 -> :sswitch_9
        0x525eca0b -> :sswitch_7
        0x7393d14f -> :sswitch_1
        0x754b6176 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooO0o()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "\u06d7\u06d7\u06e1\u06d8\u06ec\u06db\u06e2\u06e7\u06e4\u06df\u06d7\u06e5\u06e8\u06d8\u06e1\u06e8\u06e6\u06d6\u06e0\u06db\u06df\u06ec\u06e0\u06e1\u06d7\u06e5\u06e0\u06db\u06e2\u06e0\u06d7\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x369

    const/16 v2, 0x2d1

    const v3, 0x6a08822e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e0\u06eb\u06db\u06dc\u06e0\u06ec\u06df\u06db\u06e8\u06d7\u06eb\u06d9\u06d6\u06dc\u06d8\u06e0\u06e7\u06e6\u06d8\u06dc\u06d6\u06d8\u06d8\u06da\u06e8\u06e0\u06e4\u06e7\u06e0\u06e2\u06e5\u06e4\u06df\u06e5\u06e1\u06d8\u06d6\u06d9\u06d8\u06dc\u06da\u06e8\u06d6\u06d8\u06e7\u06e2\u06db\u06e7\u06e2\u06dc\u06d6\u06eb\u06e5\u06d9\u06ec\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/cyjh/elfin/base/AppContext;->o00Ooo:I

    const-string v0, "\u06e4\u06d7\u06e0\u06da\u06e4\u06e5\u06d8\u06e7\u06e4\u06e8\u06d8\u06e0\u06e6\u06e6\u06d8\u06e0\u06e8\u06e6\u06e2\u06ec\u06eb\u06d6\u06eb\u06dc\u06d8\u06e2\u06d8\u06e4\u06e2\u06d9\u06d8\u06e1\u06da\u06e5\u06da\u06ec\u06e1\u06d8\u06e5\u06e5\u06ec\u06e6\u06db\u06d8\u06e7\u06e5\u06eb\u06d7\u06df\u06e0\u06ec\u06d8\u06e2\u06d8\u06d6\u06da\u06dc\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/cyjh/elfin/base/AppContext;->OooO0O0(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->OooooOO:Ljava/lang/String;

    const-string v0, "\u06db\u06d8\u06dc\u06d8\u06e4\u06df\u06db\u06e0\u06e4\u06dc\u06eb\u06da\u06da\u06e6\u06e0\u06e5\u06d6\u06eb\u06e0\u06d6\u06ec\u06d9\u06d6\u06d7\u06e6\u06e4\u06e5\u06d8\u06e4\u06d6\u06d7\u06e5\u06e6\u06e1\u06e8\u06e4\u06d9\u06e1\u06d9\u06d7\u06eb\u06eb\u06d6\u06d8\u06e6\u06d6\u06d7\u06ec\u06eb\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->OooooOo:Ljava/lang/String;

    const-string v0, "\u06d6\u06d7\u06e5\u06d8\u06da\u06d8\u06e6\u06d8\u06d9\u06df\u06d9\u06e0\u06e2\u06e8\u06d8\u06eb\u06d6\u06d6\u06d7\u06e5\u06d8\u06d8\u06da\u06da\u06ec\u06ec\u06e7\u06da\u06d8\u06da\u06e1\u06d9\u06e8\u06d8\u06db\u06e7\u06e6\u06dc\u06eb\u06e0\u06d7\u06e1\u06e6\u06d7\u06df"

    goto :goto_0

    :sswitch_4
    const v1, -0x387250a6

    const-string v0, "\u06e5\u06e7\u06dc\u06eb\u06da\u06e1\u06df\u06dc\u06e6\u06e7\u06da\u06e1\u06db\u06e5\u06d6\u06d8\u06df\u06dc\u06d6\u06d8\u06d8\u06e6\u06e2\u06e7\u06e2\u06e5\u06d8\u06d9\u06e5\u06d6\u06d9\u06db\u06e1\u06dc\u06e0\u06dc\u06d8\u06eb\u06e2\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e7\u06ec\u06dc\u06d8\u06dc\u06e1\u06da\u06d7\u06e8\u06e1\u06d7\u06d9\u06e7\u06e8\u06e1\u06e7\u06e4\u06da\u06e7\u06e7\u06e7\u06d8\u06eb\u06d9\u06dc\u06d7\u06d7\u06da\u06db\u06e7\u06d7\u06d6\u06e4\u06d7\u06ec\u06e8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06df\u06eb\u06d6\u06e5\u06d7\u06d7\u06d9\u06d7\u06dc\u06d8\u06e8\u06d6\u06d7\u06eb\u06e6\u06d6\u06da\u06da\u06db\u06d8\u06d7\u06d6\u06e2\u06e0\u06d6\u06df\u06df\u06e1\u06df\u06e7\u06e8\u06d8\u06db\u06da\u06d7\u06e6\u06e8\u06e5\u06d6\u06dc\u06d7\u06d7\u06d7\u06e8\u06e4\u06eb\u06db\u06e0\u06dc\u06e6\u06dc\u06e7\u06d6\u06d8\u06da\u06d9\u06e7"

    goto :goto_1

    :sswitch_7
    const v2, 0x729020ab

    const-string v0, "\u06e1\u06db\u06df\u06e1\u06e6\u06e4\u06d6\u06e7\u06e6\u06d7\u06e6\u06e7\u06d8\u06eb\u06db\u06e4\u06db\u06d6\u06d6\u06e4\u06e8\u06e8\u06d8\u06ec\u06db\u06e6\u06d8\u06d7\u06d9\u06e1\u06d8\u06dc\u06eb\u06e5\u06d8\u06ec\u06dc\u06d6\u06df\u06e2\u06dc\u06d8\u06e8\u06e5\u06d9\u06e1\u06e4\u06d6\u06da\u06d9\u06db\u06d7\u06d8\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06eb\u06da\u06e4\u06d9\u06e8\u06e4\u06db\u06e4\u06d6\u06e4\u06e4\u06dc\u06ec\u06db\u06d7\u06d7\u06d7\u06e2\u06df\u06e5\u06da\u06e7\u06d7\u06d7\u06db\u06e2\u06e2\u06e1\u06e7\u06d6\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e0\u06e6\u06ec\u06e4\u06db\u06e6\u06d8\u06df\u06e6\u06ec\u06d9\u06e2\u06d7\u06d6\u06dc\u06d8\u06ec\u06dc\u06e8\u06d8\u06e7\u06e7\u06dc\u06d8\u06eb\u06eb\u06da\u06e0\u06e4\u06e5\u06e4\u06df\u06e1\u06e4\u06db\u06e5\u06e2\u06da\u06eb\u06e7\u06d8\u06e0\u06e6\u06e4\u06e2\u06d6\u06db\u06da\u06d6\u06e2"

    goto :goto_2

    :sswitch_9
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/cyjh/elfin/base/AppContext;->OooooOO:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e1\u06eb\u06dc\u06d8\u06d8\u06e8\u06d6\u06e8\u06db\u06e1\u06d9\u06d9\u06e6\u06d8\u06e0\u06dc\u06d8\u06d8\u06e8\u06d7\u06eb\u06e1\u06e7\u06e0\u06e0\u06e5\u06dc\u06d8\u06d9\u06d7\u06d9\u06d8\u06e5"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06db\u06e4\u06e1\u06d8\u06e0\u06d9\u06ec\u06eb\u06d7\u06d8\u06d8\u06df\u06e7\u06e6\u06e2\u06e1\u06dc\u06dc\u06e8\u06e7\u06d8\u06e6\u06df\u06d7\u06df\u06dc\u06dc\u06e7\u06e0\u06d9\u06e7\u06eb\u06e8\u06d8\u06ec\u06e6\u06d8\u06d8\u06df\u06e4\u06da"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e7\u06eb\u06d7\u06d6\u06d8\u06e6\u06d8\u06e2\u06d7\u06e1\u06d8\u06e7\u06da\u06db\u06d9\u06eb\u06db\u06db\u06d8\u06e6\u06e6\u06e6\u06d7\u06e6\u06db\u06e8\u06d8\u06e4\u06eb\u06e2\u06da\u06db\u06d6"

    goto :goto_1

    :sswitch_c
    iput-boolean v4, p0, Lcom/cyjh/elfin/base/AppContext;->Oooooo0:Z

    const-string v0, "\u06e4\u06df\u06dc\u06da\u06d9\u06e5\u06d8\u06da\u06ec\u06e5\u06db\u06e2\u06e4\u06d8\u06e6\u06d8\u06da\u06e2\u06db\u06e5\u06d8\u06da\u06dc\u06ec\u06df\u06e7\u06dc\u06e5\u06d8\u06d8\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_d
    const v1, 0x2046213b

    const-string v0, "\u06dc\u06e4\u06d8\u06d8\u06ec\u06e5\u06d7\u06e6\u06e4\u06e6\u06d8\u06dc\u06da\u06d6\u06e2\u06e0\u06db\u06e8\u06e7\u06eb\u06e7\u06e7\u06e1\u06e8\u06e4\u06ec\u06e4\u06d8\u06ec\u06e1\u06dc\u06dc\u06d9\u06dc\u06d7\u06e7\u06eb\u06db\u06e2\u06eb\u06e4\u06e1\u06d6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e7\u06db\u06d9\u06eb\u06eb\u06dc\u06e5\u06d7\u06d8\u06eb\u06e6\u06e5\u06d8\u06e7\u06dc\u06da\u06e1\u06da\u06d8\u06da\u06db\u06e6\u06e7\u06e2\u06da\u06e6\u06ec\u06e1\u06d8\u06e1\u06d7\u06e6\u06e2\u06ec\u06e2\u06dc\u06d9\u06d9"

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06e0\u06e6\u06e8\u06e6\u06e5\u06e0\u06dc\u06ec\u06e8\u06e4\u06df\u06e1\u06d8\u06e5\u06e2\u06dc\u06d8\u06da\u06e4\u06db\u06e5\u06e5\u06e5\u06d8\u06d8\u06e4\u06e8\u06d8\u06d7\u06e4\u06d6\u06d8\u06e2\u06eb\u06d9\u06e5\u06ec\u06da\u06eb\u06dc\u06e0\u06da\u06e8\u06d8\u06e0\u06d9\u06e7\u06e5\u06eb\u06e2\u06da\u06e8\u06ec\u06ec\u06da\u06d8\u06e4\u06ec"

    goto :goto_3

    :sswitch_10
    const v2, 0x6c2a1749

    const-string v0, "\u06db\u06e5\u06d9\u06dc\u06e0\u06e5\u06d8\u06d6\u06e7\u06eb\u06e0\u06e1\u06e6\u06d8\u06eb\u06e6\u06da\u06e0\u06d7\u06e4\u06df\u06ec\u06d8\u06d6\u06e4\u06da\u06e0\u06ec\u06d8\u06eb\u06ec\u06df\u06db\u06e5\u06d8\u06ec\u06e7\u06df\u06da\u06df\u06e0\u06e0\u06e4\u06da\u06d7\u06d7\u06e5\u06e6\u06e4\u06d6\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06eb\u06e5\u06d9\u06e0\u06eb\u06eb\u06d9\u06d7\u06da\u06eb\u06da\u06eb\u06e8\u06d7\u06e5\u06d8\u06d6\u06e5\u06d8\u06d9\u06eb\u06e1\u06e4\u06d9\u06e1\u06e2\u06e8\u06e0\u06d7\u06eb\u06e8\u06e2\u06ec\u06db\u06e0\u06eb\u06e0\u06d9\u06e4\u06e2\u06e7\u06ec\u06e8\u06d8\u06e0\u06e8\u06db\u06d8\u06e2\u06d9\u06e1\u06d6\u06df\u06e6\u06e1\u06e6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e2\u06df\u06e4\u06df\u06e2\u06df\u06d6\u06d7\u06e7\u06df\u06e7\u06df\u06d9\u06e1\u06e8\u06d8\u06df\u06e6\u06d8\u06d8\u06e1\u06e1\u06d6\u06df\u06d7\u06e8\u06d8\u06e4\u06e2\u06d7\u06db\u06db\u06e8\u06e5\u06e5\u06d6\u06d8\u06e5\u06df\u06e5\u06d8"

    goto :goto_4

    :sswitch_12
    iget-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->OooooOO:Ljava/lang/String;

    const-string v3, ":enginfloat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06d6\u06e4\u06d7\u06e6\u06d8\u06e8\u06d9\u06d6\u06e5\u06d8\u06e2\u06eb\u06e0\u06db\u06e6\u06d6\u06e8\u06e2\u06d8\u06d8\u06e5\u06e5\u06eb\u06d7\u06e1\u06d6\u06eb\u06e8\u06d8\u06da\u06e2\u06e2"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06d6\u06e5\u06e1\u06d8\u06dc\u06e2\u06d8\u06d8\u06e4\u06df\u06dc\u06e6\u06e8\u06d8\u06d8\u06df\u06d7\u06da\u06da\u06e1\u06e5\u06d8\u06d9\u06d8\u06e4\u06dc\u06e4\u06e1\u06d8\u06e4\u06da\u06e6\u06e7\u06dc\u06d8\u06df\u06e5\u06da\u06ec\u06d9\u06e5"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e4\u06e0\u06d6\u06da\u06e2\u06e1\u06d8\u06e0\u06dc\u06e0\u06e4\u06d7\u06da\u06e4\u06e7\u06e6\u06d8\u06d8\u06dc\u06e7\u06d8\u06ec\u06df\u06db\u06ec\u06e2\u06e5\u06e4\u06e2\u06ec\u06e6\u06d6\u06db\u06dc\u06e7\u06d7\u06df\u06df\u06e8\u06e1\u06e0\u06e0\u06e8\u06d7\u06dc\u06d8\u06df\u06dc\u06e6\u06dc\u06da\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_15
    iput-boolean v4, p0, Lcom/cyjh/elfin/base/AppContext;->Oooooo:Z

    const-string v0, "\u06d9\u06d8\u06d8\u06da\u06e8\u06d9\u06e4\u06ec\u06e5\u06d8\u06d9\u06d9\u06e6\u06d8\u06d6\u06d9\u06e1\u06df\u06e2\u06e7\u06e6\u06e0\u06e5\u06da\u06d8\u06dc\u06e2\u06e8\u06d6\u06d8\u06e0\u06d8\u06e2\u06d6\u06da\u06d8\u06d8\u06d6\u06e7\u06e0\u06da\u06d9\u06e8\u06d8\u06e4\u06e1\u06e8"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06e4\u06df\u06dc\u06da\u06d9\u06e5\u06d8\u06da\u06ec\u06e5\u06db\u06e2\u06e4\u06d8\u06e6\u06d8\u06da\u06e2\u06db\u06e5\u06d8\u06da\u06dc\u06ec\u06df\u06e7\u06dc\u06e5\u06d8\u06d8\u06d8\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06d9\u06d8\u06d8\u06da\u06e8\u06d9\u06e4\u06ec\u06e5\u06d8\u06d9\u06d9\u06e6\u06d8\u06d6\u06d9\u06e1\u06df\u06e2\u06e7\u06e6\u06e0\u06e5\u06da\u06d8\u06dc\u06e2\u06e8\u06d6\u06d8\u06e0\u06d8\u06e2\u06d6\u06da\u06d8\u06d8\u06d6\u06e7\u06e0\u06da\u06d9\u06e8\u06d8\u06e4\u06e1\u06e8"

    goto/16 :goto_0

    :sswitch_18
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3bfe9a08 -> :sswitch_d
        -0xc020091 -> :sswitch_15
        -0xa6dcf9e -> :sswitch_0
        0x47cf696 -> :sswitch_3
        0x70f5a45 -> :sswitch_18
        0xe665e99 -> :sswitch_2
        0x367ffde6 -> :sswitch_4
        0x3e05c6a1 -> :sswitch_1
        0x7689b20c -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x76afc165 -> :sswitch_5
        -0x5c5f9f67 -> :sswitch_b
        -0x436df1b2 -> :sswitch_7
        0x4c171765 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x41fef28b -> :sswitch_6
        -0x168005d4 -> :sswitch_a
        -0x521c75a -> :sswitch_8
        0x30528ce7 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x59bf5e10 -> :sswitch_17
        0x3c2f483d -> :sswitch_14
        0x609f5a5f -> :sswitch_10
        0x7523a7eb -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7d826c62 -> :sswitch_f
        0x153b8702 -> :sswitch_13
        0x41395725 -> :sswitch_12
        0x6178ca1f -> :sswitch_11
    .end sparse-switch
.end method

.method private OooO0o0()V
    .locals 4

    const-string v0, "\u06d7\u06e0\u06e5\u06d8\u06d6\u06e0\u06e1\u06eb\u06e7\u06dc\u06e0\u06e1\u06dc\u06d8\u06d6\u06dc\u06da\u06df\u06ec\u06e5\u06d8\u06e0\u06e8\u06e6\u06d8\u06e7\u06d6\u06e8\u06d8\u06e6\u06ec\u06d6\u06ec\u06d8\u06e2\u06e0\u06e2\u06d7\u06e5\u06e5\u06d8\u06ec\u06dc\u06dc\u06ec\u06df\u06e4\u06e6\u06e2\u06dc\u06d8\u06eb\u06e7\u06e4\u06e8\u06e0\u06df\u06d6\u06e4\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x236

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x39d

    const/16 v2, 0xd0

    const v3, -0x2c561bbb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e0\u06da\u06e4\u06d8\u06d8\u06d8\u06d6\u06e6\u06e0\u06eb\u06d7\u06e8\u06eb\u06d7\u06dc\u06da\u06d7\u06d7\u06e2\u06d8\u06d8\u06eb\u06e4\u06db\u06da\u06d6\u06e4\u06df\u06d9\u06e6\u06d8\u06eb\u06d6\u06e6\u06d8\u06dc\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/x4;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06df\u06e1\u06da\u06eb\u06d7\u06d7\u06e0\u06d6\u06e1\u06d8\u06d6\u06dc\u06d8\u06df\u06dc\u06d8\u06ec\u06e2\u06dc\u06d7\u06d7\u06e0\u06e6\u06df\u06e1\u06e7\u06e4\u06e8\u06d8\u06dc\u06da\u06d7\u06e7\u06d9\u06dc\u06d8\u06d6\u06e0\u06db"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v0

    const-string v1, "small_red_dot"

    invoke-virtual {v0, p0, v1}, Lz2/b5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06db\u06e7\u06e7\u06df\u06e1\u06dc\u06df\u06d8\u06e8\u06eb\u06d7\u06e4\u06e1\u06e1\u06e1\u06eb\u06d9\u06df\u06d8\u06e6\u06d9\u06d6\u06e2\u06e7\u06e0\u06e5\u06d8\u06d9\u06d7\u06eb\u06e7\u06dc\u06db\u06db\u06ec\u06e2\u06e2\u06e7\u06dc\u06d8\u06e1\u06da\u06e6\u06d9\u06db\u06e1\u06d8\u06eb\u06eb\u06e6\u06d8\u06d8\u06e8\u06dc"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/qd;->OooO0OO()Lz2/qd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/qd;->OooO0Oo(Landroid/content/Context;)V

    const-string v0, "\u06df\u06e6\u06d6\u06d8\u06df\u06d6\u06d9\u06eb\u06e8\u06d8\u06e1\u06ec\u06da\u06e8\u06d6\u06e0\u06e7\u06d6\u06d7\u06d7\u06ec\u06d8\u06eb\u06d9\u06d9\u06dc\u06d8\u06d6\u06df\u06d9\u06e4\u06dc\u06e5\u06e0\u06dc\u06db\u06e5\u06dc\u06e7\u06d8\u06eb\u06e6\u06d8\u06d9\u06dc\u06eb\u06d9\u06df\u06ec"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/m7;->OooO0oo(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "\u06da\u06ec\u06d6\u06d8\u06eb\u06db\u06d9\u06ec\u06eb\u06e8\u06d8\u06d6\u06e0\u06e8\u06d8\u06e4\u06e8\u06e2\u06e2\u06e5\u06e1\u06d8\u06da\u06e1\u06e8\u06db\u06da\u06d7\u06db\u06e0\u06dc\u06e8\u06d6"

    goto :goto_0

    :sswitch_5
    invoke-static {p0}, Lz2/h6;->OooO0O0(Landroid/content/Context;)V

    const-string v0, "\u06e1\u06da\u06d6\u06d8\u06db\u06dc\u06e1\u06d8\u06e2\u06e5\u06e6\u06d8\u06d9\u06e8\u06d6\u06d9\u06e4\u06e8\u06da\u06e6\u06d8\u06e2\u06e2\u06e1\u06d8\u06e2\u06e7\u06d7\u06ec\u06eb\u06eb\u06e2\u06e2\u06d8\u06d6\u06dc\u06d8\u06e0\u06d6\u06e2\u06e4\u06db\u06e5\u06da\u06df\u06e1\u06d8\u06e6\u06e6\u06e0\u06d8\u06d9\u06d6"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce6fa6d -> :sswitch_0
        -0x67e30f80 -> :sswitch_1
        -0x4e2fea04 -> :sswitch_3
        -0x2833efda -> :sswitch_4
        0x2b69a532 -> :sswitch_6
        0x31d28e82 -> :sswitch_2
        0x39d9ac6a -> :sswitch_5
    .end sparse-switch
.end method

.method private OooO0oO()V
    .locals 4

    const-string v0, "\u06ec\u06e7\u06e8\u06d9\u06df\u06e8\u06d8\u06d6\u06e4\u06d6\u06da\u06df\u06e6\u06dc\u06e5\u06ec\u06e5\u06e8\u06d8\u06ec\u06ec\u06e8\u06d8\u06dc\u06e2\u06e1\u06df\u06d9\u06e4\u06d9\u06eb\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x228

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x6f

    const/4 v2, 0x6

    const v3, -0x74f7c082

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06dc\u06e7\u06d8\u06e7\u06e2\u06e7\u06db\u06e4\u06db\u06e2\u06e0\u06ec\u06d6\u06dc\u06ec\u06da\u06df\u06d8\u06ec\u06df\u06eb\u06e2\u06db\u06d8\u06d8\u06df\u06e7\u06df\u06e5\u06e2\u06d6\u06e0\u06db\u06d6\u06db\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "67e0ebf048ac1b4f87f502bd"

    const-string v1, "BillApk"

    invoke-static {p0, v0, v1}, Lz2/bh;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06eb\u06db\u06db\u06ec\u06ec\u06e5\u06d8\u06d8\u06da\u06db\u06eb\u06e8\u06da\u06da\u06d8\u06e8\u06eb\u06e2\u06e8\u06d8\u06e8\u06eb\u06e8\u06da\u06e7\u06e5\u06eb\u06d6\u06e6\u06d8\u06eb\u06e7\u06d9\u06ec\u06d7\u06d6\u06e1\u06d7\u06dc\u06d9\u06d9\u06e0\u06dc\u06e1\u06dc\u06d8\u06e4\u06eb\u06e6\u06da\u06e6\u06ec\u06e8\u06e1\u06e1\u06d8\u06e1\u06db\u06d7"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Lz2/bh;->OooO0oO(Z)V

    const-string v0, "\u06e6\u06da\u06dc\u06e6\u06e6\u06e8\u06d8\u06ec\u06d9\u06da\u06df\u06d9\u06d6\u06d8\u06d9\u06d8\u06d8\u06e7\u06e5\u06e1\u06d8\u06d8\u06e5\u06dc\u06d8\u06df\u06d6\u06d6\u06d8\u06d7\u06e5\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ba4d865 -> :sswitch_2
        -0x117c3df9 -> :sswitch_0
        0x26331c9 -> :sswitch_1
        0x75076fa4 -> :sswitch_3
    .end sparse-switch
.end method

.method private OooO0oo()V
    .locals 4

    const-string v0, "\u06e5\u06e0\u06d9\u06e4\u06e6\u06da\u06eb\u06d9\u06e5\u06d8\u06e5\u06d8\u06e1\u06d7\u06d6\u06e8\u06db\u06d6\u06d8\u06e1\u06dc\u06e2\u06e4\u06db\u06d9\u06e1\u06e7\u06d6\u06d8\u06d6\u06d7\u06d6\u06d8\u06d9\u06eb\u06d8\u06e7\u06e8\u06e4\u06d8\u06d8\u06d7\u06e1\u06e4\u06e2\u06ec\u06e5\u06e1\u06d8\u06e5\u06db\u06d9\u06eb\u06e7\u06d8\u06eb\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3df

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x398

    const/16 v2, 0x36c

    const v3, -0x688e1f91

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d6\u06e4\u06e2\u06eb\u06d9\u06d8\u06e6\u06e6\u06d7\u06e0\u06db\u06df\u06d7\u06e2\u06dc\u06d6\u06dc\u06e0\u06dc\u06e4\u06d6\u06ec\u06db\u06eb\u06e8\u06e8\u06d8\u06e5\u06e1\u06dc"

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/services/KeepMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "\u06d8\u06df\u06e7\u06d8\u06da\u06dc\u06d8\u06d9\u06d9\u06e2\u06e7\u06e6\u06e2\u06d6\u06e0\u06db\u06d9\u06ec\u06d7\u06d9\u06e6\u06e8\u06d8\u06dc\u06e1\u06d6\u06d7\u06ec\u06db\u06e1\u06ec\u06e5"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4dc48ca8 -> :sswitch_0
        -0x1919201 -> :sswitch_1
        0x37491e52 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public OooO()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06d8\u06dc\u06e8\u06e5\u06df\u06dc\u06d8\u06e6\u06e2\u06e0\u06d7\u06e0\u06e1\u06d8\u06da\u06eb\u06e5\u06db\u06d9\u06e8\u06d8\u06dc\u06e0\u06db\u06da\u06da\u06d7\u06ec\u06d6\u06d8\u06eb\u06e2\u06dc\u06d7\u06e6\u06db\u06e7\u06e5\u06e8\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x3e7

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x9b

    const/16 v3, 0x373

    const v5, -0x2fd3cc7f

    xor-int/2addr v0, v3

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d7\u06e6\u06d8\u06e2\u06e2\u06e0\u06db\u06e4\u06da\u06d9\u06d8\u06e2\u06df\u06e1\u06d8\u06d7\u06d7\u06dc\u06d8\u06e5\u06e2\u06d8\u06d7\u06dc\u06ec\u06eb\u06da\u06e5\u06d8\u06e8\u06e1\u06da\u06df\u06e1\u06e2\u06e8\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lz2/bh;->OooO0O0(Landroid/content/Context;)V

    const-string v0, "\u06e8\u06e1\u06d7\u06e0\u06df\u06da\u06df\u06d8\u06e2\u06da\u06e2\u06df\u06eb\u06e4\u06dc\u06d8\u06e8\u06e8\u06d6\u06d8\u06eb\u06da\u06d8\u06d8\u06d8\u06e1\u06d6\u06e0\u06d9\u06ec\u06e4\u06df\u06e5\u06e1\u06df\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/dh;->OooOo00(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06e0\u06e6\u06e8\u06df\u06d6\u06db\u06e6\u06d8\u06d8\u06ec\u06e5\u06dc\u06d8\u06d6\u06dc\u06d8\u06d8\u06ec\u06da\u06e5\u06e0\u06e7\u06e0\u06d9\u06eb\u06d6\u06d8\u06e8\u06e1\u06e7\u06da\u06e4\u06da\u06d8\u06d6\u06df\u06d7\u06d9\u06d9\u06df\u06d8\u06e4\u06d6\u06e1\u06d8\u06dc\u06d8\u06e2\u06e4\u06e4\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o()V

    const-string v0, "\u06e6\u06e8\u06e8\u06d8\u06e8\u06d8\u06e7\u06d8\u06e0\u06eb\u06dc\u06d8\u06d7\u06d9\u06db\u06e5\u06e2\u06d6\u06db\u06dc\u06e1\u06d8\u06e1\u06ec\u06e4\u06e6\u06d9\u06e8\u06d8\u06dc\u06da\u06e2\u06d6\u06df\u06e5\u06ec\u06da\u06e7\u06e2\u06e8\u06e8\u06d8\u06e8\u06d8\u06e8\u06d9\u06da\u06eb\u06e8\u06e4\u06da\u06e2\u06df\u06e0"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    invoke-static {p0}, Lz2/ii;->OooOo0O(Landroid/content/Context;)V

    const-string v0, "\u06e0\u06e5\u06d8\u06d8\u06e0\u06e2\u06d9\u06da\u06dc\u06e6\u06dc\u06e0\u06e7\u06da\u06e8\u06e1\u06d8\u06e0\u06da\u06d6\u06d8\u06eb\u06e4\u06e8\u06d6\u06e7\u06e1\u06d8\u06e4\u06e7\u06db\u06e1\u06e2\u06d9\u06e7\u06e2\u06dc\u06d8\u06eb\u06eb\u06d8\u06e8\u06e2\u06df\u06e0\u06df\u06e6\u06d8\u06df\u06e8\u06d6\u06da\u06dc\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    const-string v0, "\u06e7\u06eb\u06e1\u06d6\u06df\u06d6\u06d9\u06d9\u06e7\u06db\u06d7\u06e1\u06d8\u06ec\u06db\u06db\u06d9\u06d6\u06d6\u06d8\u06eb\u06d9\u06e6\u06d8\u06e0\u06e4\u06eb\u06da\u06e6\u06e5\u06df\u06e6\u06e1\u06e2\u06da\u06e6\u06d8\u06e4\u06d6\u06eb\u06eb\u06e7\u06df\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "\u06e8\u06e5\u06d6\u06d8\u06dc\u06df\u06e4\u06ec\u06e1\u06da\u06d9\u06e2\u06d9\u06d7\u06e7\u06db\u06dc\u06e4\u06e8\u06e1\u06d7\u06d8\u06e6\u06ec\u06dc\u06d7\u06e2\u06d6\u06d8\u06e5\u06e4\u06e8\u06e7\u06e1\u06e4\u06ec\u06e5\u06e8\u06e2\u06dc\u06ec\u06e7\u06d7\u06e6\u06d8\u06df\u06d7\u06d6\u06d8\u06d9\u06d6\u06db"

    move-object v4, v0

    goto :goto_0

    :sswitch_7
    const v1, 0x6e59cb6f

    const-string v0, "\u06df\u06ec\u06e1\u06dc\u06e6\u06df\u06e4\u06db\u06e2\u06e2\u06e5\u06dc\u06ec\u06d8\u06e8\u06e0\u06e4\u06e2\u06ec\u06da\u06d8\u06d7\u06eb\u06d6\u06d8\u06d8\u06e7\u06e4\u06da\u06d9\u06ec\u06e8\u06e5\u06dc\u06e4\u06e8\u06e6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e8\u06da\u06d8\u06dc\u06ec\u06e7\u06e2\u06e7\u06e0\u06d8\u06e1\u06e7\u06e7\u06e1\u06e4\u06d9\u06d8\u06eb\u06eb\u06d9\u06e4\u06eb\u06d8\u06e1\u06d8\u06d9\u06d9\u06da\u06e0\u06d7\u06e2\u06dc\u06e0\u06e2\u06d6\u06e8\u06d7\u06e5\u06e0\u06eb\u06d6\u06ec\u06e6\u06e8\u06e5\u06e6\u06df\u06da\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const-string v0, "\u06dc\u06e1\u06ec\u06e4\u06da\u06e6\u06da\u06e8\u06d7\u06da\u06e6\u06d9\u06d9\u06e1\u06d9\u06d8\u06e2\u06e4\u06db\u06df\u06ec\u06d6\u06da\u06e5\u06e6\u06e4\u06e4\u06e7\u06e1\u06e6\u06d8"

    goto :goto_1

    :sswitch_a
    const v3, -0x4e19c8cc

    const-string v0, "\u06e0\u06d7\u06e2\u06eb\u06eb\u06df\u06d7\u06da\u06d7\u06e4\u06e8\u06d8\u06eb\u06db\u06d8\u06d8\u06e2\u06d8\u06df\u06d6\u06da\u06e8\u06d8\u06e7\u06da\u06d6\u06d8\u06e4\u06dc\u06dc\u06d8\u06d9\u06e1\u06d9\u06eb\u06d8\u06dc\u06d8\u06ec\u06d7\u06d6\u06d8\u06e2\u06e5\u06e6\u06d8\u06d7\u06e4\u06e7\u06d9\u06ec\u06e1\u06d9\u06e0\u06d6\u06df\u06d6\u06e0\u06d9\u06e6\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d9\u06e7\u06e5\u06d8\u06e7\u06e1\u06e1\u06d8\u06db\u06dc\u06dc\u06d8\u06da\u06df\u06e5\u06da\u06e0\u06da\u06dc\u06d6\u06e6\u06ec\u06dc\u06dc\u06e5\u06e0\u06ec\u06da\u06ec\u06e5\u06df\u06df\u06e0\u06d6\u06e6\u06d8\u06dc\u06e0\u06e2\u06d9\u06da\u06da\u06e4\u06e7\u06e1"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e0\u06d7\u06e2\u06e6\u06eb\u06e0\u06e7\u06dc\u06e6\u06d9\u06e0\u06db\u06ec\u06e5\u06e5\u06e8\u06eb\u06e1\u06d8\u06e4\u06ec\u06e6\u06ec\u06e5\u06db\u06e8\u06d8\u06d8\u06d6\u06e0\u06e1\u06d6\u06eb\u06d7\u06db\u06e1\u06d8\u06d9\u06eb\u06d9\u06e5\u06df\u06d6\u06d8\u06db\u06ec\u06dc\u06e8\u06e0\u06df\u06d8\u06e1\u06e5\u06e0\u06e6"

    goto :goto_2

    :sswitch_c
    if-eqz v4, :cond_0

    const-string v0, "\u06d9\u06e7\u06d8\u06d8\u06e2\u06d9\u06eb\u06df\u06e7\u06e6\u06d8\u06dc\u06e1\u06e5\u06d8\u06e1\u06d8\u06e5\u06d8\u06e8\u06e7\u06e7\u06db\u06e4\u06df\u06ec\u06eb\u06d9\u06e2\u06ec\u06e4\u06e4\u06e5\u06df\u06e7\u06e6\u06e6\u06d7\u06e6\u06ec"

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e7\u06df\u06df\u06ec\u06e8\u06e2\u06da\u06d7\u06e7\u06df\u06eb\u06d8\u06d9\u06e8\u06e8\u06d8\u06d8\u06ec\u06ec\u06dc\u06ec\u06e5\u06e8\u06da\u06db\u06e7\u06e5\u06d8\u06e8\u06da\u06d6"

    goto :goto_1

    :sswitch_e
    const-string v0, "\u06d6\u06eb\u06db\u06db\u06dc\u06d8\u06d8\u06e4\u06e6\u06d6\u06d8\u06e2\u06e5\u06d8\u06d8\u06e0\u06e4\u06e6\u06e6\u06e5\u06d8\u06dc\u06d8\u06dc\u06d8\u06ec\u06d8\u06e0\u06db\u06e8\u06e4\u06d8\u06da\u06d7"

    goto :goto_1

    :sswitch_f
    const-string v0, "\u06d7\u06d7\u06e8\u06d8\u06db\u06e4\u06e7\u06e8\u06da\u06dc\u06d8\u06da\u06db\u06e1\u06dc\u06db\u06e7\u06e1\u06e0\u06e6\u06df\u06dc\u06d8\u06e0\u06e2\u06da\u06ec\u06d7\u06d8\u06d8\u06d9\u06e0\u06e2\u06dc\u06e5\u06e1\u06db\u06d8\u06d6\u06d9\u06e6\u06e6\u06e5\u06eb\u06eb\u06dc\u06db\u06df\u06e6\u06df\u06db\u06da\u06e2\u06e8\u06e2\u06d6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06eb\u06e1\u06e5\u06d6\u06e7\u06e6\u06d8\u06e1\u06e5\u06e1\u06e2\u06e7\u06e1\u06d8\u06e2\u06ec\u06d9\u06df\u06d7\u06df\u06e5\u06d8\u06df\u06e6\u06d8\u06e6\u06e6\u06e1\u06e7\u06df\u06e1\u06e8\u06d8\u06dc\u06e0\u06e6\u06d8\u06e5\u06e0\u06e8\u06d7\u06d8\u06e1\u06ec\u06da\u06e7\u06dc\u06e8\u06e1\u06e2\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06e8\u06df\u06db\u06e0\u06e6\u06d8\u06db\u06df\u06e1\u06d8\u06da\u06ec\u06e8\u06d8\u06e7\u06df\u06d8\u06d8\u06ec\u06ec\u06e8\u06d8\u06e4\u06dc\u06db\u06e8\u06e5\u06d7\u06dc\u06db\u06dc\u06d8\u06ec\u06e1\u06d9\u06e2\u06e1\u06ec\u06e5\u06db\u06e1"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    const-string v0, ":download_server"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06e2\u06d9\u06d6\u06ec\u06dc\u06e7\u06df\u06db\u06e0\u06eb\u06dc\u06d8\u06ec\u06e7\u06df\u06e1\u06e6\u06dc\u06d8\u06d8\u06e1\u06e4\u06da\u06d8\u06ec\u06e5\u06da\u06e5\u06d8\u06dc\u06d7\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06da\u06d8\u06dc\u06ec\u06e7\u06e2\u06e7\u06e0\u06d8\u06e1\u06e7\u06e7\u06e1\u06e4\u06d9\u06d8\u06eb\u06eb\u06d9\u06e4\u06eb\u06d8\u06e1\u06d8\u06d9\u06d9\u06da\u06e0\u06d7\u06e2\u06dc\u06e0\u06e2\u06d6\u06e8\u06d7\u06e5\u06e0\u06eb\u06d6\u06ec\u06e6\u06e8\u06e5\u06e6\u06df\u06da\u06e8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lz2/y8;->OooO0o()V

    const-string v0, "\u06e8\u06d8\u06e6\u06d8\u06e1\u06d7\u06e7\u06e2\u06e1\u06d9\u06d6\u06d8\u06e5\u06d7\u06d9\u06e1\u06d6\u06da\u06eb\u06ec\u06ec\u06d8\u06e4\u06e8\u06d7\u06d9\u06d9\u06e2\u06e5\u06d6\u06e7\u06da\u06db\u06da\u06e0\u06e4\u06d7\u06df\u06dc\u06e5\u06df\u06db\u06eb\u06da\u06d6\u06d8\u06ec\u06e0\u06df\u06db\u06e5\u06e0\u06ec\u06e2\u06e4"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const-string v0, "\u06eb\u06df\u06d9\u06ec\u06dc\u06d8\u06db\u06d6\u06e4\u06e1\u06da\u06e7\u06d8\u06d8\u06e7\u06d7\u06e8\u06e2\u06eb\u06e1\u06d8\u06db\u06e4\u06ec\u06db\u06d7\u06d8\u06e4\u06ec\u06d6\u06d8\u06e8\u06e1\u06d8\u06d6\u06d9\u06e6\u06e8\u06d8\u06da\u06e8\u06e6\u06e4\u06dc\u06e5\u06e1\u06d8\u06dc\u06d7\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const-string v0, "\u06ec\u06d6\u06e6\u06e8\u06dc\u06e6\u06d8\u06e2\u06db\u06d7\u06e4\u06db\u06ec\u06d8\u06e7\u06eb\u06e2\u06d7\u06e0\u06e0\u06e5\u06eb\u06d8\u06e7\u06e1\u06d8\u06e6\u06d6\u06e8\u06df\u06e4\u06da\u06df\u06e6\u06e7\u06d7\u06e4\u06d7\u06dc\u06db\u06e1\u06d8\u06d7\u06e6\u06e5\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e37a074 -> :sswitch_12
        -0x6fb8d007 -> :sswitch_15
        -0x6dcbd7da -> :sswitch_1
        -0x551454cb -> :sswitch_7
        -0x2f547833 -> :sswitch_10
        -0x25f28dad -> :sswitch_11
        -0x1efd9dbb -> :sswitch_0
        -0x18f679ff -> :sswitch_5
        0x1eb8e3ae -> :sswitch_14
        0x4405e109 -> :sswitch_13
        0x4b1ff34d -> :sswitch_17
        0x4bb43e7f -> :sswitch_2
        0x5b31fd6a -> :sswitch_4
        0x600faf8f -> :sswitch_6
        0x7528da5f -> :sswitch_16
        0x78fd0736 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3e4eb6a7 -> :sswitch_e
        -0x17c21746 -> :sswitch_f
        0x27629dac -> :sswitch_8
        0x4769f4a5 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5a638273 -> :sswitch_9
        -0x4dea0ab0 -> :sswitch_b
        -0x2ba23d1a -> :sswitch_c
        0x68b15622 -> :sswitch_d
    .end sparse-switch
.end method

.method public OooOO0(I)V
    .locals 4

    const-string v0, "\u06eb\u06dc\u06e7\u06d8\u06e4\u06db\u06d8\u06d8\u06da\u06e0\u06d6\u06e8\u06eb\u06eb\u06ec\u06e8\u06e6\u06d8\u06e0\u06df\u06e8\u06d8\u06db\u06d8\u06e5\u06d8\u06e1\u06eb\u06e4\u06d7\u06d7\u06df\u06e4\u06e2\u06e2\u06e2\u06d9\u06dc\u06d6\u06e5\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12e

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x6b

    const/16 v2, 0x27a

    const v3, -0x43a8bd7b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e8\u06dc\u06dc\u06ec\u06db\u06e4\u06d7\u06e0\u06e1\u06db\u06d7\u06d8\u06e8\u06e6\u06e5\u06d8\u06d8\u06dc\u06d9\u06e6\u06d8\u06d6\u06ec\u06e7\u06db\u06e8\u06dc\u06d9\u06e0\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e2\u06e6\u06d8\u06e8\u06e5\u06e7\u06e8\u06da\u06d6\u06e2\u06e4\u06e1\u06d6\u06e5\u06e8\u06d8\u06d6\u06ec\u06ec\u06e2\u06ec\u06ec\u06e0\u06e4\u06eb\u06df\u06e1\u06db\u06e4\u06d7\u06e5\u06d6\u06d8\u06d6\u06d8\u06e6\u06df"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u06d9\u06e1\u06d6\u06e1\u06e6\u06e8\u06d8\u06e4\u06e1\u06e6\u06e6\u06d6\u06eb\u06d8\u06d9\u06e6\u06dc\u06d8\u06e8\u06e6\u06da\u06e2\u06e6\u06e2\u06db\u06db\u06e7\u06e8\u06d7\u06dc\u06ec\u06d8\u06e8\u06dc\u06e0\u06e2\u06d9\u06e1\u06df\u06e2\u06df\u06e5\u06d8\u06d6\u06e4\u06d6\u06d8\u06e0\u06da\u06eb\u06da\u06e5\u06eb\u06d8\u06e2\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71aa12a2 -> :sswitch_1
        -0x4151a07b -> :sswitch_2
        -0x36332723 -> :sswitch_3
        0x1cbb8e17 -> :sswitch_0
    .end sparse-switch
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 4

    const-string v0, "\u06e8\u06e4\u06e8\u06d8\u06ec\u06da\u06e8\u06e5\u06df\u06e2\u06e4\u06d6\u06d8\u06ec\u06e0\u06e0\u06e4\u06e1\u06e1\u06e1\u06e7\u06e7\u06d6\u06dc\u06e0\u06e7\u06ec\u06df\u06e5\u06e4\u06d8\u06d8\u06e7\u06e4\u06dc\u06d8\u06e6\u06db\u06e2\u06d7\u06e1\u06eb\u06e7\u06e6\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3cd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x122

    const/16 v2, 0x361

    const v3, -0x5b576be3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e8\u06d6\u06d8\u06d7\u06e6\u06eb\u06e8\u06e8\u06d8\u06d8\u06e4\u06e8\u06e5\u06e8\u06df\u06d9\u06d7\u06e0\u06db\u06d9\u06e0\u06db\u06df\u06e5\u06d8\u06e0\u06df\u06d8\u06e0\u06e4\u06d8\u06d8\u06e8\u06e6\u06ec\u06e1\u06e2\u06e4\u06eb\u06da\u06dc\u06e2\u06e6\u06d6\u06d8\u06e5\u06df\u06e1\u06d8\u06e1\u06da\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06d8\u06e6\u06d7\u06ec\u06e6\u06e6\u06eb\u06d9\u06e1\u06e5\u06e6\u06d9\u06eb\u06d8\u06df\u06e4\u06db\u06d7\u06d8\u06d8\u06e1\u06e7\u06d7\u06e6\u06dc\u06d9\u06df\u06ec\u06e8\u06d8\u06e6\u06e7\u06d8\u06e4\u06dc\u06dc\u06d8\u06e4\u06e2\u06d8\u06db\u06db\u06d9"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string v0, "\u06db\u06db\u06e5\u06e8\u06e2\u06e7\u06d9\u06d9\u06e6\u06e4\u06dc\u06e6\u06d6\u06d9\u06eb\u06d7\u06eb\u06e4\u06df\u06d6\u06df\u06e7\u06d9\u06ec\u06e0\u06e5\u06d8\u06da\u06e7\u06d6\u06d8\u06d8\u06e2\u06d8\u06e1\u06eb\u06d9\u06d6\u06d7\u06e6\u06d8\u06e5\u06e6\u06db\u06e2\u06d6\u06d9\u06d7\u06db\u06e2"

    goto :goto_0

    :sswitch_3
    sput-object p0, Lcom/cyjh/elfin/base/AppContext;->o00Oo0:Lcom/cyjh/elfin/base/AppContext;

    const-string v0, "\u06eb\u06d8\u06dc\u06d8\u06d6\u06e7\u06df\u06d7\u06db\u06d7\u06e2\u06e6\u06d8\u06da\u06e0\u06db\u06e6\u06e6\u06d8\u06d8\u06d7\u06eb\u06d7\u06e2\u06e7\u06e6\u06d8\u06e2\u06ec\u06e8\u06da\u06ec\u06e1\u06e2\u06e0\u06ec\u06e1\u06e4\u06d7\u06eb\u06e1\u06d8\u06e5\u06df\u06d9\u06e7\u06e1\u06d8\u06d9\u06e6\u06dc\u06d8\u06e5\u06ec\u06d6\u06d8\u06d8\u06e0\u06d6"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0o()V

    const-string v0, "\u06e2\u06d9\u06e5\u06e8\u06d6\u06e2\u06e1\u06e5\u06d8\u06eb\u06d6\u06eb\u06d7\u06eb\u06e0\u06e5\u06e4\u06e2\u06d9\u06eb\u06e7\u06da\u06d7\u06ec\u06eb\u06e8\u06ec\u06e6\u06eb\u06e8\u06d8\u06dc\u06d7\u06dc\u06e0\u06da\u06dc\u06d8\u06da\u06e8\u06ec\u06e7\u06e1\u06dc\u06d8\u06d7\u06df\u06d9\u06df\u06e0\u06eb\u06e8\u06e5\u06d8\u06eb\u06e7\u06db"

    goto :goto_0

    :sswitch_5
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    const-string v0, "\u06d9\u06dc\u06eb\u06d9\u06da\u06e6\u06d9\u06ec\u06d8\u06eb\u06e2\u06dc\u06d8\u06e0\u06db\u06e1\u06e4\u06e8\u06d9\u06e2\u06e4\u06d7\u06d8\u06df\u06e8\u06d7\u06e7\u06dc\u06d8\u06dc\u06e6\u06e7"

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const/16 v3, 0x64

    invoke-virtual {v0, p0, v1, v2, v3}, Lz2/oi;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    const-string v0, "\u06d8\u06eb\u06d9\u06da\u06e0\u06dc\u06e2\u06db\u06e7\u06db\u06d9\u06d9\u06e5\u06e7\u06e6\u06d8\u06dc\u06e4\u06e1\u06df\u06d8\u06d6\u06d8\u06d6\u06df\u06d8\u06e7\u06ec\u06e7\u06d9\u06e8\u06d8\u06eb\u06e7\u06e0\u06da\u06ec\u06d9\u06d9\u06e8\u06e1\u06db\u06e6\u06eb"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x549e89b8 -> :sswitch_6
        -0x4ca95992 -> :sswitch_4
        -0xa653427 -> :sswitch_2
        0x1b31cea8 -> :sswitch_5
        0x2f12c977 -> :sswitch_7
        0x58fe2309 -> :sswitch_1
        0x6e1e7fe7 -> :sswitch_0
        0x7f5ccc94 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "\u06e6\u06dc\u06e0\u06e5\u06db\u06da\u06e0\u06e5\u06e5\u06da\u06d7\u06df\u06e0\u06e2\u06d7\u06e1\u06e2\u06e8\u06d8\u06e2\u06df\u06dc\u06ec\u06eb\u06d8\u06d8\u06e0\u06e2\u06e4\u06e0\u06dc\u06e8\u06d8\u06dc\u06e0\u06e2\u06dc\u06eb\u06e8\u06d6\u06e7\u06e6\u06df\u06e5\u06e8\u06d9\u06e6\u06e6\u06da\u06e1\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3d0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x18f

    const/16 v2, 0x2e5

    const v3, 0x3ae8d9a7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e5\u06d6\u06d8\u06e6\u06e0\u06df\u06d7\u06e7\u06d6\u06d8\u06d6\u06e2\u06e7\u06db\u06e1\u06d8\u06da\u06da\u06e4\u06d8\u06e4\u06d7\u06eb\u06e7\u06e6\u06e7\u06d6\u06df\u06d7\u06e8\u06da\u06d8\u06e2\u06d7\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06db\u06e1\u06e5\u06d9\u06d6\u06d8\u06df\u06d7\u06e1\u06d8\u06d7\u06e0\u06eb\u06e8\u06df\u06e5\u06e6\u06d7\u06e0\u06e5\u06e8\u06d6\u06ec\u06da\u06db\u06d7\u06dc\u06e1\u06d8\u06d9\u06d9\u06e8\u06d8\u06df\u06e4\u06e8\u06d8\u06e6\u06d8\u06d6\u06e8\u06e2\u06d7\u06dc\u06da\u06da"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "\u06e8\u06d6\u06e8\u06d8\u06d6\u06eb\u06da\u06d6\u06da\u06da\u06e6\u06eb\u06ec\u06e4\u06e6\u06df\u06d8\u06e1\u06e2\u06ec\u06e5\u06e1\u06d8\u06e6\u06e8\u06e1\u06e8\u06e6\u06e7\u06d8\u06d9\u06e7\u06d6\u06ec\u06eb\u06e4\u06eb\u06d9\u06e1\u06d8\u06d9\u06e1\u06e4\u06d9\u06d7\u06dc\u06db\u06e0\u06d7\u06e1\u06e7\u06e4\u06db\u06e1\u06e1\u06dc\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    const v1, 0x26f3e77b

    const-string v0, "\u06e6\u06db\u06e1\u06d8\u06e4\u06e4\u06da\u06dc\u06e8\u06e8\u06da\u06e4\u06e1\u06d6\u06e0\u06e0\u06eb\u06e7\u06d8\u06d8\u06df\u06d6\u06e8\u06d8\u06e6\u06ec\u06e5\u06d8\u06e6\u06e4\u06da\u06ec\u06e0\u06da\u06e7\u06e5\u06d8\u06da\u06dc\u06e0\u06d8\u06e1\u06dc\u06ec\u06e2\u06eb\u06e6\u06df\u06e1\u06ec\u06e7\u06d6\u06d7\u06ec\u06e8\u06d8\u06d8\u06eb\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e0\u06e7\u06e5\u06d8\u06e1\u06da\u06d8\u06d8\u06e7\u06d8\u06d6\u06ec\u06eb\u06e4\u06db\u06d9\u06d6\u06e4\u06e7\u06d8\u06d8\u06ec\u06e2\u06e6\u06d8\u06da\u06da\u06d9\u06eb\u06df\u06e5\u06db\u06da\u06df\u06e0\u06e0\u06e4\u06e0\u06d9\u06dc\u06d8\u06e0\u06ec\u06e4\u06d6\u06d6\u06d7\u06dc\u06dc\u06d6\u06e7\u06e4\u06d7\u06e2\u06db\u06d9\u06e8\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06da\u06e6\u06e8\u06d8\u06da\u06e5\u06e7\u06d8\u06e0\u06e1\u06e7\u06d8\u06e8\u06d7\u06e5\u06d8\u06df\u06e2\u06e1\u06d8\u06e0\u06ec\u06da\u06d7\u06d9\u06d8\u06d8\u06df\u06e2\u06d8\u06df\u06e1\u06d6\u06d8\u06d6\u06d6\u06e6\u06d8\u06e8\u06d6\u06df\u06d9\u06db\u06d9\u06e6\u06e0\u06e4\u06e5\u06db"

    goto :goto_1

    :sswitch_6
    const v2, 0x337f8801

    const-string v0, "\u06e8\u06d9\u06ec\u06db\u06e0\u06e6\u06d7\u06e2\u06e5\u06e6\u06eb\u06e6\u06ec\u06e4\u06dc\u06e2\u06df\u06ec\u06eb\u06d7\u06e0\u06eb\u06e1\u06e5\u06d6\u06e8\u06ec\u06e5\u06e8\u06d7\u06dc\u06ec\u06e5\u06e2\u06d9"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e6\u06e1\u06e4\u06e5\u06e4\u06e8\u06db\u06e8\u06e1\u06e0\u06e6\u06d8\u06d8\u06eb\u06df\u06e8\u06ec\u06e0\u06d6\u06d6\u06e4\u06dc\u06df\u06dc\u06e1\u06d8\u06eb\u06eb\u06d9\u06e4\u06e0\u06dc\u06d8\u06d6\u06e5\u06e5\u06e2\u06e2\u06eb\u06d7\u06e1\u06e6\u06d9\u06e8\u06dc"

    goto :goto_1

    :cond_0
    const-string v0, "\u06df\u06e4\u06d8\u06d8\u06e8\u06e5\u06e7\u06e0\u06e0\u06e4\u06e8\u06e6\u06e0\u06e8\u06ec\u06db\u06e5\u06e4\u06e2\u06e0\u06e0\u06eb\u06e7\u06e6\u06e5\u06e4\u06e5\u06d8\u06e0\u06db\u06df\u06e8\u06d8\u06e8\u06d8\u06db\u06df\u06e1\u06e4\u06d9\u06e5\u06d9\u06ec\u06e8\u06d8\u06e6\u06d8\u06df\u06da\u06da\u06e4"

    goto :goto_2

    :sswitch_8
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d9\u06e6\u06d7\u06e8\u06e7\u06e0\u06e4\u06db\u06d7\u06e6\u06e1\u06e1\u06d8\u06e0\u06eb\u06e5\u06db\u06d7\u06d6\u06e4\u06e8\u06d8\u06d8\u06dc\u06e1\u06e1\u06df\u06dc\u06d7\u06e8\u06e5\u06e2\u06d8\u06d8\u06d6\u06d8\u06dc\u06d8\u06d7\u06d6\u06dc\u06d8\u06ec\u06e8\u06e2\u06e7\u06d7\u06d8\u06d8\u06d9\u06e2\u06e8\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e8\u06e1\u06da\u06dc\u06db\u06e4\u06e0\u06d7\u06eb\u06e6\u06d6\u06e8\u06e2\u06e5\u06d8\u06d8\u06e8\u06db\u06e4\u06e8\u06e5\u06d6\u06d8\u06e1\u06d8\u06e7\u06eb\u06eb\u06d6\u06e8\u06e8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d8\u06ec\u06e4\u06dc\u06eb\u06d8\u06ec\u06dc\u06eb\u06d6\u06eb\u06e5\u06e4\u06d6\u06e8\u06db\u06d8\u06e5\u06d7\u06d9\u06db\u06ec\u06e1\u06e5\u06eb\u06d6\u06d8\u06e1\u06e5\u06dc\u06e2\u06e8\u06ec\u06d6\u06d9\u06e2\u06eb\u06df\u06e2\u06eb\u06e0\u06d7\u06df\u06eb\u06e8\u06e4\u06ec"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06ec\u06ec\u06d8\u06e8\u06df\u06e8\u06d8\u06d8\u06e5\u06e6O\u06d9\u06d9\u06e1\u06eb\u06eb\u06ec\u06dc\u06e4\u06e2\u06e7\u06db\u06d6\u06d6\u06dc\u06df\u06d8\u06e2\u06db\u06df\u06dc\u06d6\u06d8\u06e4\u06d6\u06d6\u06d8\u06e7\u06e4\u06e6\u06ec\u06db\u06e6\u06d8\u06dc\u06e7\u06e5\u06d8\u06e6\u06d8\u06e7\u06d8\u06d6\u06e0\u06d8\u06db\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OoooOOo()V

    const-string v0, "\u06e0\u06e7\u06e5\u06d8\u06e1\u06da\u06d8\u06d8\u06e7\u06d8\u06d6\u06ec\u06eb\u06e4\u06db\u06d9\u06d6\u06e4\u06e7\u06d8\u06d8\u06ec\u06e2\u06e6\u06d8\u06da\u06da\u06d9\u06eb\u06df\u06e5\u06db\u06da\u06df\u06e0\u06e0\u06e4\u06e0\u06d9\u06dc\u06d8\u06e0\u06ec\u06e4\u06d6\u06d6\u06d7\u06dc\u06dc\u06d6\u06e7\u06e4\u06d7\u06e2\u06db\u06d9\u06e8\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lz2/a7;->OooO00o()Lz2/a7;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lz2/a7;->OooO0OO(I)V

    const-string v0, "\u06e8\u06df\u06e6\u06d8\u06dc\u06eb\u06e1\u06d9\u06e6\u06e4\u06e0\u06d6\u06d8\u06e7\u06e1\u06d9\u06eb\u06d6\u06e0\u06eb\u06e7\u06dc\u06dc\u06ec\u06e1\u06eb\u06e6\u06d8\u06da\u06e8\u06e6\u06d8\u06e0\u06dc\u06df\u06df\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71a4d7c1 -> :sswitch_d
        -0x69533176 -> :sswitch_c
        -0x64277c38 -> :sswitch_e
        -0x559a983c -> :sswitch_1
        -0x4cf040ab -> :sswitch_2
        -0x4308833d -> :sswitch_3
        0xa3f1423 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x71c35332 -> :sswitch_b
        -0x6b3c9b9e -> :sswitch_4
        0x5667bb66 -> :sswitch_a
        0x63cc4b83 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x54789882 -> :sswitch_8
        -0x7b75271 -> :sswitch_9
        0x4a736705 -> :sswitch_5
        0x5260422a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "\u06db\u06e7\u06d8\u06d8\u06dc\u06d7\u06e7\u06ec\u06df\u06d6\u06ec\u06d7\u06e2\u06dc\u06e0\u06dc\u06d8\u06da\u06ec\u06e8\u06e6\u06df\u06e1\u06d8\u06e5\u06d6\u06d9\u06dc\u06e1\u06df\u06dc\u06e4\u06e1\u06e7\u06e2\u06eb\u06eb\u06ec\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1af

    const/16 v2, 0x144

    const v3, 0x955aa62

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06dc\u06e7\u06d8\u06e4\u06e0\u06da\u06e1\u06e0\u06e2\u06e5\u06d6\u06df\u06dc\u06e1\u06e8\u06e6\u06e4\u06e0\u06eb\u06e0\u06d8\u06eb\u06e8\u06e4\u06e4\u06df\u06e6\u06d8\u06dc\u06d6\u06e5\u06d8\u06e5\u06d9\u06d8\u06d8\u06e6\u06e7\u06e1\u06e1\u06e2\u06d7\u06d8\u06ec\u06d7\u06e1\u06ec\u06d9\u06d7\u06d9\u06e8\u06d8\u06e0\u06e0\u06e4\u06e1"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "\u06db\u06da\u06d9\u06e2\u06ec\u06e1\u06e0\u06db\u06e4\u06e6\u06d8\u06db\u06d9\u06dc\u06d8\u06e4\u06d7\u06d9\u06d6\u06d7\u06e0\u06d6\u06e2\u06e6\u06e6\u06ec\u06d7\u06eb\u06d6\u06e8"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/oi;->OooO0Oo(Landroid/content/Context;)V

    const-string v0, "\u06e0\u06e4\u06da\u06da\u06d8\u06d7\u06d6\u06e7\u06d8\u06d8\u06d6\u06e2\u06d6\u06d8\u06d7\u06e5\u06e2\u06e8\u06e1\u06e1\u06d8\u06e8\u06e0\u06ec\u06d8\u06e0\u06df\u06e6\u06df\u06e2\u06dc\u06d6\u06e2\u06e6\u06d9\u06e2\u06d8\u06d7"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/i7;->OooOO0O(Landroid/app/Application;)V

    const-string v0, "\u06dc\u06e0\u06eb\u06e0\u06e7\u06d9\u06d7\u06e2\u06db\u06db\u06da\u06e6\u06e1\u06df\u06e6\u06d8\u06e0\u06e7\u06dc\u06e0\u06e7\u06da\u06e4\u06d8\u06e4\u06db\u06e1\u06e8\u06d8\u06e4\u06e6\u06e6"

    goto :goto_0

    :sswitch_4
    const v1, 0x67f5c0b7

    const-string v0, "\u06e5\u06e5\u06dc\u06d8\u06dc\u06da\u06e6\u06d8\u06df\u06db\u06df\u06da\u06e5\u06e1\u06e5\u06e8\u06eb\u06d8\u06d6\u06eb\u06e0\u06db\u06d6\u06d8\u06ec\u06d9\u06d6\u06d8\u06d7\u06e4\u06eb\u06d6\u06e2\u06e1\u06d8\u06d6\u06e6\u06df\u06e1\u06ec\u06d6\u06d6\u06e8\u06d9\u06e6\u06e2\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e0\u06df\u06d6\u06d8\u06da\u06da\u06d6\u06e8\u06e8\u06e6\u06d8\u06eb\u06e5\u06ec\u06dc\u06e6\u06e6\u06d8\u06d6\u06e2\u06e8\u06d8\u06db\u06e8\u06e4\u06e5\u06d9\u06e8\u06d8\u06d9\u06e5\u06d6\u06d7\u06d8\u06ec\u06e2\u06df\u06df\u06e2\u06e7\u06e6\u06d7\u06e7\u06db\u06e4\u06e4\u06e8\u06dc\u06e0\u06ec\u06ec\u06e5\u06d8\u06d9\u06df\u06d9\u06ec\u06e6\u06e0"

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e4\u06e5\u06d8\u06d8\u06e0\u06e2\u06da\u06dc\u06db\u06dc\u06dc\u06e7\u06d9\u06ec\u06d8\u06e6\u06e4\u06e4\u06ec\u06e1\u06e0\u06e8\u06d8\u06e6\u06ec\u06d9\u06d9\u06eb\u06d7\u06da\u06e1\u06d9\u06e5\u06e2\u06e5\u06d8\u06eb"

    goto :goto_1

    :sswitch_7
    const v2, -0x21341c57

    const-string v0, "\u06d8\u06d9\u06e8\u06d8\u06e2\u06e8\u06eb\u06eb\u06e4\u06d6\u06dc\u06eb\u06d7\u06e8\u06ec\u06e6\u06d7\u06d7\u06e8\u06d8\u06da\u06e8\u06e1\u06db\u06e5\u06e6\u06e4\u06ec\u06d6\u06d8\u06e2\u06d7\u06eb"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e0\u06e2\u06ec\u06e4\u06e4\u06e2\u06e0\u06d9\u06e7\u06e0\u06e0\u06ec\u06e7\u06d8\u06da\u06db\u06e4\u06d6\u06d8\u06da\u06db\u06e0\u06e7\u06d8\u06e8\u06dc\u06e0\u06d6\u06d8\u06e7\u06eb\u06d8\u06d8\u06e0\u06eb\u06e8\u06d8\u06e1\u06df\u06e2\u06eb\u06df\u06dc\u06d8\u06d6\u06eb\u06eb"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d6\u06e4\u06e2\u06e2\u06e1\u06e2\u06df\u06da\u06ec\u06d9\u06d7\u06df\u06ec\u06e0\u06d9\u06e6\u06e6\u06e5\u06db\u06d7\u06d7\u06e0\u06da\u06e1\u06d8\u06d9\u06e5\u06eb\u06e4\u06e8\u06e0\u06e0\u06df\u06e5\u06d8\u06e5\u06e0\u06df"

    goto :goto_2

    :sswitch_9
    iget-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Oooooo0:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06eb\u06e6\u06e6\u06e5\u06d6\u06da\u06df\u06df\u06e6\u06d8\u06d6\u06df\u06e6\u06d8\u06e1\u06d8\u06d8\u06e7\u06e8\u06df\u06e0\u06d8\u06e0\u06d9\u06e1\u06e6\u06e6\u06da\u06d7\u06d9\u06e0\u06e4"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06df\u06e7\u06df\u06ec\u06e0\u06d6\u06d8\u06df\u06e5\u06d6\u06d8\u06df\u06da\u06d6\u06d8\u06e6\u06d6\u06e6\u06e5\u06e5\u06e8\u06e7\u06e1\u06d9\u06e5\u06e7\u06e7\u06e7\u06e7\u06d7\u06e7\u06d6\u06e6\u06d8\u06d7\u06da\u06e2\u06e5\u06eb\u06e1\u06d8\u06e1\u06ec\u06e4\u06e8\u06d9\u06e0\u06e7\u06d8\u06e5\u06e0\u06d9\u06e8\u06d8\u06e0\u06e5\u06d8\u06d9\u06df\u06e0"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e7\u06e5\u06d9\u06e5\u06db\u06e8\u06d9\u06e1\u06e8\u06dc\u06d8\u06eb\u06da\u06e6\u06e7\u06db\u06e7\u06e2\u06e6\u06d7\u06eb\u06df\u06e4\u06da\u06e2\u06ec\u06e0\u06e8\u06d8\u06e5\u06ec\u06df\u06d7\u06e1\u06dc\u06d8\u06e1\u06e6\u06e1\u06ec\u06ec\u06db\u06d8\u06e1\u06d8\u06d8\u06db\u06df\u06d9\u06ec\u06d6\u06e4\u06e5\u06e8\u06e8"

    goto :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0Oo()V

    const-string v0, "\u06e8\u06d6\u06e2\u06e4\u06d6\u06ec\u06e6\u06eb\u06df\u06da\u06dc\u06e1\u06db\u06d7\u06d8\u06d7\u06e1\u06e8\u06e1\u06d8\u06d8\u06e2\u06eb\u06dc\u06d9\u06d6\u06e5\u06e8\u06d8\u06d9\u06e4\u06d9\u06e5\u06e1\u06d7\u06e4\u06d7\u06d8\u06d8\u06e7\u06d6\u06e8\u06e6\u06e6\u06d9\u06eb\u06e2\u06e0"

    goto :goto_0

    :sswitch_d
    const v1, -0x72175b2b

    const-string v0, "\u06d7\u06da\u06dc\u06d8\u06d8\u06e2\u06dc\u06e0\u06dc\u06eb\u06e4\u06e2\u06e7\u06db\u06d8\u06d8\u06e7\u06e6\u06db\u06d7\u06d6\u06e7\u06d8\u06df\u06d7\u06e5\u06ec\u06db\u06dc\u06e2\u06da\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06db\u06ec\u06d8\u06d9\u06d7\u06ec\u06da\u06e0\u06da\u06d9\u06e1\u06e1\u06e6\u06ec\u06e8\u06d8\u06ec\u06d7\u06d8\u06d8\u06d9\u06e7\u06d7\u06d8\u06d8\u06dc\u06d8\u06d7\u06eb\u06e5\u06e6\u06e6\u06db\u06e2\u06e1\u06e2\u06e8\u06ec\u06d8\u06d8\u06e2\u06e2\u06dc\u06d8\u06e7\u06db\u06e6\u06d8\u06d8\u06d6\u06e0\u06e0\u06e7\u06ec\u06d7\u06e5\u06dc\u06d6\u06df"

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06e7\u06e5\u06eb\u06d8\u06d8\u06db\u06e1\u06eb\u06e7\u06dc\u06e2\u06e4\u06df\u06d8\u06db\u06e6\u06dc\u06e8\u06d8\u06db\u06e0\u06e1\u06e7\u06dc\u06e0\u06d8\u06e0\u06dc\u06e0\u06d6\u06db\u06d8\u06ec\u06e5\u06d8\u06e7\u06e1\u06e2\u06ec\u06d8\u06ec\u06d9\u06e6\u06db"

    goto :goto_3

    :sswitch_10
    const v2, 0x23216939

    const-string v0, "\u06e0\u06ec\u06e6\u06d8\u06d7\u06da\u06e6\u06d8\u06d7\u06dc\u06e5\u06d8\u06e7\u06dc\u06e6\u06dc\u06e0\u06d9\u06df\u06d8\u06e4\u06da\u06e1\u06e1\u06d8\u06e2\u06e7\u06d9\u06e2\u06d6\u06e5\u06d8\u06df\u06eb\u06e7\u06e7\u06df\u06e5\u06db\u06e5\u06e8\u06e7\u06d8\u06e7\u06d9\u06dc"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06ec\u06e4\u06dc\u06e4\u06e1\u06d8\u06e2\u06e2\u06e1\u06e0\u06e1\u06e0\u06da\u06e4\u06e2\u06e0\u06e4\u06e5\u06db\u06e8\u06e5\u06e6\u06dc\u06e6\u06d8\u06e8\u06db\u06e1\u06d9\u06e8\u06e5\u06d8\u06dc\u06d9\u06e1\u06d8\u06da\u06e7\u06e6\u06dc\u06ec\u06e6\u06d8\u06e0\u06df\u06df"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e6\u06df\u06d9\u06d7\u06d7\u06d7\u06e4\u06e0\u06e0\u06e8\u06d8\u06e7\u06d8\u06d7\u06df\u06d9\u06da\u06e6\u06d6\u06d8\u06d6\u06e2\u06d6\u06d8\u06e7\u06d9\u06e4\u06db\u06df\u06e6\u06eb\u06ec\u06e2\u06e6\u06e6\u06eb\u06eb\u06e5\u06e8\u06e8\u06e7\u06db\u06e4\u06eb\u06e6\u06d7\u06e7\u06e0\u06e6\u06e8\u06d8"

    goto :goto_4

    :sswitch_12
    iget-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->Oooooo:Z

    if-eqz v0, :cond_1

    const-string v0, "\u06df\u06e2\u06d6\u06d8\u06d8\u06dc\u06d9\u06da\u06e8\u06df\u06e2\u06db\u06e8\u06d8\u06e2\u06d8\u06e7\u06d8\u06d8\u06d9\u06e5\u06e1\u06ec\u06db\u06df\u06db\u06d9\u06d6\u06d7\u06dc\u06e2\u06e1\u06d8\u06d9\u06da\u06e4\u06d7\u06d7\u06d9\u06da\u06db\u06d8\u06eb\u06e1\u06e8\u06d8\u06e8\u06d6\u06dc\u06d8\u06e0\u06df\u06e6\u06d8\u06dc\u06dc\u06e6\u06d8\u06e0\u06da\u06d8"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06eb\u06e5\u06d6\u06d8\u06e8\u06df\u06d6\u06db\u06ec\u06d7\u06d6\u06e4\u06e5\u06d8\u06d8\u06e6\u06e1\u06d8\u06d6\u06e0\u06df\u06da\u06e2\u06d6\u06d7\u06d8\u06e0\u06ec\u06df\u06e4\u06e0\u06d6\u06dc"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06d8\u06e7\u06e5\u06e0\u06db\u06db\u06e6\u06d6\u06e1\u06d8\u06d6\u06dc\u06e1\u06e4\u06e1\u06ec\u06e5\u06d7\u06e2\u06db\u06e0\u06da\u06dc\u06dc\u06e1\u06e7\u06e7\u06e6\u06df\u06df"

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->OooO0OO()V

    const-string v0, "\u06df\u06d6\u06e0\u06e5\u06d8\u06da\u06e7\u06e7\u06ec\u06da\u06d8\u06d7\u06d6\u06e6\u06d6\u06d8\u06e7\u06e1\u06e2\u06e0\u06e0\u06dc\u06d8\u06d8\u06e8\u06da\u06e4\u06d6\u06d8\u06ec\u06da"

    goto/16 :goto_0

    :sswitch_16
    invoke-static {}, Lz2/d7;->OooO00o()Lz2/d7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/d7;->OooO0O0(Landroid/content/Context;)V

    const-string v0, "\u06e4\u06df\u06da\u06d9\u06e6\u06e8\u06ec\u06eb\u06dc\u06d9\u06e4\u06df\u06e2\u06e5\u06e4\u06e5\u06e0\u06e2\u06da\u06e4\u06d7\u06e1\u06eb\u06e2\u06e6\u06e4\u06e7\u06dc\u06e7\u06e0\u06dc\u06e8\u06e4\u06ec\u06dc\u06d8\u06e0\u06dc\u06d6\u06d8\u06db\u06e6\u06e1"

    goto/16 :goto_0

    :sswitch_17
    invoke-static {p0}, Lz2/u5;->OooO0O0(Landroid/app/Application;)V

    const-string v0, "\u06eb\u06e4\u06e1\u06df\u06d8\u06e7\u06eb\u06d8\u06e8\u06d8\u06e2\u06e1\u06da\u06e7\u06db\u06d6\u06e6\u06da\u06e0\u06e4\u06ec\u06e0\u06db\u06db\u06da\u06da\u06da\u06d8\u06d8\u06e0\u06d9\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Lz2/aj;->OooO0oO()Lz2/aj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/aj;->OooO(Landroid/content/Context;)V

    const-string v0, "\u06d7\u06d9\u06d9\u06e7\u06d6\u06e8\u06d8\u06e0\u06e6\u06d6\u06e8\u06da\u06da\u06d8\u06db\u06da\u06e6\u06e6\u06d8\u06d8\u06d9\u06e1\u06df\u06db\u06d9\u06ec\u06e4\u06e8\u06d7\u06d6\u06e4\u06e4"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06d7\u06d9\u06e8\u06e7\u06e6\u06e7\u06e1\u06db\u06d8\u06d8\u06e0\u06e8\u06ec\u06e6\u06e4\u06da\u06d9\u06e0\u06d9\u06e7\u06e2\u06e5\u06d8\u06d7\u06d6\u06e4\u06e4\u06d7\u06e1\u06d6\u06e1\u06d8\u06e8\u06d6\u06e6\u06d8\u06e7\u06e7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "\u06d9\u06d6\u06d6\u06d8\u06e4\u06e2\u06df\u06d8\u06d7\u06e7\u06d8\u06e0\u06e1\u06d8\u06df\u06e7\u06da\u06da\u06d7\u06d9\u06e2\u06db\u06ec\u06ec\u06e4\u06e6\u06d8\u06e5\u06e1\u06dc\u06da\u06e5\u06df\u06df\u06e1\u06dc\u06e8\u06e4\u06ec\u06e0\u06e6\u06da\u06ec\u06eb\u06e1\u06d8\u06ec\u06dc\u06db\u06e7\u06e4\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "\u06e4\u06df\u06da\u06d9\u06e6\u06e8\u06ec\u06eb\u06dc\u06d9\u06e4\u06df\u06e2\u06e5\u06e4\u06e5\u06e0\u06e2\u06da\u06e4\u06d7\u06e1\u06eb\u06e2\u06e6\u06e4\u06e7\u06dc\u06e7\u06e0\u06dc\u06e8\u06e4\u06ec\u06dc\u06d8\u06e0\u06dc\u06d6\u06d8\u06db\u06e6\u06e1"

    goto/16 :goto_0

    :sswitch_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d19fd9b -> :sswitch_3
        -0x5cdc2d47 -> :sswitch_16
        -0x8e24286 -> :sswitch_2
        -0x2f14c39 -> :sswitch_d
        0x458998e -> :sswitch_1
        0xc7e5eff -> :sswitch_1b
        0x14304c61 -> :sswitch_4
        0x1e694cde -> :sswitch_1b
        0x26d30e35 -> :sswitch_0
        0x360126e0 -> :sswitch_15
        0x58018cec -> :sswitch_1c
        0x5917aceb -> :sswitch_c
        0x60e9c8f7 -> :sswitch_17
        0x7d67545f -> :sswitch_18
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6881224d -> :sswitch_19
        -0x3ddef338 -> :sswitch_b
        -0x22abe44f -> :sswitch_7
        0x1cddea6a -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x18fdfed1 -> :sswitch_a
        0x2eaa5d99 -> :sswitch_9
        0x4bdeca89 -> :sswitch_8
        0x5fdcb041 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x445c1afd -> :sswitch_1a
        0x4d91abd7 -> :sswitch_10
        0x65c5d1f8 -> :sswitch_14
        0x7efae832 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x765c45f9 -> :sswitch_f
        -0x34465f4f -> :sswitch_13
        -0x31c81f35 -> :sswitch_11
        -0x30e59c69 -> :sswitch_12
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 4

    const-string v0, "\u06da\u06e4\u06e5\u06e1\u06e0\u06d8\u06d8\u06ec\u06e6\u06e2\u06d9\u06e4\u06e7\u06d9\u06e8\u06e1\u06d8\u06e2\u06e5\u06d8\u06d8\u06d8\u06e4\u06e6\u06d8\u06ec\u06e2\u06d6\u06d8\u06db\u06d6\u06d8\u06e8\u06da\u06d9\u06e1\u06e1\u06df\u06e8\u06db\u06e6\u06d8\u06e6\u06e7\u06df\u06da\u06e8\u06ec\u06ec\u06d8\u06ec\u06d6\u06e4\u06e7\u06e5\u06e7\u06da\u06e8\u06dc\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xd3

    const/16 v2, 0x28d

    const v3, -0x664b000c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06db\u06d8\u06d8\u06e0\u06e8\u06e1\u06d8\u06e6\u06d8\u06e5\u06d8\u06e8\u06e2\u06d8\u06eb\u06e4\u06dc\u06e7\u06d6\u06d6\u06e2\u06d7\u06db\u06eb\u06df\u06e4\u06dc\u06dc\u06e5\u06ec\u06d8\u06e1\u06e0\u06dc\u06db\u06d7\u06e5\u06e8\u06da\u06d9\u06da\u06e4\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    const-string v0, "\u06e2\u06eb\u06e5\u06d8\u06e7\u06da\u06e1\u06e2\u06d9\u06e7\u06e1\u06e1\u06dc\u06d8\u06d9\u06e6\u06e7\u06e0\u06db\u06d6\u06d8\u06d7\u06df\u06d6\u06e5\u06e5\u06df\u06e4\u06d7\u06e5"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56e4ad33 -> :sswitch_1
        0x9254873 -> :sswitch_0
        0x3ccbab6e -> :sswitch_2
    .end sparse-switch
.end method

.method public onTerminate()V
    .locals 4

    const-string v0, "\u06d6\u06d7\u06d9\u06e6\u06e7\u06d8\u06d8\u06e0\u06e8\u06da\u06df\u06df\u06e4\u06d8\u06d9\u06d6\u06ec\u06db\u06eb\u06eb\u06d8\u06dc\u06d9\u06e6\u06e5\u06d9\u06e6\u06d8\u06e7\u06e2\u06d8\u06d8\u06e6\u06d7\u06e1\u06e2\u06e1\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x132

    const/16 v2, 0x1d3

    const v3, -0x110c2e60

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06ec\u06e5\u06e7\u06df\u06e2\u06eb\u06e0\u06df\u06d7\u06e0\u06dc\u06d9\u06eb\u06e8\u06d7\u06e0\u06e5\u06d8\u06e2\u06dc\u06d6\u06d8\u06d8\u06e1\u06ec\u06dc\u06d8\u06e5\u06e7\u06e6\u06d7\u06e1\u06e4\u06dc\u06db\u06d7\u06e4\u06db\u06d6\u06d8\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    const-string v0, "\u06d6\u06da\u06dc\u06e7\u06d6\u06eb\u06e2\u06dc\u06e8\u06d8\u06e0\u06dc\u06e6\u06d8\u06d8\u06e5\u06e6\u06e4\u06d6\u06dc\u06d8\u06db\u06e0\u06e5\u06d8\u06e6\u06e5\u06df\u06d8\u06e7\u06e7\u06e4\u06eb\u06e7\u06ec\u06e0\u06e1\u06d9\u06e8\u06df\u06d9\u06df\u06d7\u06e8\u06d9\u06dc\u06e5\u06d9\u06e7\u06e4\u06e6\u06d6\u06d6\u06ec\u06d7\u06d9\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x54ab31cf -> :sswitch_0
        0x5c6298b4 -> :sswitch_1
        0x750456e0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTrimMemory(I)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06da\u06e7\u06e5\u06d8\u06db\u06eb\u06e1\u06dc\u06d8\u06e4\u06e1\u06d8\u06d8\u06e2\u06d9\u06e8\u06d6\u06d8\u06d7\u06e6\u06d7\u06e2\u06e5\u06e5\u06df\u06ec\u06e7\u06d6\u06d8\u06d9\u06db\u06e4\u06d6\u06db\u06db\u06e0\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xe2

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2c1

    const/16 v3, 0x2d0

    const v4, 0x701a2621

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e0\u06db\u06e2\u06ec\u06d9\u06e6\u06ec\u06d8\u06e8\u06dc\u06d6\u06d6\u06e4\u06e1\u06e6\u06dc\u06eb\u06d8\u06e6\u06e2\u06e5\u06e7\u06d6\u06e5\u06dc\u06e6\u06e7\u06d8\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e0\u06df\u06e7\u06e8\u06e8\u06d8\u06d7\u06d7\u06e8\u06d8\u06eb\u06df\u06d8\u06d8\u06e7\u06e1\u06e8\u06d6\u06d9\u06e1\u06e6\u06e5\u06e1\u06d8\u06df\u06db\u06d8\u06d8\u06e4\u06d6\u06e2\u06e1\u06e0\u06e8\u06dc\u06d8\u06e6\u06d8\u06e5\u06db\u06e6\u06da\u06d7\u06da\u06db\u06ec\u06e2\u06ec\u06da\u06e8\u06da\u06e5\u06d8\u06d8\u06ec\u06d6\u06d6\u06e5\u06e7"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const-string v0, "\u06df\u06d8\u06e2\u06e6\u06e2\u06e8\u06d8\u06db\u06e1\u06df\u06da\u06d7\u06d8\u06db\u06e1\u06df\u06e5\u06e8\u06d8\u06eb\u06e7\u06d6\u06d8\u06ec\u06df\u06e4\u06e7\u06d7\u06d9\u06dc\u06e1\u06dc\u06e1\u06da\u06e6\u06d8\u06df\u06df\u06e5\u06d8\u06e5\u06df\u06d8\u06d8\u06e5\u06df\u06e8\u06d8\u06e7\u06dc\u06d9\u06e0\u06eb\u06e1\u06df\u06db\u06d6\u06d8\u06e5\u06ec\u06dc"

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06dc\u06d7\u06e6\u06d8\u06e6\u06db\u06e5\u06d8\u06db\u06eb\u06da\u06df\u06e4\u06e0\u06e8\u06dc\u06d8\u06da\u06e0\u06df\u06e8\u06d7\u06e7\u06e2\u06d6\u06e8\u06e7\u06e0\u06d6\u06ec\u06ec\u06d7"

    goto :goto_0

    :sswitch_4
    const-string v0, "onLowMemory:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06df\u06e7\u06d6\u06d6\u06e7\u06d8\u06e8\u06df\u06dc\u06d8\u06e0\u06d6\u06e5\u06d8\u06e7\u06db\u06e1\u06db\u06e4\u06e2\u06da\u06eb\u06e6\u06d8\u06e2\u06e8\u06e6\u06d8\u06d7\u06dc\u06e5\u06da\u06eb\u06d7\u06e2\u06d7\u06ec\u06e0\u06ec\u06db\u06d7\u06e7\u06ec\u06da\u06e1\u06e4\u06e7\u06d9\u06d8\u06d8\u06d7\u06df\u06dc\u06e1\u06ec\u06d9\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06eb\u06ec\u06db\u06e2\u06da\u06e2\u06e5\u06dc\u06e6\u06ec\u06e1\u06df\u06df\u06e5\u06ec\u06e5\u06df\u06e7\u06e0\u06e2\u06e5\u06e5\u06e1\u06d8\u06e8\u06ec\u06d6\u06d8\u06e5\u06d7\u06db\u06d7\u06d8\u06e5\u06e8\u06e5\u06e8\u06d8\u06e2\u06df\u06e0\u06d9\u06e6\u06e1\u06d8\u06e4\u06e2\u06e8\u06d8\u06e4\u06e1\u06d8\u06d8"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06dc\u06d9\u06e1\u06d8\u06d7\u06d8\u06e2\u06e5\u06d8\u06d6\u06d8\u06eb\u06da\u06e8\u06e0\u06e4\u06e4\u06e6\u06d6\u06d6\u06e5\u06e1\u06dc\u06db\u06e5\u06e6\u06d8\u06e1\u06dc\u06d8\u06dc\u06e5\u06e8\u06d8\u06e4\u06e8\u06d8\u06d8\u06eb\u06db\u06ec"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x30ed3eca -> :sswitch_5
        -0xead870d -> :sswitch_7
        -0x68b48fb -> :sswitch_2
        0xf3ffa74 -> :sswitch_0
        0x687238c3 -> :sswitch_4
        0x68b87a2c -> :sswitch_1
        0x6ec1b887 -> :sswitch_3
        0x70c9fd8c -> :sswitch_6
    .end sparse-switch
.end method
