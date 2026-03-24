.class public final Lcom/anythink/core/common/f/a/c;
.super Lcom/anythink/core/common/f/m;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a/a;Lcom/anythink/core/common/f/h;I)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/core/common/f/m;-><init>()V

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/m;->f:I

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/m;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->af()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/m;->h:I

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->Q()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/m;->i:I

    iput p3, p0, Lcom/anythink/core/common/f/m;->j:I

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->m()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/f/m;->k:Ljava/lang/String;

    new-instance p2, Lcom/anythink/core/common/f/a/d;

    invoke-direct {p2, p1}, Lcom/anythink/core/common/f/a/d;-><init>(Lcom/anythink/core/common/f/a/a;)V

    iput-object p2, p0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    return-void
.end method
