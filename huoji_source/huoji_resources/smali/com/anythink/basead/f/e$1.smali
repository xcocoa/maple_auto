.class public final Lcom/anythink/basead/f/e$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/f/e;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;Z)V

    return-void
.end method
