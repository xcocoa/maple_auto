.class public abstract Lnet/grandcentrix/tray/core/AbstractTrayPreference;
.super Lnet/grandcentrix/tray/core/Preferences;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/grandcentrix/tray/core/TrayStorage;",
        ">",
        "Lnet/grandcentrix/tray/core/Preferences<",
        "Lnet/grandcentrix/tray/core/TrayItem;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/core/TrayStorage;I)V
    .locals 0
    .param p1    # Lnet/grandcentrix/tray/core/TrayStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/grandcentrix/tray/core/Preferences;-><init>(Lnet/grandcentrix/tray/core/PreferenceStorage;I)V

    return-void
.end method

.method private throwForNullValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/grandcentrix/tray/core/WrongTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value for key <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> is null. You obviously saved this value as String and try to access it with type "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " which cannot be null.  Always use getString(key, defaultValue) when accessing data you saved with put(String)."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/grandcentrix/tray/core/WrongTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public annex(Lnet/grandcentrix/tray/core/TrayStorage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/Preferences;->getStorage()Lnet/grandcentrix/tray/core/PreferenceStorage;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/core/TrayStorage;->annex(Lnet/grandcentrix/tray/core/TrayStorage;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annexed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    invoke-direct {p0, v0, v1, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->throwForNullValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lnet/grandcentrix/tray/core/WrongTypeException;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/core/WrongTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->throwForNullValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lnet/grandcentrix/tray/core/WrongTypeException;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/core/WrongTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-direct {p0, v0, v1, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->throwForNullValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lnet/grandcentrix/tray/core/WrongTypeException;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/core/WrongTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/Preferences;->getStorage()Lnet/grandcentrix/tray/core/PreferenceStorage;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/core/TrayStorage;->getModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/Preferences;->getPref(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/core/TrayItem;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lnet/grandcentrix/tray/core/ItemNotFoundException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Value for Key <%s> not found"

    invoke-direct {v0, p1, v1}, Lnet/grandcentrix/tray/core/ItemNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public registerOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .locals 1
    .param p1    # Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/Preferences;->getStorage()Lnet/grandcentrix/tray/core/PreferenceStorage;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/core/TrayStorage;->registerOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .locals 1
    .param p1    # Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/Preferences;->getStorage()Lnet/grandcentrix/tray/core/PreferenceStorage;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/core/TrayStorage;->unregisterOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V

    return-void
.end method
