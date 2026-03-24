.class public Lz2/lh;
.super Lz2/ua0;
.source ""


# instance fields
.field public OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;

.field public OooO0Oo:I

.field public OooO0o:I

.field public OooO0o0:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Lz2/ua0;-><init>()V

    iput-object p1, p0, Lz2/lh;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lz2/lh;->OooO0O0:Ljava/lang/String;

    iput p3, p0, Lz2/lh;->OooO0o:I

    iput p4, p0, Lz2/lh;->OooO0Oo:I

    iput p5, p0, Lz2/lh;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public getAdPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/lh;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public getApkPageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/lh;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public getPostState()I
    .locals 1

    iget v0, p0, Lz2/lh;->OooO0o0:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lz2/lh;->OooO0Oo:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lz2/lh;->OooO0o:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/lh;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public setAdPid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/lh;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public setApkPageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/lh;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method public setPostState(I)V
    .locals 0

    iput p1, p0, Lz2/lh;->OooO0o0:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lz2/lh;->OooO0Oo:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lz2/lh;->OooO0o:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/lh;->OooO0O0:Ljava/lang/String;

    return-void
.end method
