.class public Lcom/cyjh/elfin/entity/MsgItem$RootDataEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootDataEvent"
.end annotation


# instance fields
.field public data:Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/entity/MsgItem$RootDataEvent;->data:Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    return-void
.end method
