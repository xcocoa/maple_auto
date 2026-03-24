.class public final Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/activity/ApkConfirmDialogActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    new-instance v0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2$1;-><init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    iget-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
