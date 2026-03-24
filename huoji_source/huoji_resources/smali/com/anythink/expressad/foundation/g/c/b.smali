.class public final Lcom/anythink/expressad/foundation/g/c/b;
.super Lcom/anythink/expressad/foundation/g/c/f;
.source ""


# static fields
.field private static final b:Ljava/lang/String; = "anythink_template/"

.field private static final c:Ljava/lang/String; = "anythink_template/res/Movies"

.field private static final d:Ljava/lang/String; = "anythink_template/res"

.field private static final e:Ljava/lang/String; = "anythink_template/res/.Anythink_VC"

.field private static final f:Ljava/lang/String; = "anythink_template/res/.anythink700"

.field private static final g:Ljava/lang/String; = "anythink_template/res/img"

.field private static final h:Ljava/lang/String; = "anythink_template/crashinfo"

.field private static final i:Ljava/lang/String; = "anythink_template/other"

.field private static final j:Ljava/lang/String; = "anythink_template/res/xml"

.field private static final k:Ljava/lang/String; = "anythink_template/anythink/config"

.field private static final l:Ljava/lang/String; = "anythink_template/res/res"

.field private static final m:Ljava/lang/String; = "anythink_template/res/html"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/foundation/g/c/f;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
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

    sget-object v1, Lcom/anythink/expressad/foundation/g/c/a;->l:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v2, "anythink_template/res"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/c/f;->a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;

    sget-object v1, Lcom/anythink/expressad/foundation/g/c/a;->c:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v2, "anythink_template/res/Movies"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/c/f;->a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;

    move-result-object v1

    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->d:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v3, "anythink_template/res/.Anythink_VC"

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V

    sget-object v1, Lcom/anythink/expressad/foundation/g/c/a;->e:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v2, "anythink_template/res/.anythink700"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/c/f;->a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;

    move-result-object v1

    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->h:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v3, "anythink_template/res/img"

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V

    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->m:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v3, "anythink_template/res/xml"

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V

    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->n:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v3, "anythink_template/anythink/config"

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V

    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->g:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v3, "anythink_template/res/res"

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V

    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->i:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v3, "anythink_template/res/html"

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V

    sget-object v1, Lcom/anythink/expressad/foundation/g/c/a;->k:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v2, "anythink_template/other"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/c/f;->a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;

    sget-object v3, Lcom/anythink/expressad/foundation/g/c/a;->j:Lcom/anythink/expressad/foundation/g/c/a;

    const-string v4, "anythink_template/crashinfo"

    invoke-static {v0, v3, v4}, Lcom/anythink/expressad/foundation/g/c/f;->a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/c/f;->a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;

    return-object v0
.end method
