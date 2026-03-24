.class public Lz2/aj$OooO0o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0o"
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0OO:Lz2/aj;


# direct methods
.method public constructor <init>(Lz2/aj;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/aj$OooO0o;->OooO0OO:Lz2/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lz2/aj$OooO0o;->OooO00o:I

    iput-object p3, p0, Lz2/aj$OooO0o;->OooO0O0:Ljava/util/List;

    return-void
.end method
