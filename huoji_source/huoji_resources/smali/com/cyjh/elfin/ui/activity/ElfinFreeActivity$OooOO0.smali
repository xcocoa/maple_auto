.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooo0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer",
        "<",
        "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .locals 4
    .param p1    # Lcom/cyjh/http/bean/response/RegCodeInfoResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06e5\u06ec\u06e1\u06da\u06d7\u06dc\u06d8\u06e0\u06da\u06e6\u06eb\u06e1\u06d8\u06d9\u06e8\u06d8\u06d8\u06eb\u06e1\u06d7\u06e5\u06e6\u06dc\u06d8\u06e4\u06df\u06dc\u06dc\u06da\u06d8\u06d8\u06d7\u06d8\u06dc\u06d6\u06eb\u06da\u06db\u06d9\u06d9\u06d8\u06e6\u06e4\u06e1\u06e6\u06dc\u06e5\u06e8\u06e7\u06d8\u06d7\u06d9\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x88

    const/16 v2, 0x2de

    const v3, 0x19b75dda

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06dc\u06e5\u06d9\u06e5\u06e8\u06d8\u06e2\u06e8\u06e5\u06e0\u06e2\u06d7\u06eb\u06e0\u06d9\u06e6\u06e8\u06e6\u06d8\u06da\u06d6\u06dc\u06d8\u06d6\u06dc\u06d6\u06d8\u06e0\u06da\u06e8\u06d8\u06e5\u06df\u06e1\u06e2\u06e0\u06e0\u06d7\u06d8\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06db\u06d9\u06e0\u06e4\u06d8\u06db\u06d6\u06e6\u06ec\u06e1\u06df\u06d8\u06d8\u06d8\u06da\u06e0\u06ec\u06e2\u06e2\u06e0\u06d8\u06d8\u06d6\u06d8\u06e2\u06ec\u06e4\u06e6\u06df\u06e5\u06e1\u06ec\u06e5\u06e4\u06e7\u06d8\u06d8\u06e4\u06e5\u06e7\u06db\u06da\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c21d900 -> :sswitch_0
        -0x40cbfd31 -> :sswitch_1
        0x1a8c81d5 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06e6\u06dc\u06e8\u06d8\u06e7\u06d7\u06d9\u06db\u06d6\u06da\u06db\u06e8\u06da\u06e8\u06e0\u06d6\u06d8\u06d7\u06e1\u06d6\u06d8\u06dc\u06d7\u06e1\u06d8\u06e7\u06df\u06d6\u06ec\u06e1\u06d6\u06e1\u06e2\u06df\u06db\u06e4\u06e7\u06d7\u06e7\u06e6\u06eb\u06da\u06db\u06da\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x301

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3b1

    const/16 v2, 0x3a1

    const v3, -0x9cc1ead

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06df\u06d8\u06d8\u06ec\u06e0\u06e5\u06e1\u06e0\u06e4\u06e4\u06e8\u06dc\u06d6\u06e2\u06e7\u06e8\u06e7\u06e8\u06d8\u06df\u06e5\u06e1\u06e1\u06eb\u06e1\u06d7\u06dc\u06d8\u06e4\u06d9\u06eb\u06ec\u06d7\u06d8\u06d8\u06da\u06df\u06e8\u06d6\u06e7\u06eb\u06e1\u06eb\u06e7\u06e5\u06e5\u06d8\u06d7\u06e6\u06e2\u06e4\u06e8\u06e2\u06ec\u06db\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e8\u06d7\u06ec\u06d7\u06e2\u06e6\u06dc\u06e1\u06d9\u06e4\u06d8\u06d8\u06e8\u06e8\u06eb\u06ec\u06dc\u06e4\u06e1\u06e5\u06dc\u06ec\u06d6\u06e8\u06d7\u06da\u06dc\u06e7\u06e2\u06dc\u06d6\u06d8\u06e4\u06d6\u06e6\u06df\u06e1\u06e2\u06e6\u06ec\u06dc\u06e1\u06e7\u06eb\u06eb\u06ec\u06e2"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0;->OooO00o(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    const-string v0, "\u06e0\u06e2\u06db\u06e7\u06d9\u06e1\u06d8\u06d9\u06dc\u06e8\u06e0\u06e6\u06d8\u06d8\u06dc\u06e1\u06e6\u06eb\u06d8\u06dc\u06e6\u06e5\u06d6\u06e4\u06d9\u06df\u06d7\u06eb\u06e8\u06db\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cf76953 -> :sswitch_0
        -0x7c24d3f1 -> :sswitch_3
        0x297fdba7 -> :sswitch_2
        0x4dd2d14f -> :sswitch_1
    .end sparse-switch
.end method
