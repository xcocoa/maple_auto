.class public Lcom/anythink/basead/d/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "i"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/BaseAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/d/i;->b:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/basead/d/i;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/basead/d/i;
    .locals 1

    invoke-static {}, Lcom/anythink/basead/d/i$a;->a()Lcom/anythink/basead/d/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/api/BaseAd;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/api/BaseAd;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/BaseAd;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
