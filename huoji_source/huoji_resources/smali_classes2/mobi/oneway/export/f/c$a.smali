.class public Lmobi/oneway/export/f/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adp"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/c$a;->a:I

    const-string v0, "pid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/c$a;->b:Ljava/lang/String;

    const-string v0, "dayReqLimit"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/c$a;->c:I

    const-string v0, "dayShowLimit"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/c$a;->d:I

    const-string v0, "fsc"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/c$a;->e:I

    const-string v0, "hvcb"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/c$a;->f:I

    const-string v0, "ocb"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lmobi/oneway/export/f/c$a;->g:I

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object p2

    iget-object v0, p0, Lmobi/oneway/export/f/c$a;->b:Ljava/lang/String;

    iget v1, p0, Lmobi/oneway/export/f/c$a;->c:I

    iget v2, p0, Lmobi/oneway/export/f/c$a;->d:I

    invoke-virtual {p2, p1, v0, v1, v2}, Lmobi/oneway/export/b/a;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/c$a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/c$a;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/c$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/c$a;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/c$a;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/c$a;->d:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/c$a;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/c$a;->e:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/c$a;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/c$a;->f:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/c$a;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/c$a;->g:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/c$a;->g:I

    return v0
.end method
