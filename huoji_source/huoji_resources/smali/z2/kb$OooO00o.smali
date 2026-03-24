.class public Lz2/kb$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/kb;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/util/List;

.field public final synthetic OooO0O0:Lz2/kb;


# direct methods
.method public constructor <init>(Lz2/kb;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lz2/kb$OooO00o;->OooO0O0:Lz2/kb;

    iput-object p2, p0, Lz2/kb$OooO00o;->OooO00o:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadFail(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lz2/kb$OooO00o;->OooO0O0:Lz2/kb;

    iget-object v0, p0, Lz2/kb$OooO00o;->OooO00o:Ljava/util/List;

    invoke-static {p1, v0}, Lz2/kb;->OooOo0o(Lz2/kb;Ljava/util/List;)V

    return-void
.end method

.method public uploadProgress(JJ)V
    .locals 0

    return-void
.end method

.method public uploadSuc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lz2/kb$OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/kb$OooO00o;->OooO0O0:Lz2/kb;

    iget-object p2, p0, Lz2/kb$OooO00o;->OooO00o:Ljava/util/List;

    invoke-static {p1, p2}, Lz2/kb;->OooOo0o(Lz2/kb;Ljava/util/List;)V

    return-void
.end method
