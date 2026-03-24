.class public final Lz2/oO0O0Oo0$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0oo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O0Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/o0O0oo00<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Ljava/io/File;

.field private final OoooOoo:Lz2/oO0O0Oo0$OooO0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0O0Oo0$OooO0o<",
            "TData;>;"
        }
    .end annotation
.end field

.field private Ooooo00:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lz2/oO0O0Oo0$OooO0o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lz2/oO0O0Oo0$OooO0o<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0O0Oo0$OooO0OO;->OoooOoO:Ljava/io/File;

    iput-object p2, p0, Lz2/oO0O0Oo0$OooO0OO;->OoooOoo:Lz2/oO0O0Oo0$OooO0o;

    return-void
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
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO0O0Oo0$OooO0OO;->OoooOoo:Lz2/oO0O0Oo0$OooO0o;

    invoke-interface {v0}, Lz2/oO0O0Oo0$OooO0o;->OooO00o()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()V
    .locals 2

    iget-object v0, p0, Lz2/oO0O0Oo0$OooO0OO;->Ooooo00:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lz2/oO0O0Oo0$OooO0OO;->OoooOoo:Lz2/oO0O0Oo0$OooO0o;

    invoke-interface {v1, v0}, Lz2/oO0O0Oo0$OooO0o;->OooO0O0(Ljava/lang/Object;)V
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
            "-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lz2/oO0O0Oo0$OooO0OO;->OoooOoo:Lz2/oO0O0Oo0$OooO0o;

    iget-object v0, p0, Lz2/oO0O0Oo0$OooO0OO;->OoooOoO:Ljava/io/File;

    invoke-interface {p1, v0}, Lz2/oO0O0Oo0$OooO0o;->OooO0OO(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz2/oO0O0Oo0$OooO0OO;->Ooooo00:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0o(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "FileLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0OO(Ljava/lang/Exception;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method
