.class public final Lcom/anythink/basead/a/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/l;

.field public final synthetic b:I

.field public final synthetic c:Lcom/anythink/basead/c/i;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;ILcom/anythink/basead/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/a$2;->a:Lcom/anythink/core/common/f/l;

    iput p2, p0, Lcom/anythink/basead/a/a$2;->b:I

    iput-object p3, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/basead/a/a$2;->a:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/z;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/basead/a/a$2;->b:I

    iget-object v3, p0, Lcom/anythink/basead/a/a$2;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/n;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/anythink/basead/a/a$2;->b:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/anythink/basead/g/c;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/z;->Z()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/i;

    iget-object v6, v6, Lcom/anythink/basead/c/i;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v0}, Lcom/anythink/basead/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v2, v5}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    :cond_1
    new-instance v0, Lcom/anythink/basead/g/b;

    iget v3, p0, Lcom/anythink/basead/a/a$2;->b:I

    iget-object v4, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/i;

    iget-object v4, v4, Lcom/anythink/basead/c/i;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v4}, Lcom/anythink/basead/g/b;-><init>(ILcom/anythink/core/common/f/z;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/i;

    iget-object v1, v1, Lcom/anythink/basead/c/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/anythink/basead/a/a$2;->b:I

    check-cast v0, Lcom/anythink/core/common/f/aj;

    iget-object v2, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/i;

    invoke-static {v1, v0, v2}, Lcom/anythink/basead/a/i;->a(ILcom/anythink/core/common/f/aj;Lcom/anythink/basead/c/i;)V

    :goto_1
    iget v0, p0, Lcom/anythink/basead/a/a$2;->b:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/a/a$2;->a:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/j;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, ",packagename:"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "check offer installed(Apk Install Broadcast):true,dsp offerid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/d;->a()Lcom/anythink/core/common/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/a/d;->c(Lcom/anythink/core/common/f/j;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "check offer installed(Apk Install Broadcast):false,dsp offerid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method
