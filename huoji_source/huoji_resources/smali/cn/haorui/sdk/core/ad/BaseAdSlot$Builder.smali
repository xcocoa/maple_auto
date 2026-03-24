.class public abstract Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/ad/BaseAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;",
        "K:",
        "Lcn/haorui/sdk/core/ad/BaseAdSlot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/BaseAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcn/haorui/sdk/core/ad/BaseAdSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setActType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3502(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdPatternType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->adPatternType:I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3602(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppFeature(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$302(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->appId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppIntro(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppIntroUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3402(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppPrivacy(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$702(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppSize(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$502(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppVer(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$602(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCBC(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2502(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCat(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1002(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClickType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2802(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClickUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clickUrl:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClickid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clickid:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setComments(Ljava/lang/Integer;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->comments:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDClickData(Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dUrl:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeepLink(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->deep_link:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDesc(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeveloper(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDirectMarket(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1902(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDn_active([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_active:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDn_inst_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_inst_start:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDn_inst_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_inst_succ:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDn_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_start:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDn_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_succ:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDownNum(Ljava/lang/Integer;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->downNum:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDp_fail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dp_fail:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDp_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dp_start:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDp_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dp_succ:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDrawing(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3002(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEcpm(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2002(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setErrorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$902(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExpireTimestamp(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2402(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFromId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->fromId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFromLogo(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->fromLogo:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$002(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setImageUrls([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->imageUrls:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInteractionType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->interactionType:I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLoadedTime(J)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1, p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2302(Lcn/haorui/sdk/core/ad/BaseAdSlot;J)J

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMonitorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->monitorUrl:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPaymentTypes(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$402(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPermissionUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3302(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPermisssList(Ljava/util/List;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$3202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPosId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->posId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPowerCount(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2702(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPowerDelay(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2602(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPowerIndex(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2902(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPrivacyAgreement(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$802(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setReqId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1802(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setResponUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->responUrl:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setS_code(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setS_ext(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$2202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setScore(Ljava/lang/Float;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->score:Ljava/lang/Float;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWxFail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1702(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWxStart([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1502(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWxSuccess([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1602(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWx_path(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1402(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWx_username(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->access$1302(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    return-object p1
.end method
