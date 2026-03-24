.class public Lz2/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/e$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/e;->OooO00o:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/e;->OooO0OO()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()V
    .locals 0

    return-void
.end method

.method public OooO0OO()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/e;->OooO00o:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lz2/e;->OooO00o:Ljava/nio/ByteBuffer;

    return-object v0
.end method
