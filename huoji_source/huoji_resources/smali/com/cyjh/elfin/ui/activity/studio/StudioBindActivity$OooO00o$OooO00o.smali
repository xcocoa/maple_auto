.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO0O0(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e6\u06d6\u06eb\u06e0\u06df\u06db\u06e6\u06db\u06e7\u06eb\u06e2\u06e5\u06e2\u06d6\u06e6\u06e8\u06ec\u06e2\u06e4\u06e5\u06e4\u06d6\u06e2\u06e0\u06eb\u06e6\u06d8\u06e8\u06e6\u06dc\u06d8\u06e2\u06dc\u06dc\u06e8\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x325

    const/16 v2, 0x173

    const v3, -0x6623d851

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d6\u06d9\u06df\u06e8\u06e6\u06d8\u06eb\u06d7\u06e6\u06d8\u06dc\u06e0\u06e1\u06d8\u06df\u06db\u06e6\u06d8\u06e6\u06e2\u06db\u06e4\u06d6\u06e8\u06e2\u06e7\u06e5\u06d8\u06e7\u06d8\u06e5\u06d8\u06d8\u06df\u06d8\u06d8\u06db\u06e1\u06dc\u06d8\u06db\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7ed1\u5b9a\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06e1\u06e1\u06dc\u06e0\u06e1\u06d6\u06eb\u06e5\u06d8\u06d8\u06d7\u06e7\u06d8\u06d8\u06d8\u06e6\u06da\u06e8\u06e7\u06d7\u06e5\u06d9\u06d6\u06dc\u06e2\u06e1\u06d8\u06e1\u06d6\u06d9\u06e0\u06ec\u06db\u06e2\u06d7\u06e7\u06e4\u06e2\u06da"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f85917c -> :sswitch_2
        -0x2096b362 -> :sswitch_1
        0x3bdefd09 -> :sswitch_0
    .end sparse-switch
.end method
