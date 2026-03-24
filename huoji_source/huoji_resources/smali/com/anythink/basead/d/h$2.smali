.class public final Lcom/anythink/basead/d/h$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/h;
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

    iput-object p1, p0, Lcom/anythink/basead/d/h$2;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->a:Lcom/anythink/basead/d/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Z)V

    return-void
.end method
