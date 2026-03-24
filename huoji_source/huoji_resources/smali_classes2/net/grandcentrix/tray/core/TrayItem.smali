.class public Lnet/grandcentrix/tray/core/TrayItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mCreated:Ljava/util/Date;

.field private final mKey:Ljava/lang/String;

.field private final mMigratedKey:Ljava/lang/String;

.field private final mModule:Ljava/lang/String;

.field private final mUpdated:Ljava/util/Date;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lnet/grandcentrix/tray/core/TrayItem;->mCreated:Ljava/util/Date;

    iput-object p2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lnet/grandcentrix/tray/core/TrayItem;->mModule:Ljava/lang/String;

    iput-object p6, p0, Lnet/grandcentrix/tray/core/TrayItem;->mUpdated:Ljava/util/Date;

    iput-object p4, p0, Lnet/grandcentrix/tray/core/TrayItem;->mValue:Ljava/lang/String;

    iput-object p3, p0, Lnet/grandcentrix/tray/core/TrayItem;->mMigratedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public created()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mCreated:Ljava/util/Date;

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public migratedKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mMigratedKey:Ljava/lang/String;

    return-object v0
.end method

.method public module()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HH:mm:ss dd.MM.yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mModule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mCreated:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mUpdated:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", migratedKey: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mMigratedKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mValue:Ljava/lang/String;

    return-object v0
.end method
