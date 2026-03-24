.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Ljava/lang/String;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;->OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;->OoooOoO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06d6\u06da\u06e6\u06da\u06d7\u06d8\u06e1\u06e5\u06df\u06ec\u06da\u06db\u06eb\u06da\u06e1\u06d8\u06d6\u06d9\u06df\u06e2\u06db\u06e6\u06d8\u06e6\u06e1\u06dc\u06d8\u06eb\u06e0\u06e2\u06e4\u06e4\u06eb\u06d8\u06e2\u06dc\u06dc\u06e5\u06e0\u06ec\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x356

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2d1

    const/16 v2, 0x212

    const v3, 0x6866bd0f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e7\u06e5\u06e5\u06d9\u06e1\u06e2\u06dc\u06d9\u06d7\u06ec\u06db\u06d8\u06e5\u06da\u06e7\u06e2\u06e4\u06e2\u06e8\u06d8\u06d8\u06d7\u06eb\u06e1\u06d8\u06da\u06e4\u06eb\u06db\u06e4\u06d8\u06d8\u06e2\u06e2\u06eb\u06e6\u06e6\u06d8\u06e4\u06da\u06d6\u06d8\u06da\u06eb\u06e6\u06d8\u06e4\u06ec\u06e4\u06df\u06e6\u06d7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;->OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o$OooO0OO;->OoooOoO:Ljava/lang/String;

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06ec\u06e1\u06dc\u06e5\u06d9\u06e5\u06d8\u06e6\u06e1\u06ec\u06e7\u06dc\u06df\u06db\u06e0\u06df\u06d8\u06d6\u06e5\u06eb\u06e1\u06e4\u06d6\u06df\u06d7\u06da\u06e5\u06eb\u06db\u06db\u06e4\u06dc\u06df\u06ec\u06e2\u06d6\u06d8\u06d8\u06e8\u06d8\u06d8\u06d8\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66236d42 -> :sswitch_2
        -0x46f97fcc -> :sswitch_1
        -0x3815f901 -> :sswitch_0
    .end sparse-switch
.end method
