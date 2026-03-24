.class public final Lcom/anythink/expressad/splash/d/c$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/foundation/d/c;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/anythink/expressad/splash/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/foundation/d/c;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c$2;->d:Lcom/anythink/expressad/splash/d/c;

    iput-object p2, p0, Lcom/anythink/expressad/splash/d/c$2;->a:Lcom/anythink/expressad/foundation/d/c;

    iput p3, p0, Lcom/anythink/expressad/splash/d/c$2;->b:I

    iput-boolean p4, p0, Lcom/anythink/expressad/splash/d/c$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c$2;->d:Lcom/anythink/expressad/splash/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c$2;->a:Lcom/anythink/expressad/foundation/d/c;

    iget v2, p0, Lcom/anythink/expressad/splash/d/c$2;->b:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Lcom/anythink/expressad/splash/d/c$2;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/foundation/d/c;IZ)V

    return-void
.end method
