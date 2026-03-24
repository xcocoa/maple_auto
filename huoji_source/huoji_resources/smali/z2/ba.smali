.class public Lz2/ba;
.super Landroid/app/Dialog;
.source ""


# static fields
.field public static Ooooo0o:Z = false

.field public static OooooO0:Z = true


# instance fields
.field private OoooOoO:Ljava/lang/String;

.field private OoooOoo:Landroid/view/View$OnClickListener;

.field private Ooooo00:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p3, p0, Lz2/ba;->OoooOoO:Ljava/lang/String;

    sput-boolean p2, Lz2/ba;->OooooO0:Z

    return-void
.end method

.method private OooO00o(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method


# virtual methods
.method public OooO0O0(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lz2/ba;->OoooOoo:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/ba;->Ooooo00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOoO0(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lz2/ba;->Ooooo0o:Z

    const/4 v0, 0x1

    sput-boolean v0, Lz2/ba;->OooooO0:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00e8

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    invoke-virtual {p1, p0}, Lz2/l10;->OooOo00(Ljava/lang/Object;)V

    invoke-direct {p0, p0}, Lz2/ba;->OooO00o(Landroid/app/Dialog;)V

    const p1, 0x7f090301

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lz2/ba;->Ooooo00:Landroid/widget/TextView;

    iget-object v0, p0, Lz2/ba;->OoooOoO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090300

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lz2/ba;->OoooOoo:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;)V
    .locals 1
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/ba;->Ooooo00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .locals 1
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz2/ba;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    sput-boolean v0, Lz2/ba;->Ooooo0o:Z

    return-void
.end method
