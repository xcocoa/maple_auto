.class public Lcom/cyjh/elfin/entity/MsgItem$ExternalIpEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalIpEvent"
.end annotation


# instance fields
.field public externalIp:Ljava/lang/String;

.field public isSucess:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem$ExternalIpEvent;->isSucess:I

    iput-object p2, p0, Lcom/cyjh/elfin/entity/MsgItem$ExternalIpEvent;->externalIp:Ljava/lang/String;

    return-void
.end method
