.class public Lz2/o00000OO$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o00000OO;->OooO0Oo(Ljava/lang/String;Lz2/o00000OO$OooO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/o00000OO;


# direct methods
.method public constructor <init>(Lz2/o00000OO;)V
    .locals 0

    iput-object p1, p0, Lz2/o00000OO$OooO0o;->OoooOoO:Lz2/o00000OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lz2/o00000OO$OooO0o;->OoooOoO:Lz2/o00000OO;

    invoke-static {v0}, Lz2/o00000OO;->OooO0O0(Lz2/o00000OO;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o00000OO$OooO;

    invoke-static {v1}, Lz2/o00000OO$OooO;->OooO0OO(Lz2/o00000OO$OooO;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/o00000OO$OooOO0O;

    invoke-static {v3}, Lz2/o00000OO$OooOO0O;->OooO00o(Lz2/o00000OO$OooOO0O;)Lz2/o00000OO$OooOOO0;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lz2/o00000OO$OooO;->OooO0o0()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lz2/o00000OO$OooO;->OooO00o(Lz2/o00000OO$OooO;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lz2/o00000OO$OooOO0O;->OooO0O0(Lz2/o00000OO$OooOO0O;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v3}, Lz2/o00000OO$OooOO0O;->OooO00o(Lz2/o00000OO$OooOO0O;)Lz2/o00000OO$OooOOO0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lz2/o00000OO$OooOOO0;->OooO00o(Lz2/o00000OO$OooOO0O;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lz2/o00000OO$OooOO0O;->OooO00o(Lz2/o00000OO$OooOO0O;)Lz2/o00000OO$OooOOO0;

    move-result-object v3

    invoke-virtual {v1}, Lz2/o00000OO$OooO;->OooO0o0()Lcom/android/volley/VolleyError;

    move-result-object v4

    invoke-interface {v3, v4}, Lz2/oo000o$OooO00o;->OooO0O0(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lz2/o00000OO$OooO0o;->OoooOoO:Lz2/o00000OO;

    invoke-static {v0}, Lz2/o00000OO;->OooO0O0(Lz2/o00000OO;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lz2/o00000OO$OooO0o;->OoooOoO:Lz2/o00000OO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/o00000OO;->OooO0OO(Lz2/o00000OO;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
