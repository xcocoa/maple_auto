.class public Lz2/o0OO0oO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0oo00;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o0OO0oO0$OooO00o;,
        Lz2/o0OO0oO0$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0oo00<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final Ooooo0o:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private final OoooOoO:Landroid/net/Uri;

.field private final OoooOoo:Lz2/o0OOO00;

.field private Ooooo00:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lz2/o0OOO00;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o0OO0oO0;->OoooOoO:Landroid/net/Uri;

    iput-object p2, p0, Lz2/o0OO0oO0;->OoooOoo:Lz2/o0OOO00;

    return-void
.end method

.method private static OooO0OO(Landroid/content/Context;Landroid/net/Uri;Lz2/o0OO;)Lz2/o0OO0oO0;
    .locals 3

    invoke-static {p0}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o00Oo00;->OooO0o()Lz2/oO0OOo0o;

    move-result-object v0

    new-instance v1, Lz2/o0OOO00;

    invoke-static {p0}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v2

    invoke-virtual {v2}, Lz2/o00Oo00;->OooOOO0()Lcom/bumptech/glide/Registry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->OooO0oO()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lz2/o0OOO00;-><init>(Ljava/util/List;Lz2/o0OO;Lz2/oO0OOo0o;Landroid/content/ContentResolver;)V

    new-instance p0, Lz2/o0OO0oO0;

    invoke-direct {p0, p1, v1}, Lz2/o0OO0oO0;-><init>(Landroid/net/Uri;Lz2/o0OOO00;)V

    return-object p0
.end method

.method public static OooO0o(Landroid/content/Context;Landroid/net/Uri;)Lz2/o0OO0oO0;
    .locals 2

    new-instance v0, Lz2/o0OO0oO0$OooO00o;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/o0OO0oO0$OooO00o;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lz2/o0OO0oO0;->OooO0OO(Landroid/content/Context;Landroid/net/Uri;Lz2/o0OO;)Lz2/o0OO0oO0;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO(Landroid/content/Context;Landroid/net/Uri;)Lz2/o0OO0oO0;
    .locals 2

    new-instance v0, Lz2/o0OO0oO0$OooO0O0;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/o0OO0oO0$OooO0O0;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lz2/o0OO0oO0;->OooO0OO(Landroid/content/Context;Landroid/net/Uri;Lz2/o0OO;)Lz2/o0OO0oO0;

    move-result-object p0

    return-object p0
.end method

.method private OooO0oo()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0OO0oO0;->OoooOoo:Lz2/o0OOO00;

    iget-object v1, p0, Lz2/o0OO0oO0;->OoooOoO:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lz2/o0OOO00;->OooO0Oo(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lz2/o0OO0oO0;->OoooOoo:Lz2/o0OOO00;

    iget-object v3, p0, Lz2/o0OO0oO0;->OoooOoO:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lz2/o0OOO00;->OooO00o(Landroid/net/Uri;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eq v2, v1, :cond_1

    new-instance v1, Lz2/o0OO000o;

    invoke-direct {v1, v0, v2}, Lz2/o0OO000o;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lz2/o0OO0oO0;->Ooooo00:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public OooO0Oo()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0oo00$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0O0oo00$OooO00o<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lz2/o0OO0oO0;->OooO0oo()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lz2/o0OO0oO0;->Ooooo00:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0o(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find thumbnail file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0OO(Ljava/lang/Exception;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method
