.class public final Lcom/anythink/banner/b/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/b/a;-><init>(Lcom/anythink/banner/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/banner/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/b/a$1;->a:Lcom/anythink/banner/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/b/a$1;->a:Lcom/anythink/banner/b/a;

    invoke-static {v0}, Lcom/anythink/banner/b/a;->a(Lcom/anythink/banner/b/a;)Z

    iget-object v0, p0, Lcom/anythink/banner/b/a$1;->a:Lcom/anythink/banner/b/a;

    invoke-static {v0}, Lcom/anythink/banner/b/a;->b(Lcom/anythink/banner/b/a;)V

    return-void
.end method
