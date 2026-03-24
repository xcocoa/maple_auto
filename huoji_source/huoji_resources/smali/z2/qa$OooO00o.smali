.class public Lz2/qa$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ce$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->Oooo00O(Lcom/cyjh/http/bean/response/PhoneConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/http/bean/response/PhoneConfig;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;Lcom/cyjh/http/bean/response/PhoneConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooO00o;->OooO0OO:Lz2/qa;

    iput-object p2, p0, Lz2/qa$OooO00o;->OooO00o:Lcom/cyjh/http/bean/response/PhoneConfig;

    iput-object p3, p0, Lz2/qa$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(JJI)V
    .locals 0

    return-void
.end method

.method public OooO0O0(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lz2/qa$OooO00o;->OooO0OO:Lz2/qa;

    invoke-static {p1}, Lz2/qa;->OooOo(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0OO(Ljava/io/File;)V
    .locals 1

    iget-object p1, p0, Lz2/qa$OooO00o;->OooO00o:Lcom/cyjh/http/bean/response/PhoneConfig;

    iget-object v0, p0, Lz2/qa$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->setImageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/qa$OooO00o;->OooO0OO:Lz2/qa;

    invoke-static {p1}, Lz2/qa;->OooOo(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lz2/qa$OooO00o;->OooO00o:Lcom/cyjh/http/bean/response/PhoneConfig;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
