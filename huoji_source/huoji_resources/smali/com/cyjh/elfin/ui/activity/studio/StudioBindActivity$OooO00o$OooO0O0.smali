.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0O0;
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
.field public final OoooOoO:Lcom/cyjh/http/bean/response/ProjectNumberInfo;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0O0;->OoooOoO:Lcom/cyjh/http/bean/response/ProjectNumberInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06d7\u06ec\u06da\u06d9\u06d6\u06d8\u06df\u06d7\u06eb\u06e2\u06e0\u06db\u06d9\u06e5\u06d8\u06e4\u06e2\u06e5\u06d8\u06d9\u06e6\u06d8\u06d8\u06e7\u06dc\u06d8\u06e7\u06e6\u06d9\u06e7\u06e2\u06e4\u06e6\u06e0\u06ec\u06e2\u06e7\u06da\u06e4\u06e4\u06db\u06e2\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3be

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x13f

    const/16 v2, 0x29d

    const v3, 0x70fa7f6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e8\u06ec\u06dc\u06eb\u06e5\u06ec\u06e8\u06d8\u06d8\u06e0\u06e7\u06ec\u06e2\u06e6\u06d8\u06e4\u06ec\u06eb\u06e8\u06ec\u06dc\u06d8\u06ec\u06d8\u06e1\u06e8\u06d8\u06e6\u06e0\u06e2\u06da\u06e6\u06e4\u06db\u06d7\u06d9\u06df\u06e1\u06e7\u06d8\u06e8\u06d6\u06dc\u06d7\u06ec\u06e7\u06d9\u06e0\u06e4\u06e0\u06d7\u06e5\u06d8\u06e4\u06e2\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/fh;

    const/16 v2, 0x2712

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0O0;->OoooOoO:Lcom/cyjh/http/bean/response/ProjectNumberInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lz2/fh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06d7\u06db\u06d9\u06e5\u06e8\u06dc\u06df\u06db\u06e5\u06d8\u06eb\u06df\u06e6\u06db\u06d9\u06dc\u06d8\u06d6\u06df\u06e6\u06ec\u06d7\u06dc\u06e4\u06df\u06e1\u06d8\u06dc\u06d8\u06e0\u06d9\u06df\u06d6\u06db\u06e1\u06eb\u06dc\u06da\u06d9\u06d9\u06da\u06e4\u06dc\u06d7\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d6ac60e -> :sswitch_1
        0x658169f1 -> :sswitch_2
        0x7e37933c -> :sswitch_0
    .end sparse-switch
.end method
