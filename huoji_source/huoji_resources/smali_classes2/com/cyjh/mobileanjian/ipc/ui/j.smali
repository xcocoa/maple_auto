.class public final Lcom/cyjh/mobileanjian/ipc/ui/j;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private OoooOoO:Landroid/content/Context;

.field private OoooOoo:Lz2/xe;

.field public Ooooo00:Landroid/view/WindowManager;

.field public Ooooo0o:Landroid/view/WindowManager$LayoutParams;

.field public OooooO0:Landroid/widget/RelativeLayout;

.field public OooooOO:Z

.field public OooooOo:Z

.field private Oooooo:F

.field private Oooooo0:I

.field public OoooooO:I

.field public Ooooooo:Ljava/lang/String;

.field private o0OoOo0:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOo:Z

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooooo:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->o0OoOo0:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    invoke-static {p1}, Lz2/xe;->OooOO0o(Landroid/content/Context;)Lz2/xe;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoo:Lz2/xe;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d2

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x528

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/cyjh/mqsdk/R$layout;->ui_show_float:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic OooO(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->o0OoOo0:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private OooO0o0(II)V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    const/16 v1, 0x7d5

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d2

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x528

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-void
.end method

.method public static synthetic OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz2/og;->OooO0O0(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private OooO0oo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOo:Z

    return-void
.end method

.method private OooOO0o(II)V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_float:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static OooOOO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz2/og;->OooO0O0(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private OooOOO0(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooooo:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private OooOOOO(I)I
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooOoO:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public static synthetic OooOOOo(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic OooOOo(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    return-object p0
.end method

.method private OooOo0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOo:Z

    return v0
.end method

.method private OooOo00()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    return v0
.end method

.method private OooOo0O()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0OO()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooooo:Ljava/lang/String;

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooooo:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo:F

    aput v7, v5, v6

    aput v7, v5, v4

    const/4 v6, 0x2

    aput v7, v5, v6

    const/4 v6, 0x3

    aput v7, v5, v6

    const/4 v6, 0x4

    aput v7, v5, v6

    const/4 v6, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    aput v7, v5, v6

    const/4 v6, 0x7

    aput v7, v5, v6

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_0
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo0:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final OooO0Oo(I)V
    .locals 3

    int-to-float p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo:F

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo0:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final OooO0o(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    instance-of v1, p1, Landroid/widget/Button;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO0O0;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final OooOO0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final OooOO0O(I)V
    .locals 3

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo0:I

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Oooooo0:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final OooOOo0()V
    .locals 1

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooOO0()V

    :cond_0
    return-void
.end method

.method public final OooOOoo()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    return v0
.end method

.method public final getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final setFloatHeight(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatHeight wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setFloatLeft(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatLeft wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setFloatTop(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatTop wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setFloatWidth(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatWidth wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo0o:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOO:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->Ooooo00:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setOpacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-int/lit16 v1, p1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->OoooooO:I

    return-void
.end method
