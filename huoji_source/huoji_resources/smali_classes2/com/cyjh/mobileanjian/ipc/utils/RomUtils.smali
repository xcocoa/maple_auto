.class public Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO00o:Lz2/hf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/hf;

    invoke-direct {v0}, Lz2/hf;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmuiVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.build.version.emui"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFlymeVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getKnownRomVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getMUIUDetailVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isFlyme()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getFlymeVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getEmuiVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isHaimawanVM()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6d77\u9a6c\u73a9\u6a21\u62df\u5668"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isTiantianVM()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5929\u5929\u6a21\u62df\u5668"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isNoxVM()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u591c\u795e\u6a21\u62df\u5668"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXiaoyaoVM()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u900d\u9065\u6a21\u62df\u5668"

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXXZS()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u7329\u7329\u52a9\u624b"

    goto :goto_0

    :cond_7
    const-string v0, "undefined"

    :goto_0
    return-object v0
.end method

.method public static getMUIUDetailVersion()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v3, "ro.miui.ui.version.name"

    invoke-virtual {v2, v3}, Lz2/hf;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "MIUI %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMUIUVersion()I
    .locals 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.miui.ui.version.name"

    const-string v2, "V0"

    invoke-virtual {v0, v1, v2}, Lz2/hf;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    const-string v1, "V7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    return v0

    :cond_2
    const-string v1, "V6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static isARMCpu()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/16 v0, 0x12

    aget-byte v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method public static isEmui()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.build.version.emui"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmulator()Z
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isHaimawanVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isTiantianVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isNoxVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXiaoyaoVM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXXZS()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isFlyme()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.flyme.published"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHaimawanVM()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "droid4x.inited"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.droid4x.host.mac"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "droid4x.battery.status"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "persist.droid4x.op_alpha"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isMIUI()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNoxVM()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "nox.inited"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nox.vbox_dpi"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.nox.host.mac"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nox.battery.status"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOppoR9S()Z
    .locals 4

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lz2/hf;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ro.product.model"

    invoke-virtual {v0, v3, v2}, Lz2/hf;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    const-string v2, "R9s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTiantianVM()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ttVM.inited"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ttvmd.battery.status"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ttVM.vbox_dpi"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ttvmd.battery.mode"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isXXZS()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "ro.xxzs.DeviceId"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.xxzs.origDeviceId"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isXiaoyaoVM()Z
    .locals 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->OooO00o:Lz2/hf;

    const-string v1, "microvirt.inited"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "microvirt.channel"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.microvirt.hmac"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "microvirt.vbox_dpi"

    invoke-virtual {v0, v1}, Lz2/hf;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
