.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOo0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;->OoooOoO:Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;->OoooOoO:Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;->BuyLinkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x7f5199de

    const-string v0, "\u06e8\u06e1\u06eb\u06db\u06d7\u06e0\u06e7\u06e2\u06e1\u06da\u06eb\u06e5\u06d8\u06e5\u06d9\u06eb\u06d8\u06db\u06d9\u06e6\u06dc\u06d6\u06d8\u06e5\u06d6\u06e8\u06d8\u06e1\u06e5\u06ec\u06eb\u06e5\u06e7\u06d8\u06e5\u06e0\u06df\u06e0\u06e6\u06d8\u06d7\u06e7\u06eb\u06da\u06e6\u06d6\u06d8\u06e2\u06d7\u06ec\u06e1\u06dc\u06ec\u06e0\u06eb\u06d8\u06db\u06dc\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_2
    const-string v0, "\u06e2\u06e2\u06e2\u06d9\u06d7\u06e1\u06d9\u06eb\u06d8\u06d8\u06e5\u06e8\u06e6\u06d8\u06d7\u06e8\u06e7\u06d8\u06ec\u06e2\u06ec\u06e1\u06d6\u06e4\u06e5\u06e4\u06e6\u06d8\u06d9\u06e8\u06e6\u06d8\u06d6\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    const v3, -0x2bafcbad

    const-string v0, "\u06df\u06d8\u06da\u06db\u06e1\u06d6\u06d8\u06eb\u06e4\u06e0\u06e4\u06db\u06eb\u06e0\u06e1\u06eb\u06db\u06da\u06e4\u06db\u06dc\u06d9\u06db\u06d6\u06d6\u06d8\u06ec\u06d8\u06d8\u06d6\u06eb\u06e6\u06e6\u06e6\u06e5\u06d8\u06e7\u06da\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06d9\u06eb\u06e5\u06d8\u06d7\u06d6\u06d6\u06d8\u06df\u06e7\u06e0\u06e7\u06eb\u06e8\u06d6\u06df\u06e5\u06db\u06e7\u06e5\u06d8\u06e1\u06d6\u06e6\u06d8\u06df\u06e1\u06dc\u06d8\u06d8\u06e5\u06d6\u06d8\u06e5\u06d6\u06da"

    goto :goto_2

    :cond_0
    const-string v0, "\u06db\u06db\u06dc\u06d8\u06d7\u06d6\u06ec\u06dc\u06dc\u06e5\u06db\u06eb\u06e5\u06d8\u06e7\u06df\u06dc\u06df\u06d6\u06e8\u06d8\u06e6\u06da\u06ec\u06ec\u06d9\u06e1\u06e5\u06da\u06e4\u06e1\u06db\u06d8\u06d8\u06e7\u06e2\u06e7\u06db\u06d7\u06e6\u06d8"

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOOO(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06e1\u06d6\u06e7\u06e5\u06e8\u06eb\u06d6\u06e4\u06dc\u06e4\u06e8\u06df\u06d9\u06e1\u06d8\u06e4\u06d6\u06e1\u06d8\u06eb\u06d7\u06e5\u06d8\u06d7\u06e2\u06d9\u06e7\u06d8\u06e2\u06d7\u06d9\u06db\u06ec\u06d8\u06e2\u06ec\u06da\u06e1"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06dc\u06e5\u06e7\u06d8\u06d7\u06e0\u06d7\u06dc\u06eb\u06db\u06db\u06e7\u06d9\u06db\u06df\u06df\u06e0\u06e2\u06e1\u06d8\u06e0\u06e7\u06e4\u06e7\u06ec\u06e2\u06dc\u06da\u06da\u06d6\u06df\u06eb\u06e8\u06d6\u06e8\u06d8\u06df\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06dc\u06e0\u06e4\u06db\u06e5\u06df\u06ec\u06dc\u06d8\u06da\u06dc\u06da\u06ec\u06e4\u06dc\u06e8\u06e7\u06e6\u06d8\u06d8\u06df\u06e1\u06e8\u06db\u06e1\u06e0\u06d7\u06da\u06df\u06e1\u06e7\u06d7\u06df\u06e6\u06e4\u06d7\u06e1\u06dc\u06d8\u06d6\u06d8\u06d9\u06d7\u06d6\u06d9\u06e8\u06e5\u06d8\u06d6\u06e6\u06eb"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;->OoooOoo:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    const v2, 0x7f100191

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x386a3dfb -> :sswitch_7
        0x18f0d308 -> :sswitch_1
        0x25b5143d -> :sswitch_3
        0x2c5c568b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5b49a2db -> :sswitch_5
        -0x3cf8e8b3 -> :sswitch_4
        0x54bd34f2 -> :sswitch_2
        0x703e7bdf -> :sswitch_6
    .end sparse-switch
.end method
