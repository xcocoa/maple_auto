.class public final Lcom/anythink/china/activity/ApkConfirmDialogActivity$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/activity/ApkConfirmDialogActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$8;


# direct methods
.method public constructor <init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity$8;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$8$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a()Lcom/anythink/core/common/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a()Lcom/anythink/core/common/g/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/anythink/core/common/g/a;->a(Z)V

    :cond_0
    return-void
.end method
