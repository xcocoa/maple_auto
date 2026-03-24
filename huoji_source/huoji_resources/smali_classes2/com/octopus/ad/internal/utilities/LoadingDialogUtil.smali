.class public Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static loadingDialogInstance:Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private lastActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;
    .locals 2

    const-class v0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->loadingDialogInstance:Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    invoke-direct {v1}, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;-><init>()V

    sput-object v1, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->loadingDialogInstance:Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    :cond_0
    sget-object v1, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->loadingDialogInstance:Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showLoadingDialog(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->lastActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->lastActivity:Landroid/app/Activity;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil$1;-><init>(Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->alertDialog:Landroid/app/AlertDialog;

    sget v0, Lcom/octopus/ad/R$layout;->oct_loading_alert:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setContentView(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
