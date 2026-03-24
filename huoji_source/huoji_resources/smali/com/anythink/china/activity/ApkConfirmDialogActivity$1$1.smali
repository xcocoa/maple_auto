.class public final Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;


# direct methods
.method public constructor <init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;

    iget-object v1, v0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->b:Lcom/anythink/core/common/f/l;

    sput-object v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a:Lcom/anythink/core/common/f/l;

    iget-object v0, v0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->c:Lcom/anythink/core/common/g/a;

    invoke-static {v0}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a(Lcom/anythink/core/common/g/a;)Lcom/anythink/core/common/g/a;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;

    iget-object v1, v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;

    iget-object v1, v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
