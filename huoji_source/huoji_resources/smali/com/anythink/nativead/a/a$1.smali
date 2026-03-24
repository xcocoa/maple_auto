.class public final Lcom/anythink/nativead/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/anythink/core/common/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/b;

.field public final synthetic b:Lcom/anythink/nativead/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/a/a;Lcom/anythink/core/common/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a;->a(Lcom/anythink/core/common/f/b;)V

    return-void
.end method
