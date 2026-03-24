.class public Lcom/core/util/share/SharedPreferenceProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/core/util/share/SharedPreferenceProvider$OooO;
    }
.end annotation


# instance fields
.field private OoooOoO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/core/util/share/SharedPreferenceProvider$OooO;",
            ">;"
        }
    .end annotation
.end field

.field private OoooOoo:Lcom/core/util/share/SharedPreferenceProvider$OooO;

.field private Ooooo00:Lcom/core/util/share/SharedPreferenceProvider$OooO;

.field private Ooooo0o:Lcom/core/util/share/SharedPreferenceProvider$OooO;

.field private OooooO0:Lcom/core/util/share/SharedPreferenceProvider$OooO;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoO:Ljava/util/Map;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$OooO00o;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$OooO00o;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoo:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$OooO0O0;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$OooO0O0;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->Ooooo00:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$OooO0OO;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$OooO0OO;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->Ooooo0o:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$OooO0o;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$OooO0o;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OooooO0:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/core/util/share/SharedPreferenceProvider$OooO;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/core/util/share/SharedPreferenceProvider$OooO;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoO:Ljava/util/Map;

    iget-object v1, p0, Lcom/core/util/share/SharedPreferenceProvider;->Ooooo00:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    const-string v2, "method_query_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoO:Ljava/util/Map;

    iget-object v1, p0, Lcom/core/util/share/SharedPreferenceProvider;->Ooooo0o:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    const-string v2, "method_contain_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoO:Ljava/util/Map;

    iget-object v1, p0, Lcom/core/util/share/SharedPreferenceProvider;->OooooO0:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    const-string v2, "method_edit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoO:Ljava/util/Map;

    iget-object v1, p0, Lcom/core/util/share/SharedPreferenceProvider;->OoooOoo:Lcom/core/util/share/SharedPreferenceProvider$OooO;

    const-string v2, "method_query_pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
