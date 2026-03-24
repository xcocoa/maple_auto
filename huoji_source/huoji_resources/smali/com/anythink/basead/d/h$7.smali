.class public final Lcom/anythink/basead/d/h$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h;->A()V
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

    iput-object p1, p0, Lcom/anythink/basead/d/h$7;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/h$7;->a:Lcom/anythink/basead/d/h;

    invoke-static {v0}, Lcom/anythink/basead/d/h;->b(Lcom/anythink/basead/d/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V

    return-void
.end method
