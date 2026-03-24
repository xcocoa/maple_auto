.class public Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/mc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;


# direct methods
.method public constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0OO;->OooO00o:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06e7\u06e4\u06e7\u06e0\u06db\u06e1\u06d9\u06e1\u06d9\u06e2\u06d8\u06d6\u06d8\u06d7\u06e6\u06d8\u06da\u06e0\u06d7\u06e6\u06e7\u06e7\u06d6\u06df\u06e5\u06e2\u06db\u06d7\u06d9\u06da\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x34c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x12e

    const/16 v2, 0x24

    const v3, 0x4f886abd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06df\u06da\u06da\u06e5\u06d9\u06d6\u06e4\u06d8\u06eb\u06ec\u06df\u06e4\u06d8\u06d8\u06eb\u06dc\u06db\u06e4\u06e2\u06e4\u06e2\u06df\u06e6\u06d8\u06e7\u06d7\u06e6\u06dc\u06e7\u06d8\u06da\u06e7\u06e5\u06d8\u06ec\u06df\u06d7\u06dc\u06d9\u06d8\u06d8\u06e0\u06d7\u06e8\u06d8\u06dc\u06db\u06e7\u06e7\u06e7\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e8\u06d8\u06e0\u06d9\u06e6\u06d8\u06eb\u06db\u06da\u06eb\u06d7\u06e6\u06dc\u06d8\u06d8\u06d7\u06e6\u06d8\u06d6\u06eb\u06eb\u06df\u06d6\u06e6\u06ec\u06df\u06e1\u06d6\u06e7\u06d8\u06e6\u06e8\u06e5\u06d8\u06d7\u06df\u06e1\u06e5\u06e0\u06e7\u06d6\u06e7\u06e5\u06d8\u06ec\u06e8\u06d7\u06da\u06ec\u06e5\u06d8\u06d9\u06db\u06e5\u06e6\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/mc;->OooO0oO()V

    const-string v0, "\u06e5\u06df\u06e6\u06d8\u06dc\u06d8\u06e4\u06da\u06eb\u06dc\u06dc\u06e4\u06e6\u06e0\u06e2\u06eb\u06e6\u06d7\u06d9\u06dc\u06df\u06d7\u06db\u06d6\u06dc\u06eb\u06e0\u06db\u06e4\u06d6\u06e5\u06d8\u06eb\u06e5\u06e4\u06ec\u06d9\u06db\u06d7\u06eb\u06e0\u06e7\u06e4\u06e6\u06e1\u06da\u06eb\u06d7\u06e5\u06e2\u06e6\u06db\u06d8\u06d8\u06ec\u06ec\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0OO;->OooO00o:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-virtual {v0, v1}, Lz2/qh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06ec\u06e1\u06e6\u06db\u06d8\u06e5\u06d8\u06d9\u06da\u06eb\u06e4\u06d7\u06eb\u06ec\u06d9\u06d8\u06d8\u06e8\u06e8\u06d8\u06e5\u06e1\u06d6\u06db\u06df\u06d8\u06e7\u06e0\u06ec\u06df"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6583dfba -> :sswitch_2
        -0x1d166902 -> :sswitch_1
        0x20a3a49c -> :sswitch_0
        0x2bd2fa79 -> :sswitch_4
        0x72721000 -> :sswitch_3
    .end sparse-switch
.end method
