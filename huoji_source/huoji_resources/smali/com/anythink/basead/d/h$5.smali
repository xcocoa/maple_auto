.class public final Lcom/anythink/basead/d/h$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/MraidMediaView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h;->a(Landroid/content/Context;ZZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/d/h;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/h$5;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/h$5;->a:Lcom/anythink/basead/d/h;

    iget-object v1, v0, Lcom/anythink/basead/d/h;->t:Lcom/anythink/basead/ui/OwnNativeATView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/h$5;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/aj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/l;->w(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/h$5;->a:Lcom/anythink/basead/d/h;

    iget-object v0, p1, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V

    return-void
.end method
