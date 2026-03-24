.class public Lz2/z1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/z1$OooO0O0;,
        Lz2/z1$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/y1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/c2$OooO00o;

.field private OooO0O0:Lz2/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/x1<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lz2/z1$OooO0O0;

    invoke-direct {v0, p1}, Lz2/z1$OooO0O0;-><init>(I)V

    invoke-direct {p0, v0}, Lz2/z1;-><init>(Lz2/c2$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance v0, Lz2/z1$OooO00o;

    invoke-direct {v0, p1}, Lz2/z1$OooO00o;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lz2/z1;-><init>(Lz2/c2$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Lz2/c2$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/z1;->OooO00o:Lz2/c2$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/bumptech/glide/load/DataSource;Z)Lz2/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lz2/x1<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/z1;->OooO0O0:Lz2/x1;

    if-nez p1, :cond_1

    new-instance p1, Lz2/c2;

    iget-object p2, p0, Lz2/z1;->OooO00o:Lz2/c2$OooO00o;

    invoke-direct {p1, p2}, Lz2/c2;-><init>(Lz2/c2$OooO00o;)V

    iput-object p1, p0, Lz2/z1;->OooO0O0:Lz2/x1;

    :cond_1
    iget-object p1, p0, Lz2/z1;->OooO0O0:Lz2/x1;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, Lz2/w1;->OooO0O0()Lz2/x1;

    move-result-object p1

    return-object p1
.end method
