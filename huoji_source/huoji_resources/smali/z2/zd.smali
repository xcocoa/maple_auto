.class public Lz2/zd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/zd$OooO0O0;
    }
.end annotation


# instance fields
.field private OooO00o:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-direct {p0}, Lz2/zd;->OooO00o()Lz2/ox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lz2/ox;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lz2/su;->OooO00o()Lz2/su;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lz2/zd;->OooO00o:Lretrofit2/Retrofit;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/zd$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/zd;-><init>()V

    return-void
.end method

.method private OooO00o()Lz2/ox;
    .locals 4

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooO(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->Oooo0O0(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooOoo(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz2/ox$OooO0O0;->OooOooo(Z)Lz2/ox$OooO0O0;

    invoke-virtual {v0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0O0()Lz2/zd;
    .locals 1

    invoke-static {}, Lz2/zd$OooO0O0;->OooO00o()Lz2/zd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OooO0OO()Lretrofit2/Retrofit;
    .locals 1

    iget-object v0, p0, Lz2/zd;->OooO00o:Lretrofit2/Retrofit;

    return-object v0
.end method
