.class public abstract Lz2/s1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/s1$OooO00o;
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
.field private final OooO00o:Lz2/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/y1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/y1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/s1;->OooO00o:Lz2/y1;

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

    iget-object v0, p0, Lz2/s1;->OooO00o:Lz2/y1;

    invoke-interface {v0, p1, p2}, Lz2/y1;->OooO00o(Lcom/bumptech/glide/load/DataSource;Z)Lz2/x1;

    move-result-object p1

    new-instance p2, Lz2/s1$OooO00o;

    invoke-direct {p2, p0, p1}, Lz2/s1$OooO00o;-><init>(Lz2/s1;Lz2/x1;)V

    return-object p2
.end method

.method public abstract OooO0O0(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
