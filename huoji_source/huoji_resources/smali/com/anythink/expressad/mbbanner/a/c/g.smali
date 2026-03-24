.class public Lcom/anythink/expressad/mbbanner/a/c/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# static fields
.field private static final a:Ljava/lang/String; = "g"


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

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/c/g;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/c/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/c/g;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/g;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/c/g;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/g;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method
