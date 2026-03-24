.class public final Lcom/anythink/core/common/res/a$a$a;
.super Ljava/io/FilterOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/res/a$a;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/a$a$a;-><init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {v0}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    return-void
.end method

.method public final flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {v0}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    return-void
.end method

.method public final write(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {p1}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    return-void
.end method

.method public final write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {p1}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    return-void
.end method
