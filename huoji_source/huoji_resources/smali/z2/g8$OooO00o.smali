.class public Lz2/g8$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/g8;->OooO0O0([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lz2/g8;


# direct methods
.method public constructor <init>(Lz2/g8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g8$OooO00o;->OooO0O0:Lz2/g8;

    iput-object p2, p0, Lz2/g8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadFail(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadFail -- > \u4e0a\u4f20\u56fe\u7247\u5931\u8d25 fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, -0x1

    const-string v0, "\u963f\u91cc\u4e91\u4e0a\u4f20\u56fe\u7247\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    return-void
.end method

.method public uploadProgress(JJ)V
    .locals 0

    return-void
.end method

.method public uploadSuc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uploadSuc -- > \u4e0a\u4f20\u56fe\u7247\u6210\u529f serverUrl="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/g8$OooO00o;->OooO0O0:Lz2/g8;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p2

    invoke-virtual {p2}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lz2/g8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lz2/g8;->OooO00o(Lz2/g8;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
