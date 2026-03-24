.class public final Lcom/anythink/basead/ui/d/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/d/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/d/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/d/a$2;->a:Lcom/anythink/basead/ui/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/basead/ui/d/a$2;->a:Lcom/anythink/basead/ui/d/a;

    invoke-static {p1}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/d/a;)Lcom/anythink/basead/ui/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/d/a$2;->a:Lcom/anythink/basead/ui/d/a;

    invoke-static {p1}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/d/a;)Lcom/anythink/basead/ui/c/a;

    move-result-object p1

    const/16 v0, 0xa

    const/16 v1, 0xe

    invoke-interface {p1, v0, v1}, Lcom/anythink/basead/ui/c/a;->a(II)V

    :cond_0
    return-void
.end method
