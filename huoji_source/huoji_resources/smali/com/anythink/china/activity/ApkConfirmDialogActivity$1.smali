.class public final Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/core/common/f/l;

.field public final synthetic c:Lcom/anythink/core/common/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->b:Lcom/anythink/core/common/f/l;

    iput-object p3, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->c:Lcom/anythink/core/common/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->c:Lcom/anythink/core/common/g/a;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/g/a;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->c:Lcom/anythink/core/common/g/a;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/g/a;->a(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1$1;-><init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
