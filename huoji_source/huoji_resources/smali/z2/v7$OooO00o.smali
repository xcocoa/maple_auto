.class public Lz2/v7$OooO00o;
.super Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooO0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/v7;->OooO0oo(Ljava/lang/String;Lz2/v7$OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooO0o<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic o00Oo0:Ljava/lang/String;

.field public final synthetic o00Ooo:Lz2/v7$OooO0O0;

.field public final synthetic o00o0O:Lz2/v7;


# direct methods
.method public constructor <init>(Lz2/v7;Ljava/lang/String;Lz2/v7$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/v7$OooO00o;->o00o0O:Lz2/v7;

    iput-object p2, p0, Lz2/v7$OooO00o;->o00Oo0:Ljava/lang/String;

    iput-object p3, p0, Lz2/v7$OooO00o;->o00Ooo:Lz2/v7$OooO0O0;

    invoke-direct {p0}, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooO0o;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO0o()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/v7$OooO00o;->OooOOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOO0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/v7$OooO00o;->OooOOoo(Ljava/lang/String;)V

    return-void
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/v7$OooO00o;->o00o0O:Lz2/v7;

    iget-object v1, p0, Lz2/v7$OooO00o;->o00Oo0:Ljava/lang/String;

    invoke-static {v0, v1}, Lz2/v7;->OooO0O0(Lz2/v7;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v0, Lcom/yanzhenjie/zbar/Image;

    const-string v1, "RGB4"

    invoke-direct {v0, v8, v9, v1}, Lcom/yanzhenjie/zbar/Image;-><init>(IILjava/lang/String;)V

    mul-int v1, v8, v9

    new-array v1, v1, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/zbar/Image;->setData([I)V

    iget-object v1, p0, Lz2/v7$OooO00o;->o00o0O:Lz2/v7;

    const-string v2, "Y800"

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/zbar/Image;->convert(Ljava/lang/String;)Lcom/yanzhenjie/zbar/Image;

    move-result-object v0

    invoke-static {v1, v0}, Lz2/v7;->OooO0OO(Lz2/v7;Lcom/yanzhenjie/zbar/Image;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOOoo(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz2/v7$OooO00o;->o00Ooo:Lz2/v7$OooO0O0;

    invoke-interface {p1}, Lz2/v7$OooO0O0;->error()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/v7$OooO00o;->o00Ooo:Lz2/v7$OooO0O0;

    invoke-interface {v0, p1}, Lz2/v7$OooO0O0;->OooO00o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
