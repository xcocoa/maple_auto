.class public final Lcom/anythink/basead/ui/BaseScreenATView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/BaseScreenATView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/ui/BaseScreenATView;Ljava/util/List;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->c(Lcom/anythink/basead/ui/BaseScreenATView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$7;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->d(Lcom/anythink/basead/ui/BaseScreenATView;)V

    :cond_2
    return-void
.end method
