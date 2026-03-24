.class public final Lcom/anythink/expressad/foundation/g/c/c;
.super Lcom/anythink/expressad/foundation/g/c/f;
.source ""


# static fields
.field private static final b:Ljava/lang/String; = "anythink_template/"

.field private static final c:Ljava/lang/String; = "anythink_template/res/.anythink700"

.field private static final d:Ljava/lang/String; = "anythink_template/res/res"

.field private static final e:Ljava/lang/String; = "anythink_template/res/html"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/foundation/g/c/f;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/c/f;->a:Lcom/anythink/expressad/foundation/g/c/e;

    sget-object v0, Lcom/anythink/expressad/foundation/g/c/a;->b:Lcom/anythink/expressad/foundation/g/c/a;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
