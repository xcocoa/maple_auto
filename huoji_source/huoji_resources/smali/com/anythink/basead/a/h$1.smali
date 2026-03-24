.class public final Lcom/anythink/basead/a/h$1;
.super Lcom/anythink/basead/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/h;->a(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/h;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    invoke-direct {p0}, Lcom/anythink/basead/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/a;->onActivityPaused(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    iget-object p1, p1, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/m/c;->b()V

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/a;->onActivityResumed(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    iget-object p1, p1, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/m/c;->a()V

    :cond_0
    return-void
.end method
