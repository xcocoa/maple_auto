.class public final Lcom/anythink/basead/c/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/anythink/basead/c/a;

.field public h:Lcom/anythink/basead/c/j;

.field public i:Lcom/anythink/basead/c/b;

.field public j:Z

.field public k:Z

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/c/i;->j:Z

    iput-boolean v0, p0, Lcom/anythink/basead/c/i;->k:Z

    iput-object p1, p0, Lcom/anythink/basead/c/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/basead/c/i;->b:Ljava/lang/String;

    return-void
.end method
