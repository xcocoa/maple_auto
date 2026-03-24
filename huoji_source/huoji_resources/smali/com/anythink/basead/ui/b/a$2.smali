.class public final Lcom/anythink/basead/ui/b/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/basead/ui/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/a$2;->b:Lcom/anythink/basead/ui/b/a;

    iput p2, p0, Lcom/anythink/basead/ui/b/a$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/b/a$2;->b:Lcom/anythink/basead/ui/b/a;

    iget v1, p0, Lcom/anythink/basead/ui/b/a$2;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/b/a;->a(I)V

    return-void
.end method
