.class public Lz2/oO00O0o$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO00O0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field public OooO0OO:Lz2/oO00O0o$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO00O0o$OooO00o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public OooO0Oo:Lz2/oO00O0o$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO00O0o$OooO00o<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/oO00O0o$OooO00o;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lz2/oO00O0o$OooO00o;->OooO0Oo:Lz2/oO00O0o$OooO00o;

    iput-object p0, p0, Lz2/oO00O0o$OooO00o;->OooO0OO:Lz2/oO00O0o$OooO00o;

    iput-object p1, p0, Lz2/oO00O0o$OooO00o;->OooO00o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO00O0o$OooO00o;->OooO0O0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/oO00O0o$OooO00o;->OooO0O0:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/oO00O0o$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/oO00O0o$OooO00o;->OooO0OO()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lz2/oO00O0o$OooO00o;->OooO0O0:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public OooO0OO()I
    .locals 1

    iget-object v0, p0, Lz2/oO00O0o$OooO00o;->OooO0O0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
