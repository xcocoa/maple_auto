.class public final Lcom/tramini/plugin/a/f/h$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tramini/plugin/a/f/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/h$4;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tramini/plugin/a/f/h$4;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/f/h$4;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/f/h$4$1;->a:Lcom/tramini/plugin/a/f/h$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tramini/plugin/a/f/h$4$1;->a:Lcom/tramini/plugin/a/f/h$4;

    iget-object v0, v0, Lcom/tramini/plugin/a/f/h$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;
    .locals 2

    iget-object v0, p0, Lcom/tramini/plugin/a/f/h$4$1;->a:Lcom/tramini/plugin/a/f/h$4;

    iget-object v0, v0, Lcom/tramini/plugin/a/f/h$4;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tramini/plugin/a/f/f$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/tramini/plugin/a/f/f$a;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;

    move-result-object p1

    return-object p1
.end method
