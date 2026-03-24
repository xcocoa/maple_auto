.class public Lcom/anythink/expressad/mbbanner/a/c/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/i$b;


# static fields
.field private static final a:Ljava/lang/String; = "f"


# instance fields
.field private b:Lcom/anythink/expressad/mbbanner/a/d/b;

.field private c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/c/f;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/c/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/f;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/c/f;->c:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/c/f;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/f;->c:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
