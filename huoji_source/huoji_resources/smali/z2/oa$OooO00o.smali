.class public Lz2/oa$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/oa;->OooOOoo(Lcom/cyjh/http/bean/response/BindRegCodeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/oa;


# direct methods
.method public constructor <init>(Lz2/oa;)V
    .locals 0

    iput-object p1, p0, Lz2/oa$OooO00o;->OoooOoO:Lz2/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->status:I

    iget-object v1, p0, Lz2/oa$OooO00o;->OoooOoO:Lz2/oa;

    invoke-static {v1}, Lz2/oa;->OooOo00(Lz2/oa;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/oa$OooO00o;->OoooOoO:Lz2/oa;

    invoke-virtual {v1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regCodeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/j3;->OooO0o()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lz2/ae;->Oooo0o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc9

    invoke-static {v0}, Lz2/y8;->OooOO0o(I)V

    return-void
.end method
