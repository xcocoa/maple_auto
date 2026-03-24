.class public Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/view/TouchPositionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchPosition"
.end annotation


# instance fields
.field private downX:I

.field private downY:I

.field public final synthetic this$0:Lcn/haorui/sdk/core/view/TouchPositionListener;

.field private touchTime:Ljava/sql/Timestamp;

.field private upX:I

.field private upY:I


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/view/TouchPositionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->this$0:Lcn/haorui/sdk/core/view/TouchPositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    return p1
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    return p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    return p1
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    return p1
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    return-object p1
.end method


# virtual methods
.method public getDownX()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    return v0
.end method

.method public getDownY()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    return v0
.end method

.method public getTouchTime()Ljava/sql/Timestamp;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getUpX()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    return v0
.end method

.method public getUpY()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{downX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
