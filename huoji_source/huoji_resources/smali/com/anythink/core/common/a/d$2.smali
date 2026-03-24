.class public final Lcom/anythink/core/common/a/d$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/d;->b(Lcom/anythink/core/common/f/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/j;

.field public final synthetic b:Lcom/anythink/core/common/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/d;Lcom/anythink/core/common/f/j;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/d$2;->b:Lcom/anythink/core/common/a/d;

    iput-object p2, p0, Lcom/anythink/core/common/a/d$2;->a:Lcom/anythink/core/common/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/anythink/core/common/a/h;

    invoke-direct {v0}, Lcom/anythink/core/common/a/h;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/a/d$2;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/aj;->ad()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/a/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/a/d$2;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/a/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/a/d$2;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/aj;->af()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/a/h;->c:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/anythink/core/common/a/h;->d:I

    iget-object v1, p0, Lcom/anythink/core/common/a/d$2;->b:Lcom/anythink/core/common/a/d;

    invoke-static {v1}, Lcom/anythink/core/common/a/d;->a(Lcom/anythink/core/common/a/d;)Lcom/anythink/core/common/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/f;->b(Lcom/anythink/core/common/a/h;)J

    return-void
.end method
