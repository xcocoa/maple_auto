.class public Lz2/Oo0000$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oOOOoo00$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/Oo0000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

.field private final OooO0O0:Lz2/k2;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lz2/k2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/Oo0000$OooO00o;->OooO00o:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iput-object p2, p0, Lz2/Oo0000$OooO00o;->OooO0O0:Lz2/k2;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/oO000o00;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/Oo0000$OooO00o;->OooO0O0:Lz2/k2;

    invoke-virtual {v0}, Lz2/k2;->OooooOo()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lz2/oO000o00;->OooO0Oo(Landroid/graphics/Bitmap;)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lz2/Oo0000$OooO00o;->OooO00o:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->OooooOo()V

    return-void
.end method
