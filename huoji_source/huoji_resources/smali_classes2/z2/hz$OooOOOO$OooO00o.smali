.class public Lz2/hz$OooOOOO$OooO00o;
.super Lz2/yx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/hz$OooOOOO;->OooO0OO(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:Lz2/jz;

.field public final synthetic Ooooo00:Lz2/hz$OooOOOO;


# direct methods
.method public varargs constructor <init>(Lz2/hz$OooOOOO;Ljava/lang/String;[Ljava/lang/Object;Lz2/jz;)V
    .locals 0

    iput-object p1, p0, Lz2/hz$OooOOOO$OooO00o;->Ooooo00:Lz2/hz$OooOOOO;

    iput-object p4, p0, Lz2/hz$OooOOOO$OooO00o;->OoooOoo:Lz2/jz;

    invoke-direct {p0, p2, p3}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooOO0o()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lz2/hz$OooOOOO$OooO00o;->Ooooo00:Lz2/hz$OooOOOO;

    iget-object v0, v0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v0, v0, Lz2/hz;->OoooOoo:Lz2/hz$OooOOO0;

    iget-object v1, p0, Lz2/hz$OooOOOO$OooO00o;->OoooOoo:Lz2/jz;

    invoke-virtual {v0, v1}, Lz2/hz$OooOOO0;->OooO0o(Lz2/jz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz2/hz$OooOOOO$OooO00o;->Ooooo00:Lz2/hz$OooOOOO;

    iget-object v4, v4, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v4, v4, Lz2/hz;->Ooooo0o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lz2/uz;->OooOOo(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lz2/hz$OooOOOO$OooO00o;->OoooOoo:Lz2/jz;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lz2/jz;->OooO0o(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
