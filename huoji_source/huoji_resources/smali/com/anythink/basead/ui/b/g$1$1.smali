.class public final Lcom/anythink/basead/ui/b/g$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/b/g$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/g$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/g$1$1;->a:Lcom/anythink/basead/ui/b/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1$1;->a:Lcom/anythink/basead/ui/b/g$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/b;->h:Lcom/anythink/basead/ui/b/b$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_0
    return-void
.end method
