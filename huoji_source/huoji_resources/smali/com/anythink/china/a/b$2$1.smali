.class public final Lcom/anythink/china/a/b$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/china/api/OaidSDKCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/a/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/a/b$2;


# direct methods
.method public constructor <init>(Lcom/anythink/china/a/b$2;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    iget-object p1, p1, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    invoke-static {p2, p1}, Lcom/anythink/china/a/b;->a(Lcom/bun/miitmdid/interfaces/IdSupplier;Lcom/anythink/china/a/a;)V

    return-void
.end method

.method public final onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    iget-object v0, v0, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    invoke-static {p1, v0}, Lcom/anythink/china/a/b;->a(Lcom/bun/miitmdid/interfaces/IdSupplier;Lcom/anythink/china/a/a;)V

    return-void
.end method
