.class public final Lcom/tramini/plugin/a/f/h$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tramini/plugin/a/f/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/StringBuffer;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/f/h$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tramini/plugin/a/f/h$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tramini/plugin/a/f/h$4;->c:Ljava/lang/StringBuffer;

    iput-object p4, p0, Lcom/tramini/plugin/a/f/h$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;
    .locals 3

    :try_start_0
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tramini/plugin/a/f/h$4;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tramini/plugin/a/f/h$4;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/tramini/plugin/a/f/f$a;->a()Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/tramini/plugin/a/f/h$4;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tramini/plugin/a/f/h$4;->c:Ljava/lang/StringBuffer;

    new-instance v2, Lcom/tramini/plugin/a/f/h$4$1;

    invoke-direct {v2, p0}, Lcom/tramini/plugin/a/f/h$4$1;-><init>(Lcom/tramini/plugin/a/f/h$4;)V

    invoke-static {p1, v0, v1, v2}, Lcom/tramini/plugin/a/f/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/f/f$c;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/tramini/plugin/a/f/f$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/tramini/plugin/a/f/f$a;->a()Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/tramini/plugin/a/f/f$a;->a()Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_4
    invoke-static {}, Lcom/tramini/plugin/a/f/f$a;->a()Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1

    return-object p1
.end method
