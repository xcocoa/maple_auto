.class public final Lcom/anythink/basead/ui/FullScreenATView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenATView;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/FullScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/FullScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView$3;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$3;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->C()V

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$3;->a:Lcom/anythink/basead/ui/FullScreenATView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void
.end method
