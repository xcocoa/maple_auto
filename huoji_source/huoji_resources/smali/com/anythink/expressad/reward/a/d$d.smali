.class public final Lcom/anythink/expressad/reward/a/d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/foundation/d/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/anythink/expressad/videocommon/e/d;

.field private d:Lcom/anythink/expressad/reward/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$d;->a:Lcom/anythink/expressad/foundation/d/c;

    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/reward/a/d$d;->c:Lcom/anythink/expressad/videocommon/e/d;

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$d;->d:Lcom/anythink/expressad/reward/a/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$d;->d:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$d;->a:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d$d;->c:Lcom/anythink/expressad/videocommon/e/d;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$d;->d:Lcom/anythink/expressad/reward/a/d;

    if-eqz p2, :cond_0

    const-string v0, "TemplateUrl source download failed"

    invoke-static {p2, v0, p1}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
