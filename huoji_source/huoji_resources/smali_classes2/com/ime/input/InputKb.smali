.class public Lcom/ime/input/InputKb;
.super Landroid/inputmethodservice/InputMethodService;
.source ""


# static fields
.field public static b:Landroid/os/Handler;


# instance fields
.field public a:Landroid/view/inputmethod/EditorInfo;

.field private c:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    const-string v0, "InputKb"

    const-string v1, "InputKb - onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/input/a;->a()Lcom/ime/input/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings initInputMethod ims"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p0, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/input/InputKb;->c:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    const-string v0, "InputKb"

    const-string v1, "InputKb - onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/input/a;->a()Lcom/ime/input/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ime/input/InputKb;->a:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    :cond_1
    return v1
.end method

.method public onFinishInputView(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    return-void
.end method
