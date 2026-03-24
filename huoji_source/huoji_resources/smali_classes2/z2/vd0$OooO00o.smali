.class public Lz2/vd0$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/vd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO00o:Ljava/util/zip/ZipFile;

.field public OooO0O0:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/vd0$OooO00o;->OooO00o:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lz2/vd0$OooO00o;->OooO0O0:Ljava/util/zip/ZipEntry;

    return-void
.end method
