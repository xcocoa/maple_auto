.class public Lcom/lidroid/xutils/DbUtils$DaoConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/DbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbDir:Ljava/lang/String;

.field private dbName:Ljava/lang/String;

.field private dbUpgradeListener:Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

.field private dbVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xUtils.db"

    iput-object v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbVersion:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDbDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpgradeListener()Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbUpgradeListener:Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    iget v0, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbVersion:I

    return v0
.end method

.method public setDbDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbDir:Ljava/lang/String;

    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDbUpgradeListener(Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbUpgradeListener:Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

    return-void
.end method

.method public setDbVersion(I)V
    .locals 0

    iput p1, p0, Lcom/lidroid/xutils/DbUtils$DaoConfig;->dbVersion:I

    return-void
.end method
