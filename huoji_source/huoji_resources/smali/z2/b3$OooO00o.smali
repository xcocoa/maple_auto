.class public Lz2/b3$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field private OooO00o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz2/z2;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lz2/b3;


# direct methods
.method public constructor <init>(Lz2/b3;)V
    .locals 0

    iput-object p1, p0, Lz2/b3$OooO00o;->OooO0O0:Lz2/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/b3$OooO00o;->OooO00o:Ljava/util/ArrayList;

    return-void
.end method

.method private OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/b3$OooO00o;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private OooO0O0()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/b3$OooO00o;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lz2/b3$OooO00o;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/z2;

    invoke-virtual {v2}, Lz2/z2;->OooO0O0()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public apply()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lz2/b3$OooO00o;->OooO0O0()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "key_result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "key_op_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Lz2/b3$OooO00o;->OooO0O0:Lz2/b3;

    invoke-static {v1}, Lz2/b3;->OooO0O0(Lz2/b3;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lz2/a3;->OooO0OO:Landroid/net/Uri;

    const-string v3, "method_edit"

    iget-object v4, p0, Lz2/b3$OooO00o;->OooO0O0:Lz2/b3;

    invoke-static {v4}, Lz2/b3;->OooO00o(Lz2/b3;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-static {}, Lz2/z2;->OooOO0O()Lz2/z2;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lz2/b3$OooO00o;->OooO0O0()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "key_result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "key_op_type"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Lz2/b3$OooO00o;->OooO0O0:Lz2/b3;

    invoke-static {v1}, Lz2/b3;->OooO0O0(Lz2/b3;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lz2/a3;->OooO0OO:Landroid/net/Uri;

    const-string v4, "method_edit"

    iget-object v5, p0, Lz2/b3$OooO00o;->OooO0O0:Lz2/b3;

    invoke-static {v5}, Lz2/b3;->OooO00o(Lz2/b3;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOOO0(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOOOO(Z)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOOO0(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOOOo(F)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOOO0(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOOo0(I)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOOO0(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lz2/z2;->OooOOoo(J)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lz2/z2;->OooOOO0(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOo0O(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    invoke-static {p1}, Lz2/z2;->OooOOO0(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOo0(Ljava/util/Set;)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOOO(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3$OooO00o;->OooO00o(Lz2/z2;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method
