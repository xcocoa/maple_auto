.class public Lcom/umeng/commonsdk/proguard/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "239.192.152.163"

.field private static b:I = 0xbea9


# instance fields
.field private c:Landroid/net/wifi/WifiManager$MulticastLock;

.field private d:Landroid/net/wifi/WifiManager;

.field private e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->d:Landroid/net/wifi/WifiManager;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    const-string v1, "multicast.test"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/proguard/u;->a:Ljava/lang/String;

    sget v1, Lcom/umeng/commonsdk/proguard/u;->b:I

    invoke-static {p0, v0, v1, p1}, Lcom/umeng/commonsdk/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/umeng/commonsdk/proguard/u;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/u;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/u;->a()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, p2}, Ljava/net/MulticastSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, v2, p3, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_2
    :try_start_4
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_3
    :try_start_6
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_4
    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p2

    iget-object p3, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_2
    :goto_6
    :try_start_8
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_3
    throw p1
.end method
