.class public Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;
.super Lz2/w0;


# annotations
.annotation build Lz2/o0O000O;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Lz2/o0oOO;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0oOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "\u06db\u06ec\u06e8\u06ec\u06d8\u06dc\u06eb\u06e4\u06e8\u06d8\u06e6\u06e1\u06eb\u06e5\u06e6\u06e8\u06e4\u06d9\u06dc\u06e8\u06e0\u06e6\u06d8\u06e7\u06e0\u06da\u06ec\u06d8\u06dc\u06d8\u06e1\u06e4\u06e7\u06db\u06ec\u06dc\u06e4\u06d9\u06e5\u06dc\u06d8\u06e7\u06d8\u06db\u06d8\u06e6\u06d8\u06e5\u06e6\u06db\u06dc\u06d8\u06eb\u06e4\u06ec\u06d9\u06e2\u06dc\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x332

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x35c

    const/16 v2, 0x150

    const v3, -0x4b7f14a6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d7\u06da\u06e1\u06ec\u06e1\u06db\u06d6\u06eb\u06e7\u06da\u06e5\u06d6\u06da\u06eb\u06eb\u06e4\u06e8\u06db\u06e1\u06ec\u06e2\u06d7\u06d8\u06d8\u06e6\u06d7\u06d6\u06d8\u06e7\u06e4\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e2\u06d8\u06d8\u06e7\u06ec\u06d8\u06d8\u06e7\u06db\u06e8\u06d8\u06e1\u06eb\u06da\u06d6\u06dc\u06dc\u06da\u06e5\u06dc\u06e6\u06d6\u06e4\u06da\u06eb\u06e5\u06d7\u06e8\u06e7\u06e6\u06e1\u06d6\u06e7\u06d9\u06d7\u06e8\u06da\u06eb\u06e4\u06eb\u06e5\u06ec\u06eb\u06e4\u06e2\u06d9\u06dc\u06d8\u06d9\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e2\u06e4\u06d9\u06e7\u06d7\u06e6\u06d8\u06db\u06e4\u06ec\u06e2\u06e0\u06dc\u06d8\u06df\u06e6\u06df\u06d6\u06e8\u06e5\u06e4\u06e6\u06e7\u06d8\u06eb\u06e0\u06d6\u06d8\u06e6\u06db\u06d6\u06d8\u06e6\u06e4\u06e5"

    goto :goto_0

    :sswitch_3
    new-instance v0, Lz2/oOo00ooO;

    const/high16 v1, 0x1400000

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lz2/oOo00ooO;-><init>(J)V

    invoke-virtual {p2, v0}, Lz2/o0oOO;->OooOOOO(Lz2/oO0OO00o;)Lz2/o0oOO;

    move-result-object v0

    new-instance v1, Lz2/oOo00o0o;

    const/high16 v2, 0x6400000

    int-to-long v2, v2

    invoke-direct {v1, p1, v2, v3}, Lz2/oOo00o0o;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lz2/o0oOO;->OooO(Lz2/oO00Oo0$OooO00o;)Lz2/o0oOO;

    const-string v0, "\u06e2\u06e5\u06e0\u06d9\u06e6\u06e7\u06e6\u06df\u06e5\u06e0\u06d8\u06ec\u06eb\u06df\u06d8\u06d8\u06df\u06e4\u06d8\u06da\u06ec\u06db\u06e8\u06e1\u06df\u06e0\u06df\u06e6\u06d8\u06e8\u06e2\u06eb\u06d9\u06e5\u06ec\u06e0\u06e6\u06e7\u06d8\u06e6\u06df\u06e6\u06d8\u06e5\u06eb\u06e5\u06d8\u06d7\u06e4\u06e6\u06e8\u06ec\u06dc\u06d8\u06e4\u06dc\u06e6\u06df\u06df\u06d7"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x718af952 -> :sswitch_0
        -0x3086ac3c -> :sswitch_2
        0x13d29243 -> :sswitch_3
        0x41664054 -> :sswitch_4
        0x71c4d82d -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0OO()Z
    .locals 4

    const-string v0, "\u06d7\u06e5\u06d6\u06e5\u06e8\u06e2\u06d8\u06e2\u06d8\u06d8\u06e1\u06d6\u06e1\u06d8\u06e2\u06df\u06d8\u06d8\u06ec\u06e0\u06d6\u06d8\u06e0\u06d6\u06e6\u06d8\u06d8\u06df\u06d8\u06eb\u06e6\u06dc\u06d8\u06d9\u06e7\u06d9\u06dc\u06d8\u06e6\u06d8\u06e7\u06e8\u06dc\u06d8\u06d9\u06e2\u06e8\u06d7\u06e5\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x11c

    const/16 v2, 0x240

    const v3, -0x17e3dd64

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e6\u06e7\u06d8\u06e8\u06d6\u06e4\u06e5\u06da\u06dc\u06dc\u06df\u06e6\u06d9\u06dc\u06e8\u06d8\u06e0\u06d7\u06e6\u06d8\u06df\u06e1\u06df\u06e0\u06db\u06dc\u06d8\u06e1\u06eb\u06dc\u06d8\u06e6\u06e4\u06e5\u06d8\u06e0\u06e5\u06e6\u06d8\u06e6\u06e8\u06df\u06e1\u06dc\u06d8\u06e2\u06d7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a49a26d -> :sswitch_0
        0x6b2562e3 -> :sswitch_1
    .end sparse-switch
.end method
