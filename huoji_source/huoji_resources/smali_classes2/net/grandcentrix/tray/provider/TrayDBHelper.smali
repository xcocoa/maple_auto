.class public Lnet/grandcentrix/tray/provider/TrayDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field public static final CREATED:Ljava/lang/String; = "CREATED"

.field public static final DATABASE_NAME:Ljava/lang/String; = "tray.db"

.field public static final DATABASE_NAME_NO_BACKUP:Ljava/lang/String; = "tray_backup_excluded.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final INTERNAL_TABLE_NAME:Ljava/lang/String; = "TrayInternal"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final MIGRATED_KEY:Ljava/lang/String; = "MIGRATED_KEY"

.field public static final MODULE:Ljava/lang/String; = "MODULE"

.field public static final TABLE_NAME:Ljava/lang/String; = "TrayPreferences"

.field public static final UPDATED:Ljava/lang/String; = "UPDATED"

.field public static final V1_PREFERENCES_CREATE:Ljava/lang/String;

.field public static final V2_ALTER_PREFERENCES_TABLE:Ljava/lang/String; = "ALTER TABLE TrayPreferences ADD COLUMN MIGRATED_KEY TEXT"

.field public static final V2_CREATE_INTERNAL_TRAY_TABLE:Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "VALUE"


# instance fields
.field private final mCreateVersion:I

.field private final mWithBackup:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TrayPreferences"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "_id"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    const-string v6, "KEY"

    aput-object v6, v1, v5

    const/4 v7, 0x3

    const-string v8, "VALUE"

    aput-object v8, v1, v7

    const/4 v9, 0x4

    const-string v10, "MODULE"

    aput-object v10, v1, v9

    const/4 v11, 0x5

    const-string v12, "CREATED"

    aput-object v12, v1, v11

    const/4 v13, 0x6

    const-string v14, "UPDATED"

    aput-object v14, v1, v13

    const/4 v15, 0x7

    aput-object v10, v1, v15

    const/16 v16, 0x8

    aput-object v6, v1, v16

    const-string v0, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s INT DEFAULT 0, %s INT DEFAULT 0, UNIQUE (%s, %s));"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->V1_PREFERENCES_CREATE:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TrayInternal"

    aput-object v1, v0, v3

    aput-object v4, v0, v2

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    aput-object v10, v0, v9

    aput-object v12, v0, v11

    aput-object v14, v0, v13

    const-string v1, "MIGRATED_KEY"

    aput-object v1, v0, v15

    aput-object v10, v0, v16

    const/16 v1, 0x9

    aput-object v6, v0, v1

    const-string v1, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s INT DEFAULT 0, %s INT DEFAULT 0, %s TEXT, UNIQUE (%s, %s));"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->V2_CREATE_INTERNAL_TRAY_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-boolean p3, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mWithBackup:Z

    iput p4, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "tray.db"

    goto :goto_0

    :cond_0
    const-string v0, "tray_backup_excluded.db"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-boolean p2, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mWithBackup:Z

    iput v2, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    return-void
.end method

.method private createV1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->V1_PREFERENCES_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private logTag()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tray internal db ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mWithBackup:Z

    if-eqz v1, :cond_0

    const-string v1, "backup"

    goto :goto_0

    :cond_0
    const-string v1, "no backup"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE TrayPreferences ADD COLUMN MIGRATED_KEY TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->V2_CREATE_INTERNAL_TRAY_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCreate with version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->createV1(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "created database version 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    iget v0, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1, v1, v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "upgrading Database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-gt p3, v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-direct {p0, p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "upgraded Database to version 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onUpgrade() with oldVersion <= 0 is useless"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpgrade doesn\'t support the upgrade to version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
