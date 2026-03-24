.class public abstract Lcom/anythink/expressad/foundation/g/f/b/b;
.super Lcom/anythink/expressad/foundation/g/f/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/foundation/g/f/f<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/f/a/a;)V
    .locals 0

    invoke-static {p1}, Lcom/anythink/expressad/foundation/g/f/g/a;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/k<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/foundation/g/f/k;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/g/f/b/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract f()V
.end method
