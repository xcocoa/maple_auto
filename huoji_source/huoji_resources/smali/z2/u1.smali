.class public Lz2/u1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/u1$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/y1<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:Z

.field private OooO0OO:Lz2/v1;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/u1;->OooO00o:I

    iput-boolean p2, p0, Lz2/u1;->OooO0O0:Z

    return-void
.end method

.method private OooO0O0()Lz2/x1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/x1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/u1;->OooO0OO:Lz2/v1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/v1;

    iget v1, p0, Lz2/u1;->OooO00o:I

    iget-boolean v2, p0, Lz2/u1;->OooO0O0:Z

    invoke-direct {v0, v1, v2}, Lz2/v1;-><init>(IZ)V

    iput-object v0, p0, Lz2/u1;->OooO0OO:Lz2/v1;

    :cond_0
    iget-object v0, p0, Lz2/u1;->OooO0OO:Lz2/v1;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lcom/bumptech/glide/load/DataSource;Z)Lz2/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lz2/x1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_0

    invoke-static {}, Lz2/w1;->OooO0O0()Lz2/x1;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/u1;->OooO0O0()Lz2/x1;

    move-result-object p1

    :goto_0
    return-object p1
.end method
