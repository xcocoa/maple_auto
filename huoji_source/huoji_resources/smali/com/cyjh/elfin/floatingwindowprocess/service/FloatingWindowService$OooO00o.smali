.class public Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$OooO00o;->OoooOoO:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06d7\u06d8\u06e7\u06d8\u06d6\u06e1\u06e1\u06d8\u06dc\u06db\u06da\u06d7\u06eb\u06d6\u06d8\u06e8\u06e1\u06db\u06e0\u06e6\u06e8\u06d8\u06e1\u06d7\u06da\u06e4\u06ec\u06e8\u06d8\u06d8\u06d6\u06d8\u06d8\u06d7\u06d8\u06e8\u06d8\u06e6\u06d9\u06dc\u06e6\u06ec\u06e5\u06e8\u06e2\u06e0\u06e0\u06d8\u06dc\u06d7\u06d8\u06d6\u06e0\u06e2\u06e7\u06db\u06d7\u06db\u06e5\u06d7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31a

    const/16 v2, 0x8f

    const v3, -0x39affd13

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d6\u06df\u06ec\u06e1\u06d6\u06e1\u06e0\u06e7\u06e0\u06d8\u06e1\u06d9\u06db\u06e1\u06d9\u06dc\u06d8\u06e2\u06e6\u06d6\u06d8\u06db\u06db\u06e8\u06d8\u06e8\u06e8\u06e8\u06d8\u06e5\u06d9\u06df\u06e0\u06e5\u06e5\u06e4\u06e2\u06ec\u06e6\u06ec\u06e5\u06e2\u06e7\u06e2\u06eb\u06e0\u06e8\u06dc\u06d8\u06e5\u06e5\u06e7\u06d9\u06eb\u06db"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    const/16 v2, 0x2775

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06dc\u06e0\u06db\u06e5\u06d6\u06df\u06e5\u06da\u06e1\u06d8\u06e4\u06dc\u06e1\u06e5\u06e8\u06df\u06e5\u06d6\u06e8\u06d8\u06d7\u06e5\u06e5\u06e2\u06e4\u06da\u06d6\u06e2\u06e4\u06eb\u06e5\u06e1\u06e1\u06e1\u06d8\u06eb\u06e2\u06db\u06e0\u06dc\u06e6\u06d8\u06e6\u06e2\u06e6\u06d8\u06d6\u06e5\u06e0\u06dc\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x691c5d9f -> :sswitch_1
        -0x56c02a5f -> :sswitch_2
        0x6442605e -> :sswitch_0
    .end sparse-switch
.end method
