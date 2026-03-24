.class public Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedSwitchAdEvent"
.end annotation


# instance fields
.field public isShow:Z

.field public status:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;->status:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;->isShow:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;->status:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;->isShow:Z

    iput p3, p0, Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;->type:I

    return-void
.end method
