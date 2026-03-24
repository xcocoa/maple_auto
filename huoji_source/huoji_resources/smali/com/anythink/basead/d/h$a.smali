.class public final Lcom/anythink/basead/d/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/BaseMediaATView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/anythink/basead/ui/BaseMediaATView$a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseMediaATView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/d/h$a;->a:Lcom/anythink/basead/ui/BaseMediaATView$a;

    return-void
.end method


# virtual methods
.method public final onClickCloseView()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/h$a;->a:Lcom/anythink/basead/ui/BaseMediaATView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/BaseMediaATView$a;->onClickCloseView()V

    :cond_0
    return-void
.end method
