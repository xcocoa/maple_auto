.class public final Lcom/anythink/expressad/widget/a/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/widget/a/a;-><init>(Landroid/content/Context;Lcom/anythink/expressad/widget/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/widget/a/b;

.field public final synthetic b:Lcom/anythink/expressad/widget/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/widget/a/a;Lcom/anythink/expressad/widget/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->b:Lcom/anythink/expressad/widget/a/a;

    iput-object p2, p0, Lcom/anythink/expressad/widget/a/a$2;->a:Lcom/anythink/expressad/widget/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->a:Lcom/anythink/expressad/widget/a/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/expressad/widget/a/b;->b()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->b:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->b:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/widget/a/a;->a()V

    return-void
.end method
