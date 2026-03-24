.class public Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooO0oO(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const v1, -0x7195d9b4

    const-string v0, "\u06e2\u06e2\u06e7\u06e1\u06d6\u06ec\u06d6\u06e7\u06d8\u06eb\u06e2\u06d7\u06da\u06dc\u06eb\u06d9\u06dc\u06d8\u06e2\u06dc\u06d6\u06d8\u06e5\u06e0\u06e6\u06d6\u06d6\u06e5\u06d8\u06e6\u06d7\u06eb\u06eb\u06e2\u06d6\u06df\u06eb\u06e8\u06df\u06e8\u06d8\u06e4\u06e7\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e5\u06db\u06e0\u06dc\u06e8\u06d8\u06eb\u06e1\u06da\u06e0\u06e0\u06e6\u06d6\u06df\u06e2\u06d9\u06d9\u06da\u06e5\u06e7\u06d8\u06e6\u06d9\u06e8\u06d8\u06e6\u06d8\u06e7\u06d8\u06e5\u06e8\u06e1\u06d8\u06db\u06dc\u06d8\u06ec\u06dc\u06e8\u06d8\u06e2\u06e5\u06e5\u06d8\u06d8\u06e7\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06d8\u06e0\u06e1\u06e7\u06d9\u06db\u06d8\u06e2\u06d7\u06e7\u06db\u06e0\u06d8\u06e6\u06d8\u06d8\u06e6\u06e7\u06d8\u06d8\u06eb\u06e1\u06ec\u06e4\u06ec\u06e1\u06e8\u06dc\u06e8\u06e1\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const v2, 0x7d449bf5

    const-string v0, "\u06e5\u06e1\u06d6\u06d8\u06df\u06dc\u06ec\u06d7\u06e8\u06e1\u06d8\u06e1\u06dc\u06d8\u06e1\u06e5\u06e6\u06e7\u06e7\u06d7\u06d6\u06ec\u06e2\u06e2\u06e0\u06e5\u06e7\u06e7\u06d6\u06d8\u06da\u06d6\u06dc\u06e5\u06ec\u06d8\u06e1\u06d7\u06e6\u06e8\u06e8\u06e6\u06d8\u06d7\u06e5\u06dc\u06da\u06e4\u06e1\u06e7\u06d9\u06ec\u06db\u06e7\u06e0\u06d7\u06d6\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06db\u06e4\u06e6\u06d8\u06df\u06db\u06d9\u06dc\u06d8\u06dc\u06e5\u06e6\u06d8\u06e0\u06e0\u06e8\u06d8\u06da\u06e8\u06d7\u06dc\u06e1\u06dc\u06eb\u06e6\u06e7\u06d8\u06d6\u06ec\u06d6\u06dc\u06d9\u06d6\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e0\u06db\u06e0\u06d9\u06db\u06e5\u06d8\u06eb\u06e1\u06dc\u06db\u06e5\u06e6\u06df\u06eb\u06d9\u06eb\u06d6\u06e5\u06d9\u06e6\u06e2\u06dc\u06e4\u06da\u06eb\u06d8\u06d6\u06e0\u06d8\u06e2\u06e5\u06d8\u06d6\u06ec\u06e8\u06d8"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06df\u06e8\u06ec\u06e8\u06d6\u06e7\u06e8\u06e0\u06d6\u06d8\u06e2\u06da\u06e8\u06db\u06d6\u06dc\u06db\u06e1\u06db\u06d6\u06d9\u06ec\u06e4\u06e6\u06d6\u06d8\u06e2\u06d9\u06e6\u06d8\u06eb\u06d6\u06df\u06d6\u06eb\u06d7\u06d8\u06e0\u06dc\u06e1\u06e5\u06eb\u06d9\u06e6\u06d8\u06e1\u06eb\u06dc\u06d8\u06e4\u06d8\u06d7\u06e6\u06da\u06d6\u06d6\u06e7"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06d8\u06e8\u06d8\u06dc\u06e6\u06ec\u06ec\u06e5\u06e8\u06dc\u06e2\u06db\u06e2\u06eb\u06d8\u06d8\u06da\u06d9\u06e8\u06ec\u06e4\u06e1\u06d8\u06d9\u06d9\u06d6\u06e1\u06db\u06db\u06e7\u06e2\u06e1\u06dc\u06d9\u06d6\u06ec\u06e1\u06d8\u06d6\u06e4\u06e6\u06d8\u06e4\u06e6\u06d9\u06e5\u06e2\u06ec\u06da\u06e5\u06e5"

    goto :goto_0

    :sswitch_6
    const v1, 0x73c87d72

    const-string v0, "\u06e4\u06e7\u06d6\u06d8\u06dc\u06e5\u06e4\u06e6\u06e6\u06eb\u06e8\u06e4\u06d8\u06e6\u06d8\u06e0\u06df\u06da\u06e1\u06d8\u06da\u06e7\u06e0\u06e4\u06d6\u06d8\u06d8\u06eb\u06e8\u06ec\u06e5\u06e4\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d6\u06db\u06d7\u06e1\u06e6\u06e2\u06e6\u06db\u06e7\u06df\u06e6\u06d8\u06d6\u06d9\u06db\u06df\u06e2\u06d6\u06e1\u06d8\u06e6\u06d8\u06e1\u06e2\u06df\u06e7\u06e8\u06e1\u06e2\u06dc\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d9\u06eb\u06e5\u06eb\u06dc\u06db\u06df\u06e6\u06e6\u06e5\u06e0\u06e4\u06e4\u06d8\u06d8\u06e4\u06e6\u06db\u06e4\u06d8\u06dc\u06dc\u06e0\u06d8\u06d8\u06e1\u06eb\u06ec\u06eb\u06dc\u06ec\u06e5\u06e6\u06d8\u06d7\u06e6\u06dc\u06e0\u06d6\u06e5\u06d8\u06eb\u06e8\u06e6\u06d8"

    goto :goto_2

    :sswitch_9
    const v2, -0x3fac0695

    const-string v0, "\u06e6\u06dc\u06d6\u06d8\u06d6\u06eb\u06d7\u06ec\u06eb\u06dc\u06d8\u06e6\u06ec\u06d9\u06df\u06d8\u06e2\u06e0\u06e2\u06e5\u06d8\u06d8\u06d8\u06eb\u06d8\u06d6\u06d9\u06e8\u06e4\u06e5\u06d8\u06d7\u06dc\u06d6\u06e1\u06d7\u06df\u06da\u06dc\u06da\u06e8\u06e2\u06dc\u06df\u06e1"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06e4\u06e7\u06e1\u06d8\u06e6\u06d9\u06e8\u06d8\u06db\u06dc\u06df\u06e6\u06df\u06e8\u06e7\u06da\u06d8\u06d8\u06ec\u06ec\u06e7\u06e4\u06dc\u06e7\u06df\u06e7\u06e7\u06e1\u06ec\u06df\u06dc\u06db\u06dc\u06dc\u06ec\u06e0\u06e8\u06e6\u06e7\u06e7\u06e7\u06e5\u06e2\u06db\u06e2\u06e2\u06db\u06d6\u06e6\u06da\u06db\u06ec\u06eb\u06e8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e2\u06eb\u06d8\u06ec\u06e6\u06d8\u06e6\u06e6\u06d6\u06d6\u06ec\u06d8\u06e5\u06e2\u06ec\u06d6\u06dc\u06e7\u06ec\u06eb\u06e5\u06d7\u06d9\u06d7\u06e7\u06e6\u06d8\u06ec\u06d7\u06d8\u06d9\u06d8\u06d9\u06da\u06e2\u06dc\u06d8\u06d6\u06e0\u06dc\u06d8\u06eb\u06ec\u06eb\u06df\u06e8\u06e5\u06d7\u06dc"

    goto :goto_3

    :sswitch_b
    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06da\u06d6\u06e1\u06e7\u06dc\u06db\u06e8\u06e8\u06e2\u06e2\u06df\u06e1\u06d8\u06dc\u06e0\u06e5\u06d8\u06df\u06e6\u06da\u06d9\u06db\u06ec\u06e2\u06e2\u06d6\u06e5\u06e4\u06e1\u06df\u06e1\u06da"

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06d9\u06e0\u06e6\u06d9\u06e8\u06e7\u06d9\u06da\u06d8\u06d8\u06ec\u06e8\u06d9\u06df\u06e4\u06e5\u06da\u06d6\u06dc\u06d8\u06e2\u06d6\u06e8\u06d8\u06ec\u06e5\u06d8\u06d8\u06e4\u06d8\u06e6\u06e0\u06ec\u06dc\u06d6\u06e4\u06e8\u06eb\u06d6\u06e0"

    goto :goto_2

    :sswitch_d
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :sswitch_e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69071b77 -> :sswitch_e
        -0xbbde778 -> :sswitch_2
        0x28273a7 -> :sswitch_0
        0x29d0a948 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5c9f6a7f -> :sswitch_1
        0x3aa61b2b -> :sswitch_5
        0x489b4b31 -> :sswitch_3
        0x6423cc09 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4c700cb2 -> :sswitch_e
        0x2131d177 -> :sswitch_9
        0x3cd76e2f -> :sswitch_d
        0x785dbd59 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7263f8c8 -> :sswitch_b
        -0x5ac64d42 -> :sswitch_c
        -0x367d027e -> :sswitch_a
        -0xc937c00 -> :sswitch_8
    .end sparse-switch
.end method
