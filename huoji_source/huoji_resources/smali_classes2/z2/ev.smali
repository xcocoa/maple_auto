.class public Lz2/ev;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/yanzhenjie/zbar/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private OoooOoO:Lcom/yanzhenjie/zbar/Symbol;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/zbar/Symbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ev;->OoooOoO:Lcom/yanzhenjie/zbar/Symbol;

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/yanzhenjie/zbar/Symbol;
    .locals 6

    iget-object v0, p0, Lz2/ev;->OoooOoO:Lcom/yanzhenjie/zbar/Symbol;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yanzhenjie/zbar/Symbol;->next()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    new-instance v3, Lcom/yanzhenjie/zbar/Symbol;

    invoke-direct {v3, v1, v2}, Lcom/yanzhenjie/zbar/Symbol;-><init>(J)V

    iput-object v3, p0, Lz2/ev;->OoooOoO:Lcom/yanzhenjie/zbar/Symbol;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lz2/ev;->OoooOoO:Lcom/yanzhenjie/zbar/Symbol;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "access past end of SymbolIterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lz2/ev;->OoooOoO:Lcom/yanzhenjie/zbar/Symbol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz2/ev;->OooO00o()Lcom/yanzhenjie/zbar/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SymbolIterator is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
