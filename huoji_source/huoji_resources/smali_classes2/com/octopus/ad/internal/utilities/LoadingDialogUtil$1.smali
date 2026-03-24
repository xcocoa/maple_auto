.class public Lcom/octopus/ad/internal/utilities/LoadingDialogUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->showLoadingDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil$1;->this$0:Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x54

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
