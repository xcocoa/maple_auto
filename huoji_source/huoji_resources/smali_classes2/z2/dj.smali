.class public Lz2/dj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/cj;


# instance fields
.field private OooO00o:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/dj;->OooO00o:Ljava/security/KeyPair;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Lz2/cj$OooO00o;)V
    .locals 9

    const-string v0, "TAG"

    const/4 v1, 0x0

    :try_start_0
    sget v2, Lcom/example/logcat/R$string;->status_connecting:I

    invoke-interface {p2, v2, v1}, Lz2/cj$OooO00o;->OooO00o(ILjava/util/List;)V

    new-instance v2, Ljava/net/Socket;

    const-string v3, "localhost"

    const/16 v4, 0x15b3

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lz2/dj$OooO00o;

    invoke-direct {v3, p0}, Lz2/dj$OooO00o;-><init>(Lz2/dj;)V

    iget-object v4, p0, Lz2/dj;->OooO00o:Ljava/security/KeyPair;

    invoke-static {v3, v4}, Lz2/vu;->OooO0o0(Lz2/tu;Ljava/security/KeyPair;)Lz2/vu;

    move-result-object v3

    invoke-static {v2, v3}, Lz2/uu;->oo000o(Ljava/net/Socket;Lz2/vu;)Lz2/uu;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Lz2/uu;->o00ooo()V

    sget v3, Lcom/example/logcat/R$string;->status_opening:I

    invoke-interface {p2, v3, v1}, Lz2/cj$OooO00o;->OooO00o(ILjava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lz2/uu;->o0ooOO0(Ljava/lang/String;)Lz2/xu;

    move-result-object p1

    sget v3, Lcom/example/logcat/R$string;->status_active:I

    invoke-interface {p2, v3, v1}, Lz2/cj$OooO00o;->OooO00o(ILjava/util/List;)V

    :goto_0
    invoke-interface {p2}, Lz2/cj$OooO00o;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lz2/xu;->Oooooo()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "\\r?\\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v5, v1}, Lz2/cj$OooO00o;->OooO00o(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lz2/uu;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_3
    return-void
.end method
