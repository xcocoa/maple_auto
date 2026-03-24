.class public final Lcom/anythink/basead/ui/SpreadAnimLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SpreadAnimLayout;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/SpreadAnimLayout;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/SpreadAnimLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$1;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$1;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->startSpreadAnimation()V

    return-void
.end method
