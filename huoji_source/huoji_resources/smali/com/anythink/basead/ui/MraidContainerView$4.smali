.class public final Lcom/anythink/basead/ui/MraidContainerView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/ClickToReLoadView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidContainerView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$4;->a:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$4;->a:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MraidContainerView;->loadMraidWebView(I)V

    return-void
.end method
