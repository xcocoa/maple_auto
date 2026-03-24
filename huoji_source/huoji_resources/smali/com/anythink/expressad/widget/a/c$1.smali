.class public final Lcom/anythink/expressad/widget/a/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/widget/a/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/widget/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/widget/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/widget/a/c$1;->a:Lcom/anythink/expressad/widget/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/widget/a/c$1;->a:Lcom/anythink/expressad/widget/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/widget/a/c;->a(Lcom/anythink/expressad/widget/a/c;)Lcom/anythink/expressad/widget/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/widget/a/c$1;->a:Lcom/anythink/expressad/widget/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/widget/a/c;->a(Lcom/anythink/expressad/widget/a/c;)Lcom/anythink/expressad/widget/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/widget/a/b;->a()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/widget/a/c$1;->a:Lcom/anythink/expressad/widget/a/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
