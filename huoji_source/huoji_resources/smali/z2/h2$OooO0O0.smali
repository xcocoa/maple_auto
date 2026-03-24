.class public final Lz2/h2$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:I

.field public final OooO0O0:I

.field public final OooO0OO:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/h2$OooO0O0;->OooO0OO:[B

    iput p2, p0, Lz2/h2$OooO0O0;->OooO00o:I

    iput p3, p0, Lz2/h2$OooO0O0;->OooO0O0:I

    return-void
.end method
