.class public Lcom/cyjh/elfin/entity/MsgItem$ExposureAndClickEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExposureAndClickEvent"
.end annotation


# static fields
.field public static final CLICK_TYPE:Ljava/lang/String; = "CLICK"

.field public static final EXPOSURE_TYPE:Ljava/lang/String; = "EXPOSURE"


# instance fields
.field public index:I

.field public isSuccess:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem$ExposureAndClickEvent;->index:I

    iput p2, p0, Lcom/cyjh/elfin/entity/MsgItem$ExposureAndClickEvent;->isSuccess:I

    iput-object p3, p0, Lcom/cyjh/elfin/entity/MsgItem$ExposureAndClickEvent;->type:Ljava/lang/String;

    return-void
.end method
