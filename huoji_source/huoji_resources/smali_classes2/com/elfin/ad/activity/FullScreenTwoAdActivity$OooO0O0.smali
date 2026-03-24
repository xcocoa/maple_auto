.class public Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;


# direct methods
.method public constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0O0;->OoooOoO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e7\u06e6\u06d6\u06e5\u06e5\u06ec\u06df\u06dc\u06da\u06da\u06db\u06e1\u06ec\u06d7\u06df\u06e4\u06eb\u06e5\u06e0\u06e1\u06da\u06db\u06e5\u06e1\u06d8\u06d6\u06e5\u06e5\u06d6\u06d8\u06e7\u06e6\u06d6\u06d8\u06d8\u06eb\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x249

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xb5

    const/16 v2, 0x3bd

    const v3, 0x3d588ecc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e8\u06e6\u06d8\u06df\u06dc\u06e0\u06e0\u06db\u06d6\u06d6\u06dc\u06e2\u06d8\u06e2\u06dc\u06d8\u06eb\u06e8\u06d6\u06d8\u06e7\u06d8\u06e5\u06e5\u06eb\u06e0\u06e8\u06e0\u06d6\u06d8\u06e1\u06e8\u06d9\u06d6\u06e8\u06d6\u06d8\u06eb\u06e7\u06db\u06e1\u06e1\u06e8\u06d8\u06db\u06d6\u06ec\u06d6\u06da\u06e0\u06e5\u06d9\u06d6\u06d8\u06d9\u06e2\u06e0\u06eb\u06eb\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0O0;->OoooOoO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooO0oO(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-string v0, "\u06db\u06d9\u06e5\u06d9\u06d6\u06e5\u06d6\u06e8\u06e6\u06d8\u06e5\u06e4\u06da\u06ec\u06e6\u06dc\u06d6\u06db\u06db\u06eb\u06eb\u06d7\u06e6\u06e7\u06e6\u06db\u06d8\u06df\u06dc\u06ec\u06e5\u06e0\u06e1\u06d8\u06e7\u06d7\u06df\u06df\u06d7\u06ec\u06e7\u06d6\u06e0\u06db\u06e7\u06df\u06eb\u06e7\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b2e2358 -> :sswitch_1
        -0x9f8aa03 -> :sswitch_0
        0x71d03635 -> :sswitch_2
    .end sparse-switch
.end method
