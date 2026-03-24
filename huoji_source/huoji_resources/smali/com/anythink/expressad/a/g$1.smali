.class public final Lcom/anythink/expressad/a/g$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/anythink/expressad/a/g;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/a/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/g$1;->e:Lcom/anythink/expressad/a/g;

    iput-object p2, p0, Lcom/anythink/expressad/a/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/a/g$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/a/g$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/a/g$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/a/g$1;->e:Lcom/anythink/expressad/a/g;

    iget-object v1, p0, Lcom/anythink/expressad/a/g$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/a/g$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/a/g$1;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/a/g;->a(Lcom/anythink/expressad/a/g;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/a/g;->a(Lcom/anythink/expressad/a/g;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
