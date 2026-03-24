.class public final Lz2/oOo0oooO$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0oo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oOo0oooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
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
.field private final OoooOoO:Ljava/lang/String;

.field private final OoooOoo:Lz2/oOo0oooO$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oOo0oooO$OooO00o<",
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
.method public constructor <init>(Ljava/lang/String;Lz2/oOo0oooO$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/oOo0oooO$OooO00o<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOo0oooO$OooO0O0;->OoooOoO:Ljava/lang/String;

    iput-object p2, p0, Lz2/oOo0oooO$OooO0O0;->OoooOoo:Lz2/oOo0oooO$OooO00o;

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

    iget-object v0, p0, Lz2/oOo0oooO$OooO0O0;->OoooOoo:Lz2/oOo0oooO$OooO00o;

    invoke-interface {v0}, Lz2/oOo0oooO$OooO00o;->OooO00o()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz2/oOo0oooO$OooO0O0;->OoooOoo:Lz2/oOo0oooO$OooO00o;

    iget-object v1, p0, Lz2/oOo0oooO$OooO0O0;->Ooooo00:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lz2/oOo0oooO$OooO00o;->OooO0O0(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    .locals 1
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
    iget-object p1, p0, Lz2/oOo0oooO$OooO0O0;->OoooOoo:Lz2/oOo0oooO$OooO00o;

    iget-object v0, p0, Lz2/oOo0oooO$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/oOo0oooO$OooO00o;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz2/oOo0oooO$OooO0O0;->Ooooo00:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0OO(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method
