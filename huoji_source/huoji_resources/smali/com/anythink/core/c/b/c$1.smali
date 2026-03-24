.class public final Lcom/anythink/core/c/b/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/f/av;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/anythink/core/common/f/av;

.field public final synthetic e:Lcom/anythink/core/c/b/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/c/b/c;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/c/b/c$1;->e:Lcom/anythink/core/c/b/c;

    iput-object p2, p0, Lcom/anythink/core/c/b/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/c/b/c$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/anythink/core/c/b/c$1;->c:I

    iput-object p5, p0, Lcom/anythink/core/c/b/c$1;->d:Lcom/anythink/core/common/f/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/c/b/c$1;->e:Lcom/anythink/core/c/b/c;

    invoke-static {v0}, Lcom/anythink/core/c/b/c;->a(Lcom/anythink/core/c/b/c;)Lcom/anythink/core/c/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/c$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/c/b/c$1;->b:Ljava/lang/String;

    iget v3, p0, Lcom/anythink/core/c/b/c$1;->c:I

    iget-object v4, p0, Lcom/anythink/core/c/b/c$1;->d:Lcom/anythink/core/common/f/av;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/f/av;)V

    return-void
.end method
