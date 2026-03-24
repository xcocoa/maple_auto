.class public final Lcom/anythink/expressad/foundation/c/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/anythink/expressad/foundation/c/b;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/foundation/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/foundation/c/a;->a:Lcom/anythink/expressad/foundation/c/b;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/c/a;->a:Lcom/anythink/expressad/foundation/c/b;

    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/c/a;->a:Lcom/anythink/expressad/foundation/c/b;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/c/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/c/a;->a:Lcom/anythink/expressad/foundation/c/b;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/c/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
