.class public final Lcom/anythink/core/common/res/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/res/b$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/core/common/res/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/res/b;Lcom/anythink/core/common/res/b$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/b$2;->d:Lcom/anythink/core/common/res/b;

    iput-object p2, p0, Lcom/anythink/core/common/res/b$2;->a:Lcom/anythink/core/common/res/b$a;

    iput-object p3, p0, Lcom/anythink/core/common/res/b$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/res/b$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/res/b$2;->a:Lcom/anythink/core/common/res/b$a;

    iget-object v1, p0, Lcom/anythink/core/common/res/b$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/res/b$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/common/res/b$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
