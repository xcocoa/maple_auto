.class public final Lcom/anythink/core/d/h$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Lcom/anythink/core/d/h$a;

.field public final synthetic c:Lcom/anythink/core/d/h$1;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/h$1;[ZLcom/anythink/core/d/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/d/h$1$1;->c:Lcom/anythink/core/d/h$1;

    iput-object p2, p0, Lcom/anythink/core/d/h$1$1;->a:[Z

    iput-object p3, p0, Lcom/anythink/core/d/h$1$1;->b:Lcom/anythink/core/d/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/anythink/core/d/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/d/h$1$1;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/anythink/core/d/h$1$1;->b:Lcom/anythink/core/d/h$a;

    iget-object v1, p0, Lcom/anythink/core/d/h$1$1;->c:Lcom/anythink/core/d/h$1;

    iget-object v1, v1, Lcom/anythink/core/d/h$1;->c:Lcom/anythink/core/d/f;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h$a;->a(Lcom/anythink/core/d/f;)V

    return-void
.end method
