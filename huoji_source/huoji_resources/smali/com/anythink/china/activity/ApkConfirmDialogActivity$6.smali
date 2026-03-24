.class public final Lcom/anythink/china/activity/ApkConfirmDialogActivity$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/activity/ApkConfirmDialogActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/l;

.field public final synthetic b:Lcom/anythink/china/activity/ApkConfirmDialogActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity;Lcom/anythink/core/common/f/l;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$6;->b:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    iput-object p2, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$6;->a:Lcom/anythink/core/common/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$6;->b:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    iget-object v0, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$6;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
