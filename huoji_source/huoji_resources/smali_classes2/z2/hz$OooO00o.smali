.class public Lz2/hz$OooO00o;
.super Lz2/yx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/hz;->o00000Oo(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:I

.field public final synthetic Ooooo00:Lokhttp3/internal/http2/ErrorCode;

.field public final synthetic Ooooo0o:Lz2/hz;


# direct methods
.method public varargs constructor <init>(Lz2/hz;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lz2/hz$OooO00o;->Ooooo0o:Lz2/hz;

    iput p4, p0, Lz2/hz$OooO00o;->OoooOoo:I

    iput-object p5, p0, Lz2/hz$OooO00o;->Ooooo00:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooOO0o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz2/hz$OooO00o;->Ooooo0o:Lz2/hz;

    iget v1, p0, Lz2/hz$OooO00o;->OoooOoo:I

    iget-object v2, p0, Lz2/hz$OooO00o;->Ooooo00:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lz2/hz;->o00000OO(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lz2/hz$OooO00o;->Ooooo0o:Lz2/hz;

    invoke-static {v0}, Lz2/hz;->OooOO0(Lz2/hz;)V

    :goto_0
    return-void
.end method
