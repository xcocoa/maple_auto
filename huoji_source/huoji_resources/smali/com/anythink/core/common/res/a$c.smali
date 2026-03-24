.class public final Lcom/anythink/core/common/res/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/res/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/res/a;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/a$c;->a:Lcom/anythink/core/common/res/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/core/common/res/a$c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/anythink/core/common/res/a$c;->c:J

    iput-object p5, p0, Lcom/anythink/core/common/res/a$c;->d:[Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/core/common/res/a;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/anythink/core/common/res/a$c;-><init>(Lcom/anythink/core/common/res/a;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/res/a$c;->d:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/anythink/core/common/res/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()Lcom/anythink/core/common/res/a$a;
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/res/a$c;->a:Lcom/anythink/core/common/res/a;

    iget-object v1, p0, Lcom/anythink/core/common/res/a$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/anythink/core/common/res/a$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Ljava/lang/String;J)Lcom/anythink/core/common/res/a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/res/a$c;->d:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/res/a$c;->d:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/anythink/core/common/res/a;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
