.class public final Lz2/c00$OooO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/c00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO"
.end annotation


# instance fields
.field public final OooO00o:I

.field public final OooO0O0:Lokio/ByteString;


# direct methods
.method public constructor <init>(ILokio/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/c00$OooO;->OooO00o:I

    iput-object p2, p0, Lz2/c00$OooO;->OooO0O0:Lokio/ByteString;

    return-void
.end method
