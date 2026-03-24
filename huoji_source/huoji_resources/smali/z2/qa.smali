.class public Lz2/qa;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/qa$Oooo0;
    }
.end annotation


# static fields
.field public static final OooO:I = 0x14

.field private static final OooO0o:Ljava/lang/String; = "z2.qa"

.field public static final OooO0oO:I = -0x1

.field public static final OooO0oo:I = 0x13

.field public static final OooOO0:I = 0x15

.field public static final OooOO0O:I = 0x64

.field public static final OooOO0o:I = 0x0

.field public static final OooOOO:I = 0x2

.field public static final OooOOO0:I = 0x1

.field public static final OooOOOO:I = 0x3


# instance fields
.field private OooO00o:J

.field private OooO0O0:J

.field private OooO0OO:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lz2/qa$Oooo0;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0Oo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0o0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/qa;->OooO00o:J

    iput-wide v0, p0, Lz2/qa;->OooO0O0:J

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lz2/qa;->OooO0Oo:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    iput p1, p0, Lz2/qa;->OooO0o0:I

    return-void
.end method

.method private OooOOO(Lcom/cyjh/http/bean/response/TemplateResponse;)V
    .locals 3

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget v1, p1, Lcom/cyjh/http/bean/response/TemplateResponse;->TemplateType:I

    iput v1, v0, Lz2/gc;->OooO0Oo:I

    iget v0, p1, Lcom/cyjh/http/bean/response/TemplateResponse;->Status:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    const/16 p1, 0x15

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/qa;->Oooo0o(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const-string v0, "templateVerifySuccess - fail "

    invoke-virtual {p0, p1, v0}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lz2/qa$Oooo0;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/TemplateResponse;->Remark:Ljava/lang/String;

    invoke-direct {v2, v0, p1}, Lz2/qa$Oooo0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private OooOOo(Lcom/cyjh/http/bean/response/AppStartupResponse;)V
    .locals 4

    iget-object v0, p1, Lcom/cyjh/http/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/http/bean/response/AuthorRelatedInfo;

    iget v1, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    if-nez v1, :cond_0

    iget-object p1, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->EngineToken:Ljava/lang/String;

    iput-object v2, v1, Lz2/m7;->OooO0o0:Ljava/lang/String;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/http/bean/response/AppRelatedInfo;

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->DailyTryTimes:I

    iput v2, v1, Lz2/m7;->OooO0OO:I

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v2, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->FeedbackTips:Ljava/lang/String;

    iput-object v2, v1, Lz2/m7;->OooO0O0:Ljava/lang/String;

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->OnceTryMinute:I

    iput v2, v1, Lz2/m7;->OooO0Oo:I

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->UnbindDeductHours:I

    iput v2, v1, Lz2/m7;->OooOOO0:I

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v1

    iget v2, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->IsFreeAd:I

    iput v2, v1, Lz2/qh;->OooO0o0:I

    iget-object v1, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lz2/y8;->OooOOO0(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/m7;->OooO0OO()V

    iget-object v1, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooO0o:Ljava/util/List;

    iget-object v2, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v1

    iget-object v1, v1, Lz2/qh;->OooO0OO:Ljava/util/List;

    iget-object v2, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v1, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooO0oo:Ljava/util/List;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object p1, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object p1

    iget-object p1, p1, Lz2/qh;->OooO00o:Ljava/util/List;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startupSuc  authorRelatedInfo.ServicePackStatus ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget p1, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    invoke-direct {p0}, Lz2/qa;->Oooo0OO()V

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lz2/qa$Oooo0;

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    invoke-direct {v2, v3, p1, v0}, Lz2/qa$Oooo0;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic OooOo(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lz2/qa;->OooO0Oo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic OooOo0(Lz2/qa;)V
    .locals 0

    invoke-direct {p0}, Lz2/qa;->OooOooo()V

    return-void
.end method

.method public static synthetic OooOo00(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic OooOo0O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/qa;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooOo0o(Lz2/qa;Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/qa;->Oooo00O(Lcom/cyjh/http/bean/response/PhoneConfig;)V

    return-void
.end method

.method public static synthetic OooOoO(Lz2/qa;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2/qa;->Oooo0oO(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic OooOoO0(Lz2/qa;J)J
    .locals 0

    iput-wide p1, p0, Lz2/qa;->OooO00o:J

    return-wide p1
.end method

.method public static synthetic OooOoOO(Lz2/qa;J)J
    .locals 0

    iput-wide p1, p0, Lz2/qa;->OooO0O0:J

    return-wide p1
.end method

.method private OooOooO(J)V
    .locals 3

    iget-wide v0, p0, Lz2/qa;->OooO00o:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p2

    const v0, 0x7f1000ed

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private OooOooo()V
    .locals 16

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/io/File;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v5

    invoke-virtual {v5}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cyjh/elfin/entity/Script;->getPropFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v7

    invoke-virtual {v7}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cyjh/elfin/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v9

    invoke-virtual {v9}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v2, v10

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v11

    invoke-virtual {v11}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cyjh/elfin/entity/Script;->getRtdFile()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v2, v12

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v13

    invoke-virtual {v13}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cyjh/elfin/entity/Script;->getInfoFile()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v2, v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFileToAssets copyAssetsToFiles lcFile:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyFileToAssets copyAssetsToFiles propFile:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFileToAssets copyAssetsToFiles atcFile:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFileToAssets copyAssetsToFiles uipFile:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFileToAssets copyAssetsToFiles rtdFile:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    new-array v3, v1, [Ljava/io/InputStream;

    const-string v5, "script.lc"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "script.prop"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "script.atc"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v8

    const-string v5, "script.uip"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v10

    const-string v5, "script.rtd"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v12

    const-string v5, "script.info"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    aput-object v0, v3, v14

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v0, v3, v4

    if-eqz v0, :cond_0

    aget-object v0, v3, v4

    aget-object v5, v2, v4

    invoke-static {v0, v5}, Lz2/k4;->OooO0O0(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFileToAssets copyAssetsToFiles IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private Oooo00O(Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .locals 6

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/j4;->OooOOO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/ce;->OooO0oo()Lz2/ce;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz2/j4;->OooOOO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lz2/qa$OooO00o;

    invoke-direct {v5, p0, p1, v1}, Lz2/qa$OooO00o;-><init>(Lz2/qa;Lcom/cyjh/http/bean/response/PhoneConfig;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v4, v5}, Lz2/ce;->OooO0oO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ce$OooO0OO;)V

    return-void
.end method

.method private Oooo00o()V
    .locals 2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/qa$Oooo000;

    invoke-direct {v1, p0}, Lz2/qa$Oooo000;-><init>(Lz2/qa;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOo;

    invoke-direct {v1, p0}, Lz2/qa$OooOo;-><init>(Lz2/qa;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOo00;

    invoke-direct {v1, p0}, Lz2/qa$OooOo00;-><init>(Lz2/qa;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-void
.end method

.method private Oooo0OO()V
    .locals 2

    new-instance v0, Lz2/qa$OooO0O0;

    invoke-direct {v0, p0}, Lz2/qa$OooO0O0;-><init>(Lz2/qa;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/h7;->OooO0Oo(Lz2/h7$OooOO0;Z)V

    return-void
.end method

.method private Oooo0o(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainMessage  --> messageNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lz2/qa;->Oooo0o0()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lz2/qa;->OoooO00(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lz2/qa;->OoooO0(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Oooo0o0()V
    .locals 2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/qa$OooO0o;

    invoke-direct {v1, p0}, Lz2/qa$OooO0o;-><init>(Lz2/qa;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    return-void
.end method

.method private Oooo0oO(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJson --> templateResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",messageNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseJson --> code 4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lz2/qa;->Oooo0o(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x44c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4b0

    if-eq v2, v3, :cond_2

    const/16 v3, 0x514

    if-eq v2, v3, :cond_2

    const/16 v3, 0x25c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x25a

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-virtual {p0, v1, v0}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    const p2, 0x7f10023f

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private OoooO0(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/cyjh/http/bean/response/TemplateResponse;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/TemplateResponse;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lz2/qa;->OooO00o:J

    iget-wide v2, p1, Lcom/cyjh/http/bean/response/TemplateResponse;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lz2/qa;->OooOOO(Lcom/cyjh/http/bean/response/TemplateResponse;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v3}, Lz2/qa;->OooOooO(J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string v0, "\u6a21\u677f\u65e0\u6570\u636e"

    invoke-virtual {p0, p1, v0}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private OoooO00(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/cyjh/http/bean/response/AppStartupResponse;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/AppStartupResponse;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lz2/qa;->OooO0O0:J

    iget-wide v2, p1, Lcom/cyjh/http/bean/response/AppStartupResponse;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lz2/qa;->OooOOo(Lcom/cyjh/http/bean/response/AppStartupResponse;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v3}, Lz2/qa;->OooOooO(J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string v0, "startupResponse - startup - fail "

    invoke-virtual {p0, p1, v0}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private OoooO0O()V
    .locals 2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOOOO;

    invoke-direct {v1, p0}, Lz2/qa$OooOOOO;-><init>(Lz2/qa;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOOO;

    invoke-direct {v1, p0}, Lz2/qa$OooOOO;-><init>(Lz2/qa;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOOO0;

    invoke-direct {v1, p0}, Lz2/qa$OooOOO0;-><init>(Lz2/qa;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method public OooOoo(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lz2/qa$Oooo0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lz2/qa$Oooo0;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOoo0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lz2/i7;->OooOOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/qa$OooO0OO;

    invoke-direct {v1, p0}, Lz2/qa$OooO0OO;-><init>(Lz2/qa;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lz2/qa$Oooo0;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lz2/qa$Oooo0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Oooo(I)V
    .locals 0

    return-void
.end method

.method public Oooo0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lz2/qa$Oooo0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public Oooo000()V
    .locals 2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOO0O;

    invoke-direct {v1, p0}, Lz2/qa$OooOO0O;-><init>(Lz2/qa;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/qa$OooOO0;

    invoke-direct {v1, p0}, Lz2/qa$OooOO0;-><init>(Lz2/qa;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/qa$OooO;

    invoke-direct {v1, p0}, Lz2/qa$OooO;-><init>(Lz2/qa;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public Oooo0O0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/qa;->OooO0Oo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public Oooo0oo()V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/qa;->Oooo00o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/qa;->OooO0OO:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lz2/qa$Oooo0;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lz2/qa$Oooo0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method
