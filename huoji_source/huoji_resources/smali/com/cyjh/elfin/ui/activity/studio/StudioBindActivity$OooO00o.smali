.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/rc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOOOO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)V
    .locals 4

    const-string v0, "\u06e5\u06eb\u06ec\u06d6\u06e4\u06d6\u06d8\u06d8\u06d8\u06d8\u06d8\u06e7\u06d6\u06e5\u06d8\u06d9\u06e7\u06e5\u06da\u06e4\u06da\u06e8\u06e7\u06e5\u06d8\u06e6\u06eb\u06db\u06db\u06e8\u06d7\u06e4\u06e8\u06df\u06e2\u06e5\u06e1\u06d8\u06d7\u06d7\u06eb\u06e2\u06e4\u06e1\u06d8\u06d7\u06e6\u06d6\u06d8\u06d7\u06eb\u06d9\u06e1\u06e8\u06d8\u06d8\u06df\u06e1\u06e0\u06e0\u06da\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x344

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x262

    const/16 v2, 0x102

    const v3, 0x62246fd1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06db\u06dc\u06d8\u06ec\u06e1\u06e4\u06e5\u06d6\u06d7\u06e5\u06d6\u06d7\u06e4\u06d8\u06d8\u06dc\u06d7\u06ec\u06e1\u06e8\u06df\u06e1\u06d8\u06e2\u06d8\u06d6\u06d8\u06d8\u06e0\u06e8\u06e7\u06d8\u06e8\u06d7\u06e8\u06d8\u06d9\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06d8\u06d6\u06d8\u06eb\u06e8\u06e1\u06db\u06d9\u06da\u06d8\u06e1\u06e4\u06e4\u06e4\u06e1\u06eb\u06e7\u06df\u06e4\u06da\u06d8\u06d8\u06d9\u06ec\u06eb\u06df\u06e1\u06df\u06dc\u06e8\u06d8\u06e0\u06df\u06db\u06da\u06ec\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06df\u06e1\u06ec\u06dc\u06dc\u06db\u06ec\u06e2\u06d6\u06eb\u06e6\u06eb\u06d9\u06e7\u06d6\u06da\u06e6\u06e6\u06d8\u06e5\u06eb\u06db\u06e8\u06d6\u06d8\u06df\u06e7\u06e5\u06d8\u06dc\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/rc;->OooOO0(Lz2/rc$OooO00o;)Lz2/rc;

    const-string v0, "\u06df\u06d7\u06da\u06ec\u06d6\u06e5\u06d6\u06da\u06e1\u06d8\u06e8\u06df\u06e6\u06d8\u06e5\u06d9\u06d9\u06d7\u06ec\u06e1\u06d8\u06da\u06e6\u06d8\u06dc\u06e7\u06ec\u06e6\u06e8\u06e1\u06eb\u06da\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooO0oO(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;Z)Z

    const-string v0, "\u06d6\u06ec\u06e5\u06d8\u06d9\u06e5\u06e8\u06d8\u06d7\u06e1\u06df\u06db\u06e5\u06da\u06e0\u06d8\u06d8\u06df\u06df\u06e5\u06d6\u06e7\u06e5\u06d8\u06e2\u06d7\u06d9\u06e8\u06d6\u06ec"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;

    invoke-direct {v1, p0, p2}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06db\u06e7\u06e5\u06d6\u06df\u06e7\u06d6\u06e1\u06dc\u06d8\u06e8\u06e7\u06dc\u06d6\u06d7\u06eb\u06e6\u06e5\u06e7\u06d8\u06e8\u06e2\u06d8\u06db\u06db\u06e0\u06d7\u06d9\u06e2\u06da\u06eb\u06d8\u06d8\u06d7\u06e5\u06dc\u06e4\u06e4\u06d9\u06e2\u06d7\u06e1\u06e6\u06d6\u06d8\u06e4\u06e0\u06d9\u06d7\u06e5\u06e0"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d47ac1b -> :sswitch_2
        -0x35a5420a -> :sswitch_0
        -0x1c87f71e -> :sswitch_4
        0x2d4c15a8 -> :sswitch_1
        0x36be9134 -> :sswitch_3
        0x653982d6 -> :sswitch_5
        0x710b2257 -> :sswitch_6
    .end sparse-switch
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06da\u06dc\u06e1\u06d8\u06d8\u06dc\u06d9\u06dc\u06da\u06e1\u06e1\u06db\u06e6\u06e5\u06d7\u06d7\u06e5\u06eb\u06e7\u06dc\u06df\u06e6\u06d8\u06df\u06d9\u06dc\u06d7\u06d8\u06d8\u06d6\u06df\u06e1\u06dc\u06d8\u06d6\u06dc\u06e2\u06e5"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x1f4

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0xcb

    const/16 v4, 0x3da

    const v5, 0x4e467800    # 8.3243827E8f

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e6\u06e0\u06d6\u06d7\u06db\u06e5\u06dc\u06ec\u06d9\u06e6\u06dc\u06d7\u06d7\u06dc\u06d8\u06e4\u06eb\u06e7\u06ec\u06d8\u06db\u06d7\u06e6\u06dc\u06da\u06eb\u06ec\u06e5\u06d7\u06df\u06da\u06e2\u06dc\u06e8\u06ec\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06db\u06da\u06eb\u06e5\u06e6\u06d8\u06ec\u06e0\u06d7\u06d7\u06da\u06d9\u06da\u06da\u06e8\u06d8\u06da\u06da\u06eb\u06e8\u06e7\u06d8\u06e8\u06dc\u06e1\u06d6\u06eb\u06e6\u06dc\u06e5\u06d8\u06da\u06dc\u06e8\u06e8\u06eb\u06d6\u06e8\u06e8\u06dc\u06e1\u06d8\u06e8\u06d8\u06e2\u06d9\u06e6\u06d8\u06e1\u06d8\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooO0oO(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;Z)Z

    const-string v0, "\u06da\u06eb\u06e6\u06da\u06d9\u06dc\u06df\u06e8\u06e6\u06e5\u06eb\u06e1\u06d8\u06e0\u06e5\u06e7\u06d8\u06eb\u06da\u06d6\u06d8\u06d9\u06d9\u06d7\u06e1\u06da\u06d6\u06d8\u06e4\u06e4\u06d8\u06d8\u06da\u06e2\u06e7\u06e1\u06e1\u06da\u06e2\u06df\u06dc"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO00o;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06d9\u06d9\u06d6\u06d8\u06d7\u06e0\u06d8\u06d8\u06d8\u06da\u06e5\u06d8\u06d8\u06d8\u06e7\u06d8\u06ec\u06e4\u06e8\u06e0\u06e8\u06dc\u06e7\u06d7\u06d6\u06d8\u06d9\u06eb\u06d7\u06df\u06da\u06e2\u06d8\u06d9\u06d8\u06d8\u06df\u06d8\u06df\u06d7\u06db\u06db\u06d8\u06e2\u06e5\u06d8\u06eb\u06d6\u06d8\u06eb\u06da\u06df\u06e1\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v3}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooO(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    const-string v0, "\u06e0\u06d6\u06e5\u06d8\u06e5\u06e6\u06e5\u06e2\u06e1\u06e2\u06e5\u06ec\u06eb\u06e1\u06dc\u06d8\u06df\u06e6\u06e8\u06d8\u06e8\u06e2\u06da\u06dc\u06d6\u06d8\u06da\u06e5\u06d8\u06d8\u06e2\u06da\u06e6\u06d8\u06e5\u06eb\u06eb\u06d6\u06da\u06e0"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lz2/rc;->OooOO0(Lz2/rc$OooO00o;)Lz2/rc;

    const-string v0, "\u06d6\u06ec\u06e4\u06e0\u06eb\u06e8\u06d6\u06da\u06ec\u06e8\u06e2\u06dc\u06d8\u06e1\u06e2\u06ec\u06ec\u06e8\u06df\u06e5\u06db\u06e8\u06e7\u06eb\u06e4\u06d8\u06dc\u06d6\u06d7\u06d6\u06df\u06e8\u06d8\u06d8\u06ec\u06dc\u06d8\u06d8\u06eb\u06d7\u06e5\u06e5\u06d7\u06e8\u06d8\u06e0\u06e0\u06ec\u06e0\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/q4;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06db\u06ec\u06e0\u06e1\u06db\u06df\u06e1\u06ec\u06da\u06da\u06d6\u06ec\u06e8\u06eb\u06d8\u06db\u06d7\u06e2\u06e7\u06e7\u06ec\u06e0\u06e8\u06d8\u06eb\u06d9\u06e5\u06d8\u06df\u06ec\u06db\u06ec\u06d7\u06e6\u06e6\u06e0\u06e1\u06d8\u06e0\u06ec\u06eb\u06e2\u06e4\u06e6\u06e4\u06db\u06d8\u06d8\u06d7\u06e0\u06e4\u06e4\u06e2\u06ec\u06d9\u06e6"

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v3, "script_setting"

    invoke-virtual {v0, v3, v1}, Lz2/x4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06db\u06da\u06db\u06e1\u06d6\u06e7\u06dc\u06da\u06d6\u06df\u06df\u06d6\u06d8\u06e4\u06db\u06da\u06e1\u06e8\u06d6\u06d8\u06e5\u06dc\u06e8\u06e2\u06d7\u06e8\u06d7\u06e5\u06db\u06e6\u06dc\u06db\u06e1\u06e6\u06d8\u06db\u06e6\u06e5\u06e8\u06df\u06dc\u06ec\u06e4\u06e1"

    goto :goto_0

    :sswitch_8
    iget-object v0, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMServerHost:Ljava/lang/String;

    iget v3, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMServerPort:I

    invoke-static {v0, v3}, Lz2/dh;->OooOOo(Ljava/lang/String;I)V

    const-string v0, "\u06e4\u06dc\u06e4\u06d8\u06e1\u06eb\u06d7\u06d7\u06e4\u06eb\u06e4\u06e1\u06d7\u06d7\u06e5\u06d8\u06e4\u06d6\u06eb\u06eb\u06e8\u06e8\u06d8\u06da\u06e4\u06e5\u06d8\u06d8\u06d7\u06d7\u06db\u06d9\u06e8\u06e6\u06d7\u06e5\u06d8\u06e6\u06eb\u06d7\u06e7\u06d8\u06d8\u06e0\u06dc\u06e1\u06d8\u06e6\u06e6\u06d6\u06e7\u06e2\u06d9\u06d7\u06d6\u06da\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_9
    const v3, 0x78b48b13

    const-string v0, "\u06eb\u06d9\u06e0\u06e1\u06e0\u06d7\u06e2\u06d8\u06eb\u06da\u06e2\u06e1\u06d7\u06e6\u06d8\u06eb\u06d8\u06db\u06e7\u06d7\u06d6\u06e6\u06d8\u06e8\u06d8\u06df\u06d6\u06d8\u06d8\u06df\u06da\u06e8\u06df\u06d9\u06ec\u06e0\u06df\u06e2"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06db\u06d6\u06e8\u06d8\u06e7\u06e1\u06e1\u06e4\u06e2\u06d9\u06df\u06eb\u06d8\u06db\u06e7\u06e0\u06dc\u06df\u06d6\u06d8\u06dc\u06e6\u06e1\u06e1\u06df\u06dc\u06d8\u06d8\u06e2\u06d6\u06df\u06db\u06e6\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d6\u06e1\u06e7\u06d8\u06df\u06e6\u06e4\u06d7\u06e2\u06eb\u06e6\u06eb\u06e6\u06df\u06eb\u06d6\u06d8\u06eb\u06da\u06e5\u06e4\u06e2\u06e0\u06e5\u06eb\u06e6\u06da\u06d9\u06e5\u06d8\u06e1\u06eb\u06da"

    goto :goto_1

    :sswitch_c
    const v4, -0xf47874

    const-string v0, "\u06da\u06dc\u06e4\u06db\u06d8\u06d6\u06e1\u06e6\u06dc\u06d8\u06ec\u06e0\u06e8\u06e8\u06ec\u06eb\u06e2\u06eb\u06d7\u06e7\u06e0\u06e4\u06ec\u06eb\u06d9\u06d8\u06df\u06e2\u06ec\u06db\u06e2\u06dc\u06e8\u06ec\u06df\u06e0\u06e7\u06e4\u06d8\u06e6\u06d8\u06d9\u06d7\u06e6\u06db\u06df\u06da\u06e8\u06da\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06db\u06d7\u06da\u06df\u06e7\u06e6\u06d9\u06e2\u06e7\u06e7\u06df\u06e6\u06d8\u06ec\u06da\u06e8\u06d8\u06df\u06db\u06d9\u06e8\u06dc\u06dc\u06d8\u06ec\u06da\u06d6\u06d8\u06d9\u06d7\u06d8\u06e8\u06e1\u06e2\u06db\u06e8\u06e8\u06e1\u06da\u06e7\u06d6\u06e6\u06e8\u06d8\u06dc\u06d8\u06e1\u06da\u06ec\u06dc\u06db\u06df\u06e6\u06d8\u06eb\u06ec\u06e6\u06ec\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06db\u06eb\u06d6\u06eb\u06e5\u06e2\u06e0\u06dc\u06e6\u06d8\u06dc\u06e7\u06dc\u06e5\u06dc\u06e1\u06d8\u06e8\u06e7\u06e1\u06d6\u06e1\u06e2\u06eb\u06e6\u06e8\u06d8\u06e6\u06df\u06d8\u06ec\u06e6\u06e1\u06d8\u06e0\u06db\u06e6\u06e0\u06e6\u06d8\u06da\u06eb\u06e6\u06d8\u06d9\u06df\u06dc"

    goto :goto_2

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOO0O(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d6\u06e2\u06e5\u06d8\u06db\u06e1\u06e5\u06d9\u06d7\u06e0\u06e7\u06df\u06d8\u06d8\u06e7\u06df\u06e2\u06e4\u06df\u06da\u06e4\u06e1\u06d8\u06e5\u06e2\u06e5\u06d8\u06da\u06e2\u06d8\u06df\u06e7\u06e1\u06e7\u06e8\u06d8\u06da\u06e7\u06e0"

    goto :goto_2

    :sswitch_f
    const-string v0, "\u06e5\u06db\u06e6\u06d8\u06df\u06eb\u06e6\u06d8\u06e0\u06e1\u06e1\u06d9\u06df\u06d8\u06da\u06e0\u06d6\u06d8\u06e0\u06da\u06e1\u06d8\u06e2\u06e7\u06e4\u06d8\u06e6\u06ec\u06e4\u06da\u06e7\u06dc\u06dc\u06e5\u06e2\u06ec\u06e2\u06e4\u06e4"

    goto :goto_1

    :sswitch_10
    const-string v0, "\u06e4\u06eb\u06d9\u06da\u06e2\u06d9\u06e7\u06eb\u06e6\u06d8\u06db\u06e2\u06d7\u06eb\u06d7\u06e8\u06d6\u06ec\u06e1\u06d8\u06dc\u06d9\u06da\u06e5\u06eb\u06eb\u06d9\u06e4\u06e2\u06e6\u06e7\u06df\u06e7\u06d6\u06e8\u06e8\u06e5\u06e5"

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0O0;

    invoke-direct {v3, p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06db\u06e7\u06eb\u06d8\u06e0\u06dc\u06d8\u06d9\u06e7\u06e1\u06df\u06e6\u06e1\u06e8\u06d6\u06e2\u06e4\u06e1\u06d9\u06e0\u06e7\u06db\u06d7\u06dc\u06d7\u06d8\u06dc\u06d7\u06e7\u06d8\u06e4\u06db\u06e6\u06e1\u06dc\u06e6\u06d8\u06ec\u06e0\u06e0\u06e5\u06e7\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v3, Lz2/fh;

    const/16 v4, 0x2711

    iget-object v5, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMToken:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lz2/fh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06eb\u06e5\u06d7\u06da\u06dc\u06e0\u06e4\u06dc\u06da\u06dc\u06e1\u06e7\u06d8\u06db\u06e8\u06d8\u06d8\u06dc\u06e7\u06e0\u06d9\u06e8\u06d8\u06d7\u06dc\u06e6\u06d8\u06d9\u06d9\u06eb\u06d6\u06e5\u06dc\u06d8\u06d6\u06e4\u06e2\u06e1\u06d6\u06d8\u06d8\u06e1\u06d7\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06eb\u06eb\u06e7\u06eb\u06da\u06e6\u06e8\u06ec\u06e6\u06eb\u06d9\u06d9\u06eb\u06e1\u06e5\u06d8\u06dc\u06d9\u06eb\u06e8\u06e2\u06db\u06e0\u06db\u06e2\u06eb\u06dc\u06e1\u06e4\u06e8\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "\u06e5\u06ec\u06e6\u06d8\u06e1\u06e5\u06e8\u06d8\u06e8\u06da\u06df\u06ec\u06e7\u06e4\u06e1\u06d9\u06d9\u06e1\u06e1\u06e8\u06d8\u06e6\u06e0\u06d6\u06d8\u06e6\u06ec\u06eb\u06d8\u06d8\u06d7\u06da\u06eb\u06df\u06ec\u06d9\u06d7\u06e2\u06d9\u06db\u06e1\u06eb\u06d6\u06e6\u06e8\u06e7\u06ec\u06d9\u06e8\u06d8\u06e0\u06d9\u06e2"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06eb\u06e5\u06d7\u06da\u06dc\u06e0\u06e4\u06dc\u06da\u06dc\u06e1\u06e7\u06d8\u06db\u06e8\u06d8\u06d8\u06dc\u06e7\u06e0\u06d9\u06e8\u06d8\u06d7\u06dc\u06e6\u06d8\u06d9\u06d9\u06eb\u06d6\u06e5\u06dc\u06d8\u06d6\u06e4\u06e2\u06e1\u06d6\u06d8\u06d8\u06e1\u06d7\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_16
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x698ad717 -> :sswitch_11
        -0x510b5707 -> :sswitch_6
        -0x48e466d9 -> :sswitch_16
        -0x46a147c8 -> :sswitch_9
        -0x3fbe09b9 -> :sswitch_5
        -0x393f9ede -> :sswitch_7
        -0x2b09f467 -> :sswitch_1
        -0xae5bd43 -> :sswitch_15
        -0x1cfb4cf -> :sswitch_2
        0x1ac59de8 -> :sswitch_8
        0x1b0a4916 -> :sswitch_4
        0x46aa04ce -> :sswitch_3
        0x4e62d0f7 -> :sswitch_13
        0x522b49f7 -> :sswitch_0
        0x69a52d04 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fb2f8b7 -> :sswitch_14
        -0x74a8b323 -> :sswitch_c
        -0x3a15d53a -> :sswitch_10
        0x681fa987 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5bf7f1d7 -> :sswitch_e
        -0x15465a53 -> :sswitch_d
        0x3125c47 -> :sswitch_b
        0x18744911 -> :sswitch_f
    .end sparse-switch
.end method
